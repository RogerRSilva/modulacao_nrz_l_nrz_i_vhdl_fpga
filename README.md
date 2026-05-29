# Modulação Digital em VHDL

Trabalho da disciplina de **Comunicação de Dados — Sistemas Reconfiguráveis**.

## Integrantes

| Nome | RA | GitHub |
|------|----|--------|
| Aline Cristina Ribeiro de Barros | 081230021 | [@alinecrb](https://github.com/alinecrb) |
| Luis Gustavo de Oliveira Carneiro | 081230029 | — |
| Roger Rocha da Silva | 081230045 | [@rogerrsilva](https://github.com/rogerrsilva) |
| João Victor Pereira Andrade | 081230010 | — |
| Samar Victor Vieira Souza | 081230035 | — |

## Descrição

Implementação em VHDL de dois sistemas de modulação digital — Unipolar NRZ-L e Unipolar NRZ-I — simulados no Vivado Simulator e gravados na placa **Basys 3 (xc7a35tcpg236-1)**. Ambos os projetos incluem saída PMOD para osciloscópio e saída VGA com cores pulsantes.

## Estrutura do repositório

```
modulacao_vhdl/
├── nrz_l/           Projeto NRZ-L (auto-contido)
├── nrz_i/           Projeto NRZ-I (auto-contido)
├── relatorio_final/ Relatório técnico
```

## Projetos

- [Modulação NRZ-L](./nrz_l) — bit representado pelo nível do pulso;
- [Modulação NRZ-I](./nrz_i) — bit representado pela transição do pulso;

## Relatório

- [Relatório técnico final](-./relatorio_final) - Relatório Técnico desenvolvido com base nos dois projetos citados e no processo de aprendizado do grupo.

## Vídeos Demonstrativos

- [Vídeo Simulação - nrz-i](./nrz_i/README.md) - Vídeo demonstrativo do resultado da simulação do projeto nrz-i.
- [Vídeo Simulação - nrz-l](./nrz_l/README.md) - Vídeo demonstrativo do resultado da simulação do projeto nrz-l.


## Ferramentas

- Vivado 2025.2
- Placa Basys 3 — xc7a35tcpg236-1
- Analog Discovery 3 (captura PMOD)

## Como começar

Acesse [nrz_l/](./nrz_l/) e siga o README local.
