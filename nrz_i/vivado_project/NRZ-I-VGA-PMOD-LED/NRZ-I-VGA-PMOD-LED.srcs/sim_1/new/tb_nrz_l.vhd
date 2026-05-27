library ieee;
use ieee.std_logic_1164.all;

entity tb_nrz_l is
end entity tb_nrz_l;

architecture sim of tb_nrz_l is
    constant BIT_PERIOD : time := 20 ns;
    constant CLK_PERIOD : time := 2 ns;
    
    signal clk     : std_logic := '0';
    signal rst     : std_logic := '1';
    signal data_in : std_logic_vector(15 downto 0 ) := "0100110101010010";
    signal tx_out  : std_logic;
begin
    DUT: entity work.nrz_l_modulator
        generic map (CYCLES_PER_BIT => 10)
        port map (clk => clk, rst => rst, data_in => data_in, tx_out => tx_out);

    clk <= not clk after CLK_PERIOD / 2; -- Clock automático[cite: 4]

    process
    begin
        report "Iniciando simulacao NRZ-L (Sequencia Unica)" severity note;
        rst <= '1';
        wait for 10 ns;
        rst <= '0';
        
        wait for BIT_PERIOD * 18; -- Tempo suficiente para ver o fim da transmissão
        report "Simulacao NRZ-L concluida" severity note;
        wait; 
    end process;
end architecture sim;