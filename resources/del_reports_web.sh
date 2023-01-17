#!/bin/bash

cd /home/usr_admin/flask_app/static/auto_reportes

find /home/usr_admin/flask_app/static/auto_reportes/* -type d -ctime +7 -exec rm -rf {} \;
