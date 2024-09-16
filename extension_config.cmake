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
    LINKED_LIBS ../../third_party/mbedtls/libduckdb_mbedtls.a ../../vcpkg_installed/wasm32-emscripten/lib/libcrypto.a 
)

#   duckdb_extension_load(azure
#		DONT_LINK
#           GIT_URL https://github.com/carlopi/duckdb_azure
#           GIT_TAG main
#    LINKED_LIBS "../../third_party/mbedtls/libduckdb_mbedtls.a;../../vcpkg_installed/wasm32-emscripten/lib/libcrypto.a;../../vcpkg_installed/wasm32-emscripten/lib/libssl.a;../../vcpkg_installed/wasm32-emscripten/lib/libazure-identity.a"
#            )

#	
#duckdb_extension_load(spatial
#    DONT_LINK LOAD_TESTS
#    GIT_URL https://github.com/carlopi/duckdb_spatial.git
#    GIT_TAG 5720575fafe6b10748a8d2172a72eb93182f59f6
#    INCLUDE_DIR spatial/include
#    TEST_DIR test/sql
#	LINKED_LIBS '../../deps/local/lib/*.a'
#    )

duckdb_extension_load(json DONT_LINK)
duckdb_extension_load(parquet DONT_LINK)
duckdb_extension_load(autocomplete DONT_LINK)

duckdb_extension_load(fts DONT_LINK)
duckdb_extension_load(icu DONT_LINK)
duckdb_extension_load(tpcds DONT_LINK)
duckdb_extension_load(tpch DONT_LINK)



#duckdb_extension_load(httpfs DONT_LINK)
