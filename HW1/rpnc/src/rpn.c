/*
 * rpn.c --
 */

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <ctype.h>
#include "stack.h"
#include "rpn.h"

int rpn_eval(char *token[], char **result) {
    const char* operator = "+-*/";
    const char* digits = "0123456789";
    Stack* s = stack_new();
    int length = 0;
    while(token[length] != NULL) length++;
    for(int i = 0; i < length; i++) {
        //test invalid token
        int all_digit = 1, only_operator = 0, j = 0;
        //check if is a number 
        while(token[i][j]) {
            if(!(strchr(digits, token[i][j]) != NULL))
                all_digit = 0;
            j++;
        }
        //check if is an operator
        if(strchr(operator, token[i][0]) != NULL && token[i][1] == '\0')
            only_operator = 1;
        if(length == 1 && all_digit == 1 && only_operator == 0) {
            stack_push(s, token[i]);
            break;
        }
        if(!(all_digit || only_operator)) {
            printf("rpnc: invalid token '%s'\n", token[i]);
            stack_del(s);
            return RPN_INVALID_TOKEN;
        }
        //end token test

        //test operand missing
        //operator in [0] or [1]
        else if((strchr(operator, token[i][0]) != NULL && i == 0 )
        || (strchr(operator, token[i][0]) != NULL && i == 1)) {
            printf("rpnc: missing operand\n");
            stack_del(s);
            return RPN_MISSING_OPERAND;
        }
        //end operand missing test

        //test operator missing
        //1){"12", "23"}
        else if(i == length - 1 && length == 2) {
            printf("rpnc: missing operator\n");
            stack_del(s);
            return RPN_MISSING_OPERATOR;
        }
        //2){"12", "23", "34"...}
        else if(strchr(operator, token[i][0]) == NULL && i == 2) {
            printf("rpnc: missing operator\n");
            stack_del(s);
            return RPN_MISSING_OPERATOR;
        }
        //end operator missing test
        else{
            //push to stack
            stack_push(s, token[i]);
            //only one number
            if(length == 1) break;

            char* v1, *v2;
            char r[sizeof(char*)];
            int val;
            if(strcmp(stack_peek(s), "+") == 0) {
                stack_pop(s);
                v2 = stack_pop(s);
                v1 = stack_pop(s);
                val = strtol(v1, NULL, 10) + strtol(v2, NULL, 10);
                sprintf(r, "%d", val);
                stack_push(s, r);
            }
            if(strcmp(stack_peek(s), "-") == 0) {
                stack_pop(s);
                v2 = stack_pop(s);
                v1 = stack_pop(s);
                val = strtol(v1, NULL, 10) - strtol(v2, NULL, 10);
                sprintf(r, "%d", val);
                stack_push(s, r);
            }
            if(strcmp(stack_peek(s), "*") == 0) {
                stack_pop(s);
                v2 = stack_pop(s);
                v1 = stack_pop(s);
                val = strtol(v1, NULL, 10) * strtol(v2, NULL, 10);
                sprintf(r, "%d", val);
                stack_push(s, r);
            }
            if(strcmp(stack_peek(s), "/") == 0) {
                stack_pop(s);
                v2 = stack_pop(s);
                v1 = stack_pop(s);
                val = strtol(v1, NULL, 10) / strtol(v2, NULL, 10);
                sprintf(r, "%d", val);
                stack_push(s, r);
            }
        }
    }
    char* resultptr = (char*)malloc(s->elemSize);
    resultptr = memmove(resultptr, stack_pop(s), s->elemSize);
    strcat(*result, resultptr);
    free(resultptr);    
    stack_del(s);
    return RPN_OK;
}