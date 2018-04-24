/**
 * \brief Substitution-permutation network implementation
 * 
 * \file spn.h
 * \author Zihan Qi
 * \date 2018-04-24
 */
#ifndef _SPN_H
#define _SPN_H
#include <stdio.h>
#include <stdlib.h>

#define KEY_LENGTH 32
#define BLOCK_CIPHER_SIZE 8
#define S_BOX_SIZE 4
#define P_BOX_SIZE 8
#define SUBSTITUTION(x) (((x) + 1) * 7) % (17 - 1)
#define PERMUTATION(x) (((x) >> (P_BOX_SIZE - 2)) | (((x) << 2) & 0xFCFF))
#define DEPERMUTATION(x) ((((x) & 3) << (P_BOX_SIZE - 2)) | ((x) >> 2) )

/**
 * \brief Block Cipher Encryption with 4 rounds
 * 
 * \param plaintext plaintext
 * \param key key
 * \return int ciphertext
 */
int BlockCipherEncrypt(const int plaintext, const long key);

/**
 * \brief helper function to decrypt substituation
 * 
 * \param num num
 * \return int decrypted num
 */
int SubstitutionDecrypt(int num);

/**
 * \brief Block Cipher Decryption
 * 
 * \param ciphertext ciphertext
 * \param key key
 * \return int ciphertext
 */
int BlockCipherDecrypt(const int ciphertext, const long key);

/**
 * \brief Electric Code Book mode
 * 
 * \param plaintext plaintext
 * \param key key
 */
void ECBencrypt(const char* plaintext, const long key);

/**
 * \brief Cipher Block Chaining mode
 * 
 * \param plaintext plaintext
 * \param key key
 * \param initializationvec initializationvec
 */
void CBCencrypt(const char* plaintext, const long key, const int initializationvec);

/**
 * \brief Cipher Block Chaining mode decrypt
 * 
 * \param ciphertext ciphertext   
 * \param key key
 * \param initializationvec initializationvec
 */
void CBCdecrypt(const char* ciphertext, const long key, const int initializationvec);

#endif