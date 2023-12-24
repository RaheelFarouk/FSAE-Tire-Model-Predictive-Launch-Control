/*
 * Academic License - for use in teaching, academic research, and meeting
 * course requirements at degree granting institutions only.  Not for
 * government, commercial, or other organizational use.
 *
 * File: SimpleMath.h
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

#ifndef RTW_HEADER_SimpleMath_h_
#define RTW_HEADER_SimpleMath_h_
#ifndef SimpleMath_COMMON_INCLUDES_
#define SimpleMath_COMMON_INCLUDES_
#include "rtwtypes.h"
#endif                                 /* SimpleMath_COMMON_INCLUDES_ */

#include "SimpleMath_types.h"

/* Macros for accessing real-time model data structure */
#ifndef rtmGetErrorStatus
#define rtmGetErrorStatus(rtm)         ((rtm)->errorStatus)
#endif

#ifndef rtmSetErrorStatus
#define rtmSetErrorStatus(rtm, val)    ((rtm)->errorStatus = (val))
#endif

/* External inputs (root inport signals with default storage) */
typedef struct {
  real_T In1;                          /* '<Root>/In1' */
  real_T In2;                          /* '<Root>/In2' */
} ExtU_SimpleMath_T;

/* External outputs (root outports fed by signals with default storage) */
typedef struct {
  real_T Out1;                         /* '<Root>/Out1' */
} ExtY_SimpleMath_T;

/* Real-time Model Data Structure */
struct tag_RTM_SimpleMath_T {
  const char_T * volatile errorStatus;
};

/* External inputs (root inport signals with default storage) */
extern ExtU_SimpleMath_T SimpleMath_U;

/* External outputs (root outports fed by signals with default storage) */
extern ExtY_SimpleMath_T SimpleMath_Y;

/* Model entry point functions */
extern void SimpleMath_initialize(void);
extern void SimpleMath_step(void);
extern void SimpleMath_terminate(void);

/* Real-time Model object */
extern RT_MODEL_SimpleMath_T *const SimpleMath_M;

/*-
 * The generated code includes comments that allow you to trace directly
 * back to the appropriate location in the model.  The basic format
 * is <system>/block_name, where system is the system number (uniquely
 * assigned by Simulink) and block_name is the name of the block.
 *
 * Use the MATLAB hilite_system command to trace the generated code back
 * to the model.  For example,
 *
 * hilite_system('<S3>')    - opens system 3
 * hilite_system('<S3>/Kp') - opens and selects block Kp which resides in S3
 *
 * Here is the system hierarchy for this model
 *
 * '<Root>' : 'SimpleMath'
 */
#endif                                 /* RTW_HEADER_SimpleMath_h_ */

/*
 * File trailer for generated code.
 *
 * [EOF]
 */
