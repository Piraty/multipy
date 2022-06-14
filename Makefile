SRC := multipy


check:
	shfmt -p -ci -d $(SRC)
	shellcheck $(SRC)

clean:
	rm -rf Python-*

.PHONY: check clean
