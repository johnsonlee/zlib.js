emcc ./wasm/zip.c -I${ZLIB_DIR} -L${ZLIB_DIR} -lz -o ./wasm/zip.js -s FORCE_FILESYSTEM=1 -lworkerfs.js -s ENVIRONMENT=worker -s MODULARIZE=1 -s EXPORTED_FUNCTIONS="['_myFunction', '_def']" -s "EXTRA_EXPORTED_RUNTIME_METHODS=['FS', 'ccall']"