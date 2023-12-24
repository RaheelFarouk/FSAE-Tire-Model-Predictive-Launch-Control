/*
 * Academic License - for use in teaching, academic research, and meeting
 * course requirements at degree granting institutions only.  Not for
 * government, commercial, or other organizational use.
 *
 * File: SimpleMath_def.c
 *
 * Code generated for Simulink model 'SimpleMath'.
 *
 * Model version                  : 1.6
 * Simulink Coder version         : 9.9 (R2023a) 19-Nov-2022
 * C/C++ source code generated on : Thu Jun 29 18:58:19 2023
 *
 * Target selection: MoTeC.tlc
 * Embedded hardware selection: Freescale->32-bit PowerPC
 * Code generation objectives: Unspecified
 * Validation result: Not run
 */

#include <SimpleMath_def.h>
#include <SimpleMath.h>

/**
 * call library Init
 */
__initcall_lib(SimpleMath_initialize);

/**
 * ScriptName Step
 */
void m1build_SimpleMath_step(void)
{
  SimpleMath_step();
}

/**
 * ScriptName SetIn1
 */
void m1_interface_SimpleMath_set_In1(f32 In1)
{
  SimpleMath_U.In1 = (real_T)In1;
}

/**
 * ScriptName SetIn2
 */
void m1_interface_SimpleMath_set_In2(f32 In2)
{
  SimpleMath_U.In2 = (real_T)In2;
}

/**
 * ScriptName GetOut1
 */
f32 m1_interface_SimpleMath_get_Out1(void)
{
  return (f32)SimpleMath_Y.Out1;
}

/*
 * File trailer for generated code.
 *
 * [EOF]
 */
