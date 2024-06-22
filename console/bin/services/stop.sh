#!/bin/bash
script_dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
source "$script_dir/../../colors.sh"
source "$script_dir/../../functions/stop_apache2.sh"
source "$script_dir/../../functions/stop_node_version.sh"
source "$script_dir/../../functions/stop_php_fpm.sh"
source "$script_dir/../../functions/stop_postgresql.sh"

# Execute the functions
stop_apache2
stop_php_fpm
stop_postgresql

echo -e "${GREEN}Services stopped successfully.${NC}"
