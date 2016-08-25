from music21 import *

debbie = converter.parse('./debbie.mid')
singlepart = debbie[0]
timesig = debbie[0].getElementsByClass(meter.TimeSignature)[0]
mmark = debbie[0].getElementsByClass(tempo.MetronomeMark)[0]
allnotes = []
allchords = []
for ix, voice in enumerate(singlepart.getElementsByClass(stream.Voice)):
    notes = voice.getElementsByClass(note.Note).notes
    chords = voice.getElementsByClass(chord.Chord)
    for i in notes:
        allnotes.append(i)
    for i in chords:
        allchords.append(i)

print mmark.number
print "%s / %s" % (timesig.numerator, timesig.denominator)

# switch with below code to print out chords > notes.txt
#print "Note/Rest,Octave,Len,Offset"
#for i in allnotes:
    #print "%s,%s,%s,%s" % (i.name, i.octave, i.quarterLength, float(i.offset))

# switch with above code to print out notes > chords.txt
print "FullName,CommonName,Len,Offset"
for i in allchords:
    print "%s,%s,%s,%s" % (i.fullName, i.pitchedCommonName, i.quarterLength, float(i.offset))