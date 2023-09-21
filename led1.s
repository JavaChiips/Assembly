GPIOB_DSRR		EQU		0x40020418
LED_ILLUM_PB3 	EQU 	0x00000008 ;PB3
LED_ILLUM_PB4 	EQU 	0x00000010 ;PB4
LED_ILLUM_PB5 	EQU 	0x00000020 ;PB5
	
LED_OFF_PB3 	EQU 	0x00080000 ;PB3
LED_OFF_PB4 	EQU 	0x00100000 ;PB4
LED_OFF_PB5 	EQU 	0x00200000 ;PB5
	
				AREA asm_area, CODE, READONLY
					
; Export gpioa_bsrr_high_asm function location so that C compiler can find it and link
				EXPORT  led_1
				EXPORT  led_2
				EXPORT  led_3
				EXPORT	led_1_off
				EXPORT	led_2_off
				EXPORT	led_3_off

led_1					;assembly entry point for C function, do not delete


				LDR 	R0,=GPIOB_DSRR 			;Load address of GPIOA_BSRR to R0
				LDR 	R1,=LED_ILLUM_PB3 			;Load value(BS5 equals logic 1) to R1
				STR 	R1,[R0]
				BX 		LR
				
led_2					;assembly entry point for C function, do not delete


				LDR 	R0,=GPIOB_DSRR 			;Load address of GPIOA_BSRR to R0
				LDR 	R1,=LED_ILLUM_PB4 			;Load value(BS5 equals logic 1) to R1
				STR 	R1,[R0]
				BX 		LR
				
led_3					;assembly entry point for C function, do not delete


				LDR 	R0,=GPIOB_DSRR 			;Load address of GPIOA_BSRR to R0
				LDR 	R1,=LED_ILLUM_PB5 			;Load value(BS5 equals logic 1) to R1
				STR 	R1,[R0]
				BX 		LR
				
led_1_off				;assembly entry point for C function, do not delete


				LDR 	R0,=GPIOB_DSRR 			;Load address of GPIOA_BSRR to R0
				LDR 	R1,=LED_OFF_PB3 			;Load value(BS5 equals logic 1) to R1
				STR 	R1,[R0]
				BX 		LR
				
led_2_off				;assembly entry point for C function, do not delete


				LDR 	R0,=GPIOB_DSRR 			;Load address of GPIOA_BSRR to R0
				LDR 	R1,=LED_OFF_PB4 			;Load value(BS5 equals logic 1) to R1
				STR 	R1,[R0]
				BX 		LR
				
led_3_off				;assembly entry point for C function, do not delete


				LDR 	R0,=GPIOB_DSRR 			;Load address of GPIOA_BSRR to R0
				LDR 	R1,=LED_OFF_PB5 			;Load value(BS5 equals logic 1) to R1
				STR 	R1,[R0]
				BX 		LR
				
; Return to C using link register 				
				
				END		; End of the program/function