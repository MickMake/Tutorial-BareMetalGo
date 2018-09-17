ISRStack  = 2048;
MainStack = 2048;
TaskStack = 2048;
MaxTasks = 1;

/* bootRAM code should by placed at 0x200001E0. */
/*bootOffset = 0x1E0;*/

INCLUDE stm32/f103rb
INCLUDE stm32/loadflash
INCLUDE noos-cortexm

/* Include bootRAM and set it as entry point. */
/*ENTRY(bootRAM)*/
