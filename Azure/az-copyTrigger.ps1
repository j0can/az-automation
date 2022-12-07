azcopy login

azcopy copy "<local-folder-path>" "https://<storage-account-name>.<blob or dfs>.core.windows.net/<container-name>" --recursive=true

#Upload modefied files to storage (azcopy trigger)
azcopy sync "<local-folder-path>" "https://<storage-account-name>.blob.core.windows.net/<container-name>" --recursive=true

#Created scheduled task/trigger
azcopy sync "C:\myFolder" "https://mystorageaccount.blob.core.windows.net/mycontainer" --recursive=true
schtasks /CREATE /SC minute /MO 5 /TN "AzCopy Script" /TR C:\script.bat