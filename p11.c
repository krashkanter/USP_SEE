// Write a C program to do the following: using fork() create a child process. The child process prints its own process ID, and ID of its parent and then exit. The parent process waits for its child to finish (by executing the wait()) and prints its own process ID and the ID of its child process then exit

#include <stdio.h>
#include <unistd.h>
#include <sys/wait.h>
#include <sys/types.h>

int main() {
    pid_t child_pid;
    child_pid = fork();

    if (child_pid < 0) {
        fprintf(stderr, "FORK FAILED\n");
        return 1;
    } else if (child_pid == 0) {
        printf("Child process: PID=%d, Parent PID=%d\n", getpid(), getppid());
    } else {
        wait(NULL);
        printf("Parent process: PID=%d, Child PID=%d\n", getpid(), child_pid);
    }

    return 0;
}
