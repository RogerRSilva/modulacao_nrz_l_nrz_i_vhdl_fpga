# Modulação NRZ-L

Implementação em VHDL da modulação Unipolar NRZ-L: o bit é representado pelo **nível do pulso** durante todo o intervalo de bit (bit 1 = nível alto, bit 0 = nível baixo).

# Vídeo Demonstrativo - Simulação

- [Vídeo Simulação - nrz-l](./midia/nrz-l-demo.mp4) - Vídeo demonstrativo do resultado da simulação do projeto nrz-l.


## Estrutura desta pasta

```
nrz_l/
├── src/               nrz_l_modulator.vhd   — código-fonte principal
├── sim/               tb_nrz_l.vhd          — testbench para simulação
├── constraints/       basys3_nrz_l.xdc      — mapeamento de pinos da Basys 3
├── vivado_project/    NRZ-L-VGA-PMOD-LED/   — projeto completo (abrir o .xpr)
├── docs/
│   ├── tutorial_simulacao.pdf     — passo a passo da simulação no Vivado
│   ├── tutorial_placa.pdf         — síntese, bitstream e gravação na FPGA
│   ├── documentacao_projeto.pdf   — descrição técnica, diagrama de blocos e resultados
│   └── midia/                     — waveforms, fotos da placa, capturas do osciloscópio
└── extras/
    ├── pmod_osciloscopio/         — sinal tx_out no PMOD JA
    └── vga/                       — saída VGA com cores pulsantes
```

## Por onde começar

- **Simulação rápida:** abrir `vivado_project/NRZ-L-VGA-PMOD-LED/NRZ-L-VGA-PMOD-LED.xpr` no Vivado e clicar em *Run Simulation → Run Behavioral Simulation*.
- **Reproduzir do zero:** seguir `docs/tutorial_simulacao.pdf` e depois `docs/tutorial_placa.pdf`.
- **Entender o circuito:** ler `docs/documentacao_projeto.pdf`.

## Próximo passo

[Modulação NRZ-I](../nrz_i/)
