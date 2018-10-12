#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include <time.h>
#include <unistd.h>
#include <nanomsg/nn.h>
#include <nanomsg/pubsub.h>
#include <nanomsg/pipeline.h>

void fatal(const char *func);
//extern char topic_name[1000];
int nanopub(const char *url, const char *d);
