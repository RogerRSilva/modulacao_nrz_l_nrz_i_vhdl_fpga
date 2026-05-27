## ============================================================
## Constraints - Basys 3 (xc7a35tcpg236-1)
## Modulador NRZ-L
##
## Mapeamento:
##   data_in[15:0] → SW15..SW0
##   clk           → Clock onboard 100 MHz (W5)
##   rst           → BTNC (botão central)
##   tx_out        → PMOD JA pino 1 (J1)
##   leds[15:0]    → LD15..LD0 (todos espelham tx_out)
##
## CYCLES_PER_BIT = 100_000_000 → 1s por bit com clock 100 MHz
## Transmissão completa de 16 bits = 16 segundos
## ============================================================

## ------------------------------------------------------------
## Clock onboard - 100 MHz
## ------------------------------------------------------------
set_property PACKAGE_PIN W5  [get_ports clk]
set_property IOSTANDARD  LVCMOS33 [get_ports clk]
create_clock -add -name sys_clk_pin -period 10.00 -waveform {0 5} [get_ports clk]

## ------------------------------------------------------------
## Reset - Botão central (BTNC), ativo em nível alto
## ------------------------------------------------------------
set_property PACKAGE_PIN U18 [get_ports rst]
set_property IOSTANDARD  LVCMOS33 [get_ports rst]

## ------------------------------------------------------------
## Saída serial - PMOD JA pino 1 (J1)
## Conectar CH1 do Analog Discovery 3 aqui
## GND: pino 5 do conector PMOD JA
## ------------------------------------------------------------
set_property PACKAGE_PIN J1  [get_ports tx_out]
set_property IOSTANDARD  LVCMOS33 [get_ports tx_out]

## ------------------------------------------------------------
## LEDs - leds[15:0], todos espelham tx_out simultaneamente
## ------------------------------------------------------------
set_property PACKAGE_PIN U16 [get_ports {leds[0]}]
set_property IOSTANDARD  LVCMOS33 [get_ports {leds[0]}]

set_property PACKAGE_PIN E19 [get_ports {leds[1]}]
set_property IOSTANDARD  LVCMOS33 [get_ports {leds[1]}]

set_property PACKAGE_PIN U19 [get_ports {leds[2]}]
set_property IOSTANDARD  LVCMOS33 [get_ports {leds[2]}]

set_property PACKAGE_PIN V19 [get_ports {leds[3]}]
set_property IOSTANDARD  LVCMOS33 [get_ports {leds[3]}]

set_property PACKAGE_PIN W18 [get_ports {leds[4]}]
set_property IOSTANDARD  LVCMOS33 [get_ports {leds[4]}]

set_property PACKAGE_PIN U15 [get_ports {leds[5]}]
set_property IOSTANDARD  LVCMOS33 [get_ports {leds[5]}]

set_property PACKAGE_PIN U14 [get_ports {leds[6]}]
set_property IOSTANDARD  LVCMOS33 [get_ports {leds[6]}]

set_property PACKAGE_PIN V14 [get_ports {leds[7]}]
set_property IOSTANDARD  LVCMOS33 [get_ports {leds[7]}]

set_property PACKAGE_PIN V13 [get_ports {leds[8]}]
set_property IOSTANDARD  LVCMOS33 [get_ports {leds[8]}]

set_property PACKAGE_PIN V3  [get_ports {leds[9]}]
set_property IOSTANDARD  LVCMOS33 [get_ports {leds[9]}]

set_property PACKAGE_PIN W3  [get_ports {leds[10]}]
set_property IOSTANDARD  LVCMOS33 [get_ports {leds[10]}]

set_property PACKAGE_PIN U3  [get_ports {leds[11]}]
set_property IOSTANDARD  LVCMOS33 [get_ports {leds[11]}]

set_property PACKAGE_PIN P3  [get_ports {leds[12]}]
set_property IOSTANDARD  LVCMOS33 [get_ports {leds[12]}]

set_property PACKAGE_PIN N3  [get_ports {leds[13]}]
set_property IOSTANDARD  LVCMOS33 [get_ports {leds[13]}]

set_property PACKAGE_PIN P1  [get_ports {leds[14]}]
set_property IOSTANDARD  LVCMOS33 [get_ports {leds[14]}]

set_property PACKAGE_PIN L1  [get_ports {leds[15]}]
set_property IOSTANDARD  LVCMOS33 [get_ports {leds[15]}]

## ------------------------------------------------------------
## Switches - data_in[15:0]
## SW0  = data_in[0]  (LSB)
## SW15 = data_in[15] (MSB)
## ------------------------------------------------------------
set_property PACKAGE_PIN V17 [get_ports {data_in[0]}]
set_property IOSTANDARD  LVCMOS33 [get_ports {data_in[0]}]

