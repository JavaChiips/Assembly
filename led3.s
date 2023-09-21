GPIOC_DSRR		EQU		0x40020818
LED_ILLUM 		EQU 	0x00000001; PC0
	
				AREA asm_area, CODE, READONLY
					
; Export gpioa_bsrr_high_asm function location so that C compiler can find it and link
				EXPORT  led_3

led_3 						;assembly entry point for C function, do not delete


				LDR 	R0,=GPIOC_DSRR 			;Load address of GPIOA_BSRR to R0
				LDR 	R1,=LED_ILLUM 			;Load value(BS5 equals logic 1) to R1
				STR 	R1,[R0] 				;Put value into GPIOA_BSRR
				
; Return to C using link register 				
				BX 		LR
				
				END		; End of the program/function