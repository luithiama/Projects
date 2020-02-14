;; start of maze

.ORIG x3200

; first row
;; First block
L00N 	TRAP x31
		JSRR R5
		BRn L00W	; LEFT to turn to west
		BRz L00E	; RIGHT to turn to east
		BRp L10N	; Next row

L00E	TRAP x32
		JSRR R5
		BRn L00N 	; LEFT to go north
		BRz L00S	; RIGHT to go south
		BRp L01E	; Next block
		
L00S	TRAP x36
		JSRR R5
		BRn L00E	; LEFT to go east
		BRz L00W	; RIGHT to go west
		BRp x0		; Out of bounds
		
L00W	TRAP x37
		JSRR R5
		BRn L00S	; LEFT to go south
		BRz L00N	; RIGHT to go north
		BRp x0		; Out of bounds

;; Second block

L01N 	TRAP x34
		JSRR R5
		BRn L01W	; LEFT to turn to west
		BRz L01E	; RIGHT to turn to east
		BRp L11N	; Next row

L01E	TRAP x30
		JSRR R5
		BRn L01N 	; LEFT to go north
		BRz L01S	; RIGHT to go south
		BRp L02E	; Next block
		
L01S	TRAP x34
		JSRR R5
		BRn L01E	; LEFT to go east
		BRz L01W	; RIGHT to go west
		BRp x0		; Out of bounds
		
L01W	TRAP x30
		JSRR R5
		BRn L01S	; LEFT to go south
		BRz L01N	; RIGHT to go north
		BRp L00W	; Go back one block
		
;; Third block
L02N 	TRAP x34
		JSRR R5
		BRn L02W	; LEFT to turn to west
		BRz L02E	; RIGHT to turn to east
		BRp L12N	; Next row

L02E	TRAP x30
		JSRR R5
		BRn L02N 	; LEFT to go north
		BRz L02S	; RIGHT to go south
		BRp L03E	; Next block
		
L02S	TRAP x34
		JSRR R5
		BRn L02E	; LEFT to go east
		BRz L02W	; RIGHT to go west
		BRp x0		; Out of bounds
		
L02W	TRAP x30
		JSRR R5
		BRn L02S	; LEFT to go south
		BRz L02N	; RIGHT to go north
		BRp L01W	; Go back one block

;; Fourth block

L03N	TRAP x34
		JSRR R5
		BRn L03W	; LEFT to turn to west
		BRz L03E	; RIGHT to turn to east
		BRp L13N	; Next row

L03E	TRAP x30
		JSRR R5
		BRn L03N 	; LEFT to go north
		BRz L03S	; RIGHT to go south
		BRp L04E	; Next block
		
L03S	TRAP x34
		JSRR R5
		BRn L03E	; LEFT to go east
		BRz L03W	; RIGHT to go west
		BRp x0		; Out of bounds
		
L03W	TRAP x30
		JSRR R5
		BRn L03S	; LEFT to go south
		BRz L03N	; RIGHT to go north
		BRp L02W	; Go back one block
		
;; Fifth block
		
L04N	TRAP x36
		JSRR R5
		BRn L04W	; LEFT to turn to west
		BRz L04E	; RIGHT to turn to east
		BRp L14N	; Next row

L04E	TRAP x35
		JSRR R5
		BRn L04N 	; LEFT to go north
		BRz L04S	; RIGHT to go south
		BRp L05E	; Next block
		
L04S	TRAP x37
		JSRR R5
		BRn L04E	; LEFT to go east
		BRz L04W	; RIGHT to go west
		BRp x0		; Out of bounds
		
L04W	TRAP x30
		JSRR R5
		BRn L04S	; LEFT to go south
		BRz L04N	; RIGHT to go north
		BRp L03W	; Go back one block
		
;; Sixth block
		
L05N 	TRAP x31
		JSRR R5
		BRn L05W	; LEFT to turn to west
		BRz L05E	; RIGHT to turn to east
		BRp L15N	; Next row

L05E	TRAP x32
		JSRR R5
		BRn L05N 	; LEFT to go north
		BRz L05S	; RIGHT to go south
		BRp L06E	; Next block
		
L05S	TRAP x36
		JSRR R5
		BRn L05E	; LEFT to go east
		BRz L05W	; RIGHT to go west
		BRp x0		; Out of bounds
		
L05W	TRAP x37
		JSRR R5
		BRn L05S	; LEFT to go south
		BRz L05N	; RIGHT to go north
		BRp L04W	; Go Back one block
		
;; Seventh block
		
L06N	TRAP x36
		JSRR R5
		BRn L06W; LEFT to turn to west
		BRz L06E; RIGHT to turn to east
		BRp L16N; Next row

L06E	TRAP x35
		JSRR R5
		BRn L06N ; LEFT to go north
		BRz L06S; RIGHT to go south
		BRp L07E; Next block
		
L06S	TRAP x37
		JSRR R5
		BRn L06E; LEFT to go east
		BRz L06W; RIGHT to go west
		BRp x0; Out of bounds
		
L06W	TRAP x30
		JSRR R5
		BRn L06S; LEFT to go south
		BRz L06N; RIGHT to go north
		BRp L05W; Go back one block
		
;; Eighth block
		
L07N	TRAP x31
		JSRR R5
		BRn L07W; LEFT to turn to west
		BRz L07E; RIGHT to turn to east
		BRp L17N; Next row

L07E	TRAP x32
		JSRR R5
		BRn L07N ; LEFT to go north
		BRz L07S; RIGHT to go south
		BRp L08E; Next block
		
L07S	TRAP x36
		JSRR R5
		BRn L07E; LEFT to go east
		BRz L07W; RIGHT to go west
		BRp x0; Out of bounds
		
L07W	TRAP x37
		JSRR R5
		BRn L07S; LEFT to go south
		BRz L07N; RIGHT to go north
		BRp L06W; Go back one block
		
;; Ninth block

L08N	TRAP x34
		JSRR R5
		BRn L08W; LEFT to turn to west
		BRz L08E; RIGHT to turn to east
		BRp L18N; Next row

L08E	TRAP x30
		JSRR R5
		BRn L08N ; LEFT to go north
		BRz L08S; RIGHT to go south
		BRp L09E; Next block
		
L08S	TRAP x34
		JSRR R5
		BRn L08E; LEFT to go east
		BRz L08W; RIGHT to go west
		BRp x0; Out of bounds
		
L08W	TRAP x30
		JSRR R5
		BRn L08S; LEFT to go south
		BRz L08N; RIGHT to go north
		BRp L07W; Go back one block
		
;; Tenth block
		
L09N	TRAP x32
		JSRR R5
		BRn L09W; LEFT to turn to west
		BRz L09E; RIGHT to turn to east
		BRp L19N; Next row

L09E	TRAP x36
		JSRR R5
		BRn L09N 	; LEFT to go north
		BRz L09S	; RIGHT to go south
		BRp x0		; Out of bounds
		
L09S	TRAP x37
		JSRR R5
		BRn L09E; LEFT to go east
		BRz L09W; RIGHT to go west
		BRp x0; Out of bounds
		
L09W	TRAP x31
		JSRR R5
		BRn L09S; LEFT to go south
		BRz L09N; RIGHT to go north
		BRp L08W; Go back one block
		
;; Second row		
;; First block
L10N 	TRAP x30
		JSRR R5
		BRn L10W	; LEFT to turn to west
		BRz L10E	; RIGHT to turn to east
		BRp L20N	; Next row

L10E	TRAP x34
		JSRR R5
		BRn L10N 	; LEFT to go north
		BRz L10S	; RIGHT to go south
		BRp L11E	; Next block
		
L10S	TRAP x30
		JSRR R5
		BRn L10E	; LEFT to go east
		BRz L10W	; RIGHT to go west
		BRp L00S	; Down one row
		
L10W	TRAP x34
		JSRR R5
		BRn L10S	; LEFT to go south
		BRz L10N	; RIGHT to go north
		BRp x0		; Out of bounds

;; Second block

L11N 	TRAP x31
		JSRR R5
		BRn L11W	; LEFT to turn to west
		BRz L11E	; RIGHT to turn to east
		BRp L21N	; Up row

L11E	TRAP x32
		JSRR R5
		BRn L11N 	; LEFT to go north
		BRz L11S	; RIGHT to go south
		BRp L12E	; Next block
		
L11S	TRAP x36
		JSRR R5
		BRn L11E	; LEFT to go east
		BRz L11W	; RIGHT to go west
		BRp L01S	; Down one row
		
L11W	TRAP x37
		JSRR R5
		BRn L11S	; LEFT to go south
		BRz L11N	; RIGHT to go north
		BRp L10W	; Go back one block
		
;; Third block
L12N 	TRAP x34
		JSRR R5
		BRn L12W	; LEFT to turn to west
		BRz L12E	; RIGHT to turn to east
		BRp L22N	; Next row

L12E	TRAP x30
		JSRR R5
		BRn L12N 	; LEFT to go north
		BRz L12S	; RIGHT to go south
		BRp L13E	; Next block
		
