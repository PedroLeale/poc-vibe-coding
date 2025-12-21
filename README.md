# Vibe Coding with MCP

## Prerequisites

1. Install [uv](https://docs.astral.sh/uv/getting-started/installation/)
2. Configure `mcp.json` in VS Code or your preferred IDE.
   * For VS Code, place the JSON file in the `.vscode/` directory.

## uvx Quick Start

- Install uv (adds `uvx`):

```bash
curl -LsSf https://astral.sh/uv/install.sh | sh
```

- Verify `uvx` is in PATH:

```bash
command -v uvx || echo "uvx not found"
```

- Quick checks for AWS MCP servers:

```bash
uvx awslabs.aws-diagram-mcp-server==1.0.13 --help
uvx awslabs.cdk-mcp-server==1.0.10 --help
uvx awslabs.aws-pricing-mcp-server==1.0.20 --help
```

- Diagram server requires Graphviz:

```bash
sudo apt-get update && sudo apt-get install -y graphviz
```

## VS Code MCP Configuration

- `.vscode/mcp.json` is configured to use `uvx` from PATH to start servers. If `uvx` is missing, install uv as shown above.

## Adding an MCP Server

2. Inside the `mcp.json` file, locate and click the **"Add server"** button. Then, search for your desired MCP server package.

## Example: AWS Diagrams Server

3. For this example, we will use the pip package **`awslabs.aws-diagram-mcp-server`**.
   1. This diagram package also needs [Graphviz](https://www.graphviz.org/)

4. Follow the setup instructions to configure your AWS credentials (profile, region, etc.).

## Starting the Server

5. Once the server is installed and configured, click **"Start"** on the server entry.

## Using the Server with Your AI Assistant

6. With the server running, open your AI coding assistant (such as GitHub Copilot) and ask:

   * "Can you use **`awslabs.aws-diagram-mcp-server`**?"

7. If the assistant confirms it can, simply prompt it to use the server's tools to complete your desired task.

## Makefile Shortcuts

- Common tasks are available via the Makefile:

```bash
make uv-check            # Verify uvx availability
make mcp-diagram-help    # Show diagram server help
make mcp-diagram         # Run AWS Diagram MCP server
make mcp-cdk             # Run AWS CDK MCP server
make mcp-pricing         # Run AWS Pricing MCP server
```