set_property PACKAGE_PIN V16 [get_ports {data_in[1]}]
set_property IOSTANDARD  LVCMOS33 [get_ports {data_in[1]}]

set_property PACKAGE_PIN W16 [get_ports {data_in[2]}]
set_property IOSTANDARD  LVCMOS33 [get_ports {data_in[2]}]

set_property PACKAGE_PIN W17 [get_ports {data_in[3]}]
set_property IOSTANDARD  LVCMOS33 [get_ports {data_in[3]}]

set_property PACKAGE_PIN W15 [get_ports {data_in[4]}]
set_property IOSTANDARD  LVCMOS33 [get_ports {data_in[4]}]

set_property PACKAGE_PIN V15 [get_ports {data_in[5]}]
set_property IOSTANDARD  LVCMOS33 [get_ports {data_in[5]}]

set_property PACKAGE_PIN W14 [get_ports {data_in[6]}]
set_property IOSTANDARD  LVCMOS33 [get_ports {data_in[6]}]

set_property PACKAGE_PIN W13 [get_ports {data_in[7]}]
set_property IOSTANDARD  LVCMOS33 [get_ports {data_in[7]}]

set_property PACKAGE_PIN V2  [get_ports {data_in[8]}]
set_property IOSTANDARD  LVCMOS33 [get_ports {data_in[8]}]

set_property PACKAGE_PIN T3  [get_ports {data_in[9]}]
set_property IOSTANDARD  LVCMOS33 [get_ports {data_in[9]}]

set_property PACKAGE_PIN T2  [get_ports {data_in[10]}]
set_property IOSTANDARD  LVCMOS33 [get_ports {data_in[10]}]

set_property PACKAGE_PIN R3  [get_ports {data_in[11]}]
set_property IOSTANDARD  LVCMOS33 [get_ports {data_in[11]}]

set_property PACKAGE_PIN W2  [get_ports {data_in[12]}]
set_property IOSTANDARD  LVCMOS33 [get_ports {data_in[12]}]

set_property PACKAGE_PIN U1  [get_ports {data_in[13]}]
set_property IOSTANDARD  LVCMOS33 [get_ports {data_in[13]}]

set_property PACKAGE_PIN T1  [get_ports {data_in[14]}]
set_property IOSTANDARD  LVCMOS33 [get_ports {data_in[14]}]

set_property PACKAGE_PIN R2  [get_ports {data_in[15]}]
set_property IOSTANDARD  LVCMOS33 [get_ports {data_in[15]}]

## VGA - Basys 3
set_property PACKAGE_PIN G19 [get_ports {vga_r[0]}]
set_property IOSTANDARD  LVCMOS33 [get_ports {vga_r[0]}]
set_property PACKAGE_PIN H19 [get_ports {vga_r[1]}]
set_property IOSTANDARD  LVCMOS33 [get_ports {vga_r[1]}]
set_property PACKAGE_PIN J19 [get_ports {vga_r[2]}]
set_property IOSTANDARD  LVCMOS33 [get_ports {vga_r[2]}]
set_property PACKAGE_PIN N19 [get_ports {vga_r[3]}]
set_property IOSTANDARD  LVCMOS33 [get_ports {vga_r[3]}]

set_property PACKAGE_PIN J17 [get_ports {vga_g[0]}]
set_property IOSTANDARD  LVCMOS33 [get_ports {vga_g[0]}]
set_property PACKAGE_PIN H17 [get_ports {vga_g[1]}]
set_property IOSTANDARD  LVCMOS33 [get_ports {vga_g[1]}]
set_property PACKAGE_PIN G17 [get_ports {vga_g[2]}]
set_property IOSTANDARD  LVCMOS33 [get_ports {vga_g[2]}]
set_property PACKAGE_PIN D17 [get_ports {vga_g[3]}]
set_property IOSTANDARD  LVCMOS33 [get_ports {vga_g[3]}]

set_property PACKAGE_PIN N18 [get_ports {vga_b[0]}]
set_property IOSTANDARD  LVCMOS33 [get_ports {vga_b[0]}]
set_property PACKAGE_PIN L18 [get_ports {vga_b[1]}]
set_property IOSTANDARD  LVCMOS33 [get_ports {vga_b[1]}]
set_property PACKAGE_PIN K18 [get_ports {vga_b[2]}]
set_property IOSTANDARD  LVCMOS33 [get_ports {vga_b[2]}]
set_property PACKAGE_PIN J18 [get_ports {vga_b[3]}]
set_property IOSTANDARD  LVCMOS33 [get_ports {vga_b[3]}]

set_property PACKAGE_PIN P19 [get_ports vga_hs]
set_property IOSTANDARD  LVCMOS33 [get_ports vga_hs]

set_property PACKAGE_PIN R19 [get_ports vga_vs]
set_property IOSTANDARD  LVCMOS33 [get_ports vga_vs]
