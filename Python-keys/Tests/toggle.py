import time
import RPi.GPIO as GPIO
import uinput

### Display ###

GPIO.setmode(GPIO.BCM)


# backlight off
while True:

    # backlight On
while True:

    ### End Display ###

GPIO.setup(27, GPIO.OUT)
GPIO.setup(17, GPIO.IN, pull_up_down=GPIO.PUD_UP)  # L Button for GPIO17
GPIO.setup(4, GPIO.IN, pull_up_down=GPIO.PUD_UP)  # R Button for GPIO4

events = (uinput.BTN_LEFT, uinput.BTN_RIGHT)
device = uinput.Device(events)

# Bools to keep track of movement
BTN_LEFT = False
BTN_RIGHT = False

while True:
    GPIO.output(27, GPIO.HIGH)
    time.sleep(.04)
    GPIO.output(27, GPIO.LOW)
    time.sleep(.04)

        i = 10
        # mouse BTN
        if (not BTN_LEFT) and (not GPIO.input(17)):  # mouse BTN_LEFT pressed
            BTN_LEFT = True
            device.emit(uinput.BTN_LEFT, 1)
        if BTN_LEFT and GPIO.input(17):              # mouse BTN_LEFT released
            BTN_LEFT = False
            device.emit(uinput.BTN_LEFT, 0)
        if (not BTN_RIGHT) and (not GPIO.input(4)):  # mouse BTN_LEFT pressed
            BTN_RIGHT = True
            device.emit(uinput.BTN_RIGHT, 1)
        if BTN_RIGHT and GPIO.input(4):              # mouse BTN_LEFT released
            BTN_RIGHT = False
            device.emit(uinput.BTN_RIGHT, 0)

        time.sleep(.02)  # Poll every 20ms (otherwise CPU load gets too
