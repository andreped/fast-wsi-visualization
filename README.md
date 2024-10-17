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

## Why?

This repository was developed to demonstrate how to do the following:
* Creating a simple web application for rendering a whole slide image in real time.
* Containerizing and deploying a web app for deployment on Hugging Face Spaces.

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

## License

This project has MIT License.
