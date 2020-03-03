/**
* @warning AUTOMATICALLY GENERATED FILE! DO NOT EDIT!
*
* @file    myWork_deactivateOnBrake_Automatic.c
*
* @author  Generated by ASCET-DEVELOPER V7.4.1 (Backend: Code Generator V7.4.0)
*
* @date    03.03.2020 14:35:14
*
* @brief   "myWork_deactivateOnBrake>>Automatic (module code)"
*
*/



/*-----------------------------------------------------------------------------
 *    Include files
 *----------------------------------------------------------------------------*/

#include "globalH.h"
#include "myWork_deactivateOnBrake_Automatic.h"
/******************************************************************************
 * BEGIN: source code of a multiple instance class
 ******************************************************************************/





/******************************************************************************
 * BEGIN: FUNCTIONS OF COMPONENT
 ******************************************************************************/


/******************************************************************************
 * BEGIN: DEFINITION OF METHOD 'myWork_deactivateOnBrake_Automatic_calc'
 * ----------------------------------------------------------------------------
 * model name:...................................'calc'
 * memory class:.................................'CODE'
 * ---------------------------------------------------------------------------*/

uint8 myWork_deactivateOnBrake_Automatic_calc (
   /* IN    */ const uint8   accActiveIn,
   /* IN    */ const float32 brake
   )
{
   if (brake > 0.0F)
   {
      return false;
   }
   else
   {
      return accActiveIn;
   } /* end if */
}
/* ----------------------------------------------------------------------------
 * END: DEFINITION OF METHOD 'myWork_deactivateOnBrake_Automatic_calc'
 ******************************************************************************/



/* ****************************************************************************
 * END: FUNCTIONS OF COMPONENT
 ******************************************************************************/