L12S	TRAP x34
		JSRR R5
		BRn L12E	; LEFT to go east
		BRz L12W	; RIGHT to go west
		BRp L02S	; Down one row
		
L12W	TRAP x30
		JSRR R5
		BRn L12S	; LEFT to go south
		BRz L12N	; RIGHT to go north
		BRp L11W	; Go back one block

;; Fourth block

L13N	TRAP x34
		JSRR R5
		BRn L13W	; LEFT to turn to west
		BRz L13E	; RIGHT to turn to east
		BRp L23N	; Next row

L13E	TRAP x30
		JSRR R5
		BRn L13N 	; LEFT to go north
		BRz L13S	; RIGHT to go south
		BRp L14E	; Next block
		
L13S	TRAP x34
		JSRR R5
		BRn L13E	; LEFT to go east
		BRz L13W	; RIGHT to go west
		BRp L03S	; Down one row
		
L13W	TRAP x30
		JSRR R5
		BRn L13S	; LEFT to go south
		BRz L13N	; RIGHT to go north
		BRp L12W	; Go back one block
		
;; Fifth block
		
L14N	TRAP x34
		JSRR R5
		BRn L14W	; LEFT to turn to west
		BRz L14E	; RIGHT to turn to east
		BRp L24N	; Next row

L14E	TRAP x30
		JSRR R5
		BRn L14N 	; LEFT to go north
		BRz L14S	; RIGHT to go south
		BRp L15E	; Next block
		
L14S	TRAP x34
		JSRR R5
		BRn L14E	; LEFT to go east
		BRz L14W	; RIGHT to go west
		BRp L04S	; Go back one row
		
L14W	TRAP x30
		JSRR R5
		BRn L14S	; LEFT to go south
		BRz L14N	; RIGHT to go north
		BRp L13W	; Go back one block
		
;; Sixth block
		
L15N 	TRAP x36
		JSRR R5
		BRn L15W	; LEFT to turn to west
		BRz L15E	; RIGHT to turn to east
		BRp L25N	; Next row

L15E	TRAP x37
		JSRR R5
		BRn L15N 	; LEFT to go north
		BRz L15S	; RIGHT to go south
		BRp L16E	; Next block
		
L15S	TRAP x31
		JSRR R5
		BRn L15E	; LEFT to go east
		BRz L15W	; RIGHT to go west
		BRp L05S	; Down one row
		
L15W	TRAP x32
		JSRR R5
		BRn L15S	; LEFT to go south
		BRz L15N	; RIGHT to go north
		BRp L14W	; Go back one block
		
;; Seventh block
		
L16N	TRAP x37
		JSRR R5
		BRn L16W	; LEFT to turn to west
		BRz L16E	; RIGHT to turn to east
		BRp L26N	; Next row

L16E	TRAP x30
		JSRR R5
		BRn L16N 	; LEFT to go north
		BRz L16S	; RIGHT to go south
		BRp L17E	; Next block
		
L16S	TRAP x36
		JSRR R5
		BRn L16E	; LEFT to go east
		BRz L16W	; RIGHT to go west
		BRp L06S	; Down one row
		
L16W	TRAP x35
		JSRR R5
		BRn L16S	; LEFT to go south
		BRz L16N	; RIGHT to go north
		BRp L15W	; Go back one block
		
;; Eighth block
		
L17N	TRAP x36
		JSRR R5
		BRn L17W	; LEFT to turn to west
		BRz L17E	; RIGHT to turn to east
		BRp L27N	; Next row

L17E	TRAP x37
		JSRR R5
		BRn L17N 	; LEFT to go north
		BRz L17S	; RIGHT to go south
		BRp L18E	; Next block
		
L17S	TRAP x31
		JSRR R5
		BRn L17E	; LEFT to go east
		BRz L17W	; RIGHT to go west
		BRp L07S	; Down one row
		
L17W	TRAP x32
		JSRR R5
		BRn L17S	; LEFT to go south
		BRz L17N	; RIGHT to go north
		BRp L16W	; Go back one block
		
;; Ninth block

L18N	TRAP x31
		JSRR R5
		BRn L18W	; LEFT to turn to west
		BRz L18E	; RIGHT to turn to east
		BRp L28N	; Next row

L18E	TRAP x32
		JSRR R5
		BRn L18N 	; LEFT to go north
		BRz L18S	; RIGHT to go south
		BRp L19E	; Next block
		
L18S	TRAP x36
		JSRR R5
		BRn L18E	; LEFT to go east
		BRz L18W	; RIGHT to go west
		BRp L08S	; Down one row
		
L18W	TRAP x37
		JSRR R5
		BRn L18S	; LEFT to go south
		BRz L18N	; RIGHT to go north
		BRp L17W	; Go back one block
		
;; Tenth block
		
L19N	TRAP x32
		JSRR R5
		BRn L19W	; LEFT to turn to west
		BRz L19E	; RIGHT to turn to east
		BRp L29N	; Next row

L19E	TRAP x34
		JSRR R5
		BRn L19N 	; LEFT to go north
		BRz L19S	; RIGHT to go south
		BRp x0		; Out of bounds
		
L19S	TRAP x31
		JSRR R5
		BRn L19E	; LEFT to go east
		BRz L19W	; RIGHT to go west
		BRp L09S	; Down one row
		
L19W	TRAP x33
		JSRR R5
		BRn L19S	; LEFT to go south
		BRz L19N	; RIGHT to go north
		BRp L18W	; Go back one block
		
;; Third row		
;; First block
L20N 	TRAP x30
		JSRR R5
		BRn L20W	; LEFT to turn to west
		BRz L20E	; RIGHT to turn to east
		BRp L30N	; Next row

L20E	TRAP x34
		JSRR R5
		BRn L20N 	; LEFT to go north
		BRz L20S	; RIGHT to go south
		BRp L21E	; Next block
		
L20S	TRAP x30
		JSRR R5
		BRn L20E	; LEFT to go east
		BRz L20W	; RIGHT to go west
		BRp L10S	; Down one row
		
L20W	TRAP x34
		JSRR R5
		BRn L20S	; LEFT to go south
		BRz L20N	; RIGHT to go north
		BRp x0		; Out of bounds

;; Second block

L21N 	TRAP x30
		JSRR R5
		BRn L21W	; LEFT to turn to west
		BRz L21E	; RIGHT to turn to east
		BRp L31N	; Up row

L21E	TRAP x34
		JSRR R5
		BRn L21N 	; LEFT to go north
		BRz L21S	; RIGHT to go south
		BRp L22E	; Next block
		
L21S	TRAP x30
		JSRR R5
		BRn L21E	; LEFT to go east
		BRz L21W	; RIGHT to go west
		BRp L11S	; Down one row
		
L21W	TRAP x34
		JSRR R5
		BRn L21S	; LEFT to go south
		BRz L21N	; RIGHT to go north
		BRp L20W	; Go back one block
		
;; Third block
L22N 	TRAP x37
		JSRR R5
		BRn L22W	; LEFT to turn to west
		BRz L22E	; RIGHT to turn to east
		BRp L32N	; Next row

L22E	TRAP x30
		JSRR R5
		BRn L22N 	; LEFT to go north
		BRz L22S	; RIGHT to go south
		BRp L23E	; Next block
		
L22S	TRAP x36
		JSRR R5
		BRn L22E	; LEFT to go east
		BRz L22W	; RIGHT to go west
		BRp L12S	; Down one row
		
L22W	TRAP x35
		JSRR R5
		BRn L22S	; LEFT to go south
		BRz L22N	; RIGHT to go north
		BRp L21W	; Go back one block

;; Fourth block

L23N	TRAP x34
		JSRR R5
		BRn L23W	; LEFT to turn to west
		BRz L23E	; RIGHT to turn to east
		BRp L33N	; Next row

L23E	TRAP x30
		JSRR R5
		BRn L23N 	; LEFT to go north
		BRz L23S	; RIGHT to go south
		BRp L24E	; Next block
		
L23S	TRAP x34
		JSRR R5
		BRn L23E	; LEFT to go east
		BRz L23W	; RIGHT to go west
		BRp L13S	; Down one row
		
L23W	TRAP x30
		JSRR R5
		BRn L23S	; LEFT to go south
		BRz L23N	; RIGHT to go north
		BRp L22W	; Go back one block
		
;; Fifth block
		
L24N	TRAP x32
		JSRR R5
		BRn L24W	; LEFT to turn to west
		BRz L24E	; RIGHT to turn to east
		BRp L34N	; Next row

L24E	TRAP x36
		JSRR R5
		BRn L24N 	; LEFT to go north
		BRz L24S	; RIGHT to go south
		BRp L25E	; Next block
		
L24S	TRAP x37
		JSRR R5
		BRn L24E	; LEFT to go east
		BRz L24W	; RIGHT to go west
		BRp L14S	; Down one row
		
L24W	TRAP x31
		JSRR R5
		BRn L24S	; LEFT to go south
		BRz L24N	; RIGHT to go north
		BRp L23W	; Go back one block
		
;; Sixth block
		
