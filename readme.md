###Api calls
**add record:** `localhost:8080/rest/user/add/1/rahul`

**update record:** `localhost:8080/rest/user/update/1/pankaj` 

**delete record:** `localhost:8080/rest/user/delete/1`

**fetch all:** `localhost:8080/rest/user/all`

####create image redisclient:latest
`docker build --tag redisclient:latest .`

####run it on redis network 
`docker run -d --net redis --name redisclient -p 8080:8080 redisclient:latest`
 
 **note :** right now app is unable to connect to any of redis instance in containerized environment, try running it outside.
 