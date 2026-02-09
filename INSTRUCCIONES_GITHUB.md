# Instrucciones para subir a GitHub

## Paso 1: Crear el repositorio en GitHub

1. Ve a https://github.com/new
2. Nombre del repositorio: **Flex-Grid**
3. Descripción: "Ejercicio de Flex y Grid en Angular"
4. Elige **Público** o **Privado** según prefieras
5. **NO** marques ninguna opción (no inicialices con README, .gitignore o licencia)
6. Haz clic en **"Create repository"**

## Paso 2: Conectar y subir el código

Una vez creado el repositorio, ejecuta estos comandos en la terminal:

```bash
cd c:\DIW\Flex-Grid
git remote add origin https://github.com/TU_USUARIO/Flex-Grid.git
git branch -M main
git push -u origin main
```

**Nota:** Reemplaza `TU_USUARIO` con tu nombre de usuario de GitHub.

## Alternativa: Si prefieres usar SSH

Si tienes configurado SSH en GitHub:

```bash
git remote add origin git@github.com:TU_USUARIO/Flex-Grid.git
git branch -M main
git push -u origin main
```

## Verificación

Después de hacer push, deberías poder ver tu código en:
https://github.com/TU_USUARIO/Flex-Grid
