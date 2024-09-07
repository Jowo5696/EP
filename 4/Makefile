
.PHONY: ex1 ex2 ex3 ex4 plot copy clean


ex1:
	cd src;\
	python ex1.py

ex2:
	cd src;\
	python ex2.py

ex3:
	cd src;\
	python ex3.py

ex4:
	cd src;\
	python ex4.py

plot:
	cd plot;\
	gnuplot plot.gnu

copy:
	cp plot/*.pdf tex/
	cp plot/*.tex tex/

clean:
	rm plot/*.pdf
	rm plot/*.tex
