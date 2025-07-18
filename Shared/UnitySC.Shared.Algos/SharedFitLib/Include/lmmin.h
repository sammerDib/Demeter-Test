/*
 * Library:   lmfit (Levenberg-Marquardt least squares fitting)
 *
 * File:      lmmin.h
 *
 * Contents:  Declarations for Levenberg-Marquardt minimization.
 *
 * Copyright: Joachim Wuttke, Forschungszentrum Juelich GmbH (2004-2018)
 *
 * License:   see ../COPYING (FreeBSD)
 *
 * Homepage:  https://jugit.fz-juelich.de/mlz/lmfit
 */

#ifndef LMMIN_H
#define LMMIN_H

#include "lmstruct.h"

__BEGIN_DECLS

/* Levenberg-Marquardt minimization. */
LM_DLL void lmmin2(
    const int n_par, double *const par, double *const parerr,
    double *const covar, const int m_dat, const double *const y,
    const void *const data,
    void (*const evaluate)(
        const double *const par, const int m_dat, const void *const data,
        double *const fvec, int *const userbreak),
    const lm_control_struct *const control, lm_status_struct *const status);
/*
 *   This routine contains the core algorithm of our library.
 *
 *   It minimizes the sum of the squares of m nonlinear functions
 *   in n variables by a modified Levenberg-Marquardt algorithm.
 *   The function evaluation is done by the user-provided routine 'evaluate'.
 *   The Jacobian is then calculated by a forward-difference approximation.
 *
 *   Parameters:
 *
 *      n_par is the number of variables (INPUT, positive integer).
 *
 *      par is the solution vector (INPUT/OUTPUT, array of length n).
 *        On input it must be set to an estimated solution.
 *        On output it yields the final estimate of the solution.
 *
 *      parerr (either NULL or OUTPUT array of length n)
 *        yields parameter error estimates.
 *
 *      covar (either NULL or OUTPUT array of length n*n)
 *        yields the parameter covariance matrix (not yet implemented).
 *
 *      m_dat is the number of functions to be minimized (INPUT, integer).
 *        It must fulfill m>=n.
 *
 *      y contains data to be fitted. Use a null pointer if there are no data.
 *
 *      data is a pointer that is ignored by lmmin; it is however forwarded
 *        to the user-supplied functions evaluate and printout.
 *        In a typical application, it contains experimental data to be fitted.
 *
 *      evaluate is a user-supplied function that calculates the m functions.
 *        Parameters:
 *          n, x, m, data as above.
 *          fvec is an array of length m; on OUTPUT, it must contain the
 *            m function values for the parameter vector x.
 *          userbreak is an integer pointer. When *userbreak is set to a
 *            nonzero value, lmmin will terminate.
 *
 *      control contains INPUT variables that control the fit algorithm,
 *        as declared and explained in lmstruct.h
 *
 *      status contains OUTPUT variables that inform about the fit result,
 *        as declared and explained in lmstruct.h
 */

/* old, simpler interface, preserved for API compatibility */
LM_DLL void lmmin(
    const int n_par, double *const par, const int m_dat, const double *const y,
    const void *const data,
    void (*const evaluate)(
        const double *const par, const int m_dat, const void *const data,
        double *const fvec, int *const userbreak),
    const lm_control_struct *const control, lm_status_struct *const status);

/* Refined calculation of Eucledian norm. */
LM_DLL double lm_enorm(const int, const double *const);
LM_DLL double lm_fnorm(const int, const double *const, const double *const);

/* Internal, exported for test/run_qr */
LM_DLL void lm_qrfac(
    const int m, const int n, double *const A, int *const Pivot,
    double *const Rdiag, double *const Acnorm, double *const W);

__END_DECLS
#endif /* LMMIN_H */
