package main

import (
	"delay"

	"stm32/hal/gpio"
	"stm32/hal/system"
	"stm32/hal/system/timer/systick"
)

var (
	led7 = gpio.A.Pin(7)
	led8 = gpio.A.Pin(6)
)

func init() {
}

func main() {
	system.SetupPLL(8, 1, 72/8)
	systick.Setup(2e6)

	gpio.A.EnableClock(true)
	gpio.B.EnableClock(true)

	cfg := gpio.Config{Mode: gpio.Out, Speed: gpio.Low}
	led7.Setup(&cfg)
	led8.Setup(&cfg)

	for {
		led7.Set()
		led8.Clear()

		delay.Millisec(500)

		led7.Clear()
		led8.Set()

		delay.Millisec(500)
	}
}
