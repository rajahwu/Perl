#!/bin/bash
source ./console/colors.sh

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