L25N 	TRAP x31
		JSRR R5
		BRn L25W	; LEFT to turn to west
		BRz L25E	; RIGHT to turn to east
		BRp L35N	; Next row

L25E	TRAP x32
		JSRR R5
		BRn L25N 	; LEFT to go north
		BRz L25S	; RIGHT to go south
		BRp L26E	; Next block
		
L25S	TRAP x36
		JSRR R5
		BRn L25E	; LEFT to go east
		BRz L25W	; RIGHT to go west
		BRp L15S	; Down one row
		
L25W	TRAP x37
		JSRR R5
		BRn L25S	; LEFT to go south
		BRz L25N	; RIGHT to go north
		BRp L24W;	 UP to go forward if possible
		
;; Seventh block
		
L26N	TRAP x33
		JSRR R5
		BRn L26W	; LEFT to turn to west
		BRz L26E	; RIGHT to turn to east
		BRp L36N	; Next row

L26E	TRAP x32
		JSRR R5
		BRn L26N 	; LEFT to go north
		BRz L26S	; RIGHT to go south
		BRp L27E	; Next block
		
L26S	TRAP x34
		JSRR R5
		BRn L26E	; LEFT to go east
		BRz L26W	; RIGHT to go west
		BRp L16S	; Down one row
		
L26W	TRAP x31
		JSRR R5
		BRn L26S	; LEFT to go south
		BRz L26N	; RIGHT to go north
		BRp L25W	; Go back one block
		
;; Eighth block
		
L27N	TRAP x34
		JSRR R5
		BRn L27W	; LEFT to turn to west
		BRz L27E	; RIGHT to turn to east
		BRp L37N	; Next row

L27E	TRAP x30
		JSRR R5
		BRn L27N 	; LEFT to go north
		BRz L27S	; RIGHT to go south
		BRp L28E	; Next block
		
L27S	TRAP x34
		JSRR R5
		BRn L27E	; LEFT to go east
		BRz L27W	; RIGHT to go west
		BRp L17S	; Down one row
		
L27W	TRAP x30
		JSRR R5
		BRn L27S	; LEFT to go south
		BRz L27N	; RIGHT to go north
		BRp L26W	; Go back one block
		
;; Ninth block

L28N	TRAP x36
		JSRR R5
		BRn L28W	; LEFT to turn to west
		BRz L28E	; RIGHT to turn to east
		BRp L38N	; Next row

L28E	TRAP x37
		JSRR R5
		BRn L28N 	; LEFT to go north
		BRz L28S	; RIGHT to go south
		BRp L29E	; Next block
		
L28S	TRAP x31
		JSRR R5
		BRn L28E	; LEFT to go east
		BRz L28W	; RIGHT to go west
		BRp L18S	; Down one row
		
L28W	TRAP x32
		JSRR R5
		BRn L28S	; LEFT to go south
		BRz L28N	; RIGHT to go north
		BRp L27W	; Go back one block
		
;; Tenth block
		
L29N	TRAP x30
		JSRR R5
		BRn L29W	; LEFT to turn to west
		BRz L29E	; RIGHT to turn to east
		BRp L39N	; Next row

L29E	TRAP x34
		JSRR R5
		BRn L29N 	; LEFT to go north
		BRz L29S	; RIGHT to go south
		BRp x0		; Out of bounds
		
L29S	TRAP x30
		JSRR R5
		BRn L29E	; LEFT to go east
		BRz L29W	; RIGHT to go west
		BRp L19S	; Down one row
		
L29W	TRAP x34
		JSRR R5
		BRn L29S	; LEFT to go south
		BRz L29N	; RIGHT to go north
		BRp L28W	; Go back one block
		
;; Fourth row		
;; First block
L30N 	TRAP x37
		JSRR R5
		BRn L30W	; LEFT to turn to west
		BRz L30E	; RIGHT to turn to east
		BRp L40N	; Next row

L30E	TRAP x31
		JSRR R5
		BRn L30N 	; LEFT to go north
		BRz L30S	; RIGHT to go south
		BRp L31E	; Next block
		
L30S	TRAP x32
		JSRR R5
		BRn L30E	; LEFT to go east
		BRz L30W	; RIGHT to go west
		BRp L20S	; Down one row
		
L30W	TRAP x36
		JSRR R5
		BRn L30S	; LEFT to go south
		BRz L30N	; RIGHT to go north
		BRp x0		; Out of bounds

;; Second block

L31N 	TRAP x34
		JSRR R5
		BRn L31W	; LEFT to turn to west
		BRz L31E	; RIGHT to turn to east
		BRp L41N	; Up row

L31E	TRAP x31
		JSRR R5
		BRn L31N 	; LEFT to go north
		BRz L31S	; RIGHT to go south
		BRp L32E	; Next block
		
L31S	TRAP x33
		JSRR R5
		BRn L31E	; LEFT to go east
		BRz L31W	; RIGHT to go west
		BRp L21S	; Down one row
		
L31W	TRAP x32
		JSRR R5
		BRn L31S	; LEFT to go south
		BRz L31N	; RIGHT to go north
		BRp L30W	; Go back one block
		
;; Third block
L32N 	TRAP x33
		JSRR R5
		BRn L32W	; LEFT to turn to west
		BRz L32E	; RIGHT to turn to east
		BRp L42N	; Next row

L32E	TRAP x32
		JSRR R5
		BRn L32N 	; LEFT to go north
		BRz L32S	; RIGHT to go south
		BRp L33E	; Next block
		
L32S	TRAP x34
		JSRR R5
		BRn L32E	; LEFT to go east
		BRz L32W	; RIGHT to go west
		BRp L22S	; Down one row
		
L32W	TRAP x31
		JSRR R5
		BRn L32S	; LEFT to go south
		BRz L32N	; RIGHT to go north
		BRp L31W	; Go back one block

;; Fourth block

L33N	TRAP x32
		JSRR R5
		BRn L33W	; LEFT to turn to west
		BRz L33E	; RIGHT to turn to east
		BRp L43N	; Next row

L33E	TRAP x36
		JSRR R5
		BRn L33N 	; LEFT to go north
		BRz L33S	; RIGHT to go south
		BRp L34E	; Next block
		
L33S	TRAP x37
		JSRR R5
		BRn L33E	; LEFT to go east
		BRz L33W	; RIGHT to go west
		BRp L23S	; Down one row
		
L33W	TRAP x31
		JSRR R5
		BRn L33S	; LEFT to go south
		BRz L33N	; RIGHT to go north
		BRp L32W	; Go back one block
		
;; Fifth block
		
L34N	TRAP x31
		JSRR R5
		BRn L34W	; LEFT to turn to west
		BRz L34E	; RIGHT to turn to east
		BRp L44N	; Next row

L34E	TRAP x33
		JSRR R5
		BRn L34N 	; LEFT to go north
		BRz L34S	; RIGHT to go south
		BRp L35E	; Next block
		
L34S	TRAP x32
		JSRR R5
		BRn L34E	; LEFT to go east
		BRz L34W	; RIGHT to go west
		BRp L24S	; Down one row
		
L34W	TRAP x34
		JSRR R5
		BRn L34S	; LEFT to go south
		BRz L34N	; RIGHT to go north
		BRp L33W	; Go back one block
		
;; Sixth block
		
L35N 	TRAP x32
		JSRR R5
		BRn L35W	; LEFT to turn to west
		BRz L35E	; RIGHT to turn to east
		BRp L45N	; Next row

L35E	TRAP x34
		JSRR R5
		BRn L35N 	; LEFT to go north
		BRz L35S	; RIGHT to go south
		BRp L36E	; Next block
		
L35S	TRAP x31
		JSRR R5
		BRn L35E	; LEFT to go east
		BRz L35W	; RIGHT to go west
		BRp L25S	; Down one row
		
L35W	TRAP x33
		JSRR R5
		BRn L35S	; LEFT to go south
		BRz L35N	; RIGHT to go north
		BRp L34W;	 UP to go forward if possible
		
;; Seventh block
		
L36N	TRAP x30
		JSRR R5
		BRn L36W	; LEFT to turn to west
		BRz L36E	; RIGHT to turn to east
		BRp L46N	; Next row

L36E	TRAP x34
		JSRR R5
		BRn L36N 	; LEFT to go north
		BRz L36S	; RIGHT to go south
		BRp L37E	; Next block
		
L36S	TRAP x30
		JSRR R5
		BRn L36E	; LEFT to go east
		BRz L36W	; RIGHT to go west
		BRp L26S	; Down one row
		
L36W	TRAP x34
		JSRR R5
		BRn L36S	; LEFT to go south
		BRz L36N	; RIGHT to go north
		BRp L35W	; Go back one block
		
;; Eighth block
		
L37N	TRAP x37
		JSRR R5
		BRn L37W	; LEFT to turn to west
		BRz L37E	; RIGHT to turn to east
		BRp L47N	; Next row

L37E	TRAP x30
		JSRR R5
		BRn L37N	; LEFT to go north
		BRz L37S	; RIGHT to go south
		BRp L38E	; Next block
		
