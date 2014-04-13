/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                       */
/*  \   \        Copyright (c) 2003-2009 Xilinx, Inc.                */
/*  /   /          All Right Reserved.                                 */
/* /---/   /\                                                         */
/* \   \  /  \                                                      */
/*  \___\/\___\                                                    */
/***********************************************************************/

#include "xsi.h"

struct XSI_INFO xsi_info;

char *IEEE_P_2592010699;
char *STD_STANDARD;
char *IEEE_P_3620187407;
char *IEEE_P_3499444699;
char *UNISIM_P_0947159679;
char *WORK_P_3195526600;
char *STD_TEXTIO;
char *IEEE_P_2717149903;
char *UNISIM_P_3222816464;
char *IEEE_P_1367372525;
char *IEEE_P_1242562249;
char *IEEE_P_3564397177;


int main(int argc, char **argv)
{
    xsi_init_design(argc, argv);
    xsi_register_info(&xsi_info);

    xsi_register_min_prec_unit(-12);
    ieee_p_2592010699_init();
    ieee_p_3499444699_init();
    ieee_p_3620187407_init();
    work_p_3195526600_init();
    unisim_p_0947159679_init();
    work_a_1367638381_1516540902_init();
    work_a_0209193083_1516540902_init();
    work_a_0883709372_1516540902_init();
    std_textio_init();
    ieee_p_2717149903_init();
    ieee_p_1367372525_init();
    unisim_p_3222816464_init();
    ieee_p_1242562249_init();
    unisim_a_0780662263_2014779070_init();
    unisim_a_1529743555_1964767677_init();
    unisim_a_3312667966_2930107152_init();
    unisim_a_1490675510_1976025627_init();
    unisim_a_2830449740_1820106778_init();
    work_a_3058573191_1914714393_init();
    unisim_a_1478392591_3979135294_init();
    unisim_a_0619316608_0093012374_init();
    unisim_a_1477564452_0093012374_init();
    work_a_4039573118_0974220825_init();
    work_a_4119455995_0974220825_init();
    work_a_1760047808_1721647423_init();
    ieee_p_3564397177_init();
    unisim_a_0995151376_0725860537_init();
    unisim_a_3324865187_1524426403_init();
    unisim_a_0428530386_1524426403_init();
    unisim_a_3426277850_2209748606_init();
    unisim_a_0992405479_0143995345_init();
    unisim_a_2245184654_0143995345_init();
    unisim_a_1481985897_2930107152_init();
    work_a_3067634424_3518511101_init();
    unisim_a_0941147393_1524426403_init();
    unisim_a_2831913298_1524426403_init();
    work_a_3176874008_3482848748_init();
    work_a_1710637703_0818210489_init();
    work_a_3977930915_1516540902_init();
    work_a_2395533809_1516540902_init();
    work_a_3595899564_3553469787_init();


    xsi_register_tops("work_a_3595899564_3553469787");

    IEEE_P_2592010699 = xsi_get_engine_memory("ieee_p_2592010699");
    xsi_register_ieee_std_logic_1164(IEEE_P_2592010699);
    STD_STANDARD = xsi_get_engine_memory("std_standard");
    IEEE_P_3620187407 = xsi_get_engine_memory("ieee_p_3620187407");
    IEEE_P_3499444699 = xsi_get_engine_memory("ieee_p_3499444699");
    UNISIM_P_0947159679 = xsi_get_engine_memory("unisim_p_0947159679");
    WORK_P_3195526600 = xsi_get_engine_memory("work_p_3195526600");
    STD_TEXTIO = xsi_get_engine_memory("std_textio");
    IEEE_P_2717149903 = xsi_get_engine_memory("ieee_p_2717149903");
    UNISIM_P_3222816464 = xsi_get_engine_memory("unisim_p_3222816464");
    IEEE_P_1367372525 = xsi_get_engine_memory("ieee_p_1367372525");
    IEEE_P_1242562249 = xsi_get_engine_memory("ieee_p_1242562249");
    IEEE_P_3564397177 = xsi_get_engine_memory("ieee_p_3564397177");

    return xsi_run_simulation(argc, argv);

}
