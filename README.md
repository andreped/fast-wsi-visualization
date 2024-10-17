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

[![license](https://img.shields.io/github/license/DAVFoundation/captain-n3m0.svg?style=flat-square)](https://github.com/andreped/wsi-visualization-demo/blob/main/LICENSE.md)
<a target="_blank" href="https://huggingface.co/spaces/andreped/wsi-visualization-demo"><img src="https://img.shields.io/badge/🤗%20Hugging%20Face-Spaces-yellow.svg"></a>

## Why?

This repository was developed to demonstrate how to do the following:
* Creating a simple web application for rendering a whole slide image in real time.
* Containerizing and deploying a web app for deployment on Hugging Face Spaces.

To access the live demo, click on the `Hugging Face` badge above. Below is a snapshot of the current state of the demo app.

<img width="1400" alt="Screenshot" src="assets/demo-hf-spaces.png">

## Continuous integration

For this project, we continuously update the Hugging Face deployment for each commit to the main branch.

| Build Type | Status |
| - | - |
| **HF Space Deploy** | [![CI](https://github.com/andreped/wsi-visualization-demo/workflows/Deploy/badge.svg)](https://github.com/andreped/wsi-visualization-demo/actions) |

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
