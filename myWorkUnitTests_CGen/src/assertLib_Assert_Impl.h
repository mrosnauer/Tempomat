#ifndef _ASD_ASSERTLIB_ASSERT_IMPL_H_
#define _ASD_ASSERTLIB_ASSERT_IMPL_H_
/**
* @warning AUTOMATICALLY GENERATED FILE! DO NOT EDIT!
*
* @file    assertLib_Assert_Impl.h
*
* @author  Generated by ASCET-DEVELOPER V7.4.1 (Backend: Code Generator V7.4.0)
*
* @date    03.03.2020 14:35:14
*
* @brief   "assertLib_Assert>>Impl (>>esdl_Data_Default combined module/init code)"
*
*/


/*-----------------------------------------------------------------------------
 *    Include files
 *----------------------------------------------------------------------------*/

#include "esdl.h"
#include "Etas_Ascet_Assertion.h"


/* component structure for class ASSERTLIB_ASSERT_IMPL intentionally not created */
/* reason: no local elements                                                  */

/* Following DEFINE signalizes the completion of definition                   */
/* of data structs for component: ......................assertLib_Assert_Impl */
#define _assertLib_Assert_Impl_TYPE_DEF_




/******************************************************************************
 * BEGIN: declaration of global C functions defined by class assertLib_Assert_Impl
 ******************************************************************************/
#if !defined(SUPPRESS_SRV_FUNCTION_DECLARATION) && !defined(assertLib_Assert_Impl_SUPPRESS_FUNCTION_DECLARATION)
extern void ASSERT_BETWEEN (
   /* IN    */ const float64 value,
   /* IN    */ const float64 left,
   /* IN    */ const float64 right
   );
extern void ASSERT_DOUBLE_EQ (
   /* IN    */ const float64 value,
   /* IN    */ const float64 expected
   );
extern void ASSERT_EQ (
   /* IN    */ const float64 value,
   /* IN    */ const float64 expected
   );
extern void ASSERT_FALSE (/* IN    */ const uint8 aCondition);
extern void ASSERT_FLOAT_EQ (
   /* IN    */ const float32 value,
   /* IN    */ const float32 expected
   );
extern void ASSERT_GE (
   /* IN    */ const float64 value,
   /* IN    */ const float64 expected
   );
extern void ASSERT_GT (
   /* IN    */ const float64 value,
   /* IN    */ const float64 expected
   );
extern void ASSERT_INT_BETWEEN (
   /* IN    */ const sint32 value,
   /* IN    */ const sint32 left,
   /* IN    */ const sint32 right
   );
extern void ASSERT_INT_EQ (
   /* IN    */ const sint32 value,
   /* IN    */ const sint32 expected
   );
extern void ASSERT_INT_GE (
   /* IN    */ const sint32 value,
   /* IN    */ const sint32 expected
   );
extern void ASSERT_INT_GT (
   /* IN    */ const sint32 value,
   /* IN    */ const sint32 expected
   );
extern void ASSERT_INT_LE (
   /* IN    */ const sint32 value,
   /* IN    */ const sint32 expected
   );
extern void ASSERT_INT_LT (
   /* IN    */ const sint32 value,
   /* IN    */ const sint32 expected
   );
extern void ASSERT_INT_NE (
   /* IN    */ const sint32 value,
   /* IN    */ const sint32 expected
   );
extern void ASSERT_LE (
   /* IN    */ const float64 value,
   /* IN    */ const float64 expected
   );
extern void ASSERT_LT (
   /* IN    */ const float64 value,
   /* IN    */ const float64 expected
   );
extern void ASSERT_NE (
   /* IN    */ const float64 value,
   /* IN    */ const float64 expected
   );
extern void ASSERT_NEAR (
   /* IN    */ const float64 value,
   /* IN    */ const float64 expected,
   /* IN    */ const float64 abs_error
   );
extern void ASSERT_TRUE (/* IN    */ const uint8 aCondition);
extern void ASSERT_UINT_BETWEEN (
   /* IN    */ const uint32 value,
   /* IN    */ const uint32 left,
   /* IN    */ const uint32 right
   );
extern void ASSERT_UINT_EQ (
   /* IN    */ const uint32 value,
   /* IN    */ const uint32 expected
   );
