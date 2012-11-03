all: dot
	lyx -e pdf4 androidesk-design.lyx

dot:
	make -C dot

clean:
	@rm -f *.pdf
	@rm -f *.png
	@rm -f *~
