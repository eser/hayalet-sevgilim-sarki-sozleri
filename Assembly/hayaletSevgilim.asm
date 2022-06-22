;Hayalet Sevgilim
section	.text
	global _start   ;must be declared for using gcc
_start:             ;tell linker entry point
	mov	edx, len    ;message length
	mov	ecx, msg    ;message to write
	mov	ebx, 1	    ;file descriptor (stdout)
	mov	eax, 4	    ;system call number (sys_write)
	int	0x80        ;call kernel
	mov	eax, 1	    ;system call number (sys_exit)
	int	0x80        ;call kernel

section	.data

msg	db	'Ceza mı bu ' ,0ah,'Çektiğim çile mi ',0ah,'Yıllardır tuttuğum nöbet bitmeyecek mi? ' ,0ah,'Bir küçük kar tanesi gibiyim ' ,0ah,'Avucunda eriyen dön bebeğim ' ,0ah,0ah,'Gözyaşlarını görürsem ' ,0ah,'Erir kanatlarım ' ,0ah,'Uçamam rüyalarında yanına ' ,0ah,'Sonsuzluk senle başladı ' ,0ah,'O küçük dünyamda ' ,0ah,'Unutma gittiğinde yarım kaldım ' ,0ah,0ah,'Çöllerdeyim yanıyorum ' ,0ah,'Kutuptayım üşüyorum ' ,0ah,'Ceza benim çekiyorum ne olur dön ' ,0ah,'Uzanıyorum tutamıyorum ' ,0ah,'Özlüyorum ağlıyorum ' ,0ah,'Yasak mısın anlamıyorum ne olur dön ',0ah,0ah,'Sevmesen de beni özledim sesini ' ,0ah,'Git desem de yine gitmesen ' ,0ah,'Yıllardır çektiğim bu hasret mi çile mi? ' ,0ah,'Haram mısın bana bi bilsem ' ,0ah,0ah,'Sevmesen de beni özledim sesini ' ,0ah,'Git desem de yine gitmesen ' ,0ah,'Yıllardır çektiğim bu hasret mi çile mi? ' ,0ah,'Haram mısın bana bi bilsem ' ,0ah,0ah,'Bebeğim benim ,0ah, hayalet sevgilim ' ,0ah,'Bebeğim benim ,0ah, hayalet sevgilim ' ,0ah,0ah,'Hayalet sevgilim ' ,0ah,0ah,'Çöllerdeyim yanıyorum ' ,0ah,'Kutuptayım üşüyorum ' ,0ah,'Ceza benim çekiyorum ne olur dön ' ,0ah,'Uzanıyorum tutamıyorum ' ,0ah,'Özlüyorum ağlıyorum ' ,0ah,'Yasak mısın anlamıyorum ne olur dön ' ,0ah,0ah,'Sevmesen de beni özledim sesini ' ,0ah,'Git desem de yine gitmesen ' ,0ah,'Yıllardır çektiğim bu hasret mi çile mi? ' ,0ah,'Haram mısın bana bi bilsem ' ,0ah,0ah,'Sevmesen de beni özledim sesini ' ,0ah,'Git desem de yine gitmesen ' ,0ah,'Yıllardır çektiğim bu hasret mi çile mi? ' ,0ah,'Haram mısın bana bi bilsem ' ,0ah,0ah,'Bebeğim benim hayalet sevgilim ' ,0ah,'Bebeğim benim hayalet sevgilim ' ,0ah,0ah,'Hayalet sevgilim ' ,0ah,'Hayalet sevgilim ',	;our dear string
len	equ	$ - msg			;length of our dear string