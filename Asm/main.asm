%define     STDOUT      1
%ifidn __OUTPUT_FORMAT__, elf64 
    %define SYS_WRITE   1
    %define SYS_EXIT    60
%elifidn __OUTPUT_FORMAT__, macho64
    default rel
    %define SYS_WRITE   0x02000004
    %define SYS_EXIT    0x02000001
%endif

section .data
lyrics:	db  "Ceza mı bu", 10, 
        db  "Çektiğim çile mi", 10,
        db  "Yıllardır tuttuğum nöbet bitmeyecek mi?", 10
        db  "Bir küçük kar tanesi gibiyim", 10
        db  "Avucunda eriyen dön bebeğim", 10, 10
        db  "Gözyaşlarını görürsem", 10
        db  "Erir kanatlarım", 10
        db  "Uçamam rüyalarında yanına", 10
        db  "Sonsuzluk senle başladı", 10
        db  "O küçük dünyamda", 10
        db  "Unutma gittiğinde yarım kaldım", 10, 10
        db  "Çöllerdeyim yanıyorum", 10,
        db  "Kutuptayım üşüyorum", 10,
        db  "Ceza benim çekiyorum ne olur dön", 10,
        db  "Uzanıyorum tutamıyorum", 10,
        db  "Özlüyorum ağlıyorum", 10,
        db  "Yasak mısın anlamıyorum ne olur dön", 10, 10
        db  "Sevmesen de beni özledim sesini", 10
        db  "Git desem de yine gitmesen", 10
        db  "Yıllardır çektiğim bu hasret mi çile mi?", 10
        db  "Haram mısın bana bi' bilsem", 10, 10
        db  "Sevmesen de beni özledim sesini", 10
        db  "Git desem de yine gitmesen", 10
        db  "Yıllardır çektiğim bu hasret mi çile mi?", 10
        db  "Haram mısın bana bi' bilsem", 10, 10
        db  "Bebeğim benim, hayalet sevgilim", 10
        db  "Bebeğim benim, hayalet sevgilim", 10, 10
        db  "Hayalet sevgilim", 10, 10
        db  "Çöllerdeyim yanıyorum", 10,
        db  "Kutuptayım üşüyorum", 10,
        db  "Ceza benim çekiyorum ne olur dön", 10,
        db  "Uzanıyorum tutamıyorum", 10,
        db  "Özlüyorum ağlıyorum", 10,
        db  "Yasak mısın anlamıyorum ne olur dön", 10, 10
        db  "Sevmesen de beni özledim sesini", 10
        db  "Git desem de yine gitmesen", 10
        db  "Yıllardır çektiğim bu hasret mi çile mi?", 10
        db  "Haram mısın bana bi' bilsem", 10, 10
        db  "Sevmesen de beni özledim sesini", 10
        db  "Git desem de yine gitmesen", 10
        db  "Yıllardır çektiğim bu hasret mi çile mi?", 10
        db  "Haram mısın bana bi' bilsem", 10, 10
        db  "Hayalet sevgilim", 10
        db  "Hayalet sevgilim", 10, 10

section .text
global _start

_start:
    mov rdi, lyrics
    call _strlen
    mov rsi, rax
    call _print          
    
    mov  rax, SYS_EXIT
    xor rdi, rdi
    syscall

;;
;; print
;; rdi - char *
;; rsi - len
;;
_print:
    push rdi
    push rsi
    mov rax, SYS_WRITE
    mov rdi, STDOUT
    pop rdx
    pop rsi
    syscall
   
    ret

;;
;; strlen
;; rdi - char *
;; rax - return value
;;
_strlen:
    xor rax, rax
.loop:
    cmp byte [rdi + rax], 0
    je .end
    inc rax
    jmp .loop
.end:
    ret
