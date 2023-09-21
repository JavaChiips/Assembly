GPIOB_DSRR		EQU		0x40020418
LED_DEILLUM 	EQU 	0x00200000; PB5 Active Low
	
				AREA asm_area, CODE, READONLY
					
; Export gpioa_bsrr_low_asm function location so that C compiler can find it and link
				EXPORT  led_2


led_2			;assembly entry point for C function, do not delete


				LDR 	R0,=GPIOB_DSRR 			;Load address of GPIOA_BSRR to R0
				LDR 	R1,=LED_DEILLUM 		;Load value(BS5 equals logic 1) to R1
				STR 	R1,[R0] 				;Put value into GPIOA_BSRR
				
; Return to C using link register 				
				BX 		LR
				
				END		; End of the program/function