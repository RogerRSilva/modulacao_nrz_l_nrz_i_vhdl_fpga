# Extra — Saída VGA com Cores Pulsantes — NRZ-L

Utiliza a saída VGA da Basys 3 para apresentar visualmente o sinal NRZ-L modulado, alterando a cor de tela cheia conforme o nível do bit atual.

| Nível do sinal | Cor da tela |
|----------------|-------------|
| 0 (baixo)      | Vermelho    |
| 1 (alto)       | Azul        |

A tela "pisca" conforme a sequência de bits é transmitida, permitindo visualização em monitor VGA.

## Estrutura desta pasta

```
vga/
├── src/          Código VHDL (mesmo do projeto principal — VGA integrado)
├── constraints/  Constraint com mapeamento VGA + switches + LEDs + PMOD
└── docs/         Tutorial e fotos/vídeo da tela VGA pulsando
```

## Especificações do controlador VGA implementado

- Resolução: **1920×1080 @ 60 Hz** (VESA)
- Pixel clock: **148,5 MHz** (gerado pelo MMCM/Clocking Wizard — IP `clk_wiz_0`)
- Polaridade dos pulsos de sincronismo: **positiva (ativo alto)**

## Equipamentos necessários

- Placa Basys 3
- Monitor com entrada VGA
- Cabo VGA

## Como reproduzir

1. Conectar o monitor ao conector VGA da Basys 3
2. Gravar o bitstream do projeto principal (`vivado_project/`)
3. Configurar os switches com a sequência de bits desejada
4. Pressionar BTNC para iniciar a transmissão
5. Observar a tela alternar entre vermelho (bit 0) e azul (bit 1) a cada segundo

Consulte o [tutorial de VGA](./docs/tutorial_vga.pdf) para o passo a passo completo.
