# Ejercicio Flex y Grid en Angular

Este proyecto implementa un ejercicio de layout usando CSS Grid con Angular.

## Estructura del Proyecto

El componente principal es `landing-page` que utiliza CSS Grid con `grid-template-areas` para crear un layout de 5 áreas:

- **Cabecera**: Ocupa toda la fila superior
- **Lateral Izquierdo**: Columna izquierda
- **Cuerpo**: Área central (ocupa 3 columnas)
- **Lateral Derecho**: Columna derecha
- **Pie**: Ocupa toda la fila inferior

## Instalación

1. Instalar las dependencias:
```bash
npm install
```

## Ejecución

Para ejecutar el proyecto en modo desarrollo:

```bash
npm start
```

O usando Angular CLI:

```bash
ng serve
```

Luego abre tu navegador en `http://localhost:4200`

## Estructura del Layout

El layout utiliza CSS Grid con la siguiente configuración:

```css
grid-template-areas:
  "cabecera cabecera cabecera cabecera cabecera"
  "lateral-izquierdo cuerpo cuerpo cuerpo lateral-derecho"
  "pie pie pie pie pie";
```

Esto crea un grid de 5 columnas donde:
- La cabecera y el pie ocupan las 5 columnas
- El lateral izquierdo ocupa 1 columna
- El cuerpo ocupa 3 columnas
- El lateral derecho ocupa 1 columna

## Uso del Componente

```html
<landing-page></landing-page>
```

El componente renderiza automáticamente las 5 áreas con sus respectivos contenidos.
