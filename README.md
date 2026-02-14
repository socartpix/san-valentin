# Carta de San Valentín - Proyecto Three.js

## Contexto

Este proyecto es una carta de San Valentín interactiva en 3D creada para una persona especial. El proyecto evolucionó a través de varias etapas:

1. **Demo inicial**: Corazón 3D animado con Three.js
2. **Estructura por pantallas**: Primera pantalla con mensaje + rosa final "Te amo"
3. **Pantalla de sobre animado**: Se agregó un sobre 3D que se abre al hacer click antes de mostrar el mensaje

## Flujo de la Experiencia

```
[Sobre 3D] → [Click para abrir] → [Mensaje + Rosas] → [Te amo ❤️]
   │              │                    │                 │
Pantalla 0    Animación           Pantalla 1       Pantalla 2
             de sobre
```

## Características

### Pantalla 0: Sobre Animado
- Diseño de sobre realista con CSS 3D
- Solapa que se abre al hacer click
- Efecto de carta que sale del sobre
- Corazón decorativo como sello

### Pantalla 1: Mensaje con Rosas
- Mensaje personalizado: "No puedo dejar a mi esposa que no reciba flores este día. Gracias por estar conmigo. Tenemos una gran vida por delante y gracias por acompañarme en estos momentos."
- Rosas decorativas flotantes (emojis)
- Rosas 3D con Three.js:
  - Transparentes y brillantes
  - Animación de rotación
  - Movimiento suave
- Partículas de pétalos flotando
- Efecto parallax con movimiento del mouse

### Pantalla 2: Te amo
- Mensaje grande y animado
- Transición suave desde pantalla anterior

## Tecnologías Usadas

- **HTML5**: Estructura
- **CSS3**: Animaciones, efectos 3D del sobre, transiciones
- **Three.js**: Gráficos 3D (rosas, partículas, escena)
- **Docker**: Contenedor con Nginx

## Cómo Ejecutar

### Con Docker (Recomendado)

```bash
# Construir la imagen
docker build -t sanvalentin .

# Ejecutar el contenedor
docker run -d -p 8888:80 --name sanvalentin sanvalentin
```

### Ver en el navegador

```
http://localhost:8888
```

### Comandos Docker útiles

```bash
# Detener el contenedor
docker stop sanvalentin

# Iniciar el contenedor
docker start sanvalentin

# Ver logs
docker logs sanvalentin

# Eliminar contenedor
docker rm -f sanvalentin
```

### Sin Docker (Desarrollo)

简单的 puedes abrir el archivo `index.html` directamente en un navegador, aunque algunos efectos 3D pueden no funcionar correctamente sin un servidor local.

## Estructura del Proyecto

```
proyectosanvalentin/
├── index.html      # Todo el código (HTML + CSS + JS)
├── Dockerfile      # Configuración de Docker
└── README.md       # Este archivo
```

## Personalización

### Cambiar el mensaje

Busca en `index.html` el texto de la pantalla 1:

```html
<p class="mensaje">
  No puedo dejar a mi esposa que no reciba flores este día.<br><br>
  Gracias por estar conmigo.<br>
  Tenemos una gran vida por delante<br>
  y gracias por acompañarme en estos momentos.
</p>
```

### Cambiar el mensaje final

Busca en `index.html`:

```html
<p class="mensaje-final">Te amo ❤️</p>
```

### Agregar más pantallas

1. Añade un nuevo `div` con clase `pantalla` en el HTML
2. Actualiza el indicador de pestañas
3. Añade la lógica de transición en JavaScript

## Future Mejoras Posibles

- Agregar más pantallas con más mensajes románticos
- Música de fondo
- Efectos de sonido al abrir el sobre
- Más animaciones 3D
- Galería de fotos

---

Hecho con ❤️ para San Valentín
