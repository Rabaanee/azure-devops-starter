# Azure DevOps Starter

A simple starter project to practice DevOps fundamentals using GitHub Actions and Docker.

## What this project demonstrates

- Version control with Git and GitHub
- Continuous Integration (CI) using GitHub Actions
- Automated testing with pytest
- Containerization using Docker
- Building and publishing Docker images to GitHub Container Registry (GHCR)

## What it does

- Runs a small Python script
- Executes a basic test suite in CI
- Builds a Docker image on every push to `main`
- Pushes the image to GitHub Container Registry

This ensures the application can be packaged and run in a consistent environment.

## CI Pipeline Overview

On every push to the `main` branch or pull request:

1. GitHub Actions checks out the repository
2. Python dependencies are installed
3. Tests are run using pytest
4. A Docker image is built using the Dockerfile
5. The image is pushed to GitHub Container Registry

## Run the container locally

You can pull and run the image without cloning the repository:

```bash
docker pull ghcr.io/rabaanee/my-python-app:latest
docker run ghcr.io/rabaanee/my-python-app:latest

Technologies Used

Python 3.11

Pytest

Docker

GitHub Actions

GitHub Container Registry

Next steps (roadmap)

Add linting (ruff / flake8)

Introduce versioned Docker tags

Deploy the container to Azure

Convert the pipeline to Azure DevOps