
f = README.md

README.md:
	echo "# Guessing Game " > $f
	echo "" >> $f
	echo "Make run time:" >> $f
	echo -n "**" >> $f
	echo -n `date` >> $f
	echo -n "**" >> $f
	echo "" >> $f
	echo "" >> $f
	echo "Number of code lines:" >> $f
	echo -n "**" >> $f
	echo -n `cat guessinggame.sh | wc -l` >> $f
	echo -n "**" >> $f
	echo "" >> $f
	echo "" >> $f

all:
	README.md

clean:
	rm -f README.md
