

#include "..\SPG_General.h"
#include "..\WhatFFT.h"

#ifdef UseFFTW

/*
 * Copyright (c) 1997-1999 Massachusetts Institute of Technology
 *
 * This program is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation; either version 2 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
 *
 */

/* This file was automatically generated --- DO NOT EDIT */
/* Generated on Sun Nov  7 20:43:49 EST 1999 */

#include <fftw-int.h>
#include <fftw.h>

/* Generated by: ./genfft -magic-alignment-check -magic-twiddle-load-all -magic-variables 4 -magic-loopi -notwiddle 14 */

/*
 * This function contains 148 FP additions, 72 FP multiplications,
 * (or, 148 additions, 72 multiplications, 0 fused multiply/add),
 * 36 stack variables, and 56 memory accesses
 */
static const fftw_real K222520933 = FFTW_KONST(+0.222520933956314404288902564496794759466355569);
static const fftw_real K900968867 = FFTW_KONST(+0.900968867902419126236102319507445051165919162);
static const fftw_real K623489801 = FFTW_KONST(+0.623489801858733530525004884004239810632274731);
static const fftw_real K433883739 = FFTW_KONST(+0.433883739117558120475768332848358754609990728);
static const fftw_real K781831482 = FFTW_KONST(+0.781831482468029808708444526674057750232334519);
static const fftw_real K974927912 = FFTW_KONST(+0.974927912181823607018131682993931217232785801);

/*
 * Generator Id's : 
 * $Id: fn_14.cpp 6710 2008-01-18 18:12:00Z s-petitgrand $
 * $Id: fn_14.cpp 6710 2008-01-18 18:12:00Z s-petitgrand $
 * $Id: fn_14.cpp 6710 2008-01-18 18:12:00Z s-petitgrand $
 */

