# This file is included by DuckDB's build system. It specifies which extension to load

# Extension from this repo
#
#duckdb_extension_load(httpfs
#    SOURCE_DIR ${CMAKE_CURRENT_LIST_DIR}/extension/httpfs
#    INCLUDE_DIR ${CMAKE_CURRENT_LIST_DIR}/extension/httpfs/include
#    DONT_LINK
#    LINKED_LIBS ../../third_party/mbedtls/libduckdb_mbedtls.a ../../vcpkg_installed/wasm32-emscripten/lib/libcrypto.a 
#)

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
duckdb_extension_load(demo_capi DONT_LINK)
duckdb_extension_load(autocomplete DONT_LINK)

duckdb_extension_load(fts DONT_LINK)
duckdb_extension_load(icu DONT_LINK)
duckdb_extension_load(tpcds DONT_LINK)
duckdb_extension_load(tpch DONT_LINK)



duckdb_extension_load(httpfs DONT_LINK
    LINKED_LIBS ../../third_party/mbedtls/libduckdb_mbedtls.a;../../vcpkg_installed/wasm32-emscripten/lib/libcrypto.a  )
#duckdb_extension_load(httpfs DONT_LINK)

duckdb_extension_load(sqlite_scanner
        DONT_LINK LOAD_TESTS
        GIT_URL https://github.com/duckdb/sqlite_scanner
        GIT_TAG 315861963c8106397af36cbda10faebc8dae485a
        )
#
duckdb_extension_load(sqlsmith
        DONT_LINK LOAD_TESTS
        GIT_URL https://github.com/duckdb/duckdb_sqlsmith
        GIT_TAG f24be8b5b0cd0eeed7541e10cff42d7050771afc
        )

################# SUBSTRAIT
    duckdb_extension_load(substrait
            LOAD_TESTS DONT_LINK
            GIT_URL https://github.com/duckdb/substrait
            GIT_TAG be71387cf0a484dc7b261a0cb21abec0d0e0ce5c
            )


################# VSS
duckdb_extension_load(vss
        LOAD_TESTS
        DONT_LINK
        GIT_URL https://github.com/duckdb/duckdb_vss
        GIT_TAG 77739ea5382cce3220af83803ac0b1e98b3ab7d8
        TEST_DIR test/sql
    )
duckdb_extension_load(inet
	DONT_LINK
    LOAD_TESTS
    GIT_URL https://github.com/duckdb/duckdb_inet
    GIT_TAG eca867b2517af06eabc89ccd6234266e9a7d6d71
    INCLUDE_DIR src/include
    TEST_DIR test/sql
    )
#
#duckdb_extension_load(excel
#	DONT_LINK
#    LOAD_TESTS
#    GIT_URL https://github.com/duckdb/duckdb_excel
#    GIT_TAG 0e99dc789038c7af658e30d579b818473a6d6ea8
#    INCLUDE_DIR extension/excel/include
##    )