L37S	TRAP x36
		JSRR R5
		BRn L37E	; LEFT to go east
		BRz L37W	; RIGHT to go west
		BRp L27S	; Down one row
		
L37W	TRAP x35
		JSRR R5
		BRn L37S	; LEFT to go south
		BRz L37N	; RIGHT to go north
		BRp L36W	; Go back one block
		
;; Ninth block

L38N	TRAP x34
		JSRR R5
		BRn L38W	; LEFT to turn to west
		BRz L38E	; RIGHT to turn to east
		BRp L48N	; Next row

L38E	TRAP x30
		JSRR R5
		BRn L38N 	; LEFT to go north
		BRz L38S	; RIGHT to go south
		BRp L39E	; Next block
		
L38S	TRAP x34
		JSRR R5
		BRn L38E	; LEFT to go east
		BRz L38W	; RIGHT to go west
		BRp L28S	; Down one row
		
L38W	TRAP x30
		JSRR R5
		BRn L38S	; LEFT to go south
		BRz L38N	; RIGHT to go north
		BRp L37W	; Go back one block
		
;; Tenth block
		
L39N	TRAP x36
		JSRR R5
		BRn L39W	; LEFT to turn to west
		BRz L39E	; RIGHT to turn to east
		BRp L49N	; Next row

L39E	TRAP x37
		JSRR R5
		BRn L39N 	; LEFT to go north
		BRz L39S	; RIGHT to go south
		BRp x0		; Out of bounds
		
L39S	TRAP x31
		JSRR R5
		BRn L39E	; LEFT to go east
		BRz L39W	; RIGHT to go west
		BRp L29S	; Down one row
		
L39W	TRAP x32
		JSRR R5
		BRn L39S	; LEFT to go south
		BRz L39N	; RIGHT to go north
		BRp L38W	; Go back one block
		
;; fifth row		
;; First block
L40N 	TRAP x31
		JSRR R5
		BRn L40W	; LEFT to turn to west
		BRz L40E	; RIGHT to turn to east
		BRp L50N	; Next row

L40E	TRAP x32
		JSRR R5
		BRn L40N 	; LEFT to go north
		BRz L40S	; RIGHT to go south
		BRp L41E	; Next block
		
L40S	TRAP x36
		JSRR R5
		BRn L40E	; LEFT to go east
		BRz L40W	; RIGHT to go west
		BRp L30S	; Down one row
		
L40W	TRAP x37
		JSRR R5
		BRn L40S	; LEFT to go south
		BRz L40N	; RIGHT to go north
		BRp x0		; Out of bounds

;; Second block

L41N 	TRAP x34
		JSRR R5
		BRn L41W	; LEFT to turn to west
		BRz L41E	; RIGHT to turn to east
		BRp L51N	; Up row

L41E	TRAP x30
		JSRR R5
		BRn L41N 	; LEFT to go north
		BRz L41S	; RIGHT to go south
		BRp L42E	; Next block
		
L41S	TRAP x34
		JSRR R5
		BRn L41E	; LEFT to go east
		BRz L41W	; RIGHT to go west
		BRp L31S	; Down one row
		
L41W	TRAP x30
		JSRR R5
		BRn L41S	; LEFT to go south
		BRz L41N	; RIGHT to go north
		BRp L40W	; Go back one block
		
;; Third block
L42N 	TRAP x36
		JSRR R5
		BRn L42W	; LEFT to turn to west
		BRz L42E	; RIGHT to turn to east
		BRp L52N	; Next row

L42E	TRAP x37
		JSRR R5
		BRn L42N 	; LEFT to go north
		BRz L42S	; RIGHT to go south
		BRp L43E	; Next block
		
L42S	TRAP x31
		JSRR R5
		BRn L42E	; LEFT to go east
		BRz L42W	; RIGHT to go west
		BRp L32S	; Down one row
		
L42W	TRAP x32
		JSRR R5
		BRn L42S	; LEFT to go south
		BRz L42N	; RIGHT to go north
		BRp L41W	; Go back one block

;; Fourth block

L43N	TRAP x37
		JSRR R5
		BRn L43W	; LEFT to turn to west
		BRz L43E	; RIGHT to turn to east
		BRp L53N	; Next row

L43E	TRAP x31
		JSRR R5
		BRn L43N 	; LEFT to go north
		BRz L43S	; RIGHT to go south
		BRp L44E	; Next block
		
L43S	TRAP x32
		JSRR R5
		BRn L43E	; LEFT to go east
		BRz L43W	; RIGHT to go west
		BRp L33S	; Down one row
		
L43W	TRAP x36
		JSRR R5
		BRn L43S	; LEFT to go south
		BRz L43N	; RIGHT to go north
		BRp L42W	; Go back one block
		
;; Fifth block
		
L44N	TRAP x36
		JSRR R5
		BRn L44W	; LEFT to turn to west
		BRz L44E	; RIGHT to turn to east
		BRp L54N	; Next row

L44E	TRAP x37
		JSRR R5
		BRn L44N 	; LEFT to go north
		BRz L44S	; RIGHT to go south
		BRp L45E	; Next block
		
L44S	TRAP x31
		JSRR R5
		BRn L44E	; LEFT to go east
		BRz L44W	; RIGHT to go west
		BRp L34S	; Down one row
		
L44W	TRAP x32
		JSRR R5
		BRn L44S	; LEFT to go south
		BRz L44N	; RIGHT to go north
		BRp L43W	; Go back one block
		
;; Sixth block
		
L45N 	TRAP x35
		JSRR R5
		BRn L45W	; LEFT to turn to west
		BRz L45E	; RIGHT to turn to east
		BRp L55N	; Next row

L45E	TRAP x37
		JSRR R5
		BRn L45N 	; LEFT to go north
		BRz L45S	; RIGHT to go south
		BRp L46E	; Next block
		
L45S	TRAP x30
		JSRR R5
		BRn L45E	; LEFT to go east
		BRz L45W	; RIGHT to go west
		BRp L35S	; Down one row
		
L45W	TRAP x36
		JSRR R5
		BRn L45S	; LEFT to go south
		BRz L45N	; RIGHT to go north
		BRp L44W;	 UP to go forward if possible
		
;; Seventh block
		
L46N	TRAP x37
		JSRR R5
		BRn L46W	; LEFT to turn to west
		BRz L46E	; RIGHT to turn to east
		BRp L56N	; Next row

L46E	TRAP x31
		JSRR R5
		BRn L46N 	; LEFT to go north
		BRz L46S	; RIGHT to go south
		BRp L47E	; Next block
		
L46S	TRAP x32
		JSRR R5
		BRn L46E	; LEFT to go east
		BRz L46W	; RIGHT to go west
		BRp L36S	; Down one row
		
L46W	TRAP x36
		JSRR R5
		BRn L46S	; LEFT to go south
		BRz L46N	; RIGHT to go north
		BRp L45W	; Go back one block
		
;; Eighth block
		
L47N	TRAP x32
		JSRR R5
		BRn L47W	; LEFT to turn to west
		BRz L47E	; RIGHT to turn to east
		BRp L57N	; Next row

L47E	TRAP x36
		JSRR R5
		BRn L47N 	; LEFT to go north
		BRz L47S	; RIGHT to go south
		BRp L48E	; Next block
		
L47S	TRAP x37
		JSRR R5
		BRn L47E	; LEFT to go east
		BRz L47W	; RIGHT to go west
		BRp L37S	; Down one row
		
L47W	TRAP x31
		JSRR R5
		BRn L47S	; LEFT to go south
		BRz L47N	; RIGHT to go north
		BRp L46W	; Go back one block
		
;; Ninth block

L48N	TRAP x31
		JSRR R5
		BRn L48W	; LEFT to turn to west
		BRz L48E	; RIGHT to turn to east
		BRp L58N	; Next row

L48E	TRAP x32
		JSRR R5
		BRn L48N 	; LEFT to go north
		BRz L48S	; RIGHT to go south
		BRp L49E	; Next block
		
L48S	TRAP x36
		JSRR R5
		BRn L48E	; LEFT to go east
		BRz L48W	; RIGHT to go west
		BRp L38S	; Down one row
		
L48W	TRAP x37
		JSRR R5
		BRn L48S	; LEFT to go south
		BRz L48N	; RIGHT to go north
		BRp L47W	; Go back one block
		
;; Tenth block
		
L49N	TRAP x32
		JSRR R5
		BRn L49W	; LEFT to turn to west
		BRz L49E	; RIGHT to turn to east
		BRp L59N	; Next row

L49E	TRAP x36
		JSRR R5
		BRn L49N 	; LEFT to go north
		BRz L49S	; RIGHT to go south
		BRp x0		; Out of bounds
		
L49S	TRAP x37
		JSRR R5
		BRn L49E	; LEFT to go east
		BRz L49W	; RIGHT to go west
		BRp L39S	; Down one row
		
L49W	TRAP x31
		JSRR R5
		BRn L49S	; LEFT to go south
		BRz L49N	; RIGHT to go north
		BRp L48W	; Go back one block
		
