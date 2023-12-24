/*
 * Academic License - for use in teaching, academic research, and meeting
 * course requirements at degree granting institutions only.  Not for
 * government, commercial, or other organizational use.
 *
 * File: SimpleMath_def.h
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

#ifndef RTW_HEADER_SimpleMath_def_h_
#define RTW_HEADER_SimpleMath_def_h_

/*********************************************************
 * Interface file to integrate a Simulink project into an
 * M1 Build project.
 * Inports map to Set<inport name> functions
 * Outports map to Get<outport name> functions
 * Parameters map to SetParameter<parameter name> functions
 * The step function maps to Run
 *
 * The init function is added to the M1 init list, and source
 * has no exposed function
 **/
#include <ecu/types.h>
#include <ecu/table.h>

/**
 * @addtogroup SimpleMathUL
 * @{
 */

/**
 * @fn void m1build_SimpleMath_step()
 * @arg ScriptName Step
 * @arg SampleRate 0.01
 * @arg SingleUse
 *
 * @brief Single step. To be called every 0.01 seconds.
 *
 * @details Runs through the model once. The equivalent of a single step in Simulink. It is to be scheduled at 100 Hz
 */
void m1build_SimpleMath_step(void);

/**
 * @fn void m1_interface_SimpleMath_set_In1(f32 In1)
 * @arg ScriptName SetIn1
 * @arg Mandatory
 * @IO input
 *
 * @brief Set inport In1
 *
 * @details Set input value for inport In1
 * @param In1 The value to set inport In1 to
 */
void m1_interface_SimpleMath_set_In1(f32 In1);

/**
 * @fn void m1_interface_SimpleMath_set_In2(f32 In2)
 * @arg ScriptName SetIn2
 * @arg Mandatory
 * @IO input
 *
 * @brief Set inport In2
 *
 * @details Set input value for inport In2
 * @param In2 The value to set inport In2 to
 */
void m1_interface_SimpleMath_set_In2(f32 In2);

/**
 * @fn f32 m1_interface_SimpleMath_get_Out1(void)
 * @arg ScriptName GetOut1
 * @IO output
 *
 * @brief Get outport Out1
 *
 * @details Get the value for outport Out1
 */
f32 m1_interface_SimpleMath_get_Out1(void);

/** @} SimpleMathUL */

/*** @MData=4D6F000A01000009000001FE4D6F000000030004000000164D6F5465432E53696D756C696E6B2E456E637279707400004D6F00000001000500000096308193060628CF06030037044730450302070002011C021D008A4F043303337C22AE475C66067FACC7C6000FF2484D6ECD78EA1E95021D00DE30884EB32F1898FDFFFFF69A0279F7FDD2E693C8750235FAEBD37D0440FFCC9F16377013A826D4527ED1CE44FB6CE7437C1B59F9B7728F03BE05B8C896FF12B449482E54836EE54137905D11597769E4951662D83B105AC860A971CF3C00004D6F0000000100060000012A19FA6E7055CA03FCAF3EBBA9723E8981C9CC8AFE99E027E3586F063307153C5425E235CF48D4B86AA0BF4478BE0D144D4716DEAC9B9AEA6E516D9C781D5A5FC4C737CEE921F2616F2358C93BC9599CC7B09DD6C979F83CEBD3B2E7AFF4C896CCDB82B57D72D3E2123EDE042B2E15C304516433AC1071A33786A1BF92BC31DF35020FEC861E5D57993C7706B1CE5B4B30BC8837B20B7406C1981A0B7BB5623E906130FF2E94624C4EDD728BF62F1CD6B65E59221041C87B793BB78FC9394FFCAC4D96F7DDA4F1F6A45709BA0D24480F002FB0B21D660C54EAF81906869E4DF48FE1003397A8F198B67463AE97E096DAAC5CBEACBDAEC51E2EA6738ED052BE6175E92D56E4D112CB2721808532C2BC91FB71B8EC74F29B0D0FAC8AA199D33BB7E63CE64AF0D1A75297581E ***/
#endif                                 /* RTW_HEADER_SimpleMath_def_h_ */

/*
 * File trailer for generated code.
 *
 * [EOF]
 */
