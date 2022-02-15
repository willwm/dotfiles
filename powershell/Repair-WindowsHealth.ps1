# https://docs.microsoft.com/en-us/troubleshoot/windows-server/deployment/fix-windows-update-errors
DISM.exe /Online /Cleanup-image /Restorehealth

# https://support.microsoft.com/en-us/topic/use-the-system-file-checker-tool-to-repair-missing-or-corrupted-system-files-79aa86cb-ca52-166a-92a3-966e85d4094e
sfc /scannow