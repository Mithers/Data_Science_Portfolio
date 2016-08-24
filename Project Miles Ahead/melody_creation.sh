'''
Author:     Christopher Shoe
Project:    Miles_Ahead
Purpose:    Generates melodies utilizing the eval and training models built
			and implemented by midi_db.sh.

Code was built while significantly referencing public examples from the
Magenta documentation on GitHub:
https://github.com/tensorflow/magenta

Project is solely for academic purposes and not for sale or distribution of any kind.  
'''
bazel run //magenta/models/lookback_rnn:lookback_rnn_generate -- \
#should be the same directory used for the training job
--run_dir=/tmp/lookback_rnn/logdir/run1 \
#should be the same hyperparameters used for the training job, 
#although some of them will be ignored, like the batch size.
--hparams="{'batch_size':64,'rnn_layer_sizes':[64,64]}" \
--output_dir=/tmp/lookback_rnn/generated \
#number of melodies that will be generated
--num_outputs=10 \
#how long each melody will be in 16th steps
--num_steps=480 \
#absolute path to midi file 
--primer_midi= ../midi/debbie.mid