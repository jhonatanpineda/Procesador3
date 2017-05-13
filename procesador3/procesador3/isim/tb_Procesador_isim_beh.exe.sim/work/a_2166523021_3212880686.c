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

/* This file is designed for use with ISim build 0x7708f090 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "C:/Users/Pineda/Desktop/2017/arquitectura/procesador3/procesador3/RegisterFile.vhd";
extern char *IEEE_P_3620187407;

unsigned char ieee_p_3620187407_sub_4042748798_3965413181(char *, char *, char *, char *, char *);
int ieee_p_3620187407_sub_514432868_3965413181(char *, char *, char *);


static void work_a_2166523021_3212880686_p_0(char *t0)
{
    char t15[16];
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t5;
    char *t6;
    char *t7;
    unsigned char t8;
    unsigned int t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    int t16;
    unsigned char t17;
    int t18;
    int t19;
    unsigned int t20;
    unsigned int t21;
    char *t22;
    char *t23;
    char *t24;
    char *t25;

LAB0:    xsi_set_current_line(55, ng0);
    t1 = (t0 + 1832U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB2;

LAB4:    xsi_set_current_line(61, ng0);
    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t1 = (t0 + 7072U);
    t5 = (t0 + 8556);
    t7 = (t15 + 0U);
    t10 = (t7 + 0U);
    *((int *)t10) = 0;
    t10 = (t7 + 4U);
    *((int *)t10) = 4;
    t10 = (t7 + 8U);
    *((int *)t10) = 1;
    t16 = (4 - 0);
    t9 = (t16 * 1);
    t9 = (t9 + 1);
    t10 = (t7 + 12U);
    *((unsigned int *)t10) = t9;
    t4 = ieee_p_3620187407_sub_4042748798_3965413181(IEEE_P_3620187407, t2, t1, t5, t15);
    if (t4 == 1)
        goto LAB10;

LAB11:    t3 = (unsigned char)0;

LAB12:    if (t3 != 0)
        goto LAB7;

LAB9:
LAB8:    xsi_set_current_line(64, ng0);
    t1 = (t0 + 2472U);
    t2 = *((char **)t1);
    t1 = (t0 + 1032U);
    t5 = *((char **)t1);
    t1 = (t0 + 7040U);
    t16 = ieee_p_3620187407_sub_514432868_3965413181(IEEE_P_3620187407, t5, t1);
    t18 = (t16 - 39);
    t9 = (t18 * -1);
    xsi_vhdl_check_range_of_index(39, 0, -1, t16);
    t20 = (32U * t9);
    t21 = (0 + t20);
    t6 = (t2 + t21);
    t7 = (t0 + 4096);
    t10 = (t7 + 56U);
    t11 = *((char **)t10);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    memcpy(t13, t6, 32U);
    xsi_driver_first_trans_fast_port(t7);
    xsi_set_current_line(65, ng0);
    t1 = (t0 + 2472U);
    t2 = *((char **)t1);
    t1 = (t0 + 1192U);
    t5 = *((char **)t1);
    t1 = (t0 + 7056U);
    t16 = ieee_p_3620187407_sub_514432868_3965413181(IEEE_P_3620187407, t5, t1);
    t18 = (t16 - 39);
    t9 = (t18 * -1);
    xsi_vhdl_check_range_of_index(39, 0, -1, t16);
    t20 = (32U * t9);
    t21 = (0 + t20);
    t6 = (t2 + t21);
    t7 = (t0 + 4160);
    t10 = (t7 + 56U);
    t11 = *((char **)t10);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    memcpy(t13, t6, 32U);
    xsi_driver_first_trans_fast_port(t7);
    xsi_set_current_line(66, ng0);
    t1 = (t0 + 2472U);
    t2 = *((char **)t1);
    t1 = (t0 + 1352U);
    t5 = *((char **)t1);
    t1 = (t0 + 7072U);
    t16 = ieee_p_3620187407_sub_514432868_3965413181(IEEE_P_3620187407, t5, t1);
    t18 = (t16 - 39);
    t9 = (t18 * -1);
    xsi_vhdl_check_range_of_index(39, 0, -1, t16);
    t20 = (32U * t9);
    t21 = (0 + t20);
    t6 = (t2 + t21);
    t7 = (t0 + 4224);
    t10 = (t7 + 56U);
    t11 = *((char **)t10);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    memcpy(t13, t6, 32U);
    xsi_driver_first_trans_fast_port(t7);

LAB3:    t1 = (t0 + 3952);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(56, ng0);
    t1 = xsi_get_transient_memory(1280U);
    memset(t1, 0, 1280U);
    t5 = t1;
    t6 = (t0 + 8524);
    t8 = (32U != 0);
    if (t8 == 1)
        goto LAB5;

LAB6:    t10 = (t0 + 4032);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    memcpy(t14, t1, 1280U);
    xsi_driver_first_trans_fast(t10);
    xsi_set_current_line(57, ng0);
    t1 = xsi_get_transient_memory(32U);
    memset(t1, 0, 32U);
    t2 = t1;
    memset(t2, (unsigned char)2, 32U);
    t5 = (t0 + 4096);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t10 = (t7 + 56U);
    t11 = *((char **)t10);
    memcpy(t11, t1, 32U);
    xsi_driver_first_trans_fast_port(t5);
    xsi_set_current_line(58, ng0);
    t1 = xsi_get_transient_memory(32U);
    memset(t1, 0, 32U);
    t2 = t1;
    memset(t2, (unsigned char)2, 32U);
    t5 = (t0 + 4160);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t10 = (t7 + 56U);
    t11 = *((char **)t10);
    memcpy(t11, t1, 32U);
    xsi_driver_first_trans_fast_port(t5);
    xsi_set_current_line(59, ng0);
    t1 = xsi_get_transient_memory(32U);
    memset(t1, 0, 32U);
    t2 = t1;
    memset(t2, (unsigned char)2, 32U);
    t5 = (t0 + 4224);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t10 = (t7 + 56U);
    t11 = *((char **)t10);
    memcpy(t11, t1, 32U);
    xsi_driver_first_trans_fast_port(t5);
    goto LAB3;

LAB5:    t9 = (1280U / 32U);
    xsi_mem_set_data(t5, t6, 32U, t9);
    goto LAB6;

LAB7:    xsi_set_current_line(62, ng0);
    t10 = (t0 + 1512U);
    t12 = *((char **)t10);
    t10 = (t0 + 1352U);
    t13 = *((char **)t10);
    t10 = (t0 + 7072U);
    t18 = ieee_p_3620187407_sub_514432868_3965413181(IEEE_P_3620187407, t13, t10);
    t19 = (t18 - 39);
    t9 = (t19 * -1);
    t20 = (32U * t9);
    t21 = (0U + t20);
    t14 = (t0 + 4032);
    t22 = (t14 + 56U);
    t23 = *((char **)t22);
    t24 = (t23 + 56U);
    t25 = *((char **)t24);
    memcpy(t25, t12, 32U);
    xsi_driver_first_trans_delta(t14, t21, 32U, 0LL);
    goto LAB8;

LAB10:    t10 = (t0 + 1672U);
    t11 = *((char **)t10);
    t8 = *((unsigned char *)t11);
    t17 = (t8 == (unsigned char)3);
    t3 = t17;
    goto LAB12;

}


extern void work_a_2166523021_3212880686_init()
{
	static char *pe[] = {(void *)work_a_2166523021_3212880686_p_0};
	xsi_register_didat("work_a_2166523021_3212880686", "isim/tb_Procesador_isim_beh.exe.sim/work/a_2166523021_3212880686.didat");
	xsi_register_executes(pe);
}
