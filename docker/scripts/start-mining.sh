#!/bin/bash

#call supervisord to launch BFGMINER
/usr/bin/supervisord --nodaemon --configuration=/docker/configuration/supervisord/supervisor.conf