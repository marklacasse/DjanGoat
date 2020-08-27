# Introduction
This project includes an example implementation of the Contrast Python agent within the vulnerable djangoat application.

#  Build Pre-Requisites
* docker/docker-compose

# Running Locally

1. Update the docker-compose.yml with Contrast authention
```yaml
      - CONTRAST__API__API_KEY={agent API KEY}
      - CONTRAST__API__SERVICE_KEY={agent Service key}
      - CONTRAST__API__USER_NAME={agent user name}
```

2. Build and run the application
```bash
docker-compose build
docker-compose up
```
3. Launch the application at http://localhost:8000
4. Check the Contrast UI for the added application