;; Sixth row		
;; First block
L50N 	TRAP x37
		JSRR R5
		BRn L50W	; LEFT to turn to west
		BRz L50E	; RIGHT to turn to east
		BRp L60N	; Next row

L50E	TRAP x31
		JSRR R5
		BRn L50N 	; LEFT to go north
		BRz L50S	; RIGHT to go south
		BRp L51E	; Next block
		
L50S	TRAP x32
		JSRR R5
		BRn L50E	; LEFT to go east
		BRz L50W	; RIGHT to go west
		BRp L40S	; Down one row
		
L50W	TRAP x36
		JSRR R5
		BRn L50S	; LEFT to go south
		BRz L50N	; RIGHT to go north
		BRp x0		; Out of bounds

;; Second block

L51N 	TRAP x36
		JSRR R5
		BRn L51W	; LEFT to turn to west
		BRz L51E	; RIGHT to turn to east
		BRp L61N	; Up row

L51E	TRAP x35
		JSRR R5
		BRn L51N 	; LEFT to go north
		BRz L51S	; RIGHT to go south
		BRp L52E	; Next block
		
L51S	TRAP x37
		JSRR R5
		BRn L51E	; LEFT to go east
		BRz L51W	; RIGHT to go west
		BRp L41S	; Down one row
		
L51W	TRAP x30
		JSRR R5
		BRn L51S	; LEFT to go south
		BRz L51N	; RIGHT to go north
		BRp L50W	; Go back one block
		
;; Third block
L52N 	TRAP x31
		JSRR R5
		BRn L52W	; LEFT to turn to west
		BRz L52E	; RIGHT to turn to east
		BRp L62N	; Next row

L52E	TRAP x32
		JSRR R5
		BRn L52N 	; LEFT to go north
		BRz L52S	; RIGHT to go south
		BRp L53E	; Next block
		
L52S	TRAP x36
		JSRR R5
		BRn L52E	; LEFT to go east
		BRz L52W	; RIGHT to go west
		BRp L42S	; Down one row
		
L52W	TRAP x37
		JSRR R5
		BRn L52S	; LEFT to go south
		BRz L52N	; RIGHT to go north
		BRp L51W	; Go back one block

;; Fourth block

L53N	TRAP x34
		JSRR R5
		BRn L53W	; LEFT to turn to west
		BRz L53E	; RIGHT to turn to east
		BRp L63N	; Next row

L53E	TRAP x30
		JSRR R5
		BRn L53N 	; LEFT to go north
		BRz L53S	; RIGHT to go south
		BRp L54E	; Next block
		
L53S	TRAP x34
		JSRR R5
		BRn L53E	; LEFT to go east
		BRz L53W	; RIGHT to go west
		BRp L43S	; Down one row
		
L53W	TRAP x30
		JSRR R5
		BRn L53S	; LEFT to go south
		BRz L53N	; RIGHT to go north
		BRp L52W	; Go back one block
		
;; Fifth block
		
L54N	TRAP x36
		JSRR R5
		BRn L54W	; LEFT to turn to west
		BRz L54E	; RIGHT to turn to east
		BRp L64N	; Next row

L54E	TRAP x35
		JSRR R5
		BRn L54N 	; LEFT to go north
		BRz L54S	; RIGHT to go south
		BRp L55E	; Next block
		
L54S	TRAP x37
		JSRR R5
		BRn L54E	; LEFT to go east
		BRz L54W	; RIGHT to go west
		BRp L44S	; Down one row
		
L54W	TRAP x30
		JSRR R5
		BRn L54S	; LEFT to go south
		BRz L54N	; RIGHT to go north
		BRp L53W	; Go back one block
		
;; Sixth block
		
L55N 	TRAP x31
		JSRR R5
		BRn L55W	; LEFT to turn to west
		BRz L55E	; RIGHT to turn to east
		BRp L65N	; Next row

L55E	TRAP x32
		JSRR R5
		BRn L55N 	; LEFT to go north
		BRz L55S	; RIGHT to go south
		BRp L56E	; Next block
		
L55S	TRAP x36
		JSRR R5
		BRn L55E	; LEFT to go east
		BRz L55W	; RIGHT to go west
		BRp L45S	; Down one row
		
L55W	TRAP x37
		JSRR R5
		BRn L55S	; LEFT to go south
		BRz L55N	; RIGHT to go north
		BRp L54W;	 UP to go forward if possible
		
;; Seventh block
		
L56N	TRAP x32
		JSRR R5
		BRn L56W	; LEFT to turn to west
		BRz L56E	; RIGHT to turn to east
		BRp L66N	; Next row

L56E	TRAP x36
		JSRR R5
		BRn L56N 	; LEFT to go north
		BRz L56S	; RIGHT to go south
		BRp L57E	; Next block
		
L56S	TRAP x37
		JSRR R5
		BRn L56E	; LEFT to go east
		BRz L56W	; RIGHT to go west
		BRp L46S	; Down one row
		
L56W	TRAP x31
		JSRR R5
		BRn L56S	; LEFT to go south
		BRz L56N	; RIGHT to go north
		BRp L55W	; Go back one block
		
;; Eighth block
		
L57N	TRAP x30
		JSRR R5
		BRn L57W	; LEFT to turn to west
		BRz L57E	; RIGHT to turn to east
		BRp L67N	; Next row

L57E	TRAP x34
		JSRR R5
		BRn L57N 	; LEFT to go north
		BRz L57S	; RIGHT to go south
		BRp L58E	; Next block
		
L57S	TRAP x30
		JSRR R5
		BRn L57E	; LEFT to go east
		BRz L57W	; RIGHT to go west
		BRp L47S	; Down one row
		
L57W	TRAP x34
		JSRR R5
		BRn L57S	; LEFT to go south
		BRz L57N	; RIGHT to go north
		BRp L56W	; Go back one block
		
;; Ninth block

L58N	TRAP x30
		JSRR R5
		BRn L58W	; LEFT to turn to west
		BRz L58E	; RIGHT to turn to east
		BRp L68N	; Next row

L58E	TRAP x34
		JSRR R5
		BRn L58N 	; LEFT to go north
		BRz L58S	; RIGHT to go south
		BRp L59E	; Next block
		
L58S	TRAP x30
		JSRR R5
		BRn L58E	; LEFT to go east
		BRz L58W	; RIGHT to go west
		BRp L48S	; Down one row
		
L58W	TRAP x34
		JSRR R5
		BRn L58S	; LEFT to go south
		BRz L58N	; RIGHT to go north
		BRp L57W	; Go back one block
		
;; Tenth block
		
L59N	TRAP x35
		JSRR R5
		BRn L59W	; LEFT to turn to west
		BRz L59E	; RIGHT to turn to east
		BRp L69N	; Next row

L59E	TRAP x37
		JSRR R5
		BRn L59N 	; LEFT to go north
		BRz L59S	; RIGHT to go south
		BRp x0		; Out of bounds
		
L59S	TRAP x30
		JSRR R5
		BRn L59E	; LEFT to go east
		BRz L59W	; RIGHT to go west
		BRp L49S	; Down one row
		
L59W	TRAP x36
		JSRR R5
		BRn L59S	; LEFT to go south
		BRz L59N	; RIGHT to go north
		BRp L58W	; Go back one block
		
;; Seventh row		
;; First block
L60N 	TRAP x31
		JSRR R5
		BRn L60W	; LEFT to turn to west
		BRz L60E	; RIGHT to turn to east
		BRp L70N	; Next row

L60E	TRAP x32
		JSRR R5
		BRn L60N 	; LEFT to go north
		BRz L60S	; RIGHT to go south
		BRp L61E	; Next block
		
L60S	TRAP x36
		JSRR R5
		BRn L60E	; LEFT to go east
		BRz L60W	; RIGHT to go west
		BRp L50S	; Down one row
		
L60W	TRAP x37
		JSRR R5
		BRn L60S	; LEFT to go south
		BRz L60N	; RIGHT to go north
		BRp x0		; Out of bounds

;; Second block

L61N 	TRAP x32
		JSRR R5
		BRn L61W	; LEFT to turn to west
		BRz L61E	; RIGHT to turn to east
		BRp L71N	; Up row

L61E	TRAP x36
		JSRR R5
		BRn L61N 	; LEFT to go north
		BRz L61S	; RIGHT to go south
		BRp L62E	; Next block
		
L61S	TRAP x37
		JSRR R5
		BRn L61E	; LEFT to go east
		BRz L61W	; RIGHT to go west
		BRp L51S	; Down one row
		
L61W	TRAP x31
		JSRR R5
		BRn L61S	; LEFT to go south
		BRz L61N	; RIGHT to go north
		BRp L60W	; Go back one block
		
;; Third block
L62N 	TRAP x37
		JSRR R5
		BRn L62W	; LEFT to turn to west
		BRz L62E	; RIGHT to turn to east
		BRp L72N	; Next row

L62E	TRAP x31
		JSRR R5
		BRn L62N 	; LEFT to go north
		BRz L62S	; RIGHT to go south
		BRp L63E	; Next block
		
L62S	TRAP x32
		JSRR R5
		BRn L62E	; LEFT to go east
		BRz L62W	; RIGHT to go west
		BRp L52S	; Down one row
		
L62W	TRAP x36
		JSRR R5
		BRn L62S	; LEFT to go south
		BRz L62N	; RIGHT to go north
		BRp L61W	; Go back one block

;; Fourth block

L63N	TRAP x32
		JSRR R5
		BRn L63W	; LEFT to turn to west
		BRz L63E	; RIGHT to turn to east
		BRp L73N	; Next row

L63E	TRAP x36
		JSRR R5
		BRn L63N 	; LEFT to go north
		BRz L63S	; RIGHT to go south
		BRp L64E	; Next block
		
L63S	TRAP x37
		JSRR R5
		BRn L63E	; LEFT to go east
		BRz L63W	; RIGHT to go west
		BRp L53S	; Down one row
		
L63W	TRAP x31
		JSRR R5
		BRn L63S	; LEFT to go south
		BRz L63N	; RIGHT to go north
		BRp L62W	; Go back one block
		
;; Fifth block
		
L64N	TRAP x31
		JSRR R5
		BRn L64W	; LEFT to turn to west
		BRz L64E	; RIGHT to turn to east
		BRp L74N	; Next row

L64E	TRAP x32
		JSRR R5
		BRn L64N 	; LEFT to go north
		BRz L64S	; RIGHT to go south
		BRp L65E	; Next block
		
L64S	TRAP x36
		JSRR R5
		BRn L64E	; LEFT to go east
		BRz L64W	; RIGHT to go west
		BRp L54S	; Down one row
		
L64W	TRAP x37
		JSRR R5
		BRn L64S	; LEFT to go south
		BRz L64N	; RIGHT to go north
		BRp L63W	; Go back one block
		
;; Sixth block
		
L65N 	TRAP x36
		JSRR R5
		BRn L65W	; LEFT to turn to west
		BRz L65E	; RIGHT to turn to east
		BRp L75N	; Next row

L65E	TRAP x37
		JSRR R5
		BRn L65N 	; LEFT to go north
		BRz L65S	; RIGHT to go south
		BRp L66E	; Next block
		
L65S	TRAP x31
		JSRR R5
		BRn L65E	; LEFT to go east
		BRz L65W	; RIGHT to go west
		BRp L55S	; Down one row
		
L65W	TRAP x32
		JSRR R5
		BRn L65S	; LEFT to go south
		BRz L65N	; RIGHT to go north
		BRp L64W;	 UP to go forward if possible
		
;; Seventh block
		
L66N	TRAP x37
		JSRR R5
		BRn L66W	; LEFT to turn to west
		BRz L66E	; RIGHT to turn to east
		BRp L76N	; Next row

L66E	TRAP x31
		JSRR R5
		BRn L66N 	; LEFT to go north
		BRz L66S	; RIGHT to go south
		BRp L67E	; Next block
		
L66S	TRAP x32
		JSRR R5
		BRn L66E	; LEFT to go east
		BRz L66W	; RIGHT to go west
		BRp L56S	; Down one row
		
L66W	TRAP x36
		JSRR R5
		BRn L66S	; LEFT to go south
		BRz L66N	; RIGHT to go north
		BRp L65W	; Go back one block
		
;; Eighth block
		
L67N	TRAP x36
		JSRR R5
		BRn L67W	; LEFT to turn to west
		BRz L67E	; RIGHT to turn to east
		BRp L77N	; Next row

L67E	TRAP x37
		JSRR R5
		BRn L67N 	; LEFT to go north
		BRz L67S	; RIGHT to go south
		BRp L68E	; Next block
		
L67S	TRAP x31
		JSRR R5
		BRn L67E	; LEFT to go east
		BRz L67W	; RIGHT to go west
		BRp L57S	; Down one row
		
L67W	TRAP x32
		JSRR R5
		BRn L67S	; LEFT to go south
		BRz L67N	; RIGHT to go north
		BRp L66W	; Go back one block
		
;; Ninth block

L68N	TRAP x37
		JSRR R5
		BRn L68W	; LEFT to turn to west
		BRz L68E	; RIGHT to turn to east
		BRp L78N	; Next row

L68E	TRAP x31
		JSRR R5
		BRn L68N 	; LEFT to go north
		BRz L68S	; RIGHT to go south
		BRp L69E	; Next block
		
L68S	TRAP x32
		JSRR R5
		BRn L68E	; LEFT to go east
		BRz L68W	; RIGHT to go west
		BRp L58S	; Down one row
		
L68W	TRAP x36
		JSRR R5
		BRn L68S	; LEFT to go south
		BRz L68N	; RIGHT to go north
		BRp L67W	; Go back one block
		
;; Tenth block
		
L69N	TRAP x32
		JSRR R5
		BRn L69W	; LEFT to turn to west
		BRz L69E	; RIGHT to turn to east
		BRp L79N	; Next row

L69E	TRAP x36
		JSRR R5
		BRn L69N 	; LEFT to go north
		BRz L69S	; RIGHT to go south
		BRp x0		; Out of bounds
		
L69S	TRAP x37
		JSRR R5
		BRn L69E	; LEFT to go east
		BRz L69W	; RIGHT to go west
		BRp L59S	; Down one row
		
L69W	TRAP x31
		JSRR R5
		BRn L69S	; LEFT to go south
		BRz L69N	; RIGHT to go north
		BRp L68W	; Go back one block
		
;; Eighth row		
;; First block
L70N 	TRAP x30
		JSRR R5
		BRn L70W	; LEFT to turn to west
		BRz L70E	; RIGHT to turn to east
		BRp L80N	; Next row

L70E	TRAP x34
		JSRR R5
		BRn L70N 	; LEFT to go north
		BRz L70S	; RIGHT to go south
		BRp L71E	; Next block
		
L70S	TRAP x30
		JSRR R5
		BRn L70E	; LEFT to go east
		BRz L70W	; RIGHT to go west
		BRp L60S	; Down one row
		
L70W	TRAP x34
		JSRR R5
		BRn L70S	; LEFT to go south
		BRz L70N	; RIGHT to go north
		BRp x0		; Out of bounds

;; Second block

L71N 	TRAP x31
		JSRR R5
		BRn L71W	; LEFT to turn to west
		BRz L71E	; RIGHT to turn to east
		BRp L81N	; Up row

L71E	TRAP x33
		JSRR R5
		BRn L71N 	; LEFT to go north
		BRz L71S	; RIGHT to go south
		BRp L72E	; Next block
		
L71S	TRAP x32
		JSRR R5
		BRn L71E	; LEFT to go east
		BRz L71W	; RIGHT to go west
		BRp L61S	; Down one row
		
L71W	TRAP x34
		JSRR R5
		BRn L71S	; LEFT to go south
		BRz L71N	; RIGHT to go north
		BRp L70W	; Go back one block
		
;; Third block
L72N 	TRAP x34
		JSRR R5
		BRn L72W	; LEFT to turn to west
		BRz L72E	; RIGHT to turn to east
		BRp L82N	; Next row

L72E	TRAP x30
		JSRR R5
		BRn L72N 	; LEFT to go north
		BRz L72S	; RIGHT to go south
		BRp L73E	; Next block
		
L72S	TRAP x34
		JSRR R5
		BRn L72E	; LEFT to go east
		BRz L72W	; RIGHT to go west
		BRp L62S	; Down one row
		
L72W	TRAP x30
		JSRR R5
		BRn L72S	; LEFT to go south
		BRz L72N	; RIGHT to go north
		BRp L71W	; Go back one block

;; Fourth block

L73N	TRAP x36
		JSRR R5
		BRn L73W	; LEFT to turn to west
		BRz L73E	; RIGHT to turn to east
		BRp L83N	; Next row

L73E	TRAP x37
		JSRR R5
		BRn L73N 	; LEFT to go north
		BRz L73S	; RIGHT to go south
		BRp L74E	; Next block
		
L73S	TRAP x31
		JSRR R5
		BRn L73E	; LEFT to go east
		BRz L73W	; RIGHT to go west
		BRp L63S	; Down one row
		
L73W	TRAP x32
		JSRR R5
		BRn L73S	; LEFT to go south
		BRz L73N	; RIGHT to go north
		BRp L72W	; Go back one block
		
;; Fifth block
		
L74N	TRAP x30
		JSRR R5
		BRn L74W	; LEFT to turn to west
		BRz L74E	; RIGHT to turn to east
		BRp L84N	; Next row

L74E	TRAP x34
		JSRR R5
		BRn L74N 	; LEFT to go north
		BRz L74S	; RIGHT to go south
		BRp L75E	; Next block
		
L74S	TRAP x30
		JSRR R5
		BRn L74E	; LEFT to go east
		BRz L74W	; RIGHT to go west
		BRp L64S	; Down one row
		
L74W	TRAP x34
		JSRR R5
		BRn L74S	; LEFT to go south
		BRz L74N	; RIGHT to go north
		BRp L73W	; Go back one block
		
;; Sixth block
		
