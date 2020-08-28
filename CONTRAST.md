# Introduction
This project includes an example implementation of the Contrast Python agent within the vulnerable djangoat application. 

#  Build Pre-Requisites
* Python 2.7
* Git

# Running Locally

1. Update the docker-compose.yml with your Contrast server and authentication information. 
Visit our Doc site for how to find these: https://docs.contrastsecurity.com/en/personal-keys.html

```yaml
      - CONTRAST__API__URL=https://app.contrastsecurity.com/Contrast
      - CONTRAST__API__API_KEY={agent API KEY}
      - CONTRAST__API__SERVICE_KEY={agent Service key}
      - CONTRAST__API__USER_NAME={agent user name}
```
2. Build the docker image locally and run
```bash
docker-compose build
docker-compose up
```

3. Visit the app at http://127.0.0.1:8000/ then check your Contrast UI for the newly added application.
