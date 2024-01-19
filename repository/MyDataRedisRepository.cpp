#include <hiredis/hiredis.h>
#include <string>
#include "IMyDataRepository.h"

class MyDataRedisRepository : public IMyDataRepository {
private:
    redisContext *redisContext;

public:
    MyDataRedisRepository(const std::string &hostname, int port) {
        redisContext = redisConnect(hostname.c_str(), port);
        if (redisContext == NULL || redisContext->err) {
            if (redisContext) {
                std::cerr << "Connection error: " << redisContext->errstr << std::endl;
                redisFree(redisContext);
            } else {
                std::cerr << "Connection error: can't allocate redis context" << std::endl;
            }
            throw std::runtime_error("Failed to connect to Redis");
        }
    }

    ~MyDataRedisRepository() {
        redisFree(redisContext);
    }

    void Create(const std::string &key, const std::string &value) override {
        redisReply *reply = (redisReply *)redisCommand(redisContext, "SET %s %s", key.c_str(), value.c_str());
        if (!reply) {
            throw std::runtime_error("Redis command failed");
        }
        freeReplyObject(reply);
    }

    std::string Read(const std::string &key) override {
        redisReply *reply = (redisReply *)redisCommand(redisContext, "GET %s", key.c_str());
        if (!reply || reply->type == REDIS_REPLY_NIL) {
            throw std::runtime_error("Key not found or Redis command failed");
        }
        std::string value = reply->str;
        freeReplyObject(reply);
        return value;
    }

    void Update(const std::string &key, const std::string &value) override {
        // In Redis, an update is essentially the same as a create
        Create(key, value);
    }

    void Delete(const std::string &key) override {
        redisReply *reply = (redisReply *)redisCommand(redisContext, "DEL %s", key.c_str());
        if (!reply) {
            throw std::runtime_error("Redis command failed");
        }
        freeReplyObject(reply);
    }
};
