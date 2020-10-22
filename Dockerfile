FROM docker:stable
COPY start-redis.sh /start-redis.sh
COPY /github/workspace/src/resources/redis.conf /usr/local/etc/redis/redis.conf
RUN chmod +x /start-redis.sh
ENTRYPOINT ["/start-redis.sh"]