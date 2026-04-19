#!/bin/bash
echo "🔬 Deep Research Local – Janus Scanning StudioIA"
find ~/StudioIA -type f \( -name "*.md" -o -name "*.txt" -o -name "*.json" \) | head -50 | while read file; do
    hash=$(shasum -a 256 "$file" | awk '{print $1}')
    echo "[$(date '+%H:%M')] ANALYSE → $file | Hash: ${hash:0:16}..."
done
