'''
Author:     Christopher Shoe
Project:    Miles_Ahead
Purpose:    Build a database of NoteSequences, sequence examples, craft eval and training
			sets.  Finally the script will Train and Evaluate the built model.  
			NoteSequences are protocol buffers, which is a fast and efficient data format, 
			and easier to work with than MIDI files.

Code was built while significantly referencing public examples from the
Magenta documentation on GitHub:
https://github.com/tensorflow/magenta

Project is solely for academic purposes and not for sale or distribution of any kind.  
'''

#change directory based on location of midi files
MIDI_DIRECTORY=../magenta/midi

# TFRecord file that will contain NoteSequence protocol buffers.
SEQUENCES_TFRECORD=/tmp/notesequences.tfrecord

bazel run //magenta/scripts:convert_midi_dir_to_note_sequences -- \
--midi_dir=$MIDI_DIRECTORY \
--output_file=$SEQUENCES_TFRECORD \
--recursive

#create SequenceExamples
#SequenceExamples are fed into the model during training and evaluation.
bazel run //magenta/models/lookback_rnn:lookback_rnn_create_dataset -- \
--input=/tmp/notesequences.tfrecord \
--output_dir=/tmp/lookback_rnn/sequence_examples \
#With an eval ratio of 0.10, 10% of the extracted melodies will be 
#saved in the eval collection, and 90% will be saved in the training collection.
#change to adjust amount put in training/eval sets
--eval_ratio=0.10

#Build lookback_rnn_train first so that it can be run multiple times in parallel.
bazel build //magenta/models/lookback_rnn:lookback_rnn_train

#start the training job
./bazel-bin/magenta/models/lookback_rnn/lookback_rnn_train \
--run_dir=/tmp/lookback_rnn/logdir/run1 \
--sequence_example_file=/tmp/lookback_rnn/sequence_examples/training_melodies.tfrecord \
#Using smaller batch sizes can help reduce memory usage, 
#which can resolve potential out-of-memory issues when training larger models.
--hparams="{'batch_size':64,'rnn_layer_sizes':[64,64]}" \
--num_training_steps=13500

#Run TensorBoard to view the training and evaluation data.
#tensorboard --logdir=/tmp/lookback_rnn/logdir