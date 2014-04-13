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
static const char *ng0 = "/home/rifat/Projects/apertus/codes/s6serdes_axiom/rtl/camera.vhd";
extern char *IEEE_P_3620187407;
extern char *IEEE_P_3499444699;
extern char *IEEE_P_2592010699;

char *ieee_p_3499444699_sub_2213602152_3536714472(char *, char *, int , int );
char *ieee_p_3620187407_sub_674691591_3965413181(char *, char *, char *, char *, unsigned char );


static void work_a_0883709372_1516540902_p_0(char *t0)
{
    char t21[16];
    unsigned char t1;
    char *t2;
    unsigned char t3;
    char *t4;
    char *t5;
    unsigned char t6;
    unsigned char t7;
    char *t8;
    unsigned char t9;
    unsigned char t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    unsigned int t22;
    unsigned int t23;
    char *t24;

LAB0:    xsi_set_current_line(39, ng0);
    t2 = (t0 + 568U);
    t3 = xsi_signal_has_event(t2);
    if (t3 == 1)
        goto LAB5;

LAB6:    t1 = (unsigned char)0;

LAB7:    if (t1 != 0)
        goto LAB2;

LAB4:
LAB3:    t2 = (t0 + 3044);
    *((int *)t2) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(40, ng0);
    t4 = (t0 + 684U);
    t8 = *((char **)t4);
    t9 = *((unsigned char *)t8);
    t10 = (t9 == (unsigned char)3);
    if (t10 != 0)
        goto LAB8;

LAB10:    xsi_set_current_line(43, ng0);
    t2 = (t0 + 1604U);
    t4 = *((char **)t2);
    t17 = (27 - 27);
    t18 = (t17 * -1);
    t19 = (1U * t18);
    t20 = (0 + t19);
    t2 = (t4 + t20);
    t1 = *((unsigned char *)t2);
    t3 = (t1 == (unsigned char)2);
    if (t3 != 0)
        goto LAB11;

LAB13:
LAB12:
LAB9:    goto LAB3;

LAB5:    t4 = (t0 + 592U);
    t5 = *((char **)t4);
    t6 = *((unsigned char *)t5);
    t7 = (t6 == (unsigned char)3);
    t1 = t7;
    goto LAB7;

LAB8:    xsi_set_current_line(41, ng0);
    t4 = xsi_get_transient_memory(28U);
    memset(t4, 0, 28U);
    t11 = t4;
    memset(t11, (unsigned char)2, 28U);
    t12 = (t0 + 3120);
    t13 = (t12 + 32U);
    t14 = *((char **)t13);
    t15 = (t14 + 32U);
    t16 = *((char **)t15);
    memcpy(t16, t4, 28U);
    xsi_driver_first_trans_fast(t12);
    goto LAB9;

LAB11:    xsi_set_current_line(44, ng0);
    t5 = (t0 + 1604U);
    t8 = *((char **)t5);
    t5 = (t0 + 5940U);
    t11 = ieee_p_3620187407_sub_674691591_3965413181(IEEE_P_3620187407, t21, t8, t5, (unsigned char)3);
    t12 = (t21 + 12U);
    t22 = *((unsigned int *)t12);
    t23 = (1U * t22);
    t6 = (28U != t23);
    if (t6 == 1)
        goto LAB14;

LAB15:    t13 = (t0 + 3120);
    t14 = (t13 + 32U);
    t15 = *((char **)t14);
    t16 = (t15 + 32U);
    t24 = *((char **)t16);
    memcpy(t24, t11, 28U);
    xsi_driver_first_trans_fast(t13);
    goto LAB12;

LAB14:    xsi_size_not_matching(28U, t23, 0);
    goto LAB15;

}

static void work_a_0883709372_1516540902_p_1(char *t0)
{
    char t3[16];
    char *t1;
    char *t2;
    char *t4;
    char *t5;
    int t6;
    unsigned char t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;

LAB0:    xsi_set_current_line(50, ng0);
    t1 = (t0 + 1604U);
    t2 = *((char **)t1);
    t1 = (t0 + 5940U);
    t4 = (t0 + 1776U);
    t5 = *((char **)t4);
    t6 = *((int *)t5);
    t4 = ieee_p_3499444699_sub_2213602152_3536714472(IEEE_P_3499444699, t3, t6, 28);
    t7 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t2, t1, t4, t3);
    if (t7 != 0)
        goto LAB3;

