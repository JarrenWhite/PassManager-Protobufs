#!/usr/bin/env bash
set -eu

# Values
BUILD_DIR="build"
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

for proto_file in "${PROTO_FILES[@]}"; do
  rel_path="${proto_file#passmanager/}"
  type_dir="${rel_path%%/*}"

  out_dir="$BUILD_DIR/$type_dir"
  mkdir -p "$out_dir"

  python -m grpc_tools.protoc \
    -I=. \
    --python_out="$out_dir" \
    --grpc_python_out="$out_dir" \
    "$proto_file"

  find "$out_dir/passmanager" -type f -name "*_pb2*.py" -exec mv -t "$out_dir" {} +
  rm -rf "$out_dir/passmanager"
done

deactivate
