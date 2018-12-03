FROM hassioaddons/base-armhf

ENV LANG C.UTF-8

RUN apk add --no-cache jq nodejs nodejs-npm git \ 
	
RUN mkdir repo \
RUN cd repo \
RUN git init . \
RUN git remote add -f origin https://github.com/x13-me/hassio-addons \
RUN git config core.sparseCheckout true \
RUN echo "hass/ps4-hass-waker/" >> .git/info/sparse-checkout \
RUN git pull origin master \
RUN cd hass/ps4-hass-waker \
RUN npm config set unsafe-perm true \
RUN npm install -g mustache \
RUN npm install -g . \
RUN npm config set unsafe-perm false \
RUN cd ../../../ \
RUN rm -rf repo

COPY template.json /templates/
COPY run.sh /
RUN chmod a+x /run.sh

CMD [ "/run.sh" ]