#!/usr/bin/env bash
set -eu

# Values
VENV_DIR="build/.venv"
VERSION="${1:-v0}"


# Create Virtual Environment
if ! python3 -c "import ensurepip" >/dev/null 2>&1; then
  echo "Python virtual environment support is missing."

  echo "On Debian/Ubuntu run:"
  echo "  sudo apt install python${PY_VER}-venv"
  exit 1
fi
python3 -m venv "$VENV_DIR"
source "$VENV_DIR/bin/activate"
pip install --upgrade pip
pip install protobuf grpcio-tools


# Generate protobufs
readarray -d '' PROTO_FILES < <(find passmanager -type f -name "*.proto" -path "*/${VERSION}/*" -print0)

if [ ${#PROTO_FILES[@]} -eq 0 ]; then
    echo "No proto files found for version ${VERSION}"
    deactivate
    rm -rf "$VENV_DIR"
    exit 1
fi

python -m grpc_tools.protoc \
  -I=. \
  --python_out=. \
  --grpc_python_out=. \
  "${PROTO_FILES[@]}"
