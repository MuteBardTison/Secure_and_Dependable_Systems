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
}Stack;
/**
 * \brief Create a new empty stack.
 *
 * \return A handle for the new stack.
 */
Stack*
stack_new();
/**
 * \brief Push data (allocated by the caller) on the stack.
 *
 * \param s The stack to push data on.
 * \param data The pointer to data to be pushed on the stack.
 */
void
stack_push(Stack *s, void *data);
/**
 * \brief Pop data from the top of the stack.
 *
 * \param s The stack to pop data from.
 * \return The data or NULL if the stack is empty.
 */
void*
stack_pop(Stack *s);
/**
 * \brief Peek on the data at the top of the stack.
 *
 * \param s The stack to peek on.
 * \return The data or NULL if the stack is empty.
 */
void*
stack_peek(Stack *s);
/**
 * \brief Test whether a stack is empty.
 *
 * \param s The stack to test.
 * \return A non-zero value if the stack is empty, 0 otherwise.
 */
int
stack_empty(Stack *s);
/**
 * \brief Delete a stack.
 *
 * \param s The stack to delete.
 */
void
stack_del(Stack *s);
#endif