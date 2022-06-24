Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser
$result = Invoke-WebRequest -UseBasicParsing -Uri "https://raw.githubusercontent.com/eserozvataf/hayalet-sevgilim-sarki-sozleri/master/js/index.json"

if ($result.StatusCode -eq 200)
{
    $lyrics = ConvertFrom-Json $result.Content
    Write-Output $lyrics
}