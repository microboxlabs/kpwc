# `kgpwc`

This script enhances Kubernetes `kubectl` functionality by sorting and color-coding pods based on the nodes they are running on. It provides an easy-to-read visualization for Kubernetes administrators managing multiple nodes in a cluster.

## Features
- **Node-based Sorting**: The script uses `kubectl get pods -o wide` and sorts the pods by the node column to group them.
- **Color-coded Output**: Assigns a unique color to each node, making it easier to visually differentiate between pods running on different nodes.
- **Customizable**: You can easily modify the script to adjust the colors or adapt it to other Kubernetes objects.

## Installation

1. Download the script and save it to a directory included in your `$PATH` (e.g., `~/bin`):
   ```bash
   curl -o ~/bin/kgpwc https://gist.githubusercontent.com/<your-gist-id>/raw/kgpwc.sh
   ```

2. Make the script executable:
   ```bash
   chmod +x ~/bin/kgpwc
   ```

3. Ensure the `~/bin` directory is in your `$PATH`. Add this line to your `~/.zshrc` or `~/.bashrc` if it’s not already there:
   ```bash
   export PATH="$HOME/bin:$PATH"
   ```

4. Reload your shell configuration:
   ```bash
   source ~/.zshrc
   ```

## Usage

Run the script directly in your terminal:
```bash
kgpwc
```

This will output a list of Kubernetes pods, sorted and grouped by node, with each node visually distinguished by a unique color.

### Example Output


## Troubleshooting

1. **No Colors in Output**:
   - Make sure your terminal supports ANSI colors. Test it by running:
     ```bash
     echo -e "\033[1;31mRed\033[0m Normal"
     ```

2. **`kubectl` Issues**:
   - Ensure `kubectl` is correctly configured to communicate with your Kubernetes cluster:
     ```bash
     kubectl cluster-info
     ```

3. **Script Not Found**:
   - Ensure the script is in a directory listed in your `$PATH` and is marked as executable.
