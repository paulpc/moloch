FROM node:8

# Create app directory
WORKDIR /data/moloch/wiseService/

# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
# where available (npm@5+)
COPY package*.json /data/moloch/wiseService/

RUN npm install
#RUN npm update

# If you are building your code for production
# RUN npm install --only=production

# Bundle app source
COPY *.js /data/moloch/wiseService/
COPY .jshintrc /data/moloch/wiseService/
COPY wiseService.ini.sample /data/moloch/wiseService/wiseService.ini
COPY right_click.ini.sample /data/moloch/wiseService/right_click.ini.sample

EXPOSE 8081
CMD [ "node", "wiseService.js",  "-c", "/data/moloch/wiseService/wiseService.ini" ]