#!/usr/bin/env bash

echo "We do not commit or push"

echo "you have to adapt the version in setup.py AND _black_version.py"

#git commit -am 'pre pip push'
# git push

clean () {
    rm -rf ./dist
    rm -rf ./axblack.egg-info
    rm -rf ./build
}
clean
python setup.py clean sdist bdist_wheel
twine upload ./dist/*
clean







