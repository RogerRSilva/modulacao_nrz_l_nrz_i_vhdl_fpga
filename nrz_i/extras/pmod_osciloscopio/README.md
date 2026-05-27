# Extra — Saída pelo PMOD (Osciloscópio) — NRZ-I

Disponibiliza o sinal modulado NRZ-I em um pino do conector **PMOD JA** da Basys 3, permitindo visualizar as transições características da modulação NRZ-I em um osciloscópio ou analisador lógico.

## Estrutura desta pasta

```
pmod_osciloscopio/
├── src/          Código VHDL (mesmo do projeto principal — tx_out já mapeado ao PMOD)
├── constraints/  Constraint com mapeamento do pino PMOD JA pino 1 (J1)
└── docs/         Tutorial e capturas do osciloscópio
```

## Equipamentos necessários

- Placa Basys 3
- Osciloscópio ou Analog Discovery 3
- Ponta de prova conectada ao **pino 1 do PMOD JA (J1)** e GND ao **pino 5**

## Mapeamento do pino

| Sinal   | Pino FPGA | Conector    |
|---------|-----------|-------------|
| tx_out  | J1        | PMOD JA p.1 |
| GND     | —         | PMOD JA p.5 |

## O que observar

No NRZ-I, a forma de onda exibe **transições apenas quando o bit é 1** — ao encontrar um bit 0, o nível se mantém. Isso é claramente visível no osciloscópio comparado à forma de onda NRZ-L.

## Como reproduzir

1. Gravar o bitstream do projeto principal (`vivado_project/`) na placa
2. Conectar a ponta de prova CH1 ao pino J1 do PMOD JA
3. Conectar o GND da ponta ao pino 5 do mesmo conector
4. Configurar os switches com a sequência de bits desejada
5. Pressionar BTNC para iniciar a transmissão
6. Capturar a forma de onda e comparar com o resultado NRZ-L

Consulte o [tutorial do PMOD](./docs/tutorial_pmod.pdf) para o passo a passo completo.