LAB4:
LAB5:    t13 = (t0 + 3156);
    t14 = (t13 + 32U);
    t15 = *((char **)t14);
    t16 = (t15 + 32U);
    t17 = *((char **)t16);
    *((unsigned char *)t17) = (unsigned char)2;
    xsi_driver_first_trans_fast(t13);

LAB2:    t18 = (t0 + 3052);
    *((int *)t18) = 1;

LAB1:    return;
LAB3:    t8 = (t0 + 3156);
    t9 = (t8 + 32U);
    t10 = *((char **)t9);
    t11 = (t10 + 32U);
    t12 = *((char **)t11);
    *((unsigned char *)t12) = (unsigned char)3;
    xsi_driver_first_trans_fast(t8);
    goto LAB2;

LAB6:    goto LAB2;

}

static void work_a_0883709372_1516540902_p_2(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;

LAB0:    xsi_set_current_line(89, ng0);

LAB3:    t1 = (t0 + 1328U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 3192);
    t4 = (t1 + 32U);
    t5 = *((char **)t4);
    t6 = (t5 + 32U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = t3;
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t8 = (t0 + 3060);
    *((int *)t8) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_0883709372_1516540902_p_3(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;

LAB0:    xsi_set_current_line(90, ng0);

LAB3:    t1 = (t0 + 1420U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 3228);
    t4 = (t1 + 32U);
    t5 = *((char **)t4);
    t6 = (t5 + 32U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = t3;
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t8 = (t0 + 3068);
    *((int *)t8) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_0883709372_1516540902_p_4(char *t0)
{
    char t8[16];
    char t10[16];
    char t17[16];
    char *t1;
    char *t2;
    unsigned int t3;
    unsigned int t4;
    unsigned int t5;
    char *t6;
    char *t7;
    char *t9;
    char *t11;
    char *t12;
    int t13;
    unsigned int t14;
    char *t15;
    char *t16;
    char *t18;
    char *t19;
    unsigned int t20;
    unsigned char t21;
    char *t22;
    char *t23;
    char *t24;
    char *t25;
    char *t26;
    char *t27;

LAB0:    xsi_set_current_line(91, ng0);

LAB3:    t1 = (t0 + 1512U);
    t2 = *((char **)t1);
    t3 = (15 - 7);
    t4 = (t3 * 1U);
    t5 = (0 + t4);
    t1 = (t2 + t5);
    t6 = (t0 + 1512U);
    t7 = *((char **)t6);
    t9 = ((IEEE_P_2592010699) + 2312);
    t11 = (t10 + 0U);
    t12 = (t11 + 0U);
    *((int *)t12) = 7;
    t12 = (t11 + 4U);
    *((int *)t12) = 0;
    t12 = (t11 + 8U);
    *((int *)t12) = -1;
    t13 = (0 - 7);
    t14 = (t13 * -1);
    t14 = (t14 + 1);
    t12 = (t11 + 12U);
    *((unsigned int *)t12) = t14;
    t12 = (t0 + 5924U);
    t6 = xsi_base_array_concat(t6, t8, t9, (char)97, t1, t10, (char)97, t7, t12, (char)101);
    t15 = (t0 + 1512U);
    t16 = *((char **)t15);
    t18 = ((IEEE_P_2592010699) + 2312);
    t19 = (t0 + 5924U);
    t15 = xsi_base_array_concat(t15, t17, t18, (char)97, t6, t8, (char)97, t16, t19, (char)101);
    t14 = (8U + 16U);
    t20 = (t14 + 16U);
    t21 = (40U != t20);
    if (t21 == 1)
        goto LAB5;

LAB6:    t22 = (t0 + 3264);
    t23 = (t22 + 32U);
    t24 = *((char **)t23);
    t25 = (t24 + 32U);
    t26 = *((char **)t25);
    memcpy(t26, t15, 40U);
    xsi_driver_first_trans_fast_port(t22);

LAB2:    t27 = (t0 + 3076);
    *((int *)t27) = 1;

LAB1:    return;
LAB4:    goto LAB2;

LAB5:    xsi_size_not_matching(40U, t20, 0);
    goto LAB6;

}


extern void work_a_0883709372_1516540902_init()
{
	static char *pe[] = {(void *)work_a_0883709372_1516540902_p_0,(void *)work_a_0883709372_1516540902_p_1,(void *)work_a_0883709372_1516540902_p_2,(void *)work_a_0883709372_1516540902_p_3,(void *)work_a_0883709372_1516540902_p_4};
	xsi_register_didat("work_a_0883709372_1516540902", "isim/tb_top_nto1_pll_isim_beh.exe.sim/work/a_0883709372_1516540902.didat");
	xsi_register_executes(pe);
}
