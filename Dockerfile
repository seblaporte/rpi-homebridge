FROM hypriot/rpi-node:6.5

RUN apt-get update && apt-get install -y libavahi-compat-libdnssd-dev && apt-get clean

RUN npm install -g --unsafe-perm homebridge hap-nodejs node-gyp

RUN cd /usr/local/lib/node_modules/homebridge && npm install --unsafe-perm bignum

RUN npm install -g homebridge-edomoticz

RUN cd /root && mkdir .homebridge

EXPOSE 51826

VOLUME ["/var/run/dbus"]

CMD 'homebridge'
