import os,time,qrtools
import RPi.GPIO as GPIO

pin = 21

GPIO.setmode(GPIO.BCM)
GPIO.setup(pin, GPIO.OUT)

while True:
	time.sleep(1)
	os.system("fswebcam image.jpg")
	qr = qrtools.QR()
	qr.decode("/home/pi/code/image.jpg")
	print qr.data
	if qr.data!='xxxx':
		GPIO.output(pin, GPIO.HIGH)
	else:
		GPIO.output(pin, GPIO.LOW)
		time.sleep(2)


