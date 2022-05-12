******************************************************************
*                 resistance temperature coeff                   *
******************************************************************

**All the way up to M1 is the same between these technologies, so all those files are the same here

.param   tc1rsn=  1.422E-03
.param   tc2rsn=  6.569e-7
.param   tc1rsp=   1.259e-3
.param   tc2rsp=   2.204e-6 
.param   tc1rsn_h=  1.405E-03
.param   tc2rsn_h=  4.233e-7
.param   tc1rsp_h=   1.369e-3
.param   tc2rsp_h=   1.476e-6
.param   tc1rsnw=  1.483e-3
.param   tc2rsnw=  7.824e-6
.param   tc1rsgpw= 8.100e-04
.param   tc2rsgpw= 7.840e-7
.param   tc1rsgpu= 8.916e-4
.param   tc2rsgpu= 8.443e-7

.param   tc1rl1=   6.045e-4
.param   tc2rl1=  -3.693e-7
.param   tc1rm1=   3.179e-3
.param   tc2rm1=   3.094e-7
.param   tc1rm2=   3.161e-3
.param   tc2rm2=  -7.272e-7
.param   tc1rm3=   3.424e-3
.param   tc2rm3=  -7.739e-7
.param   tc1rm4=   3.424e-3
.param   tc2rm4=  -7.739e-7
.param   tc1rm5=   3.500e-3
.param   tc2rm5=  -7.500e-7
.param   tc1rrdl=  3.930e-3
.param   tc2rrdl=  0.0

.param   tc1rcn=   2.254e-4
.param   tc2rcn=  -1.038e-6
.param   tc1rcp=   5.250e-4
.param   tc2rcp=   3.544e-6
.param   tc1rcgp=  1.249e-3
.param   tc2rcgp= -6.647e-6
.param   tc1rcl1=  1.067e-3
.param   tc2rcl1= -5.324e-6
.param   tc1rvia=  1.081e-3
.param   tc2rvia= -1.903e-7
.param   tc1rvia2= 2.366e-3
.param   tc2rvia2=-1.025e-5
.param   tc1rvia3= 2.366e-3
.param   tc2rvia3=-1.025e-5
.param   tc1rvia4= 1.77e-03
.param   tc2rvia4= -1.60e-07
.param   tc1rrdlcon=  3.930e-3
.param   tc2rrdlcon=  0.0

.param   tc1rpolybody= 0.514e-3
.param   tc2rpolybody= 0.122e-5
.param   tc1rpolyend=  0.0
.param   tc2rpolyend=  0.0

***************************************
** minimum width for different layers *
***************************************

.param
+ wminp1= 0.15u
+ wminl1= 0.14u
+ wminm1= 0.14u
+ wminm2= 0.14u
+ wminm3= 0.3u
+ wminm4= 0.3u
+ wminm5= 0.8u
+ wminrdl= 10.0u

***************************************
* differences between the electrical  *
*      and scaled drawn widths        *
***************************************
.param
+ nfom_dw = 0.017u
+ pfom_dw = 0.004u
+ poly_dw = -0.056u
+ li_dw =  0.017u
+ m1_dw = -0.039u
+ m2_dw = -0.039u
+ m3_dw = -0.025u
+ m4_dw = -0.025u
+ m5_dw = -0.09u
+ rdl_dw = 0.0u


********************************************************************
*          model for interconnect capacitance and resistance       *
********************************************************************

.model mcp1f   c tc1=0 tc2=0 cox=cp1f   capsw=cp1fsw     w=wminp1 tref=25

.model mcl1f   c tc1=0 tc2=0 cox=cl1f   capsw=cl1fsw     w=wminl1 tref=25
.model mcl1d   c tc1=0 tc2=0 cox=cl1d   capsw=cl1dsw     w=wminl1 tref=25
.model mcl1p1  c tc1=0 tc2=0 cox=cl1p1  capsw=cl1p1sw    w=wminl1 tref=25

