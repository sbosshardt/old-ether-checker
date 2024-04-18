# Old Ether Checker

### About

This repository hosts a Docker setup to run an old version of the ethereum.org website, specifically for using the presale balance checker tool.

You can follow either of these methods to get the container running:
- [**Method 1**](#method-1-build-and-run-using-a-command-line-interface) is intended for tech-savvy users who want to use a command line interface to quickly start the container.
- [**Method 2**](#method-2-build-and-run-using-docker-desktop-gui) is intended for less-technical users who want to use a graphical user interface to start the container.

### Table of Contents
- [Old Ether Checker](#old-ether-checker)
    - [About](#about)
    - [Table of Contents](#table-of-contents)
  - [Method 1: Build and run using a command line interface.](#method-1-build-and-run-using-a-command-line-interface)
    - [How to Use](#how-to-use)
      - [1. Download the repository](#1-download-the-repository)
      - [2. Change directory to the local repository](#2-change-directory-to-the-local-repository)
      - [3. Build the Docker image:](#3-build-the-docker-image)
      - [4. Run the Docker container:](#4-run-the-docker-container)
      - [5. Access the old website in your web browser.](#5-access-the-old-website-in-your-web-browser)
  - [Method 2: Run using Docker Desktop GUI](#method-2-run-using-docker-desktop-gui)
    - [Prerequisites](#prerequisites)
    - [Steps to Host the Tool](#steps-to-host-the-tool)
      - [Step 1: Install Docker Desktop](#step-1-install-docker-desktop)
      - [Step 2: Pull the Docker Image](#step-2-pull-the-docker-image)
      - [Step 3: Run the Docker Container](#step-3-run-the-docker-container)
      - [Step 4: Access the Tool](#step-4-access-the-tool)


## Method 1: Build and run using a command line interface.

### How to Use

Docker is a prerequisite. If you have not done so already, [install Docker](https://docs.docker.com/get-docker/) first.

To build and run the Docker container:

#### 1. Download the repository
Using a command prompt and Git, you can clone this repository.
```
git clone https://github.com/sbosshardt/old-ether-checker.git
```

If you don't have Git installed on your computer (and prefer to not to install it), you can alternatively [download a zip file](https://github.com/sbosshardt/old-ether-checker/archive/refs/heads/master.zip) of this repository, extract it to its own directory.

####  2. Change directory to the local repository

After a copy of the repository exists in a local directory, use the command prompt to change to the directory, e.g.
```
cd old-ether-checker
```

#### 3. Build the Docker image:
Execute the following command to build the container:
```
docker build -t sbosshardt/old-ether-checker .
```

#### 4. Run the Docker container:
```
docker run -p 3000:3000 sbosshardt/old-ether-checker
```

#### 5. Access the old website in your web browser.
Go to: http://localhost:3000/ether and scroll down to the "Did you buy ether during the presale?" section.


## Method 2: Run using Docker Desktop GUI

Users who prefer to not use a command-line terminal can use the Docker Desktop graphical user interface (GUI) to locally host an old version of the ethereum.org website.

Instead of building the container from scratch, your computer will download the [sbosshardt/old-ether-checker](https://hub.docker.com/r/sbosshardt/old-ether-checker) container from Docker Hub.

### Prerequisites

1. **Download and Install Docker Desktop:**
   - For Windows and Mac users, download Docker Desktop from the [Docker website](https://www.docker.com/products/docker-desktop).
   - Follow the installation instructions on the Docker website for your operating system.

### Steps to Host the Tool

#### Step 1: Install Docker Desktop

- Install Docker Desktop by following the on-screen instructions after downloading the installer for your operating system.
- Once installed, open Docker Desktop to ensure it's running. You may need to sign in or create a Docker account.

#### Step 2: Pull the Docker Image

- Open Docker Desktop.
- Go to the "Images" section on the left-hand menu.
- In the search bar at the top of the "Images" page, type `sbosshardt/old-ether-checker` and press enter.
- Click on the "Pull" button next to the image name that appears. Docker Desktop will download the image from Docker Hub to your machine.

#### Step 3: Run the Docker Container

- After the image has been pulled, go to the "Containers/Apps" tab on the left-hand menu.
- Click "Run" next to the `old-ether-checker` image.
- A settings window might appear. Set the following options:
  - **LOCALHOST**: Set the local port to `3000`.
  - **CONTAINER PORT**: Ensure the container port is set to `3000` (this should automatically fill when you set the local port).
- Confirm by clicking the "Run" button at the bottom of the settings window.

#### Step 4: Access the Tool

- Open any web browser (such as Chrome, Firefox, or Edge).
- Enter the following URL in the address bar:
  ```
  http://localhost:3000/ether
  ```

You should now see the old version of the ethereum.org website. You can find the presale balance checker tool if you scroll down to the "Did you buy ether during the presale?" section.
