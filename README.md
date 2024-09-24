### For more info: [Neovim Documentation](https://neovim.io/doc/)

### Download Script for stable release:
```bash
#!bin/bash

download_url=$(curl -s https://api.github.com/repos/neovim/neovim/releases/tags/stable \
		| grep browser_download_url \
		| grep nvim-linux64.tar.gz \
		| grep -v sha256sum \
		| cut -d '"' -f 4)

if [ -z "$download_url" ]; then
	echo "Failed to fetch the url"
	exit 1
fi

output_filename="neovim.tar.gz"

echo "Downloading Neovim...."
curl -L -o "$output_filename" "$download_url"

if [ $? -eq 0 ]; then
	echo "Download stable release to : $output_filename"
	exit 0
else
	echo "Failed to download"
	exit 1
fi
```
