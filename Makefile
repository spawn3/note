all: dot
	lyx -e pdf4 androidesk-design.lyx

dot:
	dot -Tpng -O adesk-db.dot
	dot -Tpng -O adesk-arch.dot
	dot -Tpng -O adesk-nav.dot
	circo -Tpng -O adesk-pass.dot

clean:
	@rm -f *.pdf
	@rm -f *.png
	@rm -f *~
