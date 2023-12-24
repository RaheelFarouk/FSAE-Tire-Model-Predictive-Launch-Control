/*
 * Academic License - for use in teaching, academic research, and meeting
 * course requirements at degree granting institutions only.  Not for
 * government, commercial, or other organizational use.
 *
 * File: SimpleMath.c
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

#include "SimpleMath.h"

/* External inputs (root inport signals with default storage) */
ExtU_SimpleMath_T SimpleMath_U;

/* External outputs (root outports fed by signals with default storage) */
ExtY_SimpleMath_T SimpleMath_Y;

/* Real-time model */
static RT_MODEL_SimpleMath_T SimpleMath_M_;
RT_MODEL_SimpleMath_T *const SimpleMath_M = &SimpleMath_M_;

/* Model step function */
void SimpleMath_step(void)
{
  /* Outport: '<Root>/Out1' incorporates:
   *  Inport: '<Root>/In1'
   *  Inport: '<Root>/In2'
   *  Sum: '<Root>/Add'
   */
  SimpleMath_Y.Out1 = SimpleMath_U.In1 + SimpleMath_U.In2;
}

/* Model initialize function */
void SimpleMath_initialize(void)
{
  /* (no initialization code required) */
}

/* Model terminate function */
void SimpleMath_terminate(void)
{
  /* (no terminate code required) */
}

/*
 * File trailer for generated code.
 *
 * [EOF]
 */
