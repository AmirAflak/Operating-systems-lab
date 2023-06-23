#include <sys/types.h>
#include <sys/ipc.h>
#include <sys/shm.h>
#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>

#define SHMSIZE 50

int main()
{
    int shmid;
    key_t key;
    char *shm;
    char *message = "This message is from writer";

    key = 3232;

    if ((shmid = shmget(key, SHMSIZE, IPC_CREAT | 0666)) < 0) {
        perror("shmget");
        exit(1);
    }

    if ((shm = shmat(shmid, NULL, 0)) == (char *) -1) {
        perror("shmat");
        exit(1);
    }

    printf("Writing a message in shared memory...\n");
    sprintf(shm, "%s", message);

    // Waiting for reader...
    printf("waiting for reader...\n");
    while (*shm != '~')
        sleep(1);
    
    printf("release shared memory and exit...\n");
    if (shmdt(shm) == -1) {
        perror("shmdt");
        exit(1);
    }

    if(-1 == (shmctl(shmid, IPC_RMID, NULL)))
    {   
        perror("shmctl");
        exit(1);
    }   

    exit(0);
}