L75N 	TRAP x31
		JSRR R5
		BRn L75W	; LEFT to turn to west
		BRz L75E	; RIGHT to turn to east
		BRp L85N	; Next row

L75E	TRAP x32
		JSRR R5
		BRn L75N 	; LEFT to go north
		BRz L75S	; RIGHT to go south
		BRp L76E	; Next block
		
L75S	TRAP x36
		JSRR R5
		BRn L75E	; LEFT to go east
		BRz L75W	; RIGHT to go west
		BRp L65S	; Down one row
		
L75W	TRAP x37
		JSRR R5
		BRn L75S	; LEFT to go south
		BRz L75N	; RIGHT to go north
		BRp L74W;	 UP to go forward if possible
		
;; Seventh block
		
L76N	TRAP x34
		JSRR R5
		BRn L76W	; LEFT to turn to west
		BRz L76E	; RIGHT to turn to east
		BRp L86N	; Next row

L76E	TRAP x30
		JSRR R5
		BRn L76N 	; LEFT to go north
		BRz L76S	; RIGHT to go south
		BRp L77E	; Next block
		
L76S	TRAP x34
		JSRR R5
		BRn L76E	; LEFT to go east
		BRz L76W	; RIGHT to go west
		BRp L66S	; Down one row
		
L76W	TRAP x30
		JSRR R5
		BRn L76S	; LEFT to go south
		BRz L76N	; RIGHT to go north
		BRp L75W	; Go back one block
		
;; Eighth block
		
L77N	TRAP x34
		JSRR R5
		BRn L77W	; LEFT to turn to west
		BRz L77E	; RIGHT to turn to east
		BRp L87N	; Next row

L77E	TRAP x30
		JSRR R5
		BRn L77N 	; LEFT to go north
		BRz L77S	; RIGHT to go south
		BRp L78E	; Next block
		
L77S	TRAP x34
		JSRR R5
		BRn L77E	; LEFT to go east
		BRz L77W	; RIGHT to go west
		BRp L67S	; Down one row
		
L77W	TRAP x30
		JSRR R5
		BRn L77S	; LEFT to go south
		BRz L77N	; RIGHT to go north
		BRp L76W	; Go back one block
		
;; Ninth block

L78N	TRAP x34
		JSRR R5
		BRn L78W	; LEFT to turn to west
		BRz L78E	; RIGHT to turn to east
		BRp L88N	; Next row

L78E	TRAP x30
		JSRR R5
		BRn L78N 	; LEFT to go north
		BRz L78S	; RIGHT to go south
		BRp L79E	; Next block
		
L78S	TRAP x34
		JSRR R5
		BRn L78E	; LEFT to go east
		BRz L78W	; RIGHT to go west
		BRp L68S	; Down one row
		
L78W	TRAP x30
		JSRR R5
		BRn L78S	; LEFT to go south
		BRz L78N	; RIGHT to go north
		BRp L77W	; Go back one block
		
;; Tenth block
		
L79N	TRAP x32
		JSRR R5
		BRn L79W	; LEFT to turn to west
		BRz L79E	; RIGHT to turn to east
		BRp L89N	; Next row

L79E	TRAP x34
		JSRR R5
		BRn L79N 	; LEFT to go north
		BRz L79S	; RIGHT to go south
		BRp x0		; Out of bounds
		
L79S	TRAP x31
		JSRR R5
		BRn L79E	; LEFT to go east
		BRz L79W	; RIGHT to go west
		BRp L69S	; Down one row
		
L79W	TRAP x33
		JSRR R5
		BRn L79S	; LEFT to go south
		BRz L79N	; RIGHT to go north
		BRp L78W	; Go back one block
		
;; Ninth row		
;; First block
L80N 	TRAP x30
		JSRR R5
		BRn L80W	; LEFT to turn to west
		BRz L80E	; RIGHT to turn to east
		BRp L90N	; Next row

L80E	TRAP x34
		JSRR R5
		BRn L80N 	; LEFT to go north
		BRz L80S	; RIGHT to go south
		BRp L81E	; Next block
		
L80S	TRAP x30
		JSRR R5
		BRn L80E	; LEFT to go east
		BRz L80W	; RIGHT to go west
		BRp L70S	; Down one row
		
L80W	TRAP x34
		JSRR R5
		BRn L80S	; LEFT to go south
		BRz L80N	; RIGHT to go north
		BRp x0		; Out of bounds

;; Second block

L81N 	TRAP x37
		JSRR R5
		BRn L81W	; LEFT to turn to west
		BRz L81E	; RIGHT to turn to east
		BRp L91N	; Up row

L81E	TRAP x31
		JSRR R5
		BRn L81N 	; LEFT to go north
		BRz L81S	; RIGHT to go south
		BRp L82E	; Next block
		
L81S	TRAP x32
		JSRR R5
		BRn L81E	; LEFT to go east
		BRz L81W	; RIGHT to go west
		BRp L71S	; Down one row
		
L81W	TRAP x36
		JSRR R5
		BRn L81S	; LEFT to go south
		BRz L81N	; RIGHT to go north
		BRp L80W	; Go back one block
		
;; Third block
L82N 	TRAP x34
		JSRR R5
		BRn L82W	; LEFT to turn to west
		BRz L82E	; RIGHT to turn to east
		BRp L92N	; Next row

L82E	TRAP x30
		JSRR R5
		BRn L82N 	; LEFT to go north
		BRz L82S	; RIGHT to go south
		BRp L83E	; Next block
		
L82S	TRAP x34
		JSRR R5
		BRn L82E	; LEFT to go east
		BRz L82W	; RIGHT to go west
		BRp L72S	; Down one row
		
L82W	TRAP x30
		JSRR R5
		BRn L82S	; LEFT to go south
		BRz L82N	; RIGHT to go north
		BRp L81W	; Go back one block

;; Fourth block

L83N	TRAP x34
		JSRR R5
		BRn L83W	; LEFT to turn to west
		BRz L83E	; RIGHT to turn to east
		BRp L93N	; Next row

L83E	TRAP x30
		JSRR R5
		BRn L83N 	; LEFT to go north
		BRz L83S	; RIGHT to go south
		BRp L84E	; Next block
		
L83S	TRAP x34
		JSRR R5
		BRn L83E	; LEFT to go east
		BRz L83W	; RIGHT to go west
		BRp L73S	; Down one row
		
L83W	TRAP x30
		JSRR R5
		BRn L83S	; LEFT to go south
		BRz L83N	; RIGHT to go north
		BRp L82W	; Go back one block
		
;; Fifth block
		
L84N	TRAP x36
		JSRR R5
		BRn L84W	; LEFT to turn to west
		BRz L84E	; RIGHT to turn to east
		BRp L94N	; Next row

L84E	TRAP x37
		JSRR R5
		BRn L84N 	; LEFT to go north
		BRz L84S	; RIGHT to go south
		BRp L85E	; Next block
		
L84S	TRAP x31
		JSRR R5
		BRn L84E	; LEFT to go east
		BRz L84W	; RIGHT to go west
		BRp L74S	; Down one row
		
L84W	TRAP x32
		JSRR R5
		BRn L84S	; LEFT to go south
		BRz L84N	; RIGHT to go north
		BRp L83W	; Go back one block
		
;; Sixth block
		
L85N 	TRAP x37
		JSRR R5
		BRn L85W	; LEFT to turn to west
		BRz L85E	; RIGHT to turn to east
		BRp L95N	; Next row

L85E	TRAP x31
		JSRR R5
		BRn L85N 	; LEFT to go north
		BRz L85S	; RIGHT to go south
		BRp L86E	; Next block
		
L85S	TRAP x32
		JSRR R5
		BRn L85E	; LEFT to go east
		BRz L85W	; RIGHT to go west
		BRp L75S	; Down one row
		
L85W	TRAP x36
		JSRR R5
		BRn L85S	; LEFT to go south
		BRz L85N	; RIGHT to go north
		BRp L84W;	 UP to go forward if possible
		
;; Seventh block
		
L86N	TRAP x34
		JSRR R5
		BRn L86W	; LEFT to turn to west
		BRz L86E	; RIGHT to turn to east
		BRp L96N	; Next row

L86E	TRAP x30
		JSRR R5
		BRn L86N 	; LEFT to go north
		BRz L86S	; RIGHT to go south
		BRp L87E	; Next block
		
L86S	TRAP x34
		JSRR R5
		BRn L86E	; LEFT to go east
		BRz L86W	; RIGHT to go west
		BRp L76S	; Down one row
		
L86W	TRAP x30
		JSRR R5
		BRn L86S	; LEFT to go south
		BRz L86N	; RIGHT to go north
		BRp L85W	; Go back one block
		
;; Eighth block
		
L87N	TRAP x34
		JSRR R5
		BRn L87W	; LEFT to turn to west
		BRz L87E	; RIGHT to turn to east
		BRp L97N	; Next row

L87E	TRAP x30
		JSRR R5
		BRn L87N 	; LEFT to go north
		BRz L87S	; RIGHT to go south
		BRp L88E	; Next block
		
