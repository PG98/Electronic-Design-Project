#-*- coding:UTF-8 -*-
#产生pwm波形
import RPi.GPIO as GPIO
import time

#舵机引脚定义
pinx = 23
piny = 24

#设置GPIO口为BCM编码方式
GPIO.setmode(GPIO.BCM)

#忽略警告信息
GPIO.setwarnings(False)

#RGB三色灯初始化为输出模式
#舵机引脚设置为输出模式
def init():
    GPIO.setup(pinx, GPIO.OUT)
    GPIO.setup(piny, GPIO.OUT)

#定义一个脉冲函数，用来模拟方式产生pwm值
#时基脉冲为20ms，该脉冲高电平部分在0.5-
#2.5ms控制0-180度
def servo_pulse(angle, pin):
    pulsewidth = (angle*11) + 500
    GPIO.output(pin, GPIO.HIGH)
    time.sleep(pulsewidth/1000000.0)
    GPIO.output(pin, GPIO.LOW)
    time.sleep(20.0/1000-pulsewidth/1000000.0)

#舵机来回转动
def servo_rotate(pin):
    for pos in range(181):
        servo_pulse(pos, pin)
    time.sleep(0.009)
    for pos in reversed(range(181)):
        servo_pulse(pos, pin)
    time.sleep(0.009)

init()
angle_x = 0
angle_y = 0

while True:
    mode = raw_input('控制方式  1:上下左右  2:自动来回旋转 其他:退出\n')
    if mode=='1':
        while(True):
            direction = raw_input('输入WSAD进行控制,输入其他返回:')
            if direction=='W' or direction=='w':
                angle_y += 30
                if(angle_y>180):
                    angle_y = 180
                servo_pulse(angle_y, piny)
            elif direction=='S' or direction=='s':
                angle_y -=30
                if angle_y<0:
                    angle_y = 0
                servo_pulse(angle_y, piny)
            elif direction=='A' or direction=='a':
                angle_x += 30
                if angle_x>180: 
                    angle_x = 180
                servo_pulse(angle_x, pinx)
            elif direction=='D' or direction=='d':
                angle_x -=30
                if angle_x<0:
                    angle_x = 0
                servo_pulse(angle_x, pinx)
            else:
                break

    elif mode=='2':
        try:
            while True:
                servo_rotate(pinx)
        except KeyboardInterrupt:
            break
    else:
        break

GPIO.cleanup()

