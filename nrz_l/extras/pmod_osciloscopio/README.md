# Extra — Saída PMOD para Osciloscópio (NRZ-L)

O sinal modulado `tx_out` está disponível no **pino J1 do conector PMOD JA** da Basys 3, permitindo visualizar a forma de onda NRZ-L em um osciloscópio.

## Conexão física

| Sinal  | Pino FPGA | Conector PMOD JA |
|--------|-----------|------------------|
| tx_out | J1        | Pino 1           |
| GND    | —         | Pino 5           |

Conectar a ponta de prova (canal 1) ao pino 1 e o GND da ponta ao pino 5 do PMOD JA.

## Como usar

1. Gravar o bitstream do projeto principal (ver `../../docs/tutorial_placa.pdf`).
2. Conectar a ponta de prova ao PMOD JA conforme a tabela acima.
3. Configurar os switches e pressionar BTNC para iniciar a transmissão.
4. No osciloscópio, ajustar a escala de tempo para 1–2 s/div para visualizar cada bit.

## Fotos

As fotos da conexão estão em `docs/midia/`.
