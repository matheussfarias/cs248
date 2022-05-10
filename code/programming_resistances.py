pulse_r00= 100
pulse_r01= 100
pulse_r02= 100
pulse_r10= 100
pulse_r11= 100
pulse_r12= 100
pulse_r20= 100
pulse_r21= 100
pulse_r22= 100

VG (net_vg 0) vsource type=pwl wave=[ 0 1.5          400n 1.5           ]
VD (net_vd 0) vsource type=pwl wave=[ 0 0   200n 1.5 400n 0             ]
VS (net_vs 0) vsource type=pwl wave=[ 0 0            400n 0    401n 1.5 ]

vg_r00=[]
vg_r01=[]
vg_r02=[]
vg_r10=[]
vg_r11=[]
vg_r12=[]
vg_r20=[]
vg_r21=[]
vg_r22=[]

vd_r00=[]
vd_r01=[]
vd_r02=[]
vd_r10=[]
vd_r11=[]
vd_r12=[]
vd_r20=[]
vd_r21=[]
vd_r22=[]
