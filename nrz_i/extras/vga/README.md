# Extra — Saída VGA com Cores Pulsantes — NRZ-I

Utiliza a saída VGA da Basys 3 para apresentar visualmente o sinal NRZ-I modulado, alterando a cor de tela cheia conforme o nível atual do sinal.

| Nível do sinal | Cor da tela |
|----------------|-------------|
| 0 (baixo)      | Vermelho    |
| 1 (alto)       | Azul        |

Como o NRZ-I muda de nível apenas quando o bit é 1, sequências com zeros consecutivos exibem a mesma cor por múltiplos intervalos de bit — comportamento distinto do NRZ-L.

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
5. Observar a tela mudar de cor a cada transição do sinal NRZ-I

Consulte o [tutorial de VGA](./docs/tutorial_vga.pdf) para o passo a passo completo.
