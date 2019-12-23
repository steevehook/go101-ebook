epub:
	@echo "Creating ebook in EPUB format"
	pandoc --toc -o "books/Go 101.epub" src/metadata.txt \
	$(call chapters)

html:
	@echo "Creating ebook in HTML format"
	pandoc --toc -o "books/Go 101.html" --css=styles/style.css --self-contained -s \
	--metadata title="Go 101" \
	--metadata cover-image="images/cover.jpg" \
	$(call chapters)

define chapters
	chapter1.md \
    chapter2.md \
    chapter3.md \
    chapter4.md \
    chapter5.md \
    final.md
endef
