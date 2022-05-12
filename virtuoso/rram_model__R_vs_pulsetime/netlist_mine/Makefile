
all: sim plot

sim:
	rm -rf input.rram.pulse.raw
	rm -rf out.*.txt
	rm -rf *.png
#	spectre -64 input.rram.scs -format tr0ascii
#	spectre -64 input.rram.scs -format psfascii
	spectre -64 input.rram.pulse.scs -format psfascii
	./runme_reformat_output

view:
#	cat input.rram.raw/tran.tran.tr0
#	tail -n +7 input.rram.raw/tran.tran.tr0
#	tail -n +7 input.rram.raw/tran.tran.tran
	tail -n +7 input.rram.pulse.raw/tran.tran.tran

plot:
	./plotdata.py
	emacs plotdata.I_Vd_vs_time.png &
	emacs plotdata.I_V.png &

clean:
	rm -rf *~
	rm -rf .*~
	rm -rf input.rram.pulse.raw
	rm -rf out.*.txt
	rm -rf *.png
