PROJ_DIR := $(dir $(abspath $(lastword $(MAKEFILE_LIST))))

# Configuration of extension
EXT_NAME=httpfs
EXT_CONFIG=${PROJ_DIR}extension_config.cmake

# Set test paths
test_release: export DELTA_KERNEL_TESTS_PATH=./build/release/rust/src/delta_kernel/kernel/tests/data
test_release: export DAT_PATH=./build/release/rust/src/delta_kernel/acceptance/tests/dat

test_debug: export DELTA_KERNEL_TESTS_PATH=./build/debug/rust/src/delta_kernel/kernel/tests/data
test_debug: export DAT_PATH=./build/debug/rust/src/delta_kernel/acceptance/tests/dat

# Include the Makefile from extension-ci-tools
include extension-ci-tools/makefiles/duckdb_extension.Makefile
