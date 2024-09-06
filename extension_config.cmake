# This file is included by DuckDB's build system. It specifies which extension to load

# Extension from this repo
duckdb_extension_load(autocomplete
	DONT_LINK
)
#
duckdb_extension_load(httpfs
    SOURCE_DIR extension/httpfs
    INCLUDE_DIR extension/httpfs
    DONT_LINK
    LINKED_LIBS ../../third_party/mbedtls/libduckdb_mbedtls.a ../../vcpkg_installed/wasm32-emscripten/lib/libcrypto.a ../../vcpkg_installed/wasm32-emscripten/lib/libssl.a
)

   duckdb_extension_load(azure
		DONT_LINK
           GIT_URL https://github.com/carlopi/duckdb_azure
           GIT_TAG main
    LINKED_LIBS "../../third_party/mbedtls/libduckdb_mbedtls.a;../../vcpkg_installed/wasm32-emscripten/lib/libcrypto.a;../../vcpkg_installed/wasm32-emscripten/lib/libssl.a;../../vcpkg_installed/wasm32-emscripten/lib/libazure-identity.a"
            )

	
duckdb_extension_load(spatial
    DONT_LINK LOAD_TESTS
    GIT_URL https://github.com/duckdb/duckdb_spatial.git
    GIT_TAG 88d490a8d2782ccfea2a90895ba2e3ff166fa274
    INCLUDE_DIR spatial/include
    TEST_DIR test/sql
	LINKED_LIBS '../../deps/local/lib/*.a'
    )

duckdb_extension_load(json DONT_LINK)
duckdb_extension_load(parquet DONT_LINK)
duckdb_extension_load(autocomplete DONT_LINK)

duckdb_extension_load(fts DONT_LINK)
duckdb_extension_load(icu DONT_LINK)
duckdb_extension_load(tpcds DONT_LINK)
duckdb_extension_load(tpch DONT_LINK)

#duckdb_extension_load(httpfs DONT_LINK)
