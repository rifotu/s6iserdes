library ieee;
use ieee.std_logic_1164.all;

package sub_module_components is

component top_s6_axiom is
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
end component;


component camera is
port(
      i_clk        : in  std_logic;
      i_rst        : in  std_logic;

      o_lval       : out std_logic;
      o_fval       : out std_logic;
      o_pix        : out std_logic_vector(39 downto 0)
);
end component;


component check is
port(

      i_clk      : in  std_logic; 
      i_rst      : in  std_logic;
      i_data     : in  std_logic_vector(41 downto 0);

      o_error    : out std_logic
);
end component;


component clock_generator_pll_s8_diff is
generic (
	PLLD			: integer := 1 ;			-- Parameter to set the division factor in the PLL
	PLLX			: integer := 8 ;			-- Parameter to set the multiplication factor in the PLL
	S		        : integer := 8 ;			-- Parameter to set the serdes factor 1..8
	CLKIN_PERIOD            : real := 6.000 			-- clock period (ns) of input clock on clkin_p
--	DIFF_TERM		: boolean := FALSE  			-- Enable or disable internal differential termination
);
port(
	reset			 :  in std_logic ;                    	-- reset (active high)
--	clkin_p, clkin_n         :  in std_logic ;                   	-- differential clock input
	clkin                    :  in std_logic ;                   	-- differential clock input
	ioclk			 : out std_logic ;     			-- ioclock from BUFPLL
	serdesstrobe             : out std_logic ;     			-- serdes strobe from BUFPLL
	gclk		   	 : out std_logic ;     			-- global clock output from BUFG x1
	bufpll_lckd		 : out std_logic
) ; 				-- Locked output from BUFPLL
end component;

component lfsr is
generic(
       seed          : integer := 783   -- random number
);
port(
       i_rst         : in  std_logic;
       clk           : in  std_logic;

       i_lvalid      : in  std_logic;
       i_fvalid      : in  std_logic;
       i_place_seed  : in  std_logic;
       
       o_lvalid      : out std_logic;
       o_fvalid      : out std_logic;
       o_pix         : out std_logic_vector(15 downto 0)
);
end component;

component lvalid_fvalid_gen is
generic(
           PIXEL_NO        : integer := 751;   -- 752-1
           LINE_NO         : integer := 479    -- 480-1
);
port(
           i_rst           : in    std_logic;
           clk             : in    std_logic; 
   
           i_strt_pulse    : in    std_logic;  
                                               
                                               

           o_Fvalid        : out   std_logic;
           o_Lvalid        : out   std_logic 

);      
end component;

component nto1_pll_diff_rx is
port(
	reset			: in  std_logic;                     		-- reset (active high)
	clkin_p, clkin_n	: in  std_logic;                     		-- lvds clock input
	datain_p, datain_n	: in  std_logic_vector(5 downto 0) ;  		-- lvds data inputs
	o_data_prll 		: out std_logic_vector(41 downto 0);
        o_clk_prll              : out std_logic
);
end component;

component serdes_1_to_n_data_s8_diff generic (
	S			: integer := 8 ;				-- Parameter to set the serdes factor 1..8
	D 			: integer := 16) ;				-- Set the number of inputs and outputs
port 	(
	use_phase_detector	:  in std_logic ;				-- Set generation of phase detector logic
	datain_p		:  in std_logic_vector(D-1 downto 0) ;		-- Input from LVDS receiver pin
	datain_n		:  in std_logic_vector(D-1 downto 0) ;		-- Input from LVDS receiver pin
	rxioclk			:  in std_logic ;				-- IO Clock network
	rxserdesstrobe		:  in std_logic ;				-- Parallel data capture strobe
	reset			:  in std_logic ;				-- Reset line
	gclk			:  in std_logic ;				-- Global clock
	bitslip			:  in std_logic ;				-- Bitslip control line
	debug_in  		:  in std_logic_vector(1 downto 0) ;		-- input debug data
	data_out		: out std_logic_vector((D*S)-1 downto 0) ;  	-- Output data
	debug			: out std_logic_vector((2*D)+6 downto 0)) ;  	-- Debug bus, 2D+6 = 2 lines per input (from mux and ce) + 7, leave nc if debug not required
