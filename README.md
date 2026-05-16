# Splunking

A Dockerized Splunk environment designed for practice, testing, and data analysis. This setup
provides a pre-configured Splunk instance with a custom user and sample data for indexing.

## Features

- **Custom User:** Pre-configured with a user `hector` who has sudo privileges.
- **Persistent Storage:** Docker volumes ensure that your Splunk data and configurations persist
  across container restarts.

## Prerequisites

- [Docker](https://docs.docker.com/get-docker/)
- [Docker Compose](https://docs.docker.com/compose/install/)

## Getting Started

### 1. Build and Start the Environment

Run the following command in the root of the repository:

```bash
docker-compose up -d --build
```

### 2. Access Splunk Web UI

Once the container is healthy (check with `docker ps`), open your web browser and navigate to:

[http://localhost:8000](http://localhost:8000)

### 3. Login Credentials

- **Username:** `hector`
- **Password:** `letmein123`

### How to Index Data

1. Log in to Splunk.
2. Go to **Settings** > **Add Data**.
3. Choose **Upload** and select the files from the corresponding directory on your host machine.
4. Follow the prompts to define source types and index the data.

## Configuration Details

- **Hostname:** `troya`
- **Ports:**
  - `8000`: Splunk Web UI
  - `8089`: Splunk Management API
  - `9997`: Splunk Indexing (Splunk-to-Splunk)

## License

This project is for educational purposes. Please refer to the [Splunk General
Terms](https://www.splunk.com/en_us/legal/splunk-general-terms.html) accepted during the Docker
build process.
