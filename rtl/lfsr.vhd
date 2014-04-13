library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity lfsr is
generic(
       seed          : integer := 783   -- random number
);
port(
       i_rst         : in  std_logic;
       clk           : in  std_logic;

       i_lval        : in  std_logic;
       i_fval        : in  std_logic;
       i_place_seed  : in  std_logic;
       
       o_lval        : out std_logic;
       o_fval        : out std_logic;
       o_pix         : out std_logic_vector(15 downto 0)
);
end lfsr;


architecture rtl of lfsr is

signal lfsr       : std_logic_vector(15 downto 0);
signal input      : std_logic;
signal lval       : std_logic := '0';
signal fval       : std_logic := '0';

begin

-- linear feedback shift register
process(clk, i_rst)
begin
  if(i_rst = '1') then
    lfsr <= (others => '0');
  elsif(clk'event and clk = '1') then
    if(i_place_seed = '1') then
      lfsr <= conv_std_logic_vector(seed, 16);
    elsif(i_lval = '1') then
      lfsr <= lfsr(14 downto 0) & input;
    end if;
  end if;
end process;

-- tap choices are made according to XAPP052
input <= not(lfsr(3) xor lfsr(12) xor lfsr(14) xor lfsr(15));

-- delay i_lval for 1 CC 
process(clk)
begin
  if(clk'event and clk = '1') then
    lval <= i_lval;
    fval <= i_fval;
  end if;
end process;

-- assign outputs

o_fval <= fval;
o_lval <= lval;
o_pix  <= lfsr;

end rtl;

