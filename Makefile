.PHONY: help setup-mcp clean

help:
	@echo "Available targets:"
	@echo "  setup-mcp    - Create .vscode/mcp.json with current MCP server configuration"
	@echo "  clean        - Remove .vscode/mcp.json"
	@echo "  help         - Show this help message"

setup-mcp:
	@echo "Creating .vscode/mcp.json..."
	@./create-mcp-config.sh
	@echo "MCP configuration created successfully!"

clean:
	@echo "Removing .vscode/mcp.json..."
	@rm -f .vscode/mcp.json
	@echo "Cleaned up!"
