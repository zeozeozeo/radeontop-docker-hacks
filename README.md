# radeontop-docker-hacks

Edge the Linux AMDGPU driver into not offloading VRAM contents into the GTT by running `radeontop` in the background.

```bash
git clone https://github.com/zeozeozeo/radeontop-docker-hacks.git && cd radeontop-docker-hacks
docker build -t radeontop-alpine .
docker run -d --name radeontop-container --device=/dev/dri --device=/dev/kfd -e RADEONTOP_TICKS=10 radeontop-alpine
# or add to your docker-compose before starting the llama server
```

Set `RADEONTOP_TICKS` to control the number of updates per second. Default is `1`.

### What?

See https://github.com/ggml-org/llama.cpp/discussions/12800.

### Why does this work?

I don't know. It might not.
