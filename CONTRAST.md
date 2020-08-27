# Introduction
This project includes an example implementation of the Contrast Python agent within the vulnerable djangoat application.

#  Build Pre-Requisites
* Python 2.7
* Git

# Structure
* entrypoint.sh: Entrypoint for container start.
  * Creates contrast_security.yaml from contrast_security.yaml.tpl template file, by replacing values from environment variables.
  * Starts Django server
* package.sh: Unneccessary; only exists for consistency with other demo applications.
* acr.sh: Contains commands for pushing image to Azure Container Registry.
* image.sh: Builds new Docker image:
  * Builds new djangoat Docker image with "latest" tag.

# Build Instructions
```bash
$ ./image.sh
```

# Running Locally
```bash
docker run -e CONTRAST_URL=https://eval.contrastsecurity.com/Contrast -e CONTRAST_API_KEY=<YAML_API_KEY> -e CONTRAST_SERVICE_KEY=<YAML_SERVICE_KEY> -e CONTRAST_USER_NAME=<YAML_USER_NAME> -e CONTRAST_APP_NAME=<YAML_APP_NAME> --rm -p 8000:8000 -d djangoat:latest
```
