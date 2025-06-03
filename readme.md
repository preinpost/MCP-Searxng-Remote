# MCP Searxng Remote

This repository was created by forking [ihor-sokoliuk/mcp-searxng](https://github.com/ihor-sokoliuk/mcp-searxng).

## Getting Started

1. Install dependencies

```bash
npm install
```

2. Start the development server

```bash
npm run dev
```

## VSCode Copilot Integration

Example `.vscode/mcp.json` file:

```json
{
  "servers": {
    "my-mcp-server-fb58be9c": {
      "url": "http://localhost:3000/mcp"
    }
  }
}
```

## Configuration

### Setting SEARXNG_URL

- Choose a SearxNG instance from the [public instance list](https://searx.space/) or use your local environment.
- Set the `SEARXNG_URL` environment variable to the instance URL.
- Default: `http://localhost:8080`

### Using Authentication

If you are using a password-protected SearxNG instance, set the following environment variables for HTTP Basic Auth:

- `AUTH_USERNAME`: your username
- `AUTH_PASSWORD`: your password