extern void ASSERT_UINT_GE (
   /* IN    */ const uint32 value,
   /* IN    */ const uint32 expected
   );
extern void ASSERT_UINT_GT (
   /* IN    */ const uint32 value,
   /* IN    */ const uint32 expected
   );
extern void ASSERT_UINT_LE (
   /* IN    */ const uint32 value,
   /* IN    */ const uint32 expected
   );
extern void ASSERT_UINT_LT (
   /* IN    */ const uint32 value,
   /* IN    */ const uint32 expected
   );
extern void ASSERT_UINT_NE (
   /* IN    */ const uint32 value,
   /* IN    */ const uint32 expected
   );
extern void EXPECT_BETWEEN (
   /* IN    */ const float64 value,
   /* IN    */ const float64 left,
   /* IN    */ const float64 right
   );
extern void EXPECT_DOUBLE_EQ (
   /* IN    */ const float64 value,
   /* IN    */ const float64 expected
   );
extern void EXPECT_EQ (
   /* IN    */ const float64 value,
   /* IN    */ const float64 expected
   );
extern void EXPECT_FALSE (/* IN    */ const uint8 aCondition);
extern void EXPECT_FLOAT_EQ (
   /* IN    */ const float32 value,
   /* IN    */ const float32 expected
   );
extern void EXPECT_GE (
   /* IN    */ const float64 value,
   /* IN    */ const float64 expected
   );
extern void EXPECT_GT (
   /* IN    */ const float64 value,
   /* IN    */ const float64 expected
   );
extern void EXPECT_INT_BETWEEN (
   /* IN    */ const sint32 value,
   /* IN    */ const sint32 left,
   /* IN    */ const sint32 right
   );
extern void EXPECT_INT_EQ (
   /* IN    */ const sint32 value,
   /* IN    */ const sint32 expected
   );
extern void EXPECT_INT_GE (
   /* IN    */ const sint32 value,
   /* IN    */ const sint32 expected
   );
extern void EXPECT_INT_GT (
   /* IN    */ const sint32 value,
   /* IN    */ const sint32 expected
   );
extern void EXPECT_INT_LE (
   /* IN    */ const sint32 value,
   /* IN    */ const sint32 expected
   );
extern void EXPECT_INT_LT (
   /* IN    */ const sint32 value,
   /* IN    */ const sint32 expected
   );
extern void EXPECT_INT_NE (
   /* IN    */ const sint32 value,
   /* IN    */ const sint32 expected
   );
extern void EXPECT_LE (
   /* IN    */ const float64 value,
   /* IN    */ const float64 expected
   );
extern void EXPECT_LT (
   /* IN    */ const float64 value,
   /* IN    */ const float64 expected
   );
extern void EXPECT_NE (
   /* IN    */ const float64 value,
   /* IN    */ const float64 expected
   );
extern void EXPECT_NEAR (
   /* IN    */ const float64 value,
   /* IN    */ const float64 expected,
   /* IN    */ const float64 abs_error
   );
extern void EXPECT_TRUE (/* IN    */ const uint8 aCondition);
extern void EXPECT_UINT_BETWEEN (
   /* IN    */ const uint32 value,
   /* IN    */ const uint32 left,
   /* IN    */ const uint32 right
   );
extern void EXPECT_UINT_EQ (
   /* IN    */ const uint32 value,
   /* IN    */ const uint32 expected
   );
extern void EXPECT_UINT_GE (
   /* IN    */ const uint32 value,
   /* IN    */ const uint32 expected
   );
extern void EXPECT_UINT_GT (
   /* IN    */ const uint32 value,
   /* IN    */ const uint32 expected
   );
extern void EXPECT_UINT_LE (
   /* IN    */ const uint32 value,
   /* IN    */ const uint32 expected
   );
extern void EXPECT_UINT_LT (
   /* IN    */ const uint32 value,
   /* IN    */ const uint32 expected
   );
extern void EXPECT_UINT_NE (
   /* IN    */ const uint32 value,
   /* IN    */ const uint32 expected
   );
#endif



#endif /* _ASD_ASSERTLIB_ASSERT_IMPL_H_ */
