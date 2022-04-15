
Write-Output "Starting kong-db..."

docker-compose -f docker-compose-prod.yml up -d kong-db

$status ="starting"

while($status -eq "healthy")
{
    $status=docker inspect --format='{{json .State.Health.Status}}' kong-db | Out-String
    Write-Host "kong-db state = $status" -ForegroundColor red
    Start-Sleep -s 5
}


Write-Output "Running database migrations..."

docker-compose -f docker-compose-prod.yml run --rm kong kong migrations bootstrap --vv

Write-Output "Starting kong..."

docker-compose -f docker-compose-prod.yml up -d kong

Write-Host "Kong admin running http://127.0.0.1:8001/" -ForegroundColor Magenta
Write-Host "Kong proxy running http://127.0.0.1/" -ForegroundColor Magenta

#Write-Output "Konga database prepare..."
#docker-compose up konga-prepare

Write-Output "Starting konga..."
docker-compose  -f docker-compose-prod.yml up -d konga
Write-Host "Konga running http://127.0.0.1:1337/" -ForegroundColor Magenta
