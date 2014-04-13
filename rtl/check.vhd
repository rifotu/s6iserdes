library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

library work;
use work.sub_module_components.all;

entity check is
port(

      i_clk      : in  std_logic; 
      i_rst      : in  std_logic;
      i_data     : in  std_logic_vector(41 downto 0);

      o_error    : out std_logic
);
end check;


architecture rtl of check is
 

constant  ONE_SECOND  : integer = 125000000;

signal deserialized_lvalid   : std_logic  := '0';
signal deserialized_fvalid   : std_logic  := '0';
signal deserialized_data     : std_logic_vector(39 downto 0);

signal gp_cnt         : std_logic_vector(27 downto 0) := (others => '0');
signal strt_test      : std_logic := '0';

signal data_d1        : std_logic_vector(41 downto 0) := (others => '0');
signal data_d2        : std_logic_vector(41 downto 0) := (others => '0');
signal data_d3        : std_logic_vector(41 downto 0) := (others => '0');


begin


process(i_clk)
begin
  if(i_clk'event and i_clk = '1') then
    if(i_rst = '1') then
      gp_cnt <= (others => '0');
    else
      if(gp_cnt(27) = '0') then
        gp_cnt <= gp_cnt + '1';
      end if;
    end if;
  end if;
end process;

strt_test <=  '1' when gp_cnt = conv_std_logic_vector(ONE_SECOND, 28) else
              '0';


-- register incoming pixels
process(i_clk)
begin
  if(i_clk'event and i_clk = '1') then
    data_d1 <= i_data;
    data_d2 <= data_d1;
    data_d3 <= data_d2;
  end if;
end process;


deserialized_data    <=   data_d3(39 downto 0);
deserialized_lvalid  <=   data_d2(40);
deserialized_fvalid  <=   data_d2(41);

i_check_lfsr: lfsr
generic map(
         seed => 293
)
port map(
         i_rst   =>  i_rst,
         clk     =>  i_clk,

         i_place_seed => strt_test,       
         i_lvalid     => deserialized_lvalid,
         i_fvalid     => deserialized_fvalid,

         o_lvalid    => check_lval_lfsr,
         o_fvalid    => open,
         o_pix       => check_pix_lfsr
);
signal check_pix_lfsr       : std_logic_vector(39 downto 0) := (others => '0');
signal check_lval_lfsr      : std_logic := '0';
signal system_error         : std_logic := '0';

process(i_clk)
begin
  if(i_clk'event and i_clk = '1') then
    if(check_lval_lfsr = '1') then
      if(check_pix_lfsr = deserialized_data) then
        system_error <= '0';
      else
        system_error <= '1';
      end if;
    end if;
  end if;
end process;

o_error  <= system_error;

end rtl;
