Edite seu arquivo README.md e adicione uma nova seção para a atividade de hoje, documentando cada uma das três missões. Use o modelo abaixo:


## B4.P1.A4 - Missões de Baixo Nível

Nesta atividade, foram desenvolvidos três programas para explorar o uso de memória, saltos condicionais avançados e loops.

### 1. Missão do Cofre Secreto (`missao1_cofre.sbl`)
*   **Objetivo:** Ler um número da posição de memória `@0` e verificar se ele é par.
*   **Conceitos-Chave:** Uso de `DB` para definir dados na memória, `LOAD @` para ler da memória, e a lógica de `(N/2)*2 == N` para checar a paridade.
*   **Resultado:** Termina com `1` em AX se o número for par, e `0` se for ímpar.

### 2. Missão do Termostato Inteligente (`missao2_termostato.sbl`)
*   **Objetivo:** Simular um termostato que decide entre ligar o ar-condicionado, o aquecedor ou ficar desligado com base em uma temperatura de entrada.
*   **Conceitos-Chave:** Uso de `SUB` para criar condições e o salto condicional `JS` (Pular se Negativo) para tomar decisões baseadas no **Signal Flag (S)**.
*   **Resultado:** `1` (ar), `-1` (aquecedor) ou `0` (desligado).

### 3. Missão do Gerador de Fibonacci (`missao3_fibonacci.sbl`)
*   **Objetivo:** Calcular o 8º termo da sequência de Fibonacci (13).
*   **Conceitos-Chave:** Implementação de um loop complexo com um contador, manipulação de múltiplos registradores para guardar valores intermediários e o uso de `JNZ` (Pular se Não-Zero) para controlar o loop.
*   **Resultado:** O programa termina com o valor `13` no registrador AX.
