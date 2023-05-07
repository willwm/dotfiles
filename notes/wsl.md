Fix for "exec format error" when running `code` via WSL with Systemd enabled

<https://github.com/microsoft/WSL/issues/8843#issuecomment-1459120198>

```bash
sudo sh -c 'echo :WSLInterop:M::MZ::/init:PF > /usr/lib/binfmt.d/WSLInterop.conf'
```