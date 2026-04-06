#!/bin/bash

# Colores
RED="\033[1;31m"
GREEN="\033[1;32m"
YELLOW="\033[1;33m"
BLUE="\033[1;36m"
NC="\033[0m"

# Logging
log_info() {
  echo -e "${BLUE}[INFO]${NC} $1"
}

log_ok() {
  echo -e "${GREEN}[OK]${NC} $1"
}

log_warn() {
  echo -e "${YELLOW}[WARN]${NC} $1"
}

log_error() {
  echo -e "${RED}[ERROR]${NC} $1"
}

# Check comando
require_cmd() {
  command -v "$1" >/dev/null 2>&1 || {
    log_error "Comando requerido no encontrado: $1"
    return 1
  }
}
