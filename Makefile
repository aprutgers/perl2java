all: parser test

parser:  perly.yp
	yapp -v perly.yp
	yapp -m PerlParser perly.yp

test:
	perl yappie.pl test.pl
