# Vibe Coding with MCP

## Prerequisites

1. Configure `mcp.json` in VS Code or your preferred IDE.
   * For VS Code, place the JSON file in the `.vscode/` directory.

## Adding an MCP Server

2. Inside the `mcp.json` file, locate and click the **"Add server"** button. Then, search for your desired MCP server package.

## Example: AWS Diagrams Server

3. For this example, we will use the pip package **`awslabs.aws-diagram-mcp-server`**.

4. Follow the setup instructions to configure your AWS credentials (profile, region, etc.).

## Starting the Server

5. Once the server is installed and configured, click **"Start"** on the server entry.

## Using the Server with Your AI Assistant

6. With the server running, open your AI coding assistant (such as GitHub Copilot) and ask:

   * "Can you use **`awslabs.aws-diagram-mcp-server`**?"

7. If the assistant confirms it can, simply prompt it to use the server's tools to complete your desired task.