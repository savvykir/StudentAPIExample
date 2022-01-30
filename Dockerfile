FROM node:latest
RUN mkdir -p /opt/app
WORKDIR /opt/app
RUN adduser -S app
COPY studentapp/ .
RUN npm install
RUN chown -R app /opt/app
USER app
EXPOSE 3000
CMD [ "node", "app.js" ]