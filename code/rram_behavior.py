import matplotlib.pyplot as plt
import numpy as np

# Spectre Input
# VG (net_vg 0) vsource type=pwl wave=[ 0 1.5 400n 1.5 450n 2 1u 2 ]
# VD (net_vd 0) vsource type=pwl wave=[ 0 0 200n 2.5 600n -2.5 800n 0 1u 0 ]

# Defining variables to plot
v_ds = np.concatenate((1.5*np.ones(400), 
                     np.linspace(1.5, 2, 50), 
                     2*np.ones(550)))  # volts
                     
v_gs = np.concatenate((np.linspace(0, 2.5, 200), 
                     np.linspace(2.5, -2.5, 400), 
                     np.linspace(-2.5, 0, 200),
                     np.zeros(200)))  # volts

t   = np.arange(0,1000) # nanoseconds

plt.plot(t, v_ds, color = 'crimson', linewidth=3.0, label = r"$V_{DS}$")
plt.plot(t, v_gs, color = 'blue', linewidth=3.0, label = r"$V_{GS}$")
#ax = plt.gca()
#ax.set_xlim([1e-1, 1e+3])
#ax.set_ylim([1, 1e+4])
#plt.axhline(y=2540.16, color='black', linestyle='--', linewidth=2.0, label = "peak achieved (99.2%)")
plt.title(r'RRAM Input')
plt.xlabel(r'Time [ns]')
plt.ylabel(r'$V$ [Volt]')
plt.legend()
plt.savefig('images/rram_behavior.pdf')
plt.savefig('images/rram_behavior.png', dpi=500)
plt.show()