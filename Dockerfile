FROM ubuntu:24.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y \
    python3 \
    python3-pip \
    curl \
    git \
    ca-certificates \
    && curl -fsSL https://deb.nodesource.com/setup_20.x | bash - \
    && apt-get install -y \
        jsonnet \
        nodejs \
    && rm -rf /var/lib/apt/lists/*

# Install Free Claude Code
RUN curl -fsSL "https://github.com/Alishahryar1/free-claude-code/blob/main/scripts/install.sh?raw=1" | sh

# Patch the launcher
RUN FILE=$(/root/.local/share/uv/tools/free-claude-code/bin/python -c \
'import free_claude_code.cli.launchers.claude as c; print(c.__file__)') && \
    echo "Patching $FILE" && \
    sed -i \
    's/proxy_root_url = local_proxy_root_url(settings)/proxy_root_url = os.environ.get("ANTHROPIC_BASE_URL", local_proxy_root_url(settings))/' \
    "$FILE" && \
    grep -n "proxy_root_url" "$FILE"

ENV PATH="/root/.local/bin:/root/.fcc/bin:$PATH"

WORKDIR /workspace