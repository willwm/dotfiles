# Install Scoop
Invoke-Expression (New-Object System.Net.WebClient).DownloadString('https://get.scoop.sh')

# Install Scoop packages
$packages = @(
    "adb",
    "bat",
    "bitwarden-cli",
    "broot",
    "byenow",
    "cobalt",
    "croc",
    "czkawka",
    "delta",
    "deno",
    "devd",
    "dog",
    "dua",
    "empty-recycle-bin",
    "ethr",
    "fd",
    "ffmpeg",
    "fzf",
    "git",
    "glow",
    "hostctl",
    "hugo-extended",
    "iperf3",
    "jq",
    "julia",
    "kompose",
    "latex",
    "lazydocker",
    "ln",
    "lsd",
    "mdbook",
    "micro",
    "nginx",
    "neofetch",
    "nodejs-lts",
    "nu",
    "octave",
    "pandoc",
    "potrace",
    "procs",
    "qemu",
    "rainbow",
    "rclone",
    "s",
    "say",
    "scrcpy",
    "simple-http-server",
    "speedtest-cli",
    "starship",
    "topgrade",
    "upm",
    "xh",
    "yarn",
    "youtube-dl",
    "yq",
    "zola",
    "zoxide"
)
scoop install $packages