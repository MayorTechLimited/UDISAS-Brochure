#!/bin/bash
set -eu

. venv/bin/activate

staticjinja watch --srcpath ./src/templates --outpath dist
