#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <stdint.h>
//בניית עץ דוגמה מהרצאות
typedef struct Node {
    char ch;
    int freq;
    struct Node *left, *right;
} Node;

Node* createNode(char ch, int freq, Node* left, Node* right) {
    Node* node = (Node*)malloc(sizeof(Node));
    node->ch = ch;
    node->freq = freq;
    node->left = left;
    node->right = right;
    return node;
}

int compare(const void* a, const void* b) {
    return ((Node*)a)->freq - ((Node*)b)->freq;
}
