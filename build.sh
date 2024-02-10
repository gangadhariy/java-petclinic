#!/bin/bash

buildah images 
buildah ps 
buildah build -t pet .
buildah tag pet gangadhariy/tekton:v2 &&
buildah login docker.io -u gangadhariy -p gang@1112 &&
buildah push gangadhariy/tekton:v2
