/*
 * Library:   lmfit (Levenberg-Marquardt least squares fitting)
 *
 * File:      lmcurve.h
 *
 * Contents:  Declares lmcurve, a simplified API for curve fitting
 *            using the generic Levenberg-Marquardt routine lmmin.
 *
 * Copyright: Joachim Wuttke, Forschungszentrum Juelich GmbH (2004-2013)
 *
 * License:   see ../COPYING (FreeBSD)
 *
 * Homepage:  https://jugit.fz-juelich.de/mlz/lmfit
 *
 * Note to programmers: Don't patch and fork, but copy and variate!
 *   If you need to compute residues differently, then please do not patch
 * lmcurve.h, but copy it to a differently named file, and change lmcurve()
 * into a differently named function declaration, like we have done in
 * lmcurve_tyd.h.
 */

#ifndef LMCURVE_H
#define LMCURVE_H

#include "lmstruct.h"

__BEGIN_DECLS

LM_DLL void lmcurve(
    const int n_par, double* par, const int m_dat,
    const double* t, const double* y,
    double (*g)(const double t, const double* par),
    const lm_control_struct* control, lm_status_struct* status);

__END_DECLS
#endif /* LMCURVE_H */
