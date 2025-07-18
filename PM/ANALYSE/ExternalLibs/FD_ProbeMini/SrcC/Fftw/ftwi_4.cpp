

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

/* Generated by: ./genfft -magic-alignment-check -magic-twiddle-load-all -magic-variables 4 -magic-loopi -twiddleinv 4 */

/*
 * This function contains 22 FP additions, 12 FP multiplications,
 * (or, 16 additions, 6 multiplications, 6 fused multiply/add),
 * 14 stack variables, and 16 memory accesses
 */

/*
 * Generator Id's : 
 * $Id: ftwi_4.cpp 6710 2008-01-18 18:12:00Z s-petitgrand $
 * $Id: ftwi_4.cpp 6710 2008-01-18 18:12:00Z s-petitgrand $
 * $Id: ftwi_4.cpp 6710 2008-01-18 18:12:00Z s-petitgrand $
 */

void fftwi_twiddle_4(fftw_complex *A, const fftw_complex *W, int iostride, int m, int dist)
{
     int i;
     fftw_complex *inout;
     inout = A;
     for (i = m; i > 0; i = i - 1, inout = inout + dist, W = W + 3) {
	  fftw_real tmp1;
	  fftw_real tmp25;
	  fftw_real tmp6;
	  fftw_real tmp24;
	  fftw_real tmp12;
	  fftw_real tmp20;
	  fftw_real tmp17;
	  fftw_real tmp21;
	  ASSERT_ALIGNED_DOUBLE;
	  tmp1 = c_re(inout[0]);
	  tmp25 = c_im(inout[0]);
	  {
	       fftw_real tmp3;
	       fftw_real tmp5;
	       fftw_real tmp2;
	       fftw_real tmp4;
	       ASSERT_ALIGNED_DOUBLE;
	       tmp3 = c_re(inout[2 * iostride]);
	       tmp5 = c_im(inout[2 * iostride]);
	       tmp2 = c_re(W[1]);
	       tmp4 = c_im(W[1]);
	       tmp6 = (tmp2 * tmp3) + (tmp4 * tmp5);
	       tmp24 = (tmp2 * tmp5) - (tmp4 * tmp3);
	  }
	  {
	       fftw_real tmp9;
	       fftw_real tmp11;
	       fftw_real tmp8;
	       fftw_real tmp10;
	       ASSERT_ALIGNED_DOUBLE;
	       tmp9 = c_re(inout[iostride]);
	       tmp11 = c_im(inout[iostride]);
	       tmp8 = c_re(W[0]);
	       tmp10 = c_im(W[0]);
	       tmp12 = (tmp8 * tmp9) + (tmp10 * tmp11);
	       tmp20 = (tmp8 * tmp11) - (tmp10 * tmp9);
	  }
	  {
	       fftw_real tmp14;
	       fftw_real tmp16;
	       fftw_real tmp13;
	       fftw_real tmp15;
	       ASSERT_ALIGNED_DOUBLE;
	       tmp14 = c_re(inout[3 * iostride]);
	       tmp16 = c_im(inout[3 * iostride]);
	       tmp13 = c_re(W[2]);
	       tmp15 = c_im(W[2]);
	       tmp17 = (tmp13 * tmp14) + (tmp15 * tmp16);
	       tmp21 = (tmp13 * tmp16) - (tmp15 * tmp14);
	  }
	  {
	       fftw_real tmp7;
	       fftw_real tmp18;
	       fftw_real tmp27;
	       fftw_real tmp28;
	       ASSERT_ALIGNED_DOUBLE;
	       tmp7 = tmp1 + tmp6;
	       tmp18 = tmp12 + tmp17;
	       c_re(inout[2 * iostride]) = tmp7 - tmp18;
	       c_re(inout[0]) = tmp7 + tmp18;
	       tmp27 = tmp12 - tmp17;
	       tmp28 = tmp25 - tmp24;
	       c_im(inout[iostride]) = tmp27 + tmp28;
	       c_im(inout[3 * iostride]) = tmp28 - tmp27;
	  }
	  {
	       fftw_real tmp23;
	       fftw_real tmp26;
	       fftw_real tmp19;
	       fftw_real tmp22;
	       ASSERT_ALIGNED_DOUBLE;
	       tmp23 = tmp20 + tmp21;
	       tmp26 = tmp24 + tmp25;
	       c_im(inout[0]) = tmp23 + tmp26;
	       c_im(inout[2 * iostride]) = tmp26 - tmp23;
	       tmp19 = tmp1 - tmp6;
	       tmp22 = tmp20 - tmp21;
	       c_re(inout[iostride]) = tmp19 - tmp22;
	       c_re(inout[3 * iostride]) = tmp19 + tmp22;
	  }
     }
}

static const int twiddle_order[] =
{1, 2, 3};
fftw_codelet_desc fftwi_twiddle_4_desc =
{
     "fftwi_twiddle_4",
     (void (*)()) fftwi_twiddle_4,
     4,
     FFTW_BACKWARD,
     FFTW_TWIDDLE,
     99,
     3,
     twiddle_order,
};

#endif

