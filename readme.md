Usage
=====

Create a file config.json

{
    "username": "myuser",
    "password": "mypassword",
    "reinstall": true or false,
    "device_name": "my device"
}

Inital configuration:
---

docker run -it -v $(pwd)/config.json:/config.json -v $(pwd)/configfolder:/spideroak -e HEADLESS=0 jandebleser/spideroak --setup=/config.json

Adding folders:
---

docker run -it -v $(pwd)/configfolder:/spideroak -v $(pwd)/backup:/backup jandebleser/spideroak --include-dir=/backup

Running:
---
docker run -it -v $(pwd)/configfolder:/spideroak -v $(pwd)/backup:/backup jandebleser/spideroak


Synology NAS
========

Mount a folder under /spideroak, and the one you want to backup under /backup.

Run with environment variable SLEEP=infinity

Then run bash commands:

SpiderOakONE --setup=/config.json
SpiderOakONE --include-dir=/backup

Then set the variable SLEEP to 0