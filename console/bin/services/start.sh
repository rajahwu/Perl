#!/bin/bash

# Source all function files
for function_file in ./console/functions/*.sh; do
  if [ -f "$function_file" ]; then
    source "$function_file"
  fi
done

# Execute the functions
check_node_version
check_apache2
check_php_fpm
check_postgresql
check_hostname

echo -e "${GREEN}Development environment setup complete.${NC}"
exit 0