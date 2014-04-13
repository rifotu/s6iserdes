library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

library work;
use work.sub_module_components.all;


entity top_s6_axiom is
port(
       i_clk           : in  std_logic;  -- clk from oscillator on board
       i_rst           : in  std_logic;

       i_data_p        : in  std_logic_vector(5 downto 0);
       i_data_n        : in  std_logic_vector(5 downto 0);
  
       i_clk_p         : in  std_logic;
       i_clk_n         : in  std_logic;

       o_data_p        : out std_logic_vector(5 downto 0);
       o_data_n        : out std_logic_vector(5 downto 0);

       o_clk_p         : out std_logic;
       o_clk_n         : out std_logic;

       o_error         : out std_logic
);
end top_s6_axiom;


architecture rtl of top_s6_axiom is

signal data_to_serialize      : std_logic_vector(41 downto 0) := (others => '0');
signal lval                   : std_logic := '0';
signal fval                   : std_logic := '0';
signal pix                    : std_logic_vector(39 downto 0) := (others => '0');
signal fabric_clk             : std_logic := '0';
signal loopback_data          : std_logic_vector(41 downto 0) := (others => '0');
signal loopback_clk           : std_logic := '0';
signal system_error           : std_logic := '0';



begin

i_camera: camera
port map(
         
      i_clk        => fabric_clk, --  in  std_logic;
      i_rst        => i_rst, -- 

      o_lval       => lval, --  out std_logic;
      o_fval       => fval, --  out std_logic;
      o_pix        => pix   --  out std_logic_vector(39 downto 0)
);

data_to_serialize <= fval & lval & pix;

i_diff_tx: nto1_pll_diff_tx
port map(

--	refclkin_p   => ,                   -- : in  std_logic;
--      refclkin_n   => ,                   -- : in  std_logic;   		  -- reference clock input
        refclkin     => i_clk,              -- : in  std_logic;
        i_cam_data   => data_to_serialize,  -- in std_logic_vector(41 downto 0);
        o_fabric_clk => fabric_clk,         -- : out std_logic;

	reset	     => i_rst,     -- : in std_logic;                      -- reset (active high)
	clkout_p     => o_clk_p,   -- : out std_logic;
        clkout_n     => o_clk_n,   -- : out std_logic;             	  -- lvds clock output
	dataout_p    => o_data_p,  -- : out std_logic_vector(5 downto 0);  -- lvds data outputs
        dataout_n    => o_data_n   -- : out std_logic_vector(5 downto 0)
);  

i_diff_rx: nto1_pll_diff_rx
port map(

	reset	     => i_rst,
	clkin_p	     => i_clk_p, 
	clkin_n	     => i_clk_n,
	datain_p     => i_data_p, 
	datain_n     => i_data_n,
        o_data_prll  => loopback_data,
        o_clk_prll   => loopback_clk
);
		

i_check: check
port map(

          i_rst    =>  i_rst,
          i_clk    =>  loopback_clk,
          i_data   =>  loopback_data,
          o_error  =>  system_error
);

o_error <= system_error;

       


end rtl;

