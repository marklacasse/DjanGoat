FROM python:2.7-buster

# Install packages
RUN apt-get update -qq
RUN apt-get install -y build-essential
RUN apt-get install -y bash
RUN apt-get install -y curl

# Create application directory
RUN mkdir /myapp
WORKDIR /myapp

# Add application components
ADD ./app /myapp/app
ADD ./ci /myapp/ci
ADD ./docs /myapp/docs
ADD ./public /myapp/public
ADD ./pygoat /myapp/pygoat
ADD ./static /myapp/static
ADD ./template /myapp/template
ADD ./.coveragerc /myapp/.coveragerc
ADD ./.pylintrc /myapp/.pylintrc
ADD ./.travis.yml /myapp/.travis.yml
ADD ./LICENSE.md /myapp/LICENSE.md
ADD ./Makefile /myapp/Makefile
ADD ./manage.py /myapp/manage.py
ADD ./README.md /myapp/README.md
ADD ./requirements.txt /myapp/requirements.txt

# Install application and dependencies
RUN make install

# Add Contrast Agent and YAML Configuration
ADD ./contrast_security.yaml /myapp/contrast_security.yaml

RUN pip install contrast-agent

# Run tests
#RUN make test

# Expose port 8000
EXPOSE 8000

# Run the Application
ENTRYPOINT ["make","run"]
