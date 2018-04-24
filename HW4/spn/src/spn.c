#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "spn.h"

int BlockCipherEncrypt(const int plaintext, const long key) {
    int ciphertext = 0;
    //Round 0: Key step with the first (most significant) 8 bits of the key
    int key0 = (key & 0xFF000000L) >> 24;
    ciphertext = key0 ^ plaintext;
    //Round 1: Substitution step followed by a permutation step 
    //follows by a key step with the next 8 bits of the key
    long key1 = (key & 0x00FF0000L) >> 16;
    ciphertext = key1 ^ (PERMUTATION(SUBSTITUTION((ciphertext & 0xF0) >> 4) << 4 | SUBSTITUTION(ciphertext & 0x0F)));
    //Round 2: Substitution step followed by a permutation step 
    //follows by a key step with the next 8 bits of the key
    long key2 = (key & 0x0000FF00L) >> 8;
    ciphertext = key2 ^ (PERMUTATION(SUBSTITUTION((ciphertext & 0xF0) >> 4) << 4 | SUBSTITUTION(ciphertext & 0x0F)));
    //Round 3: Substitution step followed by a key step 
    //with the last (least significant) 8 bits of the key
    long key3 = (key & 0x000000FFL);
    ciphertext = key3 ^ (SUBSTITUTION((ciphertext & 0xF0) >> 4) << 4 | SUBSTITUTION(ciphertext & 0x0F));
    return ciphertext;
}

int SubstitutionDecrypt(int num) {
    int i;
    for(i = 0; i <= 15; ++i) {
        if(SUBSTITUTION(i) == num)
            break; 
    }
    return i;
}

int BlockCipherDecrypt(const int ciphertext, const long key) {
    int plaintext = ciphertext;
    //Round 0
    long key0 = (key & 0x000000FFL);
    plaintext ^= key0;
    plaintext = SubstitutionDecrypt((plaintext & 0xF0) >> 4) << 4 | SubstitutionDecrypt(plaintext & 0x0F);
    //Round 1
    long key1 = (key & 0x0000FF00L) >> 8;
    plaintext ^= key1;
    plaintext = DEPERMUTATION(plaintext);
    plaintext = SubstitutionDecrypt((plaintext & 0xF0) >> 4) << 4 | SubstitutionDecrypt(plaintext & 0x0F);
    //Round 2
    long key2 = (key & 0x00FF0000L) >> 16;
    plaintext ^= key2;
    plaintext = DEPERMUTATION(plaintext);
    plaintext = SubstitutionDecrypt((plaintext & 0xF0) >> 4) << 4 | SubstitutionDecrypt(plaintext & 0x0F);
    //Round 3
    long key3 = (key & 0xFF000000L) >> 24;
    plaintext ^= key3;
    return plaintext;
}

void ECBencrypt(const char* plaintext, const long key) {
    int i;
    for(i = 0; i < strlen(plaintext); ++i) {
        printf("%X", BlockCipherEncrypt(plaintext[i], key));
    }
    printf("\n");
}

void CBCencrypt(const char* plaintext, const long key, const int initializationvec) {
    char* text;
    int vec = initializationvec;
    text = malloc(sizeof(char) * (strlen(plaintext) + 1));
    strcpy(text, plaintext);
    int i;
    for(i = 0; i < strlen(text); ++i) {
        text[i] ^= vec;
        printf("%X", BlockCipherEncrypt(text[i], key));
        vec = BlockCipherEncrypt(text[i], key);
    }
    printf("\n");
}

void CBCdecrypt(const char* ciphertext, const long key, const int initializationvec) {
    int vec = initializationvec;
    int i;
    for(i = 2; i < strlen(ciphertext); i += 2) {
        char buffer[3] = {0};
        strncpy(buffer, ciphertext + i, 2);
        int character = (int)strtol(buffer, NULL, 16);
        printf("%c", vec ^ BlockCipherDecrypt(character, key));
        vec = character;
    }
    printf("\n");
}


