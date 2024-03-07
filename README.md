# Eidolon Agent Machine Template

This project serves as a template for individuals interested in building agents with Eidolon.

## Directory Structure

- `resources`: This directory contains additional resources for the project. An example agent is provided for reference.
- `agent_machine`: This directory is where any custom code should be placed.

## Running the Server

To run the server, use the following command:

```bash
poetry run eidolon-server resources/
```

If you wish to run the server without MongoDB, include the `-m local_dev` flag:

```bash
poetry run eidolon-server resources/ -m local_dev
```
## Docker Config and Run

.env must contain:
OPENAI_API_KEY
CRIME_SQL_CONNECTION_STRING - Change DATABASE= From {ODBC Driver 18 for SQL Server} to {SQL Server}

```bash
sudo service docker start
sudo docker build -t my-backend-server .
sudo docker run -e OPENAI_API_KEY=$OPENAI_API_KEY -p 8080:8080 my-backend-server
```

