all: mindb.tar.gz

mindb.tar.gz:
	kraken-build --db mindb --add-to-library NC_002077.fna
	kraken-build --db mindb --download-taxonomy
	kraken-build --db mindb --build --kmer-len 16 --minimizer-len 3
	kraken-build --db mindb --clean
	tar -zxcf mindb.tar.gz mindb


clean:
	rm -rf mindb
