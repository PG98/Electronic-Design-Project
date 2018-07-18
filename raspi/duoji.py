#-*- coding:UTF-8 -*-
#产生pwm波形
import RPi.GPIO as GPIO
import time

#舵机引脚定义
ServoPin = 23

#设置GPIO口为BCM编码方式
GPIO.setmode(GPIO.BCM)

#忽略警告信息
GPIO.setwarnings(False)

#RGB三色灯初始化为输出模式
#舵机引脚设置为输出模式
def init():
    GPIO.setup(ServoPin, GPIO.OUT)

#定义一个脉冲函数，用来模拟方式产生pwm值
#时基脉冲为20ms，该脉冲高电平部分在0.5-
#2.5ms控制0-180度
def servo_pulse(myangle):
    pulsewidth = (myangle * 11) + 500
    GPIO.output(ServoPin, GPIO.HIGH)
    time.sleep(pulsewidth/1000000.0)
    GPIO.output(ServoPin, GPIO.LOW)
    time.sleep(20.0/1000-pulsewidth/1000000.0)
		
#舵机来回转动
def servo_control_color():
    for pos in range(181):
        servo_pulse(pos)
	time.sleep(0.009) 
    for pos in reversed(range(181)):
        servo_pulse(pos)
	time.sleep(0.009)

#延时2s		
time.sleep(2)

#try/except语句用来检测try语句块中的错误，
#从而让except语句捕获异常信息并处理。
try:
    init()
    while True:
 	servo_control_color()
		
except KeyboardInterrupt:
    pass
GPIO.cleanup()

