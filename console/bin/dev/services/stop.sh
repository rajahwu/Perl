#!/bin/bash

# Color codes
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[0;33m'
NC='\033[0m' # No Color

# Function to stop apache2
stop_apache2() {
  if sudo service apache2 status > /dev/null; then
    echo -e "${YELLOW}Stopping Apache2...${NC}"
    sudo service apache2 stop
    if sudo service apache2 status > /dev/null; then
      echo -e "${RED}Failed to stop Apache2.${NC}"
      exit 1
    fi
  fi
  echo -e "${GREEN}Apache2 stopped.${NC}"
}

# Function to stop php8.2-fpm
stop_php_fpm() {
  if sudo service php8.2-fpm status > /dev/null; then
    echo -e "${YELLOW}Stopping PHP 8.2-FPM...${NC}"
    sudo service php8.2-fpm stop
    if sudo service php8.2-fpm status > /dev/null; then
      echo -e "${RED}Failed to stop PHP 8.2-FPM.${NC}"
      exit 1
    fi
  fi
  echo -e "${GREEN}PHP 8.2-FPM stopped.${NC}"
}

# Function to stop postgresql
stop_postgresql() {
  if sudo service postgresql status > /dev/null; then
    echo -e "${YELLOW}Stopping PostgreSQL...${NC}"
    sudo service postgresql stop
    if sudo service postgresql status > /dev/null; then
      echo -e "${RED}Failed to stop PostgreSQL.${NC}"
      exit 1
    fi
  fi
  echo -e "${GREEN}PostgreSQL stopped.${NC}"
}

# Execute the functions
stop_apache2
stop_php_fpm
stop_postgresql

echo -e "${GREEN}Services stopped successfully.${NC}"
