#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include <time.h>
#include <unistd.h>
#include <iostream>
#include "msg_pub.h"

#include <nanomsg/nn.h>
#include <nanomsg/pubsub.h>
#include <nanomsg/pipeline.h>
#include <nanomsg/reqrep.h>

#define ROUTER_ADDR "ipc:///tmp/pubsub_router.ipc"

void fatal(const char *func)
{
    fprintf(stderr, "%s: %s\n", func, nn_strerror(nn_errno()));
}
/*
bool if_named_topic(const char *topic)
{
    char *buf = NULL;
    int sock;
    int rv;
    int bytes;
    int sz_topic = strlen(topic) + 1;
    if ((sock = nn_socket(AF_SP, NN_REQ)) < 0) {
        fatal("nn_socket");
    }
    if ((rv = nn_connect (sock, "ipc:///tmp/checkname.ipc")) < 0) {
        fatal("nn_connect");
    }
    if ((bytes = nn_send(sock, topic, sz_topic, 0)) < 0) {
                fatal("nn_send");
    }
    if ((bytes = nn_recv(sock, &buf, NN_MSG, 0)) < 0) {
                fatal("nn_recv");
    }
    
    if(strcmp("new", buf) == 0)
    {
        return false;
    }
    if(strcmp("exist", buf) == 0)
    {
        return true;
    }
}
*/

int nanopub(const char *topic, const char *d)
{
    //if( if_named_topic(topic) )
    //{
    //    printf("Topic name exist! Please rename your topic or longer it…\n");
    //    return 0;
    //}

    int bytes;

    int sock;
    if ((sock = nn_socket(AF_SP, NN_PUB)) < 0)
    {
        fatal("nn_socket");
    }
    if (nn_bind(sock, ROUTER_ADDR) < 0)
    {
        fatal("nn_connect");
    }

    for (;;)
    {
        int sz_topic = strlen(topic) + 1;
        int sz_d = strlen(d); // '\0' too
        int len = sz_topic + sz_d + 1;
        char buf[100];
        sprintf(buf, "%s%c%s", topic, '|', d);
        printf("SERVER:  %s\n", buf);
        int bytes = nn_send(sock, buf, len, 0);
        if (bytes < 0)
        {
            fatal("nn_send");
        }
        sleep(1);
    }
    return nn_shutdown(sock, 0);
}

int main(const int argc, const char **argv)
{
    
    nanopub(argv[1], argv[2]);
	
    return 1;
}

