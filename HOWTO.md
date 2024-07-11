```
git clone https://github.com/duckdb/duckdb.git duckdb_httpfs
cd duckdb_httpfs
pip3 install git-filter-repo
git filter-repo --path extension/httpfs
git submodule add https://github.com/duckdb/duckdb.git
git submodule add https://github.com/duckdb/extension-ci-tools.git
```
