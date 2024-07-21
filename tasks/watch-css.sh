#!/bin/bash
set -eu

tailwindcss -i "./src/styles.css" -o "./dist/styles.css" --watch
