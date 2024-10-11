# This file is included by DuckDB's build system. It specifies which extension to load

# Extension from this repo
#
duckdb_extension_load(httpfs
    DONT_LINK
    SOURCE_DIR ${CMAKE_CURRENT_LIST_DIR}/extension/httpfs
    INCLUDE_DIR ${CMAKE_CURRENT_LIST_DIR}/extension/httpfs/include
    LINKED_LIBS ../../third_party/mbedtls/libduckdb_mbedtls.a ../../vcpkg_installed/wasm32-emscripten/lib/libcrypto.a 
)

#   duckdb_extension_load(azure
#		DONT_LINK
#           GIT_URL https://github.com/carlopi/duckdb_azure
#           GIT_TAG main
#    LINKED_LIBS "../../third_party/mbedtls/libduckdb_mbedtls.a;../../vcpkg_installed/wasm32-emscripten/lib/libcrypto.a;../../vcpkg_installed/wasm32-emscripten/lib/libssl.a;../../vcpkg_installed/wasm32-emscripten/lib/libazure-identity.a"
#            )

