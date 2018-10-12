#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <time.h>
#include <unistd.h>
//#include "router.h"
#include <nanomsg/nn.h>
#include <nanomsg/pipeline.h>
#include <nanomsg/pubsub.h>
#include <nanomsg/reqrep.h>
#include <pthread.h>
#include "fatal.h"

#define ROUTER_ADDR "tcp://*:19001"
#define CLIENT_ADDR "ipc:///tmp/pubsub_client.ipc"

char topic_name[1000];

void *checkname(void *a) {
    int sock;
    int rv;
    if ((sock = nn_socket(AF_SP, NN_REP)) < 0) {
        fatal("nn_socket");
    }
    if ((rv = nn_bind(sock, "ipc:///tmp/checkname.ipc")) < 0) {
        fatal("nn_bind");
    }

    for (;;) {
        char *buf = NULL;
        int bytes;
        if ((bytes = nn_recv(sock, &buf, NN_MSG, 0)) < 0) {
            fatal("nn_recv");
        }
        if (strstr(topic_name, buf) == NULL) {
            strcat(topic_name, buf);
            strcat(topic_name, "|");
            printf("topic_name: %s\n", topic_name);
            nn_send(sock, "new", 3, 0);
        } else {
            nn_send(sock, "exist", 5, 0);
        }
    }
}

void *router(void *a) {
    int frontend;
    if ((frontend = nn_socket(AF_SP, NN_SUB)) < 0) {
        fatal("nn_socket");
    }
    if (nn_setsockopt(frontend, NN_SUB, NN_SUB_SUBSCRIBE, "", 0) < 0) {
        fatal("nn_setsockopt");
    }
    if (nn_bind(frontend, ROUTER_ADDR) < 0) {
        fatal("nn_bind");
    }

    int backend;
    if ((backend = nn_socket(AF_SP, NN_PUB)) < 0) {
        fatal("nn_socket");
    }
    if (nn_bind(backend, CLIENT_ADDR) < 0) {
        fatal("nn_bind");
    }
    for (;;) {
        char *buf = NULL;
        nn_recv(frontend, &buf, NN_MSG, 0);
        printf("frontend: %s\n", buf);
        int sz_buf = strlen(buf) + 1;
        nn_send(backend, buf, sz_buf, 0);
        printf("backend: %s\n", buf);
        nn_freemsg(buf);
    }
    nn_close(frontend);
    nn_close(backend);
}

int main(const int argc, const char **argv) {
    pthread_t router1;
    pthread_t checkname1;
    if (pthread_create(&checkname1, NULL, checkname, NULL) != 0) {
        printf("thread getaddr failede\n");
        exit(1);
    }
    if (pthread_create(&router1, NULL, router, NULL) != 0) {
        printf("thread router failede\n");
        exit(1);
    }

    pthread_join(checkname1, NULL);
    pthread_join(router1, NULL);
    return 1;
}
