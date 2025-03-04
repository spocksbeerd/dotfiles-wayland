export XDG_CONFIG_HOME="$HOME/.config"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_STATE_HOME="$HOME/.local/state"
export EDITOR="$(which nvim)"
export VISUAL="$(which nvim)"
export PAGER="/usr/bin/less"
export LESSSECURE=1
export TERMINAL="/usr/bin/foot"
export BROWSER="/usr/bin/firefox"

export XINITRC="$XDG_CONFIG_HOME/xinitrc"
export QT_QPA_PLATFORMTHEME=qt5ct
export QT5_STYLE_OVERRIDE=kvantum
export CUDA_CACHE_PATH="$XDG_CACHE_HOME/nv"

export DOTNET_CLI_HOME="$XDG_DATA_HOME/dotnet"
export NUGET_PACKAGES="$XDG_CACHE_HOME/NuGetPackages"
export GOPATH="$XDG_DATA_HOME/go"
export RUSTUP_HOME="$XDG_DATA_HOME/rustup"
export CARGO_HOME="$XDG_DATA_HOME/cargo"

export ASDF_DATA_DIR="$XDG_DATA_HOME/asdf/data"
export ASDF_DEFAULT_TOOL_VERSIONS_FILENAME=".config/asdf/.tool-versions"

export PATH="$PATH:$HOME/.local/bin"
export PATH="$PATH:$HOME/.local/bin/autolaunch"
export PATH="$PATH:$HOME/.local/bin-extras"
export PATH="$PATH:$HOME.local/share/dotnet/.dotnet/tools"
export PATH="$PATH:$HOME/.local/share/turso"
export PATH="$PATH:$CARGO_HOME/bin"
