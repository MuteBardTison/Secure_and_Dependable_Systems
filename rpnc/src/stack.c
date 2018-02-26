/*
 * stack.c --
 */
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "stack.h"

stack_t* stack_new() {
    stack_t* s = (stack_t*)malloc(sizeof(stack_t));
    s->top = -1;
    s->data = malloc(sizeof(s->elemSize));
    return s;
}

void stack_push(stack_t *s, void *data) {
    s->elemSize = sizeof(data);
    s->top++;
    s->data = realloc(s->data, (s->elemSize * s->top + 1));
    void* target = (char*)s->data + s->top * s->elemSize;
    memmove(target, data, s->elemSize);
}

int stack_empty(stack_t *s) {
    return s->top == -1;
}

void* stack_pop(stack_t *s) {
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

void* stack_peek(stack_t *s) {
    if(stack_empty(s))
        return NULL;
    else {
        void* data = malloc(s->elemSize);
        void* source = (char*)s->data + s->top * s->elemSize;
        memmove(data, source, s->elemSize);
        return data;
    }
}

void stack_del(stack_t *s) {
    free(s->data);
    free(s);
}
