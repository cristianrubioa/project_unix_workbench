README:
	touch README.md
	echo "Title: guessinggame" > README.md
	echo "Date:" `date +'%y/%m/%d %H:%M:%S'` >> README.md
	echo "Number of Lines:" `wc -l guessinggame.sh | egrep -o "[0-9]+"` >> README.md