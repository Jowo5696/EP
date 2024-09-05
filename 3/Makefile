

.PHONY: run plot copy clean

run:
	cd src;\
	python Kennlinien.py


plot:
	cd plot;\
	gnuplot plot.gnu

copy:
	cp plot/*.pdf latex/
	cp plot/*.tex latex/

clean:
	rm plot/*.pdf
	rm plot/*.tex
