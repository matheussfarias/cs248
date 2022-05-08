import matplotlib.pyplot as plt
import numpy as np
import os

# opening files
#test
#f_read = open("simulation/test_tran.tran.tr0", "r")

#actual
f_read = open("simulation/tran.tran.tr0", "r")

f_write = open("simulation/lookuptable.txt", "w")

# creating image folder
if not os.path.isdir('images/'):
    os.makedirs('images/')

# reading simulation result
count = 0 
data = []
for line in f_read:
    if count>5:
        f_write.write(line)
        element=''
        count_e=0
        for i in range(len(line)):
            element+=line[i]
            if line[i] == 'E':
                count_e+=1
            if line[i-1] == 'E':
                count_e+=1
            if line[i-2] == 'E':
                count_e+=1
            if line[i-3] == 'E':
                count_e+=1
            if count_e==4:
                data.append(element)
                element=''
                count_e=0
    count+=1

# closing file
f_read.close()
f_write.close()

# acquiring data
time=[]
vd=[]
net1=[]
netvg=[]
netvd=[]
vg=[]

for i in range(0,len(data)):
    if i%6==0:
        time.append(float(data[i]))
    if i%6==1:
        vd.append(float(data[i]))
    if i%6==2:
        net1.append(float(data[i]))
    if i%6==3:
        netvg.append(float(data[i]))
    if i%6==4:
        netvd.append(float(data[i]))
    if i%6==5:
        vg.append(float(data[i]))

time = np.array(time)
vd = np.array(vd)
net1 = np.array(net1)
netvg = np.array(netvg)
netvd = np.array(netvd)
vg = np.array(vg)
r = abs(netvd/(vd+1e-12))


# plotting graphs
plt.plot(netvd, abs(vd), color = 'crimson', linewidth=3.0)
plt.title(r'RRAM Output')
plt.xlabel(r'$V_{DS}$ [V]')
plt.ylabel(r'$I_D$ [A]')
ax = plt.gca()
ax.set_xlim([-3, 3])
ax.set_ylim([1e-9, 1e-2])
plt.yscale('log')
plt.savefig('images/rram_behavior_output.pdf')
#plt.savefig('images/rram_behavior_output.png', dpi=500)
#plt.show()
plt.figure().clear()
plt.close()
plt.cla()
plt.clf()

plt.plot(netvd, netvg, color = 'crimson', linewidth=3.0)
plt.title(r'$V_{GS}$ vs $V_{DS}$')
plt.xlabel(r'$V_{DS}$ [V]')
plt.ylabel(r'$V_{GS}$ [V]')
plt.savefig('images/vgs_vs_vds.pdf')
#plt.savefig('images/vgs_vs_vds.png', dpi=500)
#plt.show()
plt.figure().clear()
plt.close()
plt.cla()
plt.clf()

plt.plot(time*1e+9, vd*1e+6, color = 'crimson', linewidth=3.0)
plt.title(r'$I_D$ vs Time')
plt.xlabel(r'Time [ns]')
plt.ylabel(r'$I_D$ [$\mu$A]')
plt.savefig('images/id_vs_time.pdf')
#plt.savefig('images/id_vs_time.png', dpi=500)
#plt.show()
plt.figure().clear()
plt.close()
plt.cla()
plt.clf()

plt.plot(time*1e+9, r*(1e-3), color = 'crimson', linewidth=3.0)
plt.title(r'$R$ vs Time')
plt.xlabel(r'Time [ns]')
plt.ylabel(r'$R$ [k$\Omega$]')
plt.savefig('images/r_vs_time.pdf')
#plt.savefig('images/id_vs_time.png', dpi=500)
#plt.show()
plt.figure().clear()
plt.close()
plt.cla()
plt.clf()