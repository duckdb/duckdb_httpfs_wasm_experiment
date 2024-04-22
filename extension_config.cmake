# This file is included by DuckDB's build system. It specifies which extension to load

# Extension from this repo
duckdb_extension_load(httpfs
    SOURCE_DIR extension/httpfs
    INCLUDE_DIR extension/httpfs
    LOAD_TESTS
    DONT_LINK
    LINKED_LIBS "../../third_party/mbedtls/libduckdb_mbedtls.a ../../vcpkg_installed/wasm32-emscripten/lib/libcrypto.a ../../vcpkg_installed/wasm32-emscripten/lib/libssl.a"
)

    duckdb_extension_load(azure
		DONT_LINK
            LOAD_TESTS
            GIT_URL https://github.com/carlopi/duckdb_azure
            GIT_TAG 9f91862a4792efe486151729539c6f44cc2baa1b
            )
	
