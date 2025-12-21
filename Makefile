.PHONY: help setup-mcp clean uv-check mcp-diagram mcp-diagram-help mcp-cdk mcp-pricing

UVX ?= uvx

help:
	@echo "Available targets:"
	@echo "  setup-mcp    - Create .vscode/mcp.json with current MCP server configuration"
	@echo "  clean        - Remove .vscode/mcp.json"
	@echo "  help         - Show this help message"
	@echo "  uv-check     - Verify uvx is available in PATH"
	@echo "  mcp-diagram  - Run AWS Diagram MCP server via uvx"
	@echo "  mcp-cdk      - Run AWS CDK MCP server via uvx"
	@echo "  mcp-pricing  - Run AWS Pricing MCP server via uvx"
	@echo "  mcp-diagram-help - Show Diagram server help"

setup-mcp:
	@echo "Creating .vscode/mcp.json..."
	@./scripts/create-mcp-config.sh
	@echo "MCP configuration created successfully!"

clean:
	@echo "Removing .vscode/mcp.json..."
	@rm -f .vscode/mcp.json
	@echo "Cleaned up!"

uv-check:
	@command -v $(UVX) >/dev/null 2>&1 && echo "uvx found" || (echo "uvx not found. Install uv: https://docs.astral.sh/uv/getting-started/installation/" && exit 1)

mcp-diagram-help:
	@$(UVX) awslabs.aws-diagram-mcp-server==1.0.13 --help || true

mcp-diagram:
	@echo "Starting AWS Diagram MCP server..."
	@$(UVX) awslabs.aws-diagram-mcp-server==1.0.13

mcp-cdk:
	@echo "Starting AWS CDK MCP server..."
	@$(UVX) awslabs.cdk-mcp-server==1.0.10

mcp-pricing:
	@echo "Starting AWS Pricing MCP server..."
	@$(UVX) awslabs.aws-pricing-mcp-server==1.0.20
