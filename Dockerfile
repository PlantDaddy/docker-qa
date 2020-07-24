FROM python:alpine
RUN mkdir /root/.ssh
RUN apk update
RUN apk upgrade
RUN apk add zsh \
            gcc \
            libffi \
            libffi-dev \
            make \
            git \
            openssh \
            musl-dev \
            openssl \
            openssl-dev \
            xvfb \
            xvfb-run \
            glibc \
            glibc-run \
            firefox-esr
RUN pip install --upgrade pip
RUN pip install cffi \
                 robotframework \
                 robotframework-crypto \
                 python-dateutil \
                 pytz \
                 click \
                 requests \
                 google-api-python-client \
                 oauth2client \
                 jira \
                 jenkinsapi \
                 docker \
                 psutil \
                 python-dotenv \
                 jinja2 \
                 robotframework-debuglibrary \
                 robotframework-imaplibrary \
                 robotframework-requests \
                 robotframework-seleniumlibrary \
                 paho-mqtt \
                 deepdiff \
                 pdfminer \
                 jsonref \
                 pexpect \
                 selenium \
                 chromedriver-py \
                 termcolor \
                 jsonschema
