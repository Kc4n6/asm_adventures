



a	db 0abh ; byte tanimladik yani 1 byte 

b	dw 0abcdh ; word tanimladik yani 2 byte

c	dd 0abcdef12h ; doubleword tanimladik yani 4 byte 

d	dq 0aabbccddeeff1234h ; quadword tanimladik yani 8 byte'lik veri

; Tek data tanimlar iken degisken ismi turu ve icerigi olarak direkt tanimliyoruz. Fakat sirali datalar tanimlar iken
; daha once de yaptigimiz duplication islemini yapıyoruz. For example...


;array_1 	db [boyut] dup(duplicate) (initilization value) -> init value baslatildiginde hepsine yazilir.

array_1		db 5 dup (0abh); --> 5 elemanli bir byte dizisi tanimladik. her elemanina baslangicta ab yazacak.

array_2		dw 3 dup (0abcdh); --> 3 elemanli word dizisi. her elemana basta abcd yazacak

array_3		dd 4 dup (0abcdef12h); --> 4 elemanli doubleword

array_4 	dq 2 dup (0aabbccddeeff1122h); --> 2 elemanli quadword


