#!/usr/bin/env bash

git commit -am 'pre pip push'
git push

clean () {
    rm -rf ./dist
    rm -rf ./axblack.egg-info
    rm -rf ./build
}
clean
python setup.py clean sdist bdist_wheel
twine upload ./dist/*
clean







