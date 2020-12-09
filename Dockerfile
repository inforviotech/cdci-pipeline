[Unit]
Description=RocketChat Server
After=network.target remote-fs.target nss-lookup.target mongod.target nginx.target  # Remove or Replace nginx with your proxy

[Service]
ExecStart=/usr/local/bin/node /var/www/rocketchat/main.js    # Specify the location of node and location of main.js
Restart=always                                               # If set to always, the service will be restarted regardless of whether it exited cleanly or not, got terminated abnormally by a signal, or hit a timeout.
RestartSec=10                                                # Restart service after 10 seconds if node service crashes
StandardOutput=syslog                                        # Output to syslog
StandardError=syslog                                         # Output to syslog
SyslogIdentifier=nodejs-example
#User=<alternate user>
#Group=<alternate group>
Environment=NODE_ENV=production PORT=3000 ROOT_URL=https://rocketchat.domain.com MONGO_URL=mongodb://localhost:27017/rocketchat

[Install]
WantedBy=multi-user.target