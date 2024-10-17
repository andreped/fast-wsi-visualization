---
title: wsi-visualization-demo
emoji: 🔬
colorFrom: blue
colorTo: red
sdk: docker
sdk_version: "24.0.6"
app_file: Dockerfile
pinned: false
---

# wsi-visualization-demo

## Docker

1. Build image:
```
docker build -t wsi-visualization .
```

2. Run image:
```
docker run -p 7860:7860 wsi-visualization
```

3. Open in browser:
```
open http://localhost:7860
```
