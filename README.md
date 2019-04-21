# NOIP2 Service dockerized

## Build
```
docker build -t sergicastro/noip2 .
```

## Run
```
docker run -d --name noip2 sergicastro/noip2 <noip2.user> <noip2.pass>
```

If using compose create an `.env` file with noip2 user and pass.
```
NOIP2_USER=user
NOIP2_PASS=pass
```
