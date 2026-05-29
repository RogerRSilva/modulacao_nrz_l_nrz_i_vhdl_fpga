# Extra — Saída PMOD para Osciloscópio (NRZ-I)

O sinal modulado `tx_out` está disponível no **pino J1 do conector PMOD JA** da Basys 3. Na modulação NRZ-I, o osciloscópio mostrará transições apenas quando o bit for 1, mantendo o nível constante para bits 0.

## Conexão física

| Sinal  | Pino FPGA | Conector PMOD JA |
|--------|-----------|------------------|
| tx_out | J1        | Pino 1           |
| GND    | —         | Pino 5           |

## Como usar

1. Gravar o bitstream (ver `../../docs/tutorial_placa.pdf`).
2. Conectar a ponta de prova ao PMOD JA conforme a tabela.
3. Comparar a forma de onda com o resultado do NRZ-L para observar a diferença de comportamento.

## Fotos

As fotos da conexão estão em `docs/midia/`.
