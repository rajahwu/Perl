#!/bin/bash

# Color codes
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[0;33m'
CYAN='\033[0;36m'
NC='\033[0m' # No Color

# Function to check and ensure node version 18 or higher is used
check_node_version() {
  local required_version=18
  local node_version_output
  node_version_output=$(node -v)
  local node_version_status=$?
  if [[ ${node_version_status} -ne 0 ]]; then
    echo -e "${RED}Node is not installed.${NC}"
    exit 1
  fi
  local current_version
  current_version=$(echo "${node_version_output}" | grep -o '[0-9]*' | head -1) || true
  
  if [[ -z "${current_version}" ]] || [[ "${current_version}" -lt "${required_version}" ]]; then
    echo -e "${YELLOW}Node version is less than 18 or not installed. Using nvm to switch to node 18...${NC}"
    nvm use 18
    local nvm_use_status=$?
    if [[ ${nvm_use_status} -ne 0 ]]; then
      echo -e "${RED}Failed to switch to Node 18. Please install Node 18 or higher using nvm.${NC}"
      exit 1
    fi
    node_version_output=$(node -v)
    current_version=$(echo "${node_version_output}" | grep -o '[0-9]*' | head -1) || true
    if [[ "${current_version}" -lt "${required_version}" ]]; then
      echo -e "${RED}Failed to switch to Node 18. Please install Node 18 or higher using nvm.${NC}"
      exit 1
    fi
  fi
  
  echo -e "${GREEN}Node version is ${current_version}, which is 18 or higher.${NC}"
}

# Function to check and ensure apache2 is running
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

# Function to check and ensure php8.2-fpm is running
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

# Function to check and ensure postgresql is running
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

# Function to check and return the hostname -I
check_hostname() {
  local hostname_ip
  hostname_ip=$(hostname -I | xargs) || true
  local hostname_ip_status=$?
  if [[ ${hostname_ip_status} -ne 0 ]] || [[ -z "${hostname_ip}" ]]; then
    echo -e "${RED}Failed to retrieve hostname IP.${NC}"
    exit 1
  fi
  
  echo -e "${CYAN}Hostname IP: ${hostname_ip}${NC}"
  local url="http://${hostname_ip}"
  echo -e -n "${CYAN}Curling URL: ${url} - Status Code: ${NC}"
  curl -o /dev/null -s -w "%{http_code}\n" "${url}"

  local url_public="http://${hostname_ip}/public"
  echo -e -n "${CYAN}Curling URL: ${url_public} - Status Code: ${NC}"
  curl -o /dev/null -s -w "%{http_code}\n" "${url_public}"
}

# Execute the functions
check_node_version
check_apache2
check_php_fpm
check_postgresql
check_hostname

echo -e "${GREEN}Development environment setup complete.${NC}"
exit 0