end component ;

component serdes_1_to_n_clk_pll_s8_diff
generic (
	PLLD 			: integer := 1 ;   				-- Parameter to set division for PLL 
	CLKIN_PERIOD		: real := 6.700 ;   				-- Set PLL multiplier
	PLLX 			: integer := 2 ;   				-- Set PLL multiplier
	S			: integer := 8 ;				-- Parameter to set the serdes factor 1..8
	BS 			: boolean := FALSE) ;   			-- Parameter to enable bitslip TRUE or FALSE
port(
	clkin_p			:  in std_logic ;				-- Input from LVDS receiver pin
	clkin_n			:  in std_logic ;				-- Input from LVDS receiver pin
	reset			:  in std_logic ;				-- Reset line
	pattern1		:  in std_logic_vector(S-1 downto 0) ;  	-- Data to define pattern that bitslip should search for
	pattern2		:  in std_logic_vector(S-1 downto 0) ;  	-- Data to define alternate pattern that bitslip should search for
	rxioclk			: out std_logic ;				-- IO Clock network
	rx_serdesstrobe		: out std_logic ;				-- Parallel data capture strobe
	rx_bufg_pll_x1		: out std_logic ;				-- Global clock
	bitslip			: out std_logic ;				-- Bitslip control line
	datain			: out std_logic_vector(S-1 downto 0) ;  	-- Output data
	rx_bufpll_lckd		: out std_logic                           	-- BUFPLL locked
); 			
end component ;


component nto1_pll_diff_tx is port 
(

--	refclkin_p   : in  std_logic;
--      refclkin_n   : in  std_logic;   		  -- reference clock input
        refclkin     : in  std_logic;                     -- RT, additions for axiom trials
        i_cam_data   : in  std_logic_vector(41 downto 0);
        o_fabric_clk : out std_logic;

	reset	    : in std_logic;                       -- reset (active high)
	clkout_p    : out std_logic;
        clkout_n    : out std_logic;             	  -- lvds clock output
	dataout_p   : out std_logic_vector(5 downto 0);   -- lvds data outputs
        dataout_n   : out std_logic_vector(5 downto 0)
);  		
end component;

component serdes_n_to_1_s8_diff is
generic (
	S			: integer := 8 ;	-- Parameter to set the serdes factor 1..8
	D			: integer := 16		-- Set the number of inputs and outputs
);		
port(
	txioclk			:  in std_logic ;				-- IO Clock network
	txserdesstrobe	        :  in std_logic ;				-- Parallel data capture strobe
	reset			:  in std_logic ;				-- Reset
	gclk			:  in std_logic ;				-- Global clock
	datain			:  in std_logic_vector((D*S)-1 downto 0); 	-- Data for output
	dataout_p		: out std_logic_vector(D-1 downto 0);		-- output
	dataout_n		: out std_logic_vector(D-1 downto 0)    	-- output
);	
end component;

--component clock_generator_pll_s8_diff is
--generic(
--	PLLD			: integer := 1 ;		 -- Parameter to set the division factor in the PLL
--	PLLX			: integer := 8 ;		 -- Parameter to set the multiplication factor in the PLL
--	S		        : integer := 8 ; 		 -- Parameter to set the serdes factor 1..8
--	CLKIN_PERIOD	        : real := 6.000	                 -- clock period (ns) of input clock on clkin_p
--);		
--port
--(
--	reset			: in std_logic ;                -- reset (active high)
----	clkin_p                 : in std_logic ;                -- differential clock input
----      clkin_n	                : in std_logic ;                -- differential clock input
--        clkin                   : in std_logic;
--	ioclk			: out std_logic ;             	-- ioclock from BUFPLL
--	serdesstrobe	        : out std_logic ;               -- serdes strobe from BUFPLL
--	gclk			: out std_logic ;             	-- global clock output from BUFG x1
--	bufpll_lckd		: out std_logic                 -- Locked output from BUFPLL
--); 			
--end component ;



end sub_module_components;
