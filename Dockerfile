FROM alpine:3.7
RUN apk add --no-cache bash py-pip firefox-esr xvfb dbus chromium chromium-chromedriver && \
    pip install --upgrade pip && \
    pip install robotframework && \
    pip install robotframework-selenium2library && \
    pip install robotframework-requests && \
    pip install robotframework-httplibrary && \
    pip install robotframework-excellibrary

ADD run.sh /usr/local/bin/run.sh
RUN chmod +x /usr/local/bin/run.sh

CMD ["run.sh"]

