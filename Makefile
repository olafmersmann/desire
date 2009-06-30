.PHONEY: clean test check build install

install: clean
	R CMD INSTALL --no-multiarch pkg

test: install
	Rscript pkg/inst/unittests/runner.r

check: clean
	R CMD check pkg

clean:
	rm -fR pkg/src/*.o pkg/src/*.so pkg.Rcheck

