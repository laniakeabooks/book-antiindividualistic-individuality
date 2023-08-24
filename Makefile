.PHONY: all
all: pdf epub

.PHONY: pdf
pdf:
	rm -f ./dist/antiindividualistic-individuality.pdf
	cd tex && tectonic -X build
	cp ./tex/build/book/book.pdf ./dist/antiindividualistic-individuality.pdf

.PHONY: epub
epub:
	rm -f ./dist/antiindividualistic-individuality.epub
	cd epub && zip -X  -r ../dist/antiindividualistic-individuality.epub mimetype META-INF EPUB -x "*.DS_Store"

.PHONY: lint
lint:
	epubcheck ./dist/antiindividualistic-individuality.epub
