# This file is included by DuckDB's build system. It specifies which extension to load

# Extension from this repo
duckdb_extension_load(httpfs
    SOURCE_DIR extension/httpfs
    INCLUDE_DIR extension/httpfs
    LOAD_TESTS
    DONT_LINK
    LINKED_LIBS "../../third_party/mbedtls/libduckdb_mbedtls.a ../../vcpkg_installed/wasm32-emscripten/lib/libcrypto.a ../../vcpkg_installed/wasm32-emscripten/lib/libssl.a"
)
