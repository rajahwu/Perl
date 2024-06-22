#!/bin/bash
script_dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
source "$script_dir/../../colors.sh"
source "$script_dir/../../functions/restart_apache2.sh"
source "$script_dir/../../functions/restart_php_fpm.sh"
source "$script_dir/../../functions/restart_postgresql.sh"


# Execute the functions
restart_apache2
restart_php_fpm
restart_postgresql

echo -e "${GREEN}Services restarted successfully.${NC}"