L87S	TRAP x34
		JSRR R5
		BRn L87E	; LEFT to go east
		BRz L87W	; RIGHT to go west
		BRp L77S	; Down one row
		
L87W	TRAP x30
		JSRR R5
		BRn L87S	; LEFT to go south
		BRz L87N	; RIGHT to go north
		BRp L86W	; Go back one block
		
;; Ninth block

L88N	TRAP x32
		JSRR R5
		BRn L88W	; LEFT to turn to west
		BRz L88E	; RIGHT to turn to east
		BRp L98N	; Next row

L88E	TRAP x36
		JSRR R5
		BRn L88N 	; LEFT to go north
		BRz L88S	; RIGHT to go south
		BRp L89E	; Next block
		
L88S	TRAP x37
		JSRR R5
		BRn L88E	; LEFT to go east
		BRz L88W	; RIGHT to go west
		BRp L78S	; Down one row
		
L88W	TRAP x31
		JSRR R5
		BRn L88S	; LEFT to go south
		BRz L88N	; RIGHT to go north
		BRp L87W	; Go back one block
		
;; Tenth block
		
L89N	TRAP x30
		JSRR R5
		BRn L89W	; LEFT to turn to west
		BRz L89E	; RIGHT to turn to east
		BRp L99N	; Next row

L89E	TRAP x34
		JSRR R5
		BRn L89N 	; LEFT to go north
		BRz L89S	; RIGHT to go south
		BRp x0		; Out of bounds
		
L89S	TRAP x30
		JSRR R5
		BRn L89E	; LEFT to go east
		BRz L89W	; RIGHT to go west
		BRp L79S	; Down one row
		
L89W	TRAP x34
		JSRR R5
		BRn L89S	; LEFT to go south
		BRz L89N	; RIGHT to go north
		BRp L88W	; Go back one block
		
;; Tenth row		
;; First block
L90N 	TRAP x37
		JSRR R5
		BRn L90W	; LEFT to turn to west
		BRz L90E	; RIGHT to turn to east
		BRp x0		; Out of bounds

L90E	TRAP x31
		JSRR R5
		BRn L90N 	; LEFT to go north
		BRz L90S	; RIGHT to go south
		BRp L91E	; Next block
		
L90S	TRAP x32
		JSRR R5
		BRn L90E	; LEFT to go east
		BRz L90W	; RIGHT to go west
		BRp L80S	; Down one row
		
L90W	TRAP x36
		JSRR R5
		BRn L90S	; LEFT to go south
		BRz L90N	; RIGHT to go north
		BRp x0		; Out of bounds

;; Second block

L91N 	TRAP x34
		JSRR R5
		BRn L91W	; LEFT to turn to west
		BRz L91E	; RIGHT to turn to east
		BRp x0		; Out of bounds

L91E	TRAP x30
		JSRR R5
		BRn L91N 	; LEFT to go north
		BRz L91S	; RIGHT to go south
		BRp L92E	; Next block
		
L91S	TRAP x34
		JSRR R5
		BRn L91E	; LEFT to go east
		BRz L91W	; RIGHT to go west
		BRp L81S	; Down one row
		
L91W	TRAP x30
		JSRR R5
		BRn L91S	; LEFT to go south
		BRz L91N	; RIGHT to go north
		BRp L90W	; Go back one block
		
;; Third block
L92N 	TRAP x34
		JSRR R5
		BRn L92W	; LEFT to turn to west
		BRz L92E	; RIGHT to turn to east
		BRp x0		; Out of bounds

L92E	TRAP x30
		JSRR R5
		BRn L92N 	; LEFT to go north
		BRz L92S	; RIGHT to go south
		BRp L93E	; Next block
		
L92S	TRAP x34
		JSRR R5
		BRn L92E	; LEFT to go east
		BRz L92W	; RIGHT to go west
		BRp L82S	; Down one row
		
L92W	TRAP x30
		JSRR R5
		BRn L92S	; LEFT to go south
		BRz L92N	; RIGHT to go north
		BRp L91W	; Go back one block

;; Fourth block

L93N	TRAP x34
		JSRR R5
		BRn L93W	; LEFT to turn to west
		BRz L93E	; RIGHT to turn to east
		BRp x0		; Out of bounds

L93E	TRAP x30
		JSRR R5
		BRn L93N 	; LEFT to go north
		BRz L93S	; RIGHT to go south
		BRp L94E	; Next block
		
L93S	TRAP x34
		JSRR R5
		BRn L93E	; LEFT to go east
		BRz L93W	; RIGHT to go west
		BRp L83S	; Down one row
		
L93W	TRAP x30
		JSRR R5
		BRn L93S	; LEFT to go south
		BRz L93N	; RIGHT to go north
		BRp L92W	; Go back one block
		
;; Fifth block
		
L94N	TRAP x34
		JSRR R5
		BRn L94W	; LEFT to turn to west
		BRz L94E	; RIGHT to turn to east
		BRp x0		; Out of bounds

L94E	TRAP x30
		JSRR R5
		BRn L94N 	; LEFT to go north
		BRz L94S	; RIGHT to go south
		BRp L95E	; Next block
		
L94S	TRAP x34
		JSRR R5
		BRn L94E	; LEFT to go east
		BRz L94W	; RIGHT to go west
		BRp L84S	; Down one row
		
L94W	TRAP x30
		JSRR R5
		BRn L94S	; LEFT to go south
		BRz L94N	; RIGHT to go north
		BRp L93W	; Go back one block
		
;; Sixth block
		
L95N 	TRAP x34
		JSRR R5
		BRn L95W	; LEFT to turn to west
		BRz L95E	; RIGHT to turn to east
		BRp x0		; Out of bounds

L95E	TRAP x30
		JSRR R5
		BRn L95N 	; LEFT to go north
		BRz L95S	; RIGHT to go south
		BRp L96E	; Next block
		
L95S	TRAP x34
		JSRR R5
		BRn L95E	; LEFT to go east
		BRz L95W	; RIGHT to go west
		BRp L85S	; Down one row
		
L95W	TRAP x30
		JSRR R5
		BRn L95S	; LEFT to go south
		BRz L95N	; RIGHT to go north
		BRp L94W	; Go back one block
		
;; Seventh block
		
L96N	TRAP x34
		JSRR R5
		BRn L96W	; LEFT to turn to west
		BRz L96E	; RIGHT to turn to east
		BRp x0		; Out of bounds

L96E	TRAP x30
		JSRR R5
		BRn L96N 	; LEFT to go north
		BRz L96S	; RIGHT to go south
		BRp L97E	; Next block
		
L96S	TRAP x34
		JSRR R5
		BRn L96E	; LEFT to go east
		BRz L96W	; RIGHT to go west
		BRp L86S	; Go back a row
		
L96W	TRAP x30
		JSRR R5
		BRn L96S	; LEFT to go south
		BRz L96N	; RIGHT to go north
		BRp L95W	; UP to go forward if possible
		
;; Eighth block
		
L97N	TRAP x34
		JSRR R5
		BRn L97W	; LEFT to turn to west
		BRz L97E	; RIGHT to turn to east
		BRp x0		; Out of bounds

L97E	TRAP x30
		JSRR R5
		BRn L97N 	; LEFT to go north
		BRz L97S	; RIGHT to go south
		BRp L98E	; Next block
		
L97S	TRAP x34
		JSRR R5
		BRn L97E	; LEFT to go east
		BRz L97W	; RIGHT to go west
		BRp L87S	; Down one row
		
L97W	TRAP x30
		JSRR R5
		BRn L97S	; LEFT to go south
		BRz L97N	; RIGHT to go north
		BRp L96W	; Go back one block
		
;; Ninth block

L98N	TRAP x36
		JSRR R5
		BRn L98W	; LEFT to turn to west
		BRz L98E	; RIGHT to turn to east
		BRp x0		; Out of bounds

L98E	TRAP x37
		JSRR R5
		BRn L98N 	; LEFT to go north
		BRz L98S	; RIGHT to go south
		BRp L99E	; Next block
		
L98S	TRAP x31
		JSRR R5
		BRn L98E	; LEFT to go east
		BRz L98W	; RIGHT to go west
		BRp L88S	; Down one row
		
L98W	TRAP x32
		JSRR R5
		BRn L98S	; LEFT to go south
		BRz L98N	; RIGHT to go north
		BRp L97W	; Go back one block
		
;; Tenth block
		
L99N	TRAP x35
		JSRR R5
		BRn L99W	; LEFT to turn to west
		BRz L99E	; RIGHT to turn to east
		BRp x0		; Out of bounds

L99E	TRAP x37
		JSRR R5
		BRn L99N 	; LEFT to go north
		BRz L99S	; RIGHT to go south
		BRp x0		; Out of bounds
		
L99S	TRAP x30
		JSRR R5
		BRn L99E	; LEFT to go east
		BRz L99W	; RIGHT to go west
		BRp L89S	; Down one row
		
L99W	TRAP x36
		JSRR R5
		BRn L99S	; LEFT to go south
		BRz L99N	; RIGHT to go north
		BRp L98W	; Go back one block
		
.END