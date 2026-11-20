# 🐍 Neon Snake TOP

Snake neón para directos de TikTok. Se juega solo ("TOP"), llena el tablero completo y gana más o menos el 30 % de las partidas. Las partidas ganadas duran entre 10 y 15 minutos. El público puede ayudar o hacer sufrir a la serpiente con likes, follows, compartidos, comentarios y rosas, usando TikFinity.

Todo el juego está en un solo archivo: **`index.html`**. Ábrelo en el navegador (Chrome o Edge) y listo. No necesita instalar nada ni conexión a internet.

## Abrirlo para el directo

Haz doble clic en **`Abrir Neon Snake.bat`**. Abre el juego en una ventana propia de Edge que **sigue jugando aunque la minimices o la tapes** con otra ventana. (Con doble clic en `index.html` también funciona, pero el navegador normal frena la animación cuando la ventana no se ve).

> Ojo: TikFinity manda las teclas a la ventana que esté activa. Para que los eventos del público lleguen, la ventana del juego tiene que ser la activa (haz clic en ella antes de irte).

## Widget de datos

`Abrir Neon Snake.bat` abre también **`widget.html`**: una ventana con victorias, derrotas, racha, likes (cuánto falta para ruleta, lluvia y tijeras), qué hace cada interacción y los últimos eventos con el nombre de quien los lanzó. Captúrala como otra ventana en TikTok Live Studio. También se abre desde el panel (H) → *Abrir widget de datos*.

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
| **V** | 🌹 Maldición de la rosa: corta 30–60 % (combo), espinas y turbo; 5 rosas seguidas = 🥀 Jardín maldito (vuelve a 4 casillas) |
| **E** | 🛡️ Escudo: salva de un error o un obstáculo (máx. 3) |
| P / M / R / F | Pausa / sonido / reiniciar / pantalla completa |

## TikFinity + Streamer.bot (recomendado, sin teclas)

El juego se conecta solo al servidor WebSocket de Streamer.bot (`ws://127.0.0.1:8080/`). Así los eventos llegan aunque el juego no sea la ventana activa.

1. En Streamer.bot crea acciones vacías llamadas **Snake Ruleta, Snake Lluvia, Snake Mega, Snake Turbo, Snake Lenta, Snake Apagon, Snake Bloque, Snake Terremoto, Snake Tijeras, Snake Veneno** (y si quieres *Snake Escudo*), y activa *Servers/Clients → WebSocket Server* con autoarranque.
2. En TikFinity: *Setup → Streamer.bot Connection → Test Connection*. Luego crea acciones de tipo **Streamer.bot Action** con cada *Snake…* y asígnalas a los eventos de la tabla de abajo.
3. En el panel del juego (H) verás "Streamer.bot: conectado ✔".

## TikFinity solo con teclas (alternativa)

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
| 🌹 Rosa | 💀 Maldición de la rosa (combo; 5 seguidas = 🥀 Jardín maldito) | V |

Pon una espera de unos 30 segundos a los comandos del chat para que no los spameen.

## Sonido al perder

Guarda tu sonido meme como **`perder.mp3`** en la misma carpeta que `index.html`, o elígelo con el botón 🎵 *Sonido al perder* del panel (H).

## Panel (tecla H)

Velocidad inicial, aumento por manzana, velocidad máxima, tamaño de cuadrícula (más grande = partidas más largas), meta (% del tablero), % de victorias de TOP y volumen.

## 🎲 Modificadores de partida y votación

Cada partida empieza con una regla especial: 👻 Fantasma, 🪩 Disco (likes x2), 🧊 Hielo, 🔥 Infierno, 🌙 Noche, 🍀 Suerte o 🎬 Cine negro (todo en blanco y negro).
El chat vota la siguiente con `!snake 1`, `!snake 2` o `!snake 3` (un voto por persona; empate o sin votos = azar).
10 s después de empezar y luego cada ~100 s, el widget se convierte durante 20 s en un solo bloque gigante de votación y el bot lo anuncia en el chat.

## 💬 Chat intuitivo, saludos y más (nov 2026)

