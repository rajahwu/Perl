# #!/bin/bash
source ./console/colors.sh

check_postgresql() {
  if ! sudo service postgresql status > /dev/null; then
    echo -e "${YELLOW}PostgreSQL is not running. Starting PostgreSQL...${NC}"
    sudo service postgresql start
    if ! sudo service postgresql status > /dev/null; then
      echo -e "${RED}Failed to start PostgreSQL.${NC}"
      exit 1
    fi
  fi
  
  echo -e "${GREEN}PostgreSQL is running.${NC}"
}