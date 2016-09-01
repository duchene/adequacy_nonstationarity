import random
from p4 import *
func.reseedCRandomizer(random.randint(1, 100000))
read("../tree64_rate50.tre")
t = var.trees[0]
a = func.newEmptyAlignment(dataType='dna', taxNames=['t49', 't50', 't51', 't52', 't53', 't54', 't55', 't56', 't57', 't58', 't59', 't60', 't61', 't62', 't63', 't64', 't33', 't34', 't35', 't36', 't37', 't38', 't39', 't40', 't41', 't42', 't43', 't44', 't45', 't46', 't47', 't48', 't1', 't2', 't3', 't4', 't5', 't6', 't7', 't8', 't9', 't10', 't11', 't12', 't13', 't14', 't15', 't16', 't17', 't18', 't19', 't20', 't21', 't22', 't23', 't24', 't25', 't26', 't27', 't28', 't29', 't30', 't31', 't32'], length=5000)
t.data = Data([a])
#x = t.newComp(free=1, spec='specified', symbol='A', val=[0.3, 0.2, 0.2, 0.3])
#y = t.newComp(free=1, spec='specified', symbol='B', val=[0.45, 0.05, 0.05, 0.45])
x = t.newComp(free=1, spec='specified', symbol='A', val=[0.25, 0.25, 0.25, 0.25])
y = t.newComp(free=1, spec='specified', symbol='B', val=[0.45, 0.05, 0.05, 0.45])
#x = t.newComp(free=1, spec='specified', symbol='A', val=[0.25, 0.25, 0.25, 0.25])
#y = t.newComp(free=1, spec='specified', symbol='B', val=[0.25, 0.25, 0.25, 0.25])
t.setModelThing(x, node=t.root, clade=1)
t.setModelThing(y, node=2, clade=1)
t.setModelThing(y, node=65, clade=1)
t.newRMatrix(free=0, spec='specified', val=[1.3472, 4.8145, 0.9304, 1.2491, 5.5587, 1])
t.setNGammaCat(nGammaCat=4)
t.newGdasrv(free=1, val=1)
t.setPInvar(free=1, val=0.0)
t.draw(model=1)
t.simulate(calculatePatterns=True, resetSequences=True, resetNexusSetsConstantMask=True)
t.data.writeNexus(fName="sim.short.half.nonmon.10.nex", writeDataBlock=1, interleave=0, flat=1, append=0)
#t.alignments[0].writePhylip("nonstat1000.phy", interleave=False, flat=True)
t.data.compoSummary()
