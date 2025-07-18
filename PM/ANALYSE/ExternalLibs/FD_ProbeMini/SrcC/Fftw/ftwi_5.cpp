

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
/* Generated on Sun Nov  7 20:44:57 EST 1999 */

#include <fftw-int.h>
#include <fftw.h>

/* Generated by: ./genfft -magic-alignment-check -magic-twiddle-load-all -magic-variables 4 -magic-loopi -twiddleinv 5 */

/*
 * This function contains 40 FP additions, 28 FP multiplications,
 * (or, 26 additions, 14 multiplications, 14 fused multiply/add),
 * 26 stack variables, and 20 memory accesses
 */
static const fftw_real K559016994 = FFTW_KONST(+0.559016994374947424102293417182819058860154590);
static const fftw_real K250000000 = FFTW_KONST(+0.250000000000000000000000000000000000000000000);
static const fftw_real K951056516 = FFTW_KONST(+0.951056516295153572116439333379382143405698634);
static const fftw_real K587785252 = FFTW_KONST(+0.587785252292473129168705954639072768597652438);

/*
 * Generator Id's : 
 * $Id: ftwi_5.cpp 6710 2008-01-18 18:12:00Z s-petitgrand $
 * $Id: ftwi_5.cpp 6710 2008-01-18 18:12:00Z s-petitgrand $
 * $Id: ftwi_5.cpp 6710 2008-01-18 18:12:00Z s-petitgrand $
 */

