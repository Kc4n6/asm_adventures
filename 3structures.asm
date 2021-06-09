format PE console 

include 'win32a.inc'
include 'training.inc'

struct DIM3
	x dd ? ; yine structure'imizi tanimladik. Burada 3 boyutlu bir nokta tanimladik. 
	b dd ?
	c dd ?
ends


entry start

section '.data' data readable writeable
	degisken DIM3 5,6,7	; sample'imizi olusturduk.
	end_degisken:		;Burada kullandigimiz ifade ise degiskenin sonunu isaret eden bir adrestir. baska da
				;bir halta yaramaz bence ama sonunu gormek icin iyi bence yani.

section '.text' code readable executable

start:
	mov eax,sizeof.DIM3 ; sizeof bir structure ismi ile kullanilabiliyor. sample adi ile kullanilmiyor denedim. 
			    ; Boyutunu donduruyor. burada c dondu mesela 3 tane dword yani 12 yani c.
	call print_eax
	mov eax,end_degisken-degisken ; gordugumuz gibi adreslerle kedinin fareyle oynadigi gibi oynayabiliyoruz. 
				      ; Herhalde sizeof ifadesi de arkada bu isi yapiyor ama emin degilim.
	call print_eax
	push 0 
	call [ExitProcess]

