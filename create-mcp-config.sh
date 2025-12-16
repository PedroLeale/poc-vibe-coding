#!/bin/bash

# Create .vscode directory if it doesn't exist
mkdir -p .vscode

# Create mcp.json with current configuration
cat > .vscode/mcp.json << 'EOF'
{
 "servers": {
  "awslabs.aws-diagram-mcp-server": {
   "type": "stdio",
   "command": "/home/missio/.local/bin/uvx",
   "args": [
    "awslabs.aws-diagram-mcp-server==1.0.13"
   ],
   "env": {
    "FASTMCP_LOG_LEVEL": "${input:log_level}",
    "AWS_PROFILE": "${input:aws_profile}",
    "AWS_REGION": "${input:aws_region}"
   }
  },
  "awslabs.cdk-mcp-server": {
   "command": "/home/missio/.local/bin/uvx",
   "args": [
    "awslabs.cdk-mcp-server==1.0.10"
   ],
   "env": {
    "FASTMCP_LOG_LEVEL": "${input:log_level}",
    "AWS_REGION": "${input:aws_region}"
   },
   "type": "stdio"
  },
  "awslabs-aws-pricing-mcp-server": {
   "command": "/home/missio/.local/bin/uvx",
   "args": [
    "awslabs.aws-pricing-mcp-server==1.0.20"
   ],
   "env": {
    "FASTMCP_LOG_LEVEL": "${input:log_level}",
    "AWS_PROFILE": "${input:aws_profile}",
    "AWS_REGION": "${input:aws_region}"
   },
   "type": "stdio"
  },
  "aws-knowledge-mcp-server": {
   "url": "https://knowledge-mcp.global.api.aws",
   "type": "http"
  }
 },
 "inputs": [
  {
   "id": "log_level",
   "type": "promptString",
   "description": "FASTMCP_LOG_LEVEL (ERROR/INFO/DEBUG) (leave empty for ERROR)"
  },
  {
   "id": "aws_profile",
   "type": "promptString",
   "description": "AWS profile name (leave empty if not using AWS_PROFILE)"
  },
  {
   "id": "aws_region",
   "type": "promptString",
   "description": "AWS region (e.g., us-east-1) (leave empty to skip)"
  }
 ]
}
EOF

echo "MCP configuration file created at .vscode/mcp.json"
