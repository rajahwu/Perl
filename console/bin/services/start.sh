#!/bin/bash

# Get the directory where the script is located
script_dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# Source color definitions
source "$script_dir/../../colors.sh"

# Source check functions
source "$script_dir/../../functions/check_apache2.sh"
source "$script_dir/../../functions/check_hostname.sh"
source "$script_dir/../../functions/check_node_version.sh"
source "$script_dir/../../functions/check_php_fpm.sh"
source "$script_dir/../../functions/check_postgresql.sh"

# Source start functions
source "$script_dir/../../functions/start_apache2.sh"
source "$script_dir/../../functions/start_node_version.sh"
source "$script_dir/../../functions/start_php_fpm.sh"
source "$script_dir/../../functions/start_postgresql.sh"

# Function to check and start services if needed
check_and_start_service() {
  local check_function=$1
  local start_function=$2
  if ! $check_function; then
    if [[ -n $start_function ]]; then
      $start_function
    fi
  fi
}

# Check and start each service
check_and_start_service check_apache2 start_apache2
check_and_start_service check_hostname ""  # No start function needed for hostname
check_and_start_service check_node_version start_node_version
check_and_start_service check_php_fpm start_php_fpm
check_and_start_service check_postgresql start_postgresql

echo "All services checked and started as necessary."
