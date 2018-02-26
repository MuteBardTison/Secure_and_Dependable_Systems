/*
 * stack.c --
 */
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "stack.h"

Stack* stack_new() {
    Stack* s = (Stack*)malloc(sizeof(Stack));
    s->top = -1;
    s->data = malloc(sizeof(s->elemSize));
    return s;
}

void stack_push(Stack *s, void *data) {
    s->elemSize = sizeof(data);
    s->top++;
    s->data = realloc(s->data, (s->elemSize * s->top + 1));
    void* target = (char*)s->data + s->top * s->elemSize;
    memmove(target, data, s->elemSize);
}

int stack_empty(Stack *s) {
    return s->top == -1;
}

void* stack_pop(Stack *s) {
    if(stack_empty(s))
        return NULL;
    else {
        void* data = malloc(s->elemSize);
        void* source = (char*)s->data + s->top * s->elemSize;
        memmove(data, source, s->elemSize);
        s->data = realloc(s->data, s->elemSize * s->top);
        s->top--;
        return data;
    }
}

void* stack_peek(Stack *s) {
    if(stack_empty(s))
        return NULL;
    else {
        void* data = malloc(s->elemSize);
        void* source = (char*)s->data + s->top * s->elemSize;
        memmove(data, source, s->elemSize);
        return data;
    }
}

void stack_del(Stack *s) {
    free(s->data);
    free(s);
}