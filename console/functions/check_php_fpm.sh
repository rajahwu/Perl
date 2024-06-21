# #!/bin/bash
source ./console/colors.sh

check_php_fpm() {
  if ! sudo service php8.2-fpm status > /dev/null; then
    echo -e "${YELLOW}PHP 8.2-FPM is not running. Starting PHP 8.2-FPM...${NC}"
    sudo service php8.2-fpm start
    if ! sudo service php8.2-fpm status > /dev/null; then
      echo -e "${RED}Failed to start PHP 8.2-FPM.${NC}"
      exit 1
    fi
  fi
  
  echo -e "${GREEN}PHP 8.2-FPM is running.${NC}"
}