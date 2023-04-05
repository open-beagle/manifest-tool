# version

https://github.com/estesp/manifest-tool

```bash
git remote add upstream git@github.com:estesp/manifest-tool.git

git fetch upstream

git merge v2.0.3
```

## debug

```bash
# build
docker run -it \
--rm \
-v $PWD/:/go/src/github.com/estesp/manifest-tool \
-w /go/src/github.com/estesp/manifest-tool \
registry.cn-qingdao.aliyuncs.com/wod/golang:1.17.8-alpine \
bash .beagle/build.sh

# check
ldd manifest-tool-linux-arm64
file manifest-tool-linux-arm64
```