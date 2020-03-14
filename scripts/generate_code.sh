#!/bin/bash

CDIR="$(cd "$(dirname "$0")" ; pwd -P)"
XDIR="$CDIR/.."
PTDIR="/usr/local/lib/python3.6/dist-packages/torch/include"
PT_INC_DIR="/usr/local/lib/python3.6/dist-packages/torch/include/ATen"

python "$CDIR/gen.py" \
  --gen_class_mode \
  --output_folder="$XDIR/torch_xla/csrc" \
  "$XDIR/torch_xla/csrc/aten_xla_type.h" \
  "$PTDIR/torch/csrc/autograd/generated/RegistrationDeclarations.h" \
  "$PT_INC_DIR/Functions.h" \
