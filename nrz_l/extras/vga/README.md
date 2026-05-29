# Extra — Saída VGA com Cores Pulsantes (NRZ-L)

A saída VGA da Basys 3 exibe a modulação visualmente: a tela muda de cor conforme o nível do sinal.

| Nível | Cor da tela |
|-------|-------------|
| 0     | Vermelho    |
| 1     | Azul        |

O controlador VGA opera em resolução **1920×1080 @ 60 Hz**, com pixel clock de 148,5 MHz gerado pelo IP `clk_wiz_0`.

## Como usar

1. Conectar o monitor ao conector VGA da Basys 3.
2. Gravar o bitstream (ver `../../docs/tutorial_placa.pdf`).
3. Configurar os switches e pressionar BTNC.
4. Observar a tela alternar entre vermelho e azul conforme a sequência de bits.

## Fotos

As fotos do resultado estão em `docs/midia/`.
