RCC_AHB1ENR		EQU 	0x40023830 				;Reset and Clock Control for AHB1

;-------------------------------------Addresses for Port A------------------------------------------------
GPIOA_MODER		EQU		0x40020000
GPIOA_OTYPER	EQU		0x40020004
GPIOA_OSPEEDR	EQU		0x40020008
GPIOA_PUPDR		EQU		0x4002000C

;Address for GPIOA Input Data Register
GPIOA_IDR		EQU		0x40020010
	
;Address for GPIOA Output Data Register	
GPIOA_ODR		EQU		0x40020014
	
;-------------------------------------Addresses for Port B------------------------------------------------
GPIOB_MODER		EQU		0x40020400
GPIOB_OTYPER	EQU		0x40020404
GPIOB_OSPEEDR	EQU		0x40020408
GPIOB_PUPDR		EQU		0x4002040C	

;Address for GPIOA Input Data Register
GPIOB_IDR		EQU		0x40020410
	
;Address for GPIOA Output Data Register	
GPIOB_ODR		EQU		0x40020414
	
;-------------------------------------Addresses for Port C------------------------------------------------
GPIOC_MODER		EQU		0x40020800
GPIOC_OTYPER	EQU		0x40020804
GPIOC_OSPEEDR	EQU		0x40020808
GPIOC_PUPDR		EQU		0x4002080C	

	
;Address for GPIOA Output Data Register	
GPIOC_ODR		EQU		0x40020814
	
;-----------------------------------END Addressing------------------------------------------------------

				AREA asm_area, CODE, READONLY
					
; Export init_copc_asm function location so that C compiler can find it and link
				EXPORT  init_gpioa_asm

init_gpioa_asm 										;assembly entry point for C function, do not delete


				; Turns on clock for GPIOA
				LDR 	R0,=RCC_AHB1ENR			;Load address of RCC_AHB1 to R0
				LDR 	R1,=0x00000007		    ;Put mask bits into R1
				STR 	R1,[R0] 				;Put new value back into RCC_AHB1ENR
				
				;------------------------SET UP FOR Port A---------------------------------------
				
				LDR 	R0,=GPIOA_MODER 		;Load GPIOA_MODER address to R0
				LDR 	R1,=0x00000400 			;Load new value to R1
				STR 	R1,[R0] 				;Put value into GPIOA_MODER									
				
												; Setup PORTA Pin 5 type to be push-pull
				LDR 	R0,=GPIOA_OTYPER 		;Load GPIOA_OTYPER address to R0
				LDR 	R1,=0x00000000 			;Load new value to R1
				STR 	R1,[R0] 				;Put value into GPIOA_OTYPER
				
												; Setup PORTA Pin 5 output speed to low				
				LDR 	R0,=GPIOA_OSPEEDR 		;Load GPIOA_OSPEEDR address to R0
				LDR 	R1,=0x00000000 			;Load new value to R1
				STR 	R1,[R0] 				;Put value into GPIOA_MODER
				
				;------------------------SET UP FOR Port B---------------------------------------
				
				LDR 	R0,=GPIOB_MODER 		;Load GPIOA_MODER address to R0
				LDR 	R1,=0x00000540 			;Load new value to R1
				STR 	R1,[R0] 				;Put value into GPIOA_MODER									
				
												; Setup PORTA Pin 5 type to be push-pull
				LDR 	R0,=GPIOB_OTYPER 		;Load GPIOA_OTYPER address to R0
				LDR 	R1,=0x00000000 			;Load new value to R1
				STR 	R1,[R0] 				;Put value into GPIOA_OTYPER
				
												; Setup PORTA Pin 5 output speed to low				
				LDR 	R0,=GPIOB_OSPEEDR 		;Load GPIOA_OSPEEDR address to R0
				LDR 	R1,=0x00000000 			;Load new value to R1
				STR 	R1,[R0] 
				
				;------------------------SET UP FOR Port C---------------------------------------
				
				LDR 	R0,=GPIOC_MODER 		;Load GPIOA_MODER address to R0
				LDR 	R1,=0x00000000 			;Load new value to R1
				STR 	R1,[R0] 				;Put value into GPIOA_MODER									
				
												; Setup PORTA Pin 5 type to be push-pull
				LDR 	R0,=GPIOC_OTYPER 		;Load GPIOA_OTYPER address to R0
				LDR 	R1,=0x00000000 			;Load new value to R1
				STR 	R1,[R0] 				;Put value into GPIOA_OTYPER
				
												; Setup PORTA Pin 5 output speed to low				
				LDR 	R0,=GPIOC_OSPEEDR 		;Load GPIOA_OSPEEDR address to R0
				LDR 	R1,=0x00000000 			;Load new value to R1
				STR 	R1,[R0] 
				
; Return to C using link register 
				
				BX	LR
				
				END			; End of the program/function