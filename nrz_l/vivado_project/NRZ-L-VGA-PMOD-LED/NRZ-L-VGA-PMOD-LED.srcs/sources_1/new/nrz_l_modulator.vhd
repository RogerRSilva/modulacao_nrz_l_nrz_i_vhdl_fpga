library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity nrz_l_modulator is
    generic (
        CYCLES_PER_BIT : integer := 100_000_000
    );
    port (
        clk      : in  std_logic;
        rst      : in  std_logic;
        data_in  : in  std_logic_vector(15 downto 0);
        tx_out   : out std_logic;
        leds     : out std_logic_vector(15 downto 0);
        vga_r    : out std_logic_vector(3 downto 0);
        vga_g    : out std_logic_vector(3 downto 0);
        vga_b    : out std_logic_vector(3 downto 0);
        vga_hs   : out std_logic;
        vga_vs   : out std_logic
    );
end entity nrz_l_modulator;

architecture rtl of nrz_l_modulator is

    -- NRZ-L
    signal s_bit_index : integer range 0 to 15 := 0;
    signal s_counter   : integer range 0 to CYCLES_PER_BIT - 1 := 0;
    signal s_tx_reg    : std_logic := '0';
    signal s_finished  : std_logic := '0';

    -- Pixel clock gerado pelo MMCM (148.5 MHz)
    signal pclk        : std_logic;
    signal pclk_locked : std_logic;

    -- VGA counters
    signal s_hcnt      : integer range 0 to 2199 := 0;
    signal s_vcnt      : integer range 0 to 1124 := 0;

    -- 1920x1080 @ 60 Hz (VESA)
    -- H: 1920 visible + 88 FP + 44 sync + 148 BP = 2200
    -- V: 1080 visible + 4 FP  + 5 sync  + 36 BP  = 1125
    constant H_VISIBLE : integer := 1920;
    constant H_FP      : integer := 88;
    constant H_SYNC    : integer := 44;
    constant H_BP      : integer := 148;
    constant H_TOTAL   : integer := 2200;

    constant V_VISIBLE : integer := 1080;
    constant V_FP      : integer := 4;
    constant V_SYNC    : integer := 5;
    constant V_BP      : integer := 36;
    constant V_TOTAL   : integer := 1125;

    signal s_in_display : std_logic := '0';

    -- Declaração do IP Clocking Wizard (gerado no Vivado)
    component clk_wiz_0
        port (
            clk_in1  : in  std_logic;
            clk_out1 : out std_logic;
            locked   : out std_logic;
            reset    : in  std_logic
        );
    end component;

begin

    -- --------------------------------------------------------
    -- Instância do MMCM: 100 MHz → 148.5 MHz
    -- --------------------------------------------------------
    u_clk_wiz : clk_wiz_0
        port map (
            clk_in1  => clk,
            clk_out1 => pclk,
            locked   => pclk_locked,
            reset    => rst
        );

    -- --------------------------------------------------------
    -- NRZ-L process (roda no clock de 100 MHz)
    -- --------------------------------------------------------
    process(clk, rst)
    begin
        if rst = '1' then
            s_counter   <= 0;
            s_bit_index <= 0;
            s_tx_reg    <= '0';
            s_finished  <= '0';
        elsif rising_edge(clk) then
            if s_finished = '0' then
                s_tx_reg <= data_in(15 - s_bit_index);
                if s_counter < CYCLES_PER_BIT - 1 then
                    s_counter <= s_counter + 1;
                else
                    s_counter <= 0;
                    if s_bit_index < 15 then
                        s_bit_index <= s_bit_index + 1;
                    else
                        s_finished <= '1';
                    end if;
                end if;
            end if;
        end if;
    end process;

    tx_out <= s_tx_reg;
    leds   <= (others => s_tx_reg);

    -- --------------------------------------------------------
    -- VGA sync (roda no pixel clock de 148.5 MHz)
    -- --------------------------------------------------------
    process(pclk, rst)
    begin
        if rst = '1' then
            s_hcnt <= 0;
            s_vcnt <= 0;
        elsif rising_edge(pclk) then
            if pclk_locked = '1' then
                if s_hcnt < H_TOTAL - 1 then
                    s_hcnt <= s_hcnt + 1;
                else
                    s_hcnt <= 0;
                    if s_vcnt < V_TOTAL - 1 then
                        s_vcnt <= s_vcnt + 1;
                    else
                        s_vcnt <= 0;
                    end if;
                end if;
            end if;
        end if;
    end process;

    -- Área visível
    s_in_display <= '1' when (s_hcnt < H_VISIBLE and s_vcnt < V_VISIBLE) else '0';

    -- Sync pulses - 1080p usa polaridade POSITIVA (ativo alto)
    vga_hs <= '1' when (s_hcnt >= H_VISIBLE + H_FP and
                        s_hcnt <  H_VISIBLE + H_FP + H_SYNC) else '0';
    vga_vs <= '1' when (s_vcnt >= V_VISIBLE + V_FP and
                        s_vcnt <  V_VISIBLE + V_FP + V_SYNC) else '0';

    -- Cores: azul = positivo (1), vermelho = negativo (0)
    vga_r <= "1111" when (s_in_display = '1' and s_tx_reg = '0') else "0000";
    vga_g <= "0000";
    vga_b <= "1111" when (s_in_display = '1' and s_tx_reg = '1') else "0000";

end architecture rtl;