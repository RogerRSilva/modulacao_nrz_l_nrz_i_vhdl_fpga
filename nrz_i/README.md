# Modulação NRZ-I

Implementação em VHDL da modulação **Unipolar NRZ-I**, em que o bit é representado pela transição do pulso no início do intervalo do bit:

| Bit | Pulso                     |
|-----|---------------------------|
| 1   | ocorre inversão do nível  |
| 0   | mantém o nível anterior   |

O projeto inclui saída serial pelo PMOD (extra 1) e saída VGA com cores pulsantes (extra 2).

## Estrutura desta pasta

```
nrz_i/
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

- `src/nrz_i_modulator.vhd` — código-fonte do circuito principal (NRZ-I + VGA + PMOD integrados)
- `sim/tb_nrz_i.vhd` — testbench para simulação comportamental
- `constraints/basys3_nrz_i.xdc` — mapeamento completo dos pinos da Basys 3

## Documentação

- [Tutorial de simulação](./docs/tutorial_simulacao.pdf) — como simular no Vivado passo a passo
- [Tutorial de gravação na placa](./docs/tutorial_placa.pdf) — como sintetizar, gerar bitstream e gravar na FPGA
- [Documentação técnica](./docs/documentacao_projeto.pdf) — diagrama de blocos, descrição das portas e funcionamento interno

## Por onde começar

Para uma **simulação rápida** (apenas ver funcionando):

1. Abrir o Vivado e carregar `vivado_project/NRZ-I-VGA-PMOD-LED/NRZ-I-VGA-PMOD-LED.xpr`
2. Clicar em `Run Simulation` → `Run Behavioral Simulation`

Para **reproduzir o projeto do zero**, siga esta ordem:

1. **Entenda o circuito** lendo a [documentação técnica](./docs/documentacao_projeto.pdf)
2. **Compare com o NRZ-L** (visto no projeto anterior) para identificar as diferenças na lógica de transição
3. **Simule no Vivado** seguindo o [tutorial de simulação](./docs/tutorial_simulacao.pdf)
4. **Grave na placa** seguindo o [tutorial de gravação](./docs/tutorial_placa.pdf)
5. (Opcional) Explore os [extras](./extras/) — PMOD e VGA

## Extras (opcionais)

- [Saída pelo PMOD para osciloscópio](./extras/pmod_osciloscopio/)
- [Saída VGA com cores pulsantes](./extras/vga/)

## Próximo passo

Você concluiu os dois projetos do trabalho. Acesse o [Relatório técnico final](../relatorio_final/relatorio.pdf) para ver a análise comparativa entre NRZ-L e NRZ-I, os resultados obtidos e as conclusões do grupo.