void fftw_no_twiddle_14(const fftw_complex *input, fftw_complex *output, int istride, int ostride)
{
     fftw_real tmp3;
     fftw_real tmp25;
     fftw_real tmp68;
     fftw_real tmp77;
     fftw_real tmp10;
     fftw_real tmp62;
     fftw_real tmp28;
     fftw_real tmp88;
     fftw_real tmp42;
     fftw_real tmp71;
     fftw_real tmp80;
     fftw_real tmp97;
     fftw_real tmp17;
     fftw_real tmp64;
     fftw_real tmp31;
     fftw_real tmp90;
     fftw_real tmp56;
     fftw_real tmp69;
     fftw_real tmp86;
     fftw_real tmp99;
     fftw_real tmp24;
     fftw_real tmp63;
     fftw_real tmp34;
     fftw_real tmp89;
     fftw_real tmp49;
     fftw_real tmp70;
     fftw_real tmp83;
     fftw_real tmp98;
     ASSERT_ALIGNED_DOUBLE;
     {
	  fftw_real tmp1;
	  fftw_real tmp2;
	  fftw_real tmp66;
	  fftw_real tmp67;
	  ASSERT_ALIGNED_DOUBLE;
	  tmp1 = c_re(input[0]);
	  tmp2 = c_re(input[7 * istride]);
	  tmp3 = tmp1 - tmp2;
	  tmp25 = tmp1 + tmp2;
	  tmp66 = c_im(input[0]);
	  tmp67 = c_im(input[7 * istride]);
	  tmp68 = tmp66 - tmp67;
	  tmp77 = tmp66 + tmp67;
     }
     {
	  fftw_real tmp6;
	  fftw_real tmp26;
	  fftw_real tmp9;
	  fftw_real tmp27;
	  ASSERT_ALIGNED_DOUBLE;
	  {
	       fftw_real tmp4;
	       fftw_real tmp5;
	       fftw_real tmp7;
	       fftw_real tmp8;
	       ASSERT_ALIGNED_DOUBLE;
	       tmp4 = c_re(input[2 * istride]);
	       tmp5 = c_re(input[9 * istride]);
	       tmp6 = tmp4 - tmp5;
	       tmp26 = tmp4 + tmp5;
	       tmp7 = c_re(input[12 * istride]);
	       tmp8 = c_re(input[5 * istride]);
	       tmp9 = tmp7 - tmp8;
	       tmp27 = tmp7 + tmp8;
	  }
	  tmp10 = tmp6 + tmp9;
	  tmp62 = tmp9 - tmp6;
	  tmp28 = tmp26 + tmp27;
	  tmp88 = tmp27 - tmp26;
     }
     {
	  fftw_real tmp38;
	  fftw_real tmp78;
	  fftw_real tmp41;
	  fftw_real tmp79;
	  ASSERT_ALIGNED_DOUBLE;
	  {
	       fftw_real tmp36;
	       fftw_real tmp37;
	       fftw_real tmp39;
	       fftw_real tmp40;
	       ASSERT_ALIGNED_DOUBLE;
	       tmp36 = c_im(input[2 * istride]);
	       tmp37 = c_im(input[9 * istride]);
	       tmp38 = tmp36 - tmp37;
	       tmp78 = tmp36 + tmp37;
	       tmp39 = c_im(input[12 * istride]);
	       tmp40 = c_im(input[5 * istride]);
	       tmp41 = tmp39 - tmp40;
	       tmp79 = tmp39 + tmp40;
	  }
	  tmp42 = tmp38 - tmp41;
	  tmp71 = tmp38 + tmp41;
	  tmp80 = tmp78 + tmp79;
	  tmp97 = tmp78 - tmp79;
     }
     {
	  fftw_real tmp13;
	  fftw_real tmp29;
	  fftw_real tmp16;
	  fftw_real tmp30;
	  ASSERT_ALIGNED_DOUBLE;
	  {
	       fftw_real tmp11;
	       fftw_real tmp12;
	       fftw_real tmp14;
	       fftw_real tmp15;
	       ASSERT_ALIGNED_DOUBLE;
	       tmp11 = c_re(input[4 * istride]);
	       tmp12 = c_re(input[11 * istride]);
	       tmp13 = tmp11 - tmp12;
	       tmp29 = tmp11 + tmp12;
	       tmp14 = c_re(input[10 * istride]);
	       tmp15 = c_re(input[3 * istride]);
	       tmp16 = tmp14 - tmp15;
	       tmp30 = tmp14 + tmp15;
	  }
	  tmp17 = tmp13 + tmp16;
	  tmp64 = tmp16 - tmp13;
	  tmp31 = tmp29 + tmp30;
	  tmp90 = tmp29 - tmp30;
     }
     {
	  fftw_real tmp52;
	  fftw_real tmp84;
	  fftw_real tmp55;
	  fftw_real tmp85;
	  ASSERT_ALIGNED_DOUBLE;
	  {
	       fftw_real tmp50;
	       fftw_real tmp51;
	       fftw_real tmp53;
	       fftw_real tmp54;
	       ASSERT_ALIGNED_DOUBLE;
	       tmp50 = c_im(input[4 * istride]);
	       tmp51 = c_im(input[11 * istride]);
	       tmp52 = tmp50 - tmp51;
	       tmp84 = tmp50 + tmp51;
	       tmp53 = c_im(input[10 * istride]);
	       tmp54 = c_im(input[3 * istride]);
	       tmp55 = tmp53 - tmp54;
	       tmp85 = tmp53 + tmp54;
	  }
	  tmp56 = tmp52 - tmp55;
	  tmp69 = tmp52 + tmp55;
	  tmp86 = tmp84 + tmp85;
	  tmp99 = tmp85 - tmp84;
     }
     {
	  fftw_real tmp20;
	  fftw_real tmp32;
	  fftw_real tmp23;
	  fftw_real tmp33;
	  ASSERT_ALIGNED_DOUBLE;
	  {
	       fftw_real tmp18;
	       fftw_real tmp19;
	       fftw_real tmp21;
	       fftw_real tmp22;
	       ASSERT_ALIGNED_DOUBLE;
	       tmp18 = c_re(input[6 * istride]);
	       tmp19 = c_re(input[13 * istride]);
	       tmp20 = tmp18 - tmp19;
	       tmp32 = tmp18 + tmp19;
	       tmp21 = c_re(input[8 * istride]);
	       tmp22 = c_re(input[istride]);
	       tmp23 = tmp21 - tmp22;
	       tmp33 = tmp21 + tmp22;
	  }
	  tmp24 = tmp20 + tmp23;
	  tmp63 = tmp23 - tmp20;
	  tmp34 = tmp32 + tmp33;
	  tmp89 = tmp32 - tmp33;
     }
     {
	  fftw_real tmp45;
	  fftw_real tmp81;
	  fftw_real tmp48;
	  fftw_real tmp82;
	  ASSERT_ALIGNED_DOUBLE;
	  {
	       fftw_real tmp43;
	       fftw_real tmp44;
	       fftw_real tmp46;
	       fftw_real tmp47;
	       ASSERT_ALIGNED_DOUBLE;
	       tmp43 = c_im(input[6 * istride]);
	       tmp44 = c_im(input[13 * istride]);
	       tmp45 = tmp43 - tmp44;
	       tmp81 = tmp43 + tmp44;
	       tmp46 = c_im(input[8 * istride]);
	       tmp47 = c_im(input[istride]);
	       tmp48 = tmp46 - tmp47;
	       tmp82 = tmp46 + tmp47;
	  }
	  tmp49 = tmp45 - tmp48;
	  tmp70 = tmp45 + tmp48;
	  tmp83 = tmp81 + tmp82;
	  tmp98 = tmp82 - tmp81;
     }
     {
	  fftw_real tmp57;
	  fftw_real tmp35;
	  fftw_real tmp100;
	  fftw_real tmp96;
	  ASSERT_ALIGNED_DOUBLE;
	  c_re(output[7 * ostride]) = tmp3 + tmp10 + tmp17 + tmp24;
	  tmp57 = (K974927912 * tmp42) - (K781831482 * tmp49) - (K433883739 * tmp56);
	  tmp35 = tmp3 + (K623489801 * tmp24) - (K900968867 * tmp17) - (K222520933 * tmp10);
	  c_re(output[5 * ostride]) = tmp35 - tmp57;
	  c_re(output[9 * ostride]) = tmp35 + tmp57;
	  {
	       fftw_real tmp59;
	       fftw_real tmp58;
	       fftw_real tmp61;
	       fftw_real tmp60;
	       ASSERT_ALIGNED_DOUBLE;
	       tmp59 = (K781831482 * tmp42) + (K974927912 * tmp56) + (K433883739 * tmp49);
	       tmp58 = tmp3 + (K623489801 * tmp10) - (K900968867 * tmp24) - (K222520933 * tmp17);
	       c_re(output[13 * ostride]) = tmp58 - tmp59;
	       c_re(output[ostride]) = tmp58 + tmp59;
	       tmp61 = (K433883739 * tmp42) + (K974927912 * tmp49) - (K781831482 * tmp56);
	       tmp60 = tmp3 + (K623489801 * tmp17) - (K222520933 * tmp24) - (K900968867 * tmp10);
	       c_re(output[11 * ostride]) = tmp60 - tmp61;
	       c_re(output[3 * ostride]) = tmp60 + tmp61;
	  }
	  c_re(output[0]) = tmp25 + tmp28 + tmp31 + tmp34;
	  tmp100 = (K781831482 * tmp97) - (K433883739 * tmp98) - (K974927912 * tmp99);
	  tmp96 = tmp25 + (K623489801 * tmp28) - (K900968867 * tmp34) - (K222520933 * tmp31);
	  c_re(output[6 * ostride]) = tmp96 - tmp100;
	  c_re(output[8 * ostride]) = tmp96 + tmp100;
	  {
	       fftw_real tmp102;
	       fftw_real tmp101;
	       fftw_real tmp104;
	       fftw_real tmp103;
	       ASSERT_ALIGNED_DOUBLE;
	       tmp102 = (K433883739 * tmp97) + (K781831482 * tmp99) - (K974927912 * tmp98);
	       tmp101 = tmp25 + (K623489801 * tmp31) - (K222520933 * tmp34) - (K900968867 * tmp28);
	       c_re(output[4 * ostride]) = tmp101 - tmp102;
	       c_re(output[10 * ostride]) = tmp101 + tmp102;
	       tmp104 = (K974927912 * tmp97) + (K433883739 * tmp99) + (K781831482 * tmp98);
	       tmp103 = tmp25 + (K623489801 * tmp34) - (K900968867 * tmp31) - (K222520933 * tmp28);
	       c_re(output[12 * ostride]) = tmp103 - tmp104;
	       c_re(output[2 * ostride]) = tmp103 + tmp104;
	  }
     }
     {
	  fftw_real tmp76;
	  fftw_real tmp75;
	  fftw_real tmp94;
	  fftw_real tmp95;
	  ASSERT_ALIGNED_DOUBLE;
	  c_im(output[7 * ostride]) = tmp68 + tmp71 + tmp69 + tmp70;
	  tmp76 = (K974927912 * tmp62) - (K781831482 * tmp63) - (K433883739 * tmp64);
	  tmp75 = tmp68 + (K623489801 * tmp70) - (K900968867 * tmp69) - (K222520933 * tmp71);
	  c_im(output[5 * ostride]) = tmp75 - tmp76;
	  c_im(output[9 * ostride]) = tmp76 + tmp75;
	  {
	       fftw_real tmp73;
	       fftw_real tmp74;
	       fftw_real tmp65;
	       fftw_real tmp72;
	       ASSERT_ALIGNED_DOUBLE;
	       tmp73 = (K781831482 * tmp62) + (K974927912 * tmp64) + (K433883739 * tmp63);
	       tmp74 = tmp68 + (K623489801 * tmp71) - (K900968867 * tmp70) - (K222520933 * tmp69);
	       c_im(output[ostride]) = tmp73 + tmp74;
	       c_im(output[13 * ostride]) = tmp74 - tmp73;
	       tmp65 = (K433883739 * tmp62) + (K974927912 * tmp63) - (K781831482 * tmp64);
	       tmp72 = tmp68 + (K623489801 * tmp69) - (K222520933 * tmp70) - (K900968867 * tmp71);
	       c_im(output[3 * ostride]) = tmp65 + tmp72;
	       c_im(output[11 * ostride]) = tmp72 - tmp65;
	  }
	  c_im(output[0]) = tmp77 + tmp80 + tmp86 + tmp83;
	  tmp94 = (K974927912 * tmp88) + (K433883739 * tmp90) + (K781831482 * tmp89);
	  tmp95 = tmp77 + (K623489801 * tmp83) - (K900968867 * tmp86) - (K222520933 * tmp80);
	  c_im(output[2 * ostride]) = tmp94 + tmp95;
	  c_im(output[12 * ostride]) = tmp95 - tmp94;
	  {
	       fftw_real tmp91;
	       fftw_real tmp87;
	       fftw_real tmp93;
	       fftw_real tmp92;
	       ASSERT_ALIGNED_DOUBLE;
	       tmp91 = (K781831482 * tmp88) - (K433883739 * tmp89) - (K974927912 * tmp90);
	       tmp87 = tmp77 + (K623489801 * tmp80) - (K900968867 * tmp83) - (K222520933 * tmp86);
	       c_im(output[6 * ostride]) = tmp87 - tmp91;
	       c_im(output[8 * ostride]) = tmp91 + tmp87;
	       tmp93 = (K433883739 * tmp88) + (K781831482 * tmp90) - (K974927912 * tmp89);
	       tmp92 = tmp77 + (K623489801 * tmp86) - (K222520933 * tmp83) - (K900968867 * tmp80);
	       c_im(output[4 * ostride]) = tmp92 - tmp93;
	       c_im(output[10 * ostride]) = tmp93 + tmp92;
	  }
     }
}

fftw_codelet_desc fftw_no_twiddle_14_desc =
{
     "fftw_no_twiddle_14",
     (void (*)()) fftw_no_twiddle_14,
     14,
     FFTW_FORWARD,
     FFTW_NOTW,
     309,
     0,
     (const int *) 0,
};

#endif

