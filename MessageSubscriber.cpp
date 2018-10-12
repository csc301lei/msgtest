#include "MessageSubscriber.h"

#define CLIENT_ADDR "ipc:///tmp/pubsub_client.ipc"

MessageSubscriber* MessageSubscriber::shareInstance() {
    static MessageSubscriber messageSubscriber;
    return &messageSubscriber;
}

MessageSubscriber::MessageSubscriber() {
    if ((subscriber_ = nn_socket(AF_SP, NN_SUB)) < 0) {
        fatal("nn_socket");
    }
    if (nn_connect(subscriber_, CLIENT_ADDR) < 0) {
        fatal("nn_connet");
    }
}

void MessageSubscriber::keepsubscribe(const std::string topic) {
    while (1) {
        int sz_topic = topic.length();
        if (nn_setsockopt(subscriber_, NN_SUB, NN_SUB_SUBSCRIBE, topic.c_str(),
                          sz_topic) < 0) {
            fatal("nn_setsockopt");
        }
        char* buf = NULL;
        int bytes = nn_recv(subscriber_, &buf, NN_MSG, 0);
        str_ = buf;
        printf("data is : %s\n", str_.c_str());
        if (bytes < 0) {
            fatal("nn_recv");
        }
        // m_cb_(str_);
        // return data;
        nn_freemsg(buf);
    }
}

std::string MessageSubscriber::SubscribeCallback(
    std::function<void(std::string)> cb) {
    m_cb_ = cb;
    // std::string str;
    if (m_cb_) {
        m_cb_(str_);
    }
}

void MessageSubscriber::subscribe(const std::string topic) {
    keepsub = std::thread(&MessageSubscriber::keepsubscribe, this, topic);
    printf("0.5\n");
    // MessageSubscriber::SubscribeCallback([](std::string str) {
    //    printf("ok\n");
    //    printf("str is : %s\n", str.c_str());
    //});
}
/*
void msgsubscribe(const std::string topic, std::string data) {
    printf("0.5\n");
    // MessageSubscriber::shareInstance()->topic_ = topic;
    MessageSubscriber::shareInstance()->SubscribeCallback([](std::string str) {
        printf("ok\n");
        printf("str is : %s", str.c_str());
    });
}
*/
MessageSubscriber::~MessageSubscriber() {
    if (subscriber_) {
        nn_close(subscriber_);
    }
}
// using google::protobuf::util::TimeUtil;
int main(const int argc, const char** argv) {
    // std::string data;

    MessageSubscriber::shareInstance()->subscribe(argv[1]);
    // printf("CLIENT: RECEIVED %s\n", data.c_str());
    printf("continue----1\n");
    sleep(2);
    printf("continue----2\n");
    sleep(3);
    printf("continue----3\n");
    sleep(4);
    printf("continue----4\n");
    sleep(5);
    printf("continue----5\n");

    return 0;
}