# 🐍 Neon Snake TOP

Snake neón para directos de TikTok. Se juega solo ("TOP"), llena el tablero completo y gana más o menos el 30 % de las partidas. Las partidas ganadas duran entre 10 y 15 minutos. El público puede ayudar o hacer sufrir a la serpiente con likes, follows, compartidos, comentarios y rosas, usando TikFinity.

Todo el juego está en un solo archivo: **`index.html`**. Ábrelo en el navegador (Chrome o Edge) y listo. No necesita instalar nada ni conexión a internet.

## Abrirlo para el directo

Haz doble clic en **`Abrir Neon Snake.bat`**. Abre el juego en una ventana propia de Edge que **sigue jugando aunque la minimices o la tapes** con otra ventana. (Con doble clic en `index.html` también funciona, pero el navegador normal frena la animación cuando la ventana no se ve).

> Ojo: TikFinity manda las teclas a la ventana que esté activa. Para que los eventos del público lleguen, la ventana del juego tiene que ser la activa (haz clic en ella antes de irte).

## Cómo funciona

- **TOP (piloto automático):** va directo a la fruta. A partir del ~70 % del tablero recorre una ruta que cubre todas las casillas (con forma de laberinto distinta en cada partida), para poder llenarlo entero.
- **Victoria:** llenar el 100 % del tablero. Celebración de 3 segundos y nueva partida.
- **Derrota (~70 % de las partidas):** nunca al principio. Ocurre entre el 72 % y el 97 % del tablero, por un error de cálculo creíble: va a por la fruta y se encierra. Al morir se congela 2,5 s, la cámara se acerca al choque, aparece la causa ("¡SE MORDIÓ!", "¡CONTRA LA PARED!", "¡OBSTÁCULO!") y la serpiente explota.
- **Velocidad:** empieza en 12 pasos/s, sube con cada manzana y tiene un máximo (42 por defecto, ajustable hasta 200).
- **Marcador:** victorias, derrotas, racha 🔥 y récord. Se guardan en el navegador.

## Teclas

| Tecla | Acción |
|---|---|
| **B** | Activar/desactivar TOP (modo automático) |
| Flechas / WASD | Jugar a mano (con TOP desactivado) |
| **H** | Mostrar/ocultar el panel de control |
| **U** | 🎰 Ruleta: evento al azar |
| **L** | 🍎 Lluvia de manzanas |
| **G** | ⭐ Mega orbe (+5) |
| **T** | ⚡ Turbo 10 s |
| **C** | 🐢 Cámara lenta 10 s |
| **N** | 🌑 Apagón 10 s |
| **Q** | 🌋 Terremoto + 3 obstáculos |
| **O** | 🧱 Campo minado: obstáculos en el 40 % de las casillas libres durante 5 s (4 % de probabilidad de que salga uno en la cara = game over) |
| **K** | ✂️ Tijeras: pierde la mitad del cuerpo |
| **V** | ☠️ Veneno: pierde el 15 % y se acelera 8 s |
| **E** | 🛡️ Escudo: salva de un error o un obstáculo (máx. 3) |
| P / M / R / F | Pausa / sonido / reiniciar / pantalla completa |

## TikFinity

En TikFinity → *Actions & Events*, crea una acción de **pulsar tecla** para cada disparador. La ventana del juego tiene que estar activa en el PC.

| Disparador | Evento | Tecla |
|---|---|---|
| ❤️ Cada 100 likes | 🎰 Ruleta | U |
| ❤️ Cada 300 likes | 🍎 Lluvia | L |
| ❤️ Cada 1000 likes | ✂️ Tijeras | K |
| ➕ Follow | 🌋 Terremoto | Q |
| 🔁 Compartir | ⭐ Mega orbe | G |
| 💬 `!ruleta` | 🎰 Ruleta | U |
| 💬 `!turbo` / `!lento` | ⚡ / 🐢 | T / C |
| 💬 `!apagon` / `!bloque` | 🌑 / 🧱 | N / O |
| 🌹 Rosa | ☠️ Veneno | V |

Pon una espera de unos 30 segundos a los comandos del chat para que no los spameen.

## Sonido al perder

Guarda tu sonido meme como **`perder.mp3`** en la misma carpeta que `index.html`, o elígelo con el botón 🎵 *Sonido al perder* del panel (H).

## Panel (tecla H)

Velocidad inicial, aumento por manzana, velocidad máxima, tamaño de cuadrícula (más grande = partidas más largas), meta (% del tablero), % de victorias de TOP y volumen.
