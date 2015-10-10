develop:
	pip install -e .
	pip install "file://`pwd`#egg=wsgiadapter[tests]"

lint:
	@echo "Linting Python files"
	flake8 --ignore=E501,E225,E121,E123,E124,E125,E127,E128 wsgiadapter.py
	@echo ""

test-python:
	@echo "Running Python tests"
	python setup.py -q test || exit 1
	@echo ""

test: develop lint test-python