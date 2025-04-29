# radeontop-docker-hacks

Edge the Linux AMDGPU driver into not offloading VRAM contents into the GTT by running `radeontop` in the background.

```bash
docker run -d --name radeontop-container --device=/dev/dri --device=/dev/kfd ghcr.io/zeozeozeo/radeontop-docker:latest
# or add to your docker-compose before starting the llama server
```

### What?

See https://github.com/ggml-org/llama.cpp/discussions/12800.

### Why does this work?

I don't know. It might not.
