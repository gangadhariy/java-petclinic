#!/bin/bash

buildah images &&
buildah ps &&
buildah pull nginx &&
buildah tag nginx gangadhariy/tekton:v2 &&
buildah login docker.io -u gangadhariy -p gang@1112 &&
buildah push nginx docker://docker.io/gangadhariy/nginx:latest &&
buildah push gangadhariy/tekton:v2
