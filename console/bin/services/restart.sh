#!/bin/bash

# Color codes
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[0;33m'
NC='\033[0m' # No Color

# Function to restart apache2
restart_apache2() {
  echo -e "${YELLOW}Restarting Apache2...${NC}"
  sudo service apache2 restart
  if ! sudo service apache2 status > /dev/null; then
    echo -e "${RED}Failed to restart Apache2.${NC}"
    exit 1
  fi
  echo -e "${GREEN}Apache2 restarted.${NC}"
}

# Function to restart php8.2-fpm
restart_php_fpm() {
  echo -e "${YELLOW}Restarting PHP 8.2-FPM...${NC}"
  sudo service php8.2-fpm restart
  if ! sudo service php8.2-fpm status > /dev/null; then
    echo -e "${RED}Failed to restart PHP 8.2-FPM.${NC}"
    exit 1
  fi
  echo -e "${GREEN}PHP 8.2-FPM restarted.${NC}"
}

# Function to restart postgresql
restart_postgresql() {
  echo -e "${YELLOW}Restarting PostgreSQL...${NC}"
  sudo service postgresql restart
  if ! sudo service postgresql status > /dev/null; then
    echo -e "${RED}Failed to restart PostgreSQL.${NC}"
    exit 1
  fi
  echo -e "${GREEN}PostgreSQL restarted.${NC}"
}

# Execute the functions
restart_apache2
restart_php_fpm
restart_postgresql

echo -e "${GREEN}Services restarted successfully.${NC}"
