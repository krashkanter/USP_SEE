#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <sys/wait.h>
#include <string.h>

#define MAX_CMD 100

int main() {
    char cmd[MAX_CMD];

    while (1) {
        printf("cmd> ");
        if (!fgets(cmd, sizeof(cmd), stdin)) break;
        cmd[strcspn(cmd, "\n")] = 0;

        if (strcmp(cmd, "exit") == 0) break;

        pid_t pid = fork();
        if (pid == 0) {
            execlp(cmd, cmd, NULL);
            perror("execlp");
            exit(EXIT_FAILURE);
        }
        if (pid > 0) {
            wait(NULL);
        } else {
            perror("fork");
            exit(EXIT_FAILURE);
        }
    }
    return 0;
}
