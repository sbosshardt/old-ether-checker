# Old Ether Checker

This repository hosts a Docker setup to run an old version
of the ethereum.org website, specifically for using the
presale balance checker tool.

## How to Use

To build and run the Docker container:

### 1. Build the Docker image:
```
docker build -t sbosshardt/old-ether-checker .
```
### 2. Run the Docker container:
```
docker run -p 3000:3000 sbosshardt/old-ether-checker
```
### 3. Access the old website in your web browser.
Go to: http://localhost:3000/ether and scroll down to the
"Did you buy ether during the presale?" form.
