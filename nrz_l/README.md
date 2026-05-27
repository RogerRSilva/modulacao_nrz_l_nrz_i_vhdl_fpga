# Modulação NRZ-L

Implementação em VHDL da modulação **Unipolar NRZ-L**, em que o bit é representado pelo nível do pulso durante todo o intervalo do bit:

| Bit | Pulso       |
|-----|-------------|
| 1   | nível alto  |
| 0   | nível baixo |

O projeto inclui saída serial pelo PMOD (extra 1) e saída VGA com cores pulsantes (extra 2).

## Estrutura desta pasta

```
nrz_l/
├── src/              Código-fonte VHDL do circuito principal
├── sim/              Testbench para simulação comportamental
├── constraints/      Mapeamento dos pinos da FPGA (.xdc)
├── vivado_project/   Projeto Vivado completo (abrir o .xpr)
├── docs/             Tutoriais e documentação técnica
│   └── midia/        Prints de simulação, fotos da placa, capturas VGA/PMOD
└── extras/           Atividades opcionais
    ├── pmod_osciloscopio/  Saída pelo conector PMOD
    └── vga/                Saída VGA com cores pulsantes
```

## Arquivos de código

- `src/nrz_l_modulator.vhd` — código-fonte do circuito principal (NRZ-L + VGA + PMOD integrados)
- `sim/tb_nrz_l.vhd` — testbench para simulação comportamental
- `constraints/basys3_nrz_l.xdc` — mapeamento completo dos pinos da Basys 3

## Documentação

- [Tutorial de simulação](./docs/tutorial_simulacao.pdf) — como simular no Vivado passo a passo
- [Tutorial de gravação na placa](./docs/tutorial_placa.pdf) — como sintetizar, gerar bitstream e gravar na FPGA
- [Documentação técnica](./docs/documentacao_projeto.pdf) — diagrama de blocos, descrição das portas e funcionamento interno

## Por onde começar

Para uma **simulação rápida** (apenas ver funcionando):

1. Abrir o Vivado e carregar `vivado_project/NRZ-L-VGA-PMOD-LED/NRZ-L-VGA-PMOD-LED.xpr`
2. Clicar em `Run Simulation` → `Run Behavioral Simulation`

Para **reproduzir o projeto do zero**, siga esta ordem:

1. **Entenda o circuito** lendo a [documentação técnica](./docs/documentacao_projeto.pdf)
2. **Simule no Vivado** seguindo o [tutorial de simulação](./docs/tutorial_simulacao.pdf)
3. **Grave na placa** seguindo o [tutorial de gravação](./docs/tutorial_placa.pdf)
4. (Opcional) Explore os [extras](./extras/) — PMOD e VGA

## Extras (opcionais)

- [Saída pelo PMOD para osciloscópio](./extras/pmod_osciloscopio/)
- [Saída VGA com cores pulsantes](./extras/vga/)

## Próximo passo

Após concluir este projeto, siga para a [Modulação NRZ-I](../nrz_i/), que implementa a outra versão estudada no trabalho.
