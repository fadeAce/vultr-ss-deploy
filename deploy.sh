#!/bin/bash

export LC_ALL=C
apt update
apt install python-pip
pip install --upgrade pip
echo '#!/usr/bin/python' > /usr/bin/pip
echo '# GENERATED BY DEBIAN' >> /usr/bin/pip
echo 'import sys' >> /usr/bin/pip
echo '# Run the main entry point, similarly to how setuptools does it, but because' >> /usr/bin/pip
echo '# we didn't install the actual entry point from setup.py, don't use the' >> /usr/bin/pip
echo '# pkg_resources API.' >> /usr/bin/pip
echo 'from pip._internal import main' >> /usr/bin/pip
echo 'if __name__ == '__main__':' >> /usr/bin/pip
echo '    sys.exit(main())' >> /usr/bin/pip
pip install setuptools
pip install shadowsocks