.model mcm1f   c tc1=0 tc2=0 cox=cm1f   capsw=cm1fsw     w=wminm1 tref=25
.model mcm1d   c tc1=0 tc2=0 cox=cm1d   capsw=cm1dsw     w=wminm1 tref=25
.model mcm1p1  c tc1=0 tc2=0 cox=cm1p1  capsw=cm1p1sw    w=wminm1 tref=25
.model mcm1l1  c tc1=0 tc2=0 cox=cm1l1  capsw=cm1l1sw    w=wminm1 tref=25

.model mcm2f   c tc1=0 tc2=0 cox=cm2f   capsw=cm2fsw     w=wminm2  tref=25
.model mcm2d   c tc1=0 tc2=0 cox=cm2d   capsw=cm2dsw     w=wminm2  tref=25
.model mcm2p1  c tc1=0 tc2=0 cox=cm2p1  capsw=cm2p1sw    w=wminm2  tref=25
.model mcm2l1  c tc1=0 tc2=0 cox=cm2l1  capsw=cm2l1sw    w=wminm2  tref=25
.model mcm2m1  c tc1=0 tc2=0 cox=cm2m1  capsw=cm2m1sw    w=wminm2  tref=25

.model mcm3f   c tc1=0 tc2=0 cox=cm3f   capsw=cm3fsw     w=wminm3  tref=25
.model mcm3d   c tc1=0 tc2=0 cox=cm3d   capsw=cm3dsw     w=wminm3  tref=25
.model mcm3p1  c tc1=0 tc2=0 cox=cm3p1  capsw=cm3p1sw    w=wminm3  tref=25
.model mcm3l1  c tc1=0 tc2=0 cox=cm3l1  capsw=cm3l1sw    w=wminm3  tref=25
.model mcm3m1  c tc1=0 tc2=0 cox=cm3m1  capsw=cm3m1sw    w=wminm3  tref=25
.model mcm3m2  c tc1=0 tc2=0 cox=cm3m2  capsw=cm3m2sw    w=wminm3  tref=25

.model mcm4f   c tc1=0 tc2=0 cox=cm4f   capsw=cm4fsw     w=wminm4  tref=25
.model mcm4d   c tc1=0 tc2=0 cox=cm4d   capsw=cm4dsw     w=wminm4  tref=25
.model mcm4p1  c tc1=0 tc2=0 cox=cm4p1  capsw=cm4p1sw    w=wminm4  tref=25
.model mcm4l1  c tc1=0 tc2=0 cox=cm4l1  capsw=cm4l1sw    w=wminm4  tref=25
.model mcm4m1  c tc1=0 tc2=0 cox=cm4m1  capsw=cm4m1sw    w=wminm4  tref=25
.model mcm4m2  c tc1=0 tc2=0 cox=cm4m2  capsw=cm4m2sw    w=wminm4  tref=25
.model mcm4m3  c tc1=0 tc2=0 cox=cm4m3  capsw=cm4m3sw    w=wminm4  tref=25

.model mcm5f   c tc1=0 tc2=0 cox=cm5f   capsw=cm5fsw     w=wminm5  tref=25
.model mcm5d   c tc1=0 tc2=0 cox=cm5d   capsw=cm5dsw     w=wminm5  tref=25
.model mcm5p1  c tc1=0 tc2=0 cox=cm5p1  capsw=cm5p1sw    w=wminm5  tref=25
.model mcm5l1  c tc1=0 tc2=0 cox=cm5l1  capsw=cm5l1sw    w=wminm5  tref=25
.model mcm5m1  c tc1=0 tc2=0 cox=cm5m1  capsw=cm5m1sw    w=wminm5  tref=25
.model mcm5m2  c tc1=0 tc2=0 cox=cm5m2  capsw=cm5m2sw    w=wminm5  tref=25
.model mcm5m3  c tc1=0 tc2=0 cox=cm5m3  capsw=cm5m3sw    w=wminm5  tref=25
.model mcm5m4  c tc1=0 tc2=0 cox=cm5m4  capsw=cm5m4sw    w=wminm5  tref=25

.model mcrdlf   c tc1=0 tc2=0 cox=crdlf   capsw=crdlfsw     w=wminrdl  tref=25
.model mcrdld   c tc1=0 tc2=0 cox=crdld   capsw=crdldsw     w=wminrdl  tref=25
.model mcrdlp1  c tc1=0 tc2=0 cox=crdlp1  capsw=crdlp1sw    w=wminrdl  tref=25
.model mcrdll1  c tc1=0 tc2=0 cox=crdll1  capsw=crdll1sw    w=wminrdl  tref=25
.model mcrdlm1  c tc1=0 tc2=0 cox=crdlm1  capsw=crdlm1sw    w=wminrdl  tref=25
.model mcrdlm2  c tc1=0 tc2=0 cox=crdlm2  capsw=crdlm2sw    w=wminrdl  tref=25
.model mcrdlm3  c tc1=0 tc2=0 cox=crdlm3  capsw=crdlm3sw    w=wminrdl  tref=25
.model mcrdlm4  c tc1=0 tc2=0 cox=crdlm4  capsw=crdlm4sw    w=wminrdl  tref=25
.model mcrdlm5  c tc1=0 tc2=0 cox=crdlm5  capsw=crdlm5sw    w=wminrdl  tref=25

.model mrdn       r tc1r=tc1rsn     tc2r=tc2rsn     rsh=rdn   dw="-tol_nfom/2-nfom_dw/2" tref=30
.model mrdp       r tc1r=tc1rsp     tc2r=tc2rsp     rsh=rdp   dw="-tol_pfom/2-pfom_dw/2" tref=30
.model mrdn_hv    r tc1r=tc1rsn_h   tc2r=tc2rsn_h     rsh=rdn_hv dw="-tol_nfom/2-nfom_dw/2" tref=30
.model mrdp_hv    r tc1r=tc1rsp_h   tc2r=tc2rsp_h     rsh=rdp_hv dw="-tol_pfom/2-pfom_dw/2" tref=30
.model mrnw       r tc1r=tc1rsnw    tc2r=tc2rsnw    rsh=rnw   dw="-tol_nw/2" tref=30
.model mrl1       r tc1r=tc1rl1     tc2r=tc2rl1     rsh=rl1   dw="-tol_li/2-li_dw/2" tref=30
.model mrm1       r tc1r=tc1rm1     tc2r=tc2rm1     rsh=rm1   dw="-tol_m1/2-m1_dw/2" tref=30
.model mrm2       r tc1r=tc1rm2     tc2r=tc2rm2     rsh=rm2   dw="-tol_m2/2-m2_dw/2" tref=30
.model mrm3       r tc1r=tc1rm3     tc2r=tc2rm3     rsh=rm3   dw="-tol_m3/2-m3_dw/2" tref=30
.model mrm4       r tc1r=tc1rm4     tc2r=tc2rm4     rsh=rm4   dw="-tol_m4/2-m4_dw/2" tref=30
.model mrm5       r tc1r=tc1rm5     tc2r=tc2rm5     rsh=rm5   dw="-tol_m5/2-m5_dw/2" tref=30
.model mrrdl      r tc1r=tc1rrdl    tc2r=tc2rrdl    rsh=rrdl  dw="-tol_rdl/2-rdl_dw/2" tref=25
.model mrcn       r tc1r=tc1rcn    tc2r=tc2rcn      res=rcn          tref=30
.model mrcp       r tc1r=tc1rcp    tc2r=tc2rcp      res=rcp          tref=30
.model mrcp1      r tc1r=tc1rcgp    tc2r=tc2rcgp    res=rcp1         tref=30
.model mrcl1      r tc1r=tc1rcl1    tc2r=tc2rcl1    res=rcl1         tref=30
.model mrcvia     r tc1r=tc1rvia  tc2r=tc2rvia      res=rcvia        tref=30
.model mrcvia2    r tc1r=tc1rvia2  tc2r=tc2rvia2    res=rcvia2       tref=30
.model mrcvia3    r tc1r=tc1rvia3  tc2r=tc2rvia3    res=rcvia3       tref=30
.model mrcvia4    r tc1r=tc1rvia4  tc2r=tc2rvia4    res=rcvia4       tref=30
.model mrcrdlcon  r tc1r=tc1rrdlcon  tc2r=tc2rrdlcon    res=rcrdlcon       tref=25

