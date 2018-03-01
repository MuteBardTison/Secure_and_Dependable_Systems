/*
 * rpn.h --
 */
#ifndef _RPN_H
#define _RPN_H
#define RPN_OK                  0
#define RPN_INVALID_TOKEN       -1
#define RPN_MISSING_OPERAND     -2
#define RPN_MISSING_OPERATOR    -3
/**
 * \brief Evaluate an expression in reverse polish notation.
 *
 * \param token The vector of tokens making up the expression.
 * \param result Pointer to the string which will hold the result (malloced).
 * \result One of the error codes defined above.
 */
int
rpn_eval(char *token[], char **result);
#endif
