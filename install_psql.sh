#!/bin/bash
# One of the dependencies for Chainlink
# Based on Ubuntu 22.04
sudo apt install postgresql postgresql-contrib
sudo systemctl status postgresql.service

echo "Setup role-based management. Press enter to continue."
read line

sudo -u postgres psql -c "ALTER USER postgres PASSWORD '<new-password>';"