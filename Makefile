#-----------------------------------------------------
# Some usefull instructions...
#
BOOKS = goals.adoc environment.adoc project.adoc system.adoc changelog.adoc
#-----------------------------------------------------

all: main.pdf index.html 

# main.adoc: main-template.adoc $(BOOKS)
# 	mvn asciidoc-template::build

index.html: main.adoc $(BOOKS)
	asciidoctor -a toc=left -o index.html $<

%.html: %.adoc 
	asciidoctor -a toc=left $<

main.pdf: main.adoc $(BOOKS)
	asciidoctor-pdf -a toc=2 -a pdf-backend  main.adoc

clean:
	rm *.html

deploy: index.html
	@echo "========================================"
	@echo "==> Deploy updates "
	git pull; git commit -am "🤖 DEPLOY: last updates"; git pull; git push