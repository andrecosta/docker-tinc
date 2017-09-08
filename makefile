build:
	docker build -t byscontrol/tinc-rpi:1.1pre15 .
	docker tag byscontrol/tinc-rpi:1.1pre15 byscontrol/tinc-rpi:latest
