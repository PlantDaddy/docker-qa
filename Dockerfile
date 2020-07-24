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
            curl \
            docker
RUN curl -Lo /etc/apk/keys/sgerrand.rsa.pub https://alpine-pkgs.sgerrand.com/sgerrand.rsa.pub
RUN curl -LO https://github.com/sgerrand/alpine-pkg-glibc/releases/download/2.31-r0/glibc-2.31-r0.apk
RUN curl -LO https://github.com/sgerrand/alpine-pkg-glibc/releases/download/2.31-r0/glibc-bin-2.31-r0.apk
RUN curl -LO https://github.com/openshift/origin/releases/download/v1.2.2/openshift-origin-client-tools-v1.2.2-565691c-linux-64bit.tar.gz && \
    tar xzvf openshift-origin-client-tools-v1.2.2-565691c-linux-64bit.tar.gz openshift-origin-client-tools-v1.2.2-565691c-linux-64bit/oc && \
    mv openshift-origin-client-tools-v1.2.2-565691c-linux-64bit/oc /usr/bin && \
    rm -f openshift-origin-client-tools-v1.2.2-565691c-linux-64bit.tar.gz
RUN apk add glibc-2.31-r0.apk
RUN apk add glibc-bin-2.31-r0.apk
RUN rm -f glibc*
RUN apk add firefox-esr
RUN curl -LO https://github.com/mozilla/geckodriver/releases/download/v0.26.0/geckodriver-v0.26.0-linux64.tar.gz
RUN tar -zxf geckodriver-v0.26.0-linux64.tar.gz -C /usr/bin
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