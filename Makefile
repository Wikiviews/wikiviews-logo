all:

pngs: svg
	mkdir -p ./exports/png
	./render-pngs.py | /bin/sh

svg:
	mkdir -p ./exports/svg
	cp ./logo.svg ./exports/svg

