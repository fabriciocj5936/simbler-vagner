section .data
    senha db 42           ; Armazena a senha na posição de memória 0

section .bss
    resultado resb 1      ; Para armazenar o resultado temporário

section .text
    global _start         ; Ponto de entrada

_start:
    ; Carrega a senha em AL
    mov al, [senha]       ; AL = [senha]
    
    ; Guarda a senha original em BL
    mov bl, al            ; BL = AL (senha original)
    
    ; Divide a senha por 2
    shr al, 1             ; AL = AL / 2 (desloca para a direita, dividindo por 2)
    
    ; Multiplica o resultado por 2
    shl al, 1             ; AL = AL * 2 (desloca para a esquerda, multiplicando por 2)
    
    ; Compara o resultado com a senha original
    cmp al, bl            ; Compara AL com BL (resultado calculado vs senha original)
    
    ; Se forem iguais, o salto acontece
    je abre_cofre         ; Se AL == BL, pule para abre_cofre
    
    ; Caso a senha não seja válida
    mov al, 0             ; Carrega 0 em AL
    hlt                   ; Encerra a execução
    
abre_cofre:
    ; Aqui seria o código para "abrir o cofre" ou qualquer outra operação
    ; Vamos apenas terminar o programa aqui
    mov eax, 60           ; syscall para sair
    xor ebx, ebx          ; código de saída 0
    int 0x80              ; chama a interrupção para encerrar o programa
