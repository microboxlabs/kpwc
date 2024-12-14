#!/bin/bash

# Script to display Kubernetes pods grouped and color-coded by node
kubectl get pods -o wide | sort -k7 | awk '
BEGIN {
    # Define ANSI color codes for groups
    colors[1] = "\033[1;31m"; # Red
    colors[2] = "\033[1;32m"; # Green
    colors[3] = "\033[1;33m"; # Yellow
    colors[4] = "\033[1;34m"; # Blue
    colors[5] = "\033[1;35m"; # Magenta
    colors[6] = "\033[1;36m"; # Cyan
    reset = "\033[0m";        # Reset color
}
NR == 1 { print; next }      # Print the header
{
    # Group by Node (column 7)
    node = $7;
    if (!(node in seen)) {
        seen[node] = ++count; # Assign a unique group ID for each node
    }
    color = colors[seen[node] % 6 + 1]; # Cycle through colors
    printf "%s%s%s\n", color, $0, reset;
}'
