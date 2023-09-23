POETRY := poetry
TWINE := twine

venv:
	$(POETRY) shell

build:
	$(POETRY) install
	$(POETRY) shell
	$(POETRY) build

upload:
	$(TWINE) upload dist/*

clean:
	rm -rf dist

.PHONY: venv clean build, upload
