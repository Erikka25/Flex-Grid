# Script para subir el proyecto a GitHub
# Ejecuta este script después de crear el repositorio en GitHub

Write-Host "=== Script para subir a GitHub ===" -ForegroundColor Green
Write-Host ""

# Solicitar el nombre de usuario de GitHub
$username = Read-Host "Ingresa tu nombre de usuario de GitHub"

if ([string]::IsNullOrWhiteSpace($username)) {
    Write-Host "Error: Debes ingresar un nombre de usuario" -ForegroundColor Red
    exit 1
}

# URL del repositorio
$repoUrl = "https://github.com/$username/Flex-Grid.git"

Write-Host ""
Write-Host "Conectando con el repositorio remoto..." -ForegroundColor Yellow
git remote add origin $repoUrl 2>$null
if ($LASTEXITCODE -ne 0) {
    Write-Host "El remoto ya existe o hubo un error. Intentando actualizar..." -ForegroundColor Yellow
    git remote set-url origin $repoUrl
}

Write-Host ""
Write-Host "Subiendo código a GitHub..." -ForegroundColor Yellow
git push -u origin main

if ($LASTEXITCODE -eq 0) {
    Write-Host ""
    Write-Host "¡Éxito! Tu código ha sido subido a GitHub." -ForegroundColor Green
    Write-Host "Puedes verlo en: https://github.com/$username/Flex-Grid" -ForegroundColor Cyan
} else {
    Write-Host ""
    Write-Host "Error al subir el código. Verifica:" -ForegroundColor Red
    Write-Host "1. Que el repositorio 'Flex-Grid' existe en tu cuenta de GitHub" -ForegroundColor Yellow
    Write-Host "2. Que tienes permisos para escribir en el repositorio" -ForegroundColor Yellow
    Write-Host "3. Que tus credenciales de GitHub están configuradas" -ForegroundColor Yellow
}
