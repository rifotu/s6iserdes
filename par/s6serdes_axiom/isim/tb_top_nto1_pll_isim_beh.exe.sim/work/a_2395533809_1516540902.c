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

/* This file is designed for use with ISim build 0xfbc00daa */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "/home/rifat/Projects/apertus/codes/s6serdes_axiom/rtl/top_s6_axiom.vhd";
extern char *IEEE_P_2592010699;



static void work_a_2395533809_1516540902_p_0(char *t0)
{
    char t6[16];
    char t10[16];
    char *t1;
    char *t2;
    unsigned char t3;
    char *t4;
    unsigned char t5;
    char *t7;
    char *t8;
    char *t9;
    char *t11;
    char *t12;
    unsigned int t13;
    unsigned int t14;
    unsigned char t15;
    char *t16;
    char *t17;
    char *t18;
    char *t19;
    char *t20;
    char *t21;

LAB0:    xsi_set_current_line(58, ng0);

LAB3:    t1 = (t0 + 1788U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 1696U);
    t4 = *((char **)t1);
    t5 = *((unsigned char *)t4);
    t7 = ((IEEE_P_2592010699) + 2312);
    t1 = xsi_base_array_concat(t1, t6, t7, (char)99, t3, (char)99, t5, (char)101);
    t8 = (t0 + 1880U);
    t9 = *((char **)t8);
    t11 = ((IEEE_P_2592010699) + 2312);
    t12 = (t0 + 6736U);
    t8 = xsi_base_array_concat(t8, t10, t11, (char)97, t1, t6, (char)97, t9, t12, (char)101);
    t13 = (1U + 1U);
    t14 = (t13 + 40U);
    t15 = (42U != t14);
    if (t15 == 1)
        goto LAB5;

LAB6:    t16 = (t0 + 3264);
    t17 = (t16 + 32U);
    t18 = *((char **)t17);
    t19 = (t18 + 32U);
    t20 = *((char **)t19);
    memcpy(t20, t8, 42U);
    xsi_driver_first_trans_fast(t16);

LAB2:    t21 = (t0 + 3212);
    *((int *)t21) = 1;

LAB1:    return;
LAB4:    goto LAB2;

LAB5:    xsi_size_not_matching(42U, t14, 0);
    goto LAB6;

}

static void work_a_2395533809_1516540902_p_1(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;

LAB0:    xsi_set_current_line(98, ng0);

LAB3:    t1 = (t0 + 2248U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 3300);
    t4 = (t1 + 32U);
    t5 = *((char **)t4);
    t6 = (t5 + 32U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = t3;
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t8 = (t0 + 3220);
    *((int *)t8) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}


extern void work_a_2395533809_1516540902_init()
{
	static char *pe[] = {(void *)work_a_2395533809_1516540902_p_0,(void *)work_a_2395533809_1516540902_p_1};
	xsi_register_didat("work_a_2395533809_1516540902", "isim/tb_top_nto1_pll_isim_beh.exe.sim/work/a_2395533809_1516540902.didat");
	xsi_register_executes(pe);
}
