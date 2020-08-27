.PHONY: install run lint test travis
deafult: install

install:
	pip install -r requirements.txt

run:
	python manage.py migrate
	python manage.py runserver 0.0.0.0:8000

lint:
	pylint app pygoat

test:
	coverage run manage.py test app
	coverage report

travis: lint test
