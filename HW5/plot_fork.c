#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <sys/wait.h>
#include <time.h>



const int k = 10; 

int gen();
void print_his(int[25]);

int main() {
  int n;
  int i, j;
  int his[25];
  for (i = 0; i < 25; i++) {
    his[i] = 0;
  }
  scanf("%d", &n);
  for (i = 0; i < n; i += k) {
    for (j = 0; j < k; j++) {
      srand(i + j + time(0));
      pid_t pid = fork();
      if (pid == 0) {
        int ret = gen();
        exit(ret + 12);
      } else if (pid > 0) {
      } else {
        perror("fork failed");
      }
    }
    for (j = 0; j < k; j++) {
      int ret;
      wait(&ret);
      ret = WEXITSTATUS(ret);
      his[ret]++;
    }
  }
  print_his(his);
}

void print_his(int his[25]) {
  int i, j;

  for (i = 0; i < 25; i++) {
    //printf("%d: ", i - 12);
    for (j = 0; j < his[i]; j++) {
     // printf("*");
    }
   // printf("\n");
  }
}

int gen() {
  int count = 0;
  int i;
  for (i = 0; i < 12; i++) {
    int n = rand() % 100;
    if (n <= 49) {
      count--;
    } else {
      count++;
    }
  }
  return count;
}