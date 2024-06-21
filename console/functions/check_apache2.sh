# #!/bin/bash
source ./console/colors.sh

check_apache2() {
  if ! sudo service apache2 status > /dev/null; then
    echo -e "${YELLOW}Apache2 is not running. Starting apache2...${NC}"
    sudo service apache2 start
    if ! sudo service apache2 status > /dev/null; then
      echo -e "${RED}Failed to start apache2.${NC}"
      exit 1
    fi
  fi
  
  echo -e "${GREEN}Apache2 is running.${NC}"
}