#!/bin/bash

dest_bin="$PREFIX/bin/$PKG_NAME-$PKG_VERSION"
dest_etc="$PREFIX/etc/conda/activate.d"

mkdir -p "$dest_bin"
cp -r ./* "$dest_bin"
ln -s "$dest_bin/swamp" "$PREFIX/bin"


mkdir -p "$dest_etc"
cat > $dest_etc/zz-ld_path.sh <<EOF
#!/bin/bash

export LD_LIBRARY_PATH=\$CONDA_PREFIX/x86_64-conda_cos6-linux-gnu/sysroot/usr/lib64/:\${JAVA_LD_LIBRARY_PATH}\${LD_LIBRARY_PATH:+:\$LD_LIBRARY_PATH}
EOF
