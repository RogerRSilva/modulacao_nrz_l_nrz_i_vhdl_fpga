# Modulação Digital em VHDL

Trabalho da disciplina de **Comunicação de Dados e Sistemas Reconfiguráveis**.

## Integrantes

| Nome | RA | GitHub |
|------|----|--------|
| Aline Cristina Ribeiro de Barros | 081230021 |
| Luis Gustavo de Oliveira Carneiro | 081230029 |
| Roger Rocha da Silva | 081230045 |
| João Victor Pereira Andrade | 081230010 |
| Samar Victor Vieira Souza | 081230035 |

## Descrição

Este trabalho implementa, em VHDL, dois sistemas de modulação digital: **Unipolar NRZ-L** e **Unipolar NRZ-I**. O código foi simulado no Vivado Simulator e implementado na placa **Basys 3 (xc7a35tcpg236-1)**. Ambos os projetos incluem saída serial pelo conector PMOD (para visualização em osciloscópio) e saída VGA com cores pulsantes conforme o nível do sinal modulado.

## Estrutura do repositório

```
modulacao_vhdl/
├── nrz_l/          Projeto da modulação NRZ-L (auto-contido)
├── nrz_i/          Projeto da modulação NRZ-I (auto-contido)
└── relatorio_final/ Relatório técnico consolidado e vídeo demo
```

Cada projeto possui sua própria pasta `docs/` com tutoriais e documentação técnica, e uma pasta `extras/` com as atividades opcionais (saída PMOD e saída VGA).

## Projetos

- [Modulação NRZ-L](./nrz_l/) — bit representado pelo nível do pulso
- [Modulação NRZ-I](./nrz_i/) — bit representado pela transição do pulso

## Relatório

- [Relatório técnico final](./relatorio_final/relatorio.pdf)

## Ferramentas utilizadas

- Vivado 2025.2
- Placa Basys 3 — xc7a35tcpg236-1
- Osciloscópio / Analog Discovery 3 (para o extra PMOD)

## Como começar

Recomendamos iniciar pelo projeto NRZ-L. Acesse a pasta [nrz_l/](./nrz_l/) e siga o README local.
