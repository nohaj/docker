# kanboard

Docker container to serve a kanboard instance.

This image contains :

- An apache web server
- A SQLite database
- PHP7 (through Remi repository) and some required modules
- postfix3 (through Ghettoforge repository) for email notification

Quick & dirty style, inet_interface and relayhost are hardcoded.

Buid :
```
docker build -t "kanboard:1.0" .
```

Run :
```
docker run -d -it -p 8001:80 -v /var/www/kanboard-1.2.9:/var/www/html kanboard:1.0
```
