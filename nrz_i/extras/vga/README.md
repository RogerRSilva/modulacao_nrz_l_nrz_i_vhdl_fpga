# Extra — Saída VGA com Cores Pulsantes (NRZ-I)

A saída VGA exibe a modulação NRZ-I visualmente. Como o NRZ-I só muda de nível quando o bit é 1, sequências com zeros consecutivos exibem a mesma cor por múltiplos intervalos.

| Nível | Cor da tela |
|-------|-------------|
| 0     | Vermelho    |
| 1     | Azul        |

## Como usar

1. Conectar o monitor ao conector VGA da Basys 3.
2. Gravar o bitstream (ver `../../docs/tutorial_placa.pdf`).
3. Configurar uma sequência com zeros consecutivos (ex: 0x0F00) para observar que a cor não muda enquanto os bits são 0.

## Fotos

As fotos do resultado estão em `docs/midia/`.
