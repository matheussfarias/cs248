import matplotlib.pyplot as plt
import numpy as np
import os

def raw_to_plottable(a):
    prev=0
    v=[]
    for i in range(2,len(a), 2):
        if (a[i+2][-1]==']'):
            conc=np.linspace(float(a[i]), float(a[i+2][:-1]), int(a[i+1][:-1])-prev)
            v=np.concatenate((v, conc))
            break
        if i==2:
            conc=np.linspace(float(a[i]), float(a[i+2]), int(a[i+1][:-1]))
            v=conc
            prev=int(a[i+1][:-1])
            continue
        conc = np.linspace(float(a[i]), float(a[i+2]), int(a[i+1][:-1]) - prev)
        v=np.concatenate((v, conc))
        prev = int(a[i+1][:-1])

    return v

# Spectre Input
# VG (net_vg 0) vsource type=pwl wave=[ 0 1.5 400n 1.5 450n 2 1u 2 1.01u 1.5 1.4u 1.5 1.45u 2 2u 2]
# VD (net_vd 0) vsource type=pwl wave=[ 0 0 200n 2.5 600n -2.5 800n 0 1u 0 1.2u 2.5 1.6u -2.5 1.8u 0 2u 0]
f_read = open("simulation/input.rram.scs", "r")

count=0
for line in f_read:
    if (count==31):
        vg_raw=line
    if(count==36):
        vd_raw = line
        break
    count+=1

vg_raw = vg_raw[36:-1].split(' ')
vd_raw = vd_raw[36:-1].split(' ')

# Defining variables to plot
v_gs = raw_to_plottable(vg_raw)
v_ds = raw_to_plottable(vd_raw)

t = np.arange(len(v_gs))

'''
v_gsc = np.concatenate((1.5*np.ones(400), 
                     np.linspace(1.5, 2, 50), 
                     2*np.ones(550),
                     np.linspace(2,1.5,10),
                     1.5*np.ones(390), 
                     np.linspace(1.5, 2, 50), 
                     2*np.ones(550)))  # volts
                     
v_dsc = np.concatenate((np.linspace(0, 2.5, 200), 
                     np.linspace(2.5, -2.5, 400), 
                     np.linspace(-2.5, 0, 200),
                     np.zeros(200),
                     np.linspace(0, 2.5, 200), 
                     np.linspace(2.5, -2.5, 400), 
                     np.linspace(-2.5, 0, 200),
                     np.zeros(200)))  # volts

t   = np.arange(0,2000) # nanoseconds

for i in range(0,len(v_ds)):
    if(v_ds[i]!=v_dsc[i]):
        print('Fail to convert')
exit()
'''


# creating image folder
if not os.path.isdir('images/'):
    os.makedirs('images/')

#plotting graphs
plt.plot(t, v_ds, color = 'crimson', linewidth=3.0, label = r"$V_{DS}$")
plt.plot(t, v_gs, color = 'blue', linewidth=3.0, label = r"$V_{GS}$")
plt.title(r'RRAM Input')
plt.xlabel(r'Time [ns]')
plt.ylabel(r'Voltages [V]')
plt.legend()
plt.savefig('images/rram_behavior_input.pdf')
#plt.savefig('images/rram_behavior_input.png', dpi=500)
#plt.show()
plt.figure().clear()
plt.close()
plt.cla()
plt.clf()