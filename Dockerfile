FROM python:alpine
RUN mkdir /root/.ssh
RUN apk update
RUN apk upgrade
RUN apk add zsh gcc libffi libffi-dev make git openssh musl-dev libopenssl libopenssl-dev
RUN pip3 install --upgrade pip
RUN pip3 install cffi robotframework robotframework-crypto python-dateutil pytz click requests google-api-python-client oauth2client jira jenkinsapi