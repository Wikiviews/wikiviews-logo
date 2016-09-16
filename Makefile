SIZE="48" "192" "500" "1000" "2000"

all: pngs

pngs: svg
	mkdir -p ./exports/png
	./render-pngs.py ${SIZE} | /bin/sh

pngs48dp: svg
	mkdir -p ./exports/png
	./render-pngs.py "48" | /bin/sh

pngs192dp: svg
	mkdir -p ./exports/png
	./render-pngs.py "192" | /bin/sh

pngs500dp: svg
	mkdir -p ./exports/png
	./render-pngs.py "500" | /bin/sh

pngs1000dp: svg
	mkdir -p ./exports/png
	./render-pngs.py "1000" | /bin/sh

pngs2000dp: svg
	mkdir -p ./exports/png
	./render-pngs.py "2000" | /bin/sh

svg:
	mkdir -p ./exports/svg
	cp ./logo.svg ./exports/svg

clean:
	rm -rf ./exports