- **Sin "!snake":** si en TikFinity el evento del chat es *cualquier comentario* → acción *Snake Evento*, basta con escribir `turbo`, `lento`, `apagon`, `bloque`, `ruleta`, `lluvia`, `mascota` o un voto `1`/`2`/`3`. `!snake …` sigue funcionando. Los comentarios normales se ignoran; si alguien pregunta cómo participar, el bot le explica.
- **👋 Saludo:** acción de Streamer.bot *Snake Saludo* (evento *Join* de TikFinity). El bot da la bienvenida agrupando nombres cada 40 s.
- **🐣 Mascota:** `mascota` → mini serpiente con tu nombre que sigue a la grande 20 s.
- **💔 Última vida:** antes del error de TOP, el chat tiene 10 s para mandar 50 likes y salvarla (máx. 2 veces por partida). Sube un poco el % de victorias.
- ~~📸 Repetición~~ (quitada a petición del streamer).
- **🌗 Día y noche:** el fondo pasa de amanecer a noche según se llena el tablero (se puede apagar en el panel).
- **Nuevo modo:** 🌊 Bajo el agua (burbujas, ondas, más lenta).
- **🍎 Frutas con nombre:** las manzanas llevan el nombre de alguien que comentó hace poco; al comérsela sale "¡se comió a @…!".
- **👑 Corona:** el último que mandó una rosa lleva corona y su nombre encima de la serpiente (se guarda entre partidas) hasta que otro mande una.
- **⚔️ Jefe final:** al 90 % aparece un jefe que dispara obstáculos a casillas lejanas; TOP frena para esquivarlos (simulación: 80/80 partidas ganadoras sin muertes injustas). Los obstáculos dejan de ser peligrosos 1 s antes de desvanecerse.
- **Jefe al 70–90 %** (al azar en cada partida) y **sin frenazos:** TOP ralentiza como mucho al 55 %.
- **Jefe de verdad:** sus bloques duran 2,2 s y son mortales (muerte con zoom y cartel «⚔️ ¡EL JEFE LE DIO!»). Solo apunta donde TOP puede esquivarlos sin frenar en seco; si no hay sitio, el disparo falla. Con bloques en el tablero TOP no toma atajos. Sim: 1.252 disparos y 190 campos minados sin muertes injustas en partidas ganadoras.
- **Sonidos** en la carpeta `sonidos/`: efectos del jefe a partir del banco CC0 [uisfx](https://github.com/romainsimon/uisfx) y un `perder.mp3` propio (ver `sonidos/LEEME.txt`).
- **🎆 Despedida del directo:** tecla **Ç** (o botón en el panel): fuegos artificiales, resumen del directo (victorias, likes, rosas, follows), top 5 de los que más participaron y la corona; el bot se despide en el chat. Ç otra vez para quitarla.

- **Panel por categorías:** el panel de stream se divide en secciones desplegables (Partida, Modificadores, Eventos de espectadores, Sonido, Directo y pantalla, Conexión y teclas). Recuerda cuáles dejaste abiertas.

- **Eventos nuevos y mejorados (sin escudo):**
  - ☄️ **Meteoritos** (chat `bloque`, tecla O): sombra 2 s, impacto y cráter mortal 3,5 s. Solo caen donde TOP puede esquivarlos.
  - 🌑 **Apagón** (chat `apagon`, N): todo negro salvo la linterna delante de la cabeza; parpadea.
  - ⏱️ **Tiempo bala** (chat `lento`, C): cámara lenta desaturada, ecos de la serpiente y ondas.
  - ⚡ **Hiperespacio** (chat `turbo`, T): líneas de velocidad y estela de fuego.
  - ✨ **Lluvia dorada** (chat `lluvia`, L, 300 likes): frutas que caen desde arriba y valen x2 durante 10 s.
  - 🐍 **Rival** (chat `rival`, J): serpiente con el nombre del espectador que roba frutas 20 s; si choca con TOP, pierde ella.
  - 🌀 **Portales** (chat `portal`, X): TOP los usa solo cuando son un atajo seguro.
  - 💣 **Fruta bomba** (chat `bomba`, Z): 10 s para comérsela o explota y quita un trozo de cola.
  - 🪞 **Espejo** (chat `espejo`, E): pantalla volteada 10 s.
  - 🧲 **Imán** (chat `iman`, Y): las frutas cercanas van hacia la cabeza 8 s.
  - Simulación: 40/40 partidas con eventos aleatorios cada 2,5–5,5 s sin muertes; 30/30 con portales permanentes (157 teletransportes).