void fftwi_twiddle_5(fftw_complex *A, const fftw_complex *W, int iostride, int m, int dist)
{
     int i;
     fftw_complex *inout;
     inout = A;
     for (i = m; i > 0; i = i - 1, inout = inout + dist, W = W + 4) {
	  fftw_real tmp1;
	  fftw_real tmp40;
	  fftw_real tmp30;
	  fftw_real tmp33;
	  fftw_real tmp37;
	  fftw_real tmp38;
	  fftw_real tmp39;
	  fftw_real tmp42;
	  fftw_real tmp41;
	  fftw_real tmp12;
	  fftw_real tmp23;
	  fftw_real tmp24;
	  ASSERT_ALIGNED_DOUBLE;
	  tmp1 = c_re(inout[0]);
	  tmp40 = c_im(inout[0]);
	  {
	       fftw_real tmp6;
	       fftw_real tmp28;
	       fftw_real tmp22;
	       fftw_real tmp32;
	       fftw_real tmp11;
	       fftw_real tmp29;
	       fftw_real tmp17;
	       fftw_real tmp31;
	       ASSERT_ALIGNED_DOUBLE;
	       {
		    fftw_real tmp3;
		    fftw_real tmp5;
		    fftw_real tmp2;
		    fftw_real tmp4;
		    ASSERT_ALIGNED_DOUBLE;
		    tmp3 = c_re(inout[iostride]);
		    tmp5 = c_im(inout[iostride]);
		    tmp2 = c_re(W[0]);
		    tmp4 = c_im(W[0]);
		    tmp6 = (tmp2 * tmp3) + (tmp4 * tmp5);
		    tmp28 = (tmp2 * tmp5) - (tmp4 * tmp3);
	       }
	       {
		    fftw_real tmp19;
		    fftw_real tmp21;
		    fftw_real tmp18;
		    fftw_real tmp20;
		    ASSERT_ALIGNED_DOUBLE;
		    tmp19 = c_re(inout[3 * iostride]);
		    tmp21 = c_im(inout[3 * iostride]);
		    tmp18 = c_re(W[2]);
		    tmp20 = c_im(W[2]);
		    tmp22 = (tmp18 * tmp19) + (tmp20 * tmp21);
		    tmp32 = (tmp18 * tmp21) - (tmp20 * tmp19);
	       }
	       {
		    fftw_real tmp8;
		    fftw_real tmp10;
		    fftw_real tmp7;
		    fftw_real tmp9;
		    ASSERT_ALIGNED_DOUBLE;
		    tmp8 = c_re(inout[4 * iostride]);
		    tmp10 = c_im(inout[4 * iostride]);
		    tmp7 = c_re(W[3]);
		    tmp9 = c_im(W[3]);
		    tmp11 = (tmp7 * tmp8) + (tmp9 * tmp10);
		    tmp29 = (tmp7 * tmp10) - (tmp9 * tmp8);
	       }
	       {
		    fftw_real tmp14;
		    fftw_real tmp16;
		    fftw_real tmp13;
		    fftw_real tmp15;
		    ASSERT_ALIGNED_DOUBLE;
		    tmp14 = c_re(inout[2 * iostride]);
		    tmp16 = c_im(inout[2 * iostride]);
		    tmp13 = c_re(W[1]);
		    tmp15 = c_im(W[1]);
		    tmp17 = (tmp13 * tmp14) + (tmp15 * tmp16);
		    tmp31 = (tmp13 * tmp16) - (tmp15 * tmp14);
	       }
	       tmp30 = tmp28 - tmp29;
	       tmp33 = tmp31 - tmp32;
	       tmp37 = tmp28 + tmp29;
	       tmp38 = tmp31 + tmp32;
	       tmp39 = tmp37 + tmp38;
	       tmp42 = tmp17 - tmp22;
	       tmp41 = tmp6 - tmp11;
	       tmp12 = tmp6 + tmp11;
	       tmp23 = tmp17 + tmp22;
	       tmp24 = tmp12 + tmp23;
	  }
	  c_re(inout[0]) = tmp1 + tmp24;
	  {
	       fftw_real tmp34;
	       fftw_real tmp36;
	       fftw_real tmp27;
	       fftw_real tmp35;
	       fftw_real tmp25;
	       fftw_real tmp26;
	       ASSERT_ALIGNED_DOUBLE;
	       tmp34 = (K587785252 * tmp30) - (K951056516 * tmp33);
	       tmp36 = (K951056516 * tmp30) + (K587785252 * tmp33);
	       tmp25 = tmp1 - (K250000000 * tmp24);
	       tmp26 = K559016994 * (tmp12 - tmp23);
	       tmp27 = tmp25 - tmp26;
	       tmp35 = tmp26 + tmp25;
	       c_re(inout[2 * iostride]) = tmp27 - tmp34;
	       c_re(inout[3 * iostride]) = tmp27 + tmp34;
	       c_re(inout[iostride]) = tmp35 - tmp36;
	       c_re(inout[4 * iostride]) = tmp35 + tmp36;
	  }
	  c_im(inout[0]) = tmp39 + tmp40;
	  {
	       fftw_real tmp43;
	       fftw_real tmp47;
	       fftw_real tmp46;
	       fftw_real tmp48;
	       fftw_real tmp44;
	       fftw_real tmp45;
	       ASSERT_ALIGNED_DOUBLE;
	       tmp43 = (K951056516 * tmp41) + (K587785252 * tmp42);
	       tmp47 = (K587785252 * tmp41) - (K951056516 * tmp42);
	       tmp44 = K559016994 * (tmp37 - tmp38);
	       tmp45 = tmp40 - (K250000000 * tmp39);
	       tmp46 = tmp44 + tmp45;
	       tmp48 = tmp45 - tmp44;
	       c_im(inout[iostride]) = tmp43 + tmp46;
	       c_im(inout[4 * iostride]) = tmp46 - tmp43;
	       c_im(inout[2 * iostride]) = tmp47 + tmp48;
	       c_im(inout[3 * iostride]) = tmp48 - tmp47;
	  }
     }
}

static const int twiddle_order[] =
{1, 2, 3, 4};
fftw_codelet_desc fftwi_twiddle_5_desc =
{
     "fftwi_twiddle_5",
     (void (*)()) fftwi_twiddle_5,
     5,
     FFTW_BACKWARD,
     FFTW_TWIDDLE,
     121,
     4,
     twiddle_order,
};

#endif

