/*
 * stack.h --
 */
#ifndef _STACK_H
#define _STACK_H
#include <stdio.h>
#include <stdlib.h>

typedef struct _stack {
    void *data;
    int top;
    size_t elemSize;
}stack_t;
/**
 * \brief Create a new empty stack.
 *
 * \return A handle for the new stack.
 */
stack_t*
stack_new();
/**
 * \brief Push data (allocated by the caller) on the stack.
 *
 * \param s The stack to push data on.
 * \param data The pointer to data to be pushed on the stack.
 */
void
stack_push(stack_t *s, void *data);
/**
 * \brief Pop data from the top of the stack.
 *
 * \param s The stack to pop data from.
 * \return The data or NULL if the stack is empty.
 */
void*
stack_pop(stack_t *s);
/**
 * \brief Peek on the data at the top of the stack.
 *
 * \param s The stack to peek on.
 * \return The data or NULL if the stack is empty.
 */
void*
stack_peek(stack_t *s);
/**
 * \brief Test whether a stack is empty.
 *
 * \param s The stack to test.
 * \return A non-zero value if the stack is empty, 0 otherwise.
 */
int
stack_empty(stack_t *s);
/**
 * \brief Delete a stack.
 *
 * \param s The stack to delete.
 */
void
stack_del(stack_t *s);
#endif
