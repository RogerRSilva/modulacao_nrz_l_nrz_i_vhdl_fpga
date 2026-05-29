# Modulação NRZ-I

Implementação em VHDL da modulação Unipolar NRZ-I: o bit é representado pela **transição do pulso** no início do intervalo de bit (bit 1 = inverte o nível, bit 0 = mantém o nível anterior).

# Vídeo Demonstrativo - Simulação

- [Vídeo Simulação - nrz-i](./midia/nrz-i-demo.mp4) - Vídeo demonstrativo do resultado da simulação do projeto nrz-i.

## Estrutura desta pasta

```
nrz_i/
├── src/               nrz_i_modulator.vhd   — código-fonte principal
├── sim/               tb_nrz_i.vhd          — testbench para simulação
├── constraints/       basys3_nrz_i.xdc      — mapeamento de pinos da Basys 3
├── vivado_project/    NRZ-I-VGA-PMOD-LED/   — projeto completo (abrir o .xpr)
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

- **Simulação rápida:** abrir `vivado_project/NRZ-I-VGA-PMOD-LED/NRZ-I-VGA-PMOD-LED.xpr` no Vivado e clicar em *Run Simulation → Run Behavioral Simulation*.
- **Reproduzir do zero:** seguir `docs/tutorial_simulacao.pdf` e depois `docs/tutorial_placa.pdf`.
- **Entender o circuito:** ler `docs/documentacao_projeto.pdf`.

## Próximo passo

[Relatório Final](../relatorio_final/)
