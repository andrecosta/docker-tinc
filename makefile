build:
	docker build -t byscontrol/tinc:1.1pre15 .
	docker tag byscontrol/tinc:1.1pre15 byscontrol/tinc:latest
