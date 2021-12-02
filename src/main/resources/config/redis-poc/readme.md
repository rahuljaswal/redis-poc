# config containerization :-


----------------------------------------------------------------------------------------

# Replication

## redis-0 containerization :- 
docker run -d --rm --name redis-0 
--net redis -p 6379:6379 
-v {pwd}/redis-0:/etc/redis/ redis:alpine redis-server /etc/redis/redis.conf

## redis-1 containerization :-
docker run -d --rm --name redis-1 --net redis
-v {pwd}/redis-1:/etc/redis/ redis:alpine redis-server /etc/redis/redis.conf

## redis-2 containerization :-
docker run -d --rm --name redis-2 --net redis 
-v {pwd}/redis-2:/etc/redis/ redis:alpine redis-server /etc/redis/redis.conf


## go to one of the clients
docker exec -it redis-2 sh
redis-cli
auth "a-very-complex-password-here"
info replication
keys * 
