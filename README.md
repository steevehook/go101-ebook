# go101-ebook
Go 101 eBook


## Generate book

pandoc --toc -o book.epub metadata.txt contents.markdown

pandoc --toc -o book.html --css=epub.css contents.markdown metadata.txt -s --metadata title="Go 101"
