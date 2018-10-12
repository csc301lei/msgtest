#include <nanomsg/nn.h>
#include <nanomsg/pipeline.h>
#include <nanomsg/pubsub.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <time.h>
#include <unistd.h>
#include "MessagePublisher.h"

int main(const int argc, const char **argv) {
    MessagePublisher::shareInstance->publish(argv[1], argv[2]);
    return 1;
}
