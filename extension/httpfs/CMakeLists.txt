cmake_minimum_required(VERSION 2.8.12...3.29)

project(HTTPFsExtension)

add_extension_definitions()

include_directories(include ../../third_party/httplib ../parquet/include)

build_static_extension(
  httpfs
  hffs.cpp
  s3fs.cpp
  httpfs.cpp
  crypto.cpp
  create_secret_functions.cpp
  httpfs_extension.cpp)
set(PARAMETERS "-warnings")
build_loadable_extension(
  httpfs
  ${PARAMETERS}
  hffs.cpp
  s3fs.cpp
  httpfs.cpp
  crypto.cpp
  create_secret_functions.cpp
  httpfs_extension.cpp)

set(OPENSSL_USE_STATIC_LIBS TRUE)
find_package(OpenSSL REQUIRED)
include_directories(${OPENSSL_INCLUDE_DIR})
target_link_libraries(httpfs_loadable_extension duckdb_mbedtls
                       OpenSSL::SSL OpenSSL::Crypto)

target_link_libraries(httpfs_extension duckdb_mbedtls 
                       OpenSSL::SSL OpenSSL::Crypto)

  find_package(ZLIB)
  target_link_libraries(httpfs_loadable_extension ZLIB::ZLIB -lcrypt32)
  target_link_libraries(httpfs_extension ZLIB::ZLIB -lcrypt32)

install(
  TARGETS httpfs_extension
  EXPORT "${DUCKDB_EXPORT_SET}"
  LIBRARY DESTINATION "${INSTALL_LIB_DIR}"
  ARCHIVE DESTINATION "${INSTALL_LIB_DIR}")
