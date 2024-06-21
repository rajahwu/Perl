# #!/bin/bash
source ./console/colors.sh

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
  current_version=$(echo "${node_version_output}" | grep -o '[0-9]*' | head -1)
  
  if [[ -z "${current_version}" ]] || [[ "${current_version}" -lt "${required_version}" ]]; then
    echo -e "${YELLOW}Node version is less than 18 or not installed. Using nvm to switch to node 18...${NC}"
    nvm use 18
    local nvm_use_status=$?
    if [[ ${nvm_use_status} -ne 0 ]]; then
      echo -e "${RED}Failed to switch to Node 18. Please install Node 18 or higher using nvm.${NC}"
      exit 1
    fi
    node_version_output=$(node -v)
    current_version=$(echo "${node_version_output}" | grep -o '[0-9]*' | head -1)
    if [[ "${current_version}" -lt "${required_version}" ]]; then
      echo -e "${RED}Failed to switch to Node 18. Please install Node 18 or higher using nvm.${NC}"
      exit 1
    fi
  fi
  
  echo -e "${GREEN}Node version is ${current_version}, which is 18 or higher.${NC}"
}