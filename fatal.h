#ifndef MSG_FATAL_H_
#define MSG_FATAL_H_

#include <nanomsg/nn.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <time.h>
#include <unistd.h>

void fatal(const char *func);
#endif
