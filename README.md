## Pocket News

Esta es una aplicación con flutter que consume servicios desde un api pública de noticias, donde se logra mostrar una variedad de noticias segmentadas por categorías y donde se puede ver el detalle de cada una de ella.

Es importante saber que este tipo de aplicaciones pueden ser desplegadas en moviles como android e ios asi como tambien como aplicaciones de escritorio para macOS, Linux, Windows y Web

---

## Levantar el proyecto

Puede levantar el proyecto con visual studio code ejecutando comand + shift + P. Luego "Select Device".

<img src="https://github.com/eivanphils/flutter-app-counter/blob/master/assets/select_device.png" width="500">     

Luego abre el archivo main.dart y presiona F5 o fn + F5 app. 


**Nota**: es importante tener instalado todas las configuraciones necesarias para flutter

[https://docs.flutter.dev/get-started/install](https://docs.flutter.dev/get-started/install)

## Descripción

#### Características que posee la app:
- Home.
    - Detalle de la noticia.
- Explore.
    - Detalle de la noticia.

- Botón para cambio de tema claro/oscuro.
- Link en webview. 

## Herramientas externas

Se utiliza el api de [https://newsapi.org](https://newsapi.org) para obtener las noticias.


## Paquetes de terceros

En el proyecto se han utilizado algunos paquetes de terceros que fueron de mucha ayuda para la construcción final.

A continuación encontrará la información sobre estos paquetes.

| Paquete    | Explicación |
| ------------- |:-------------:|
| cupertino_icons  | Iconos de cupertino |
| providers  | Manejador de estados |
| http  | Peticiones http |
| flutter_launcher_icons  | Librería para configurar icono y splash screen |
| url_launcher | Librería para mostrar una pagina web interna |
| skeletonizer | Librería para crear esqueletos de cargas |
| shared_preferences | Librería para guardar datos en el dispositivo  |
| intl | Librería para el formateo de fechas |


## Estructura de directorio

| Directorio    | Explicación |
| ------------- |:-------------:|
| assets  | Contiene todas las imagenes png, svg o gif |
| android, ios, web | Contiene todas las configuraciones de la plataforma que genera flutter automáticamente |
| lib     | Contiene toda la lógica de la aplicación |

Luego el directorio lib

| Directorio    | Explicación |
| ------------- |:-------------:|
| screens   | Contiene todas las clases de cada pantalla de la app |
| widgets   | Contiene todos los  widgets personalizados que se reutilizan en distintas secciones de la app |
| models     | Contiene todos los modelos |
| providers     | Contiene todos los providers |
| services     | Contiene todos los servicios en este caso para peticiones http |
| theme     | Contiene toda la configuración del tema |
| ui     | Contiene lógica de estilos de inputs |
| utils     | Contiene la lógica de utilidades como obtener un numero random |


## Capturas de pantalla

### DarkMode:
<img src="https://github.com/eivanphils/pocket-news/blob/master/assets/screenshoot/darkmode.png" width="200">

### LightMode:
<img src="https://github.com/eivanphils/pocket-news/blob/master/assets/screenshoot/lightmode.png" width="200">

### Explore:
<img src="https://github.com/eivanphils/pocket-news/blob/master/assets/screenshoot/explore.png" width="200">

### Loading:
<img src="https://github.com/eivanphils/pocket-news/blob/master/assets/screenshoot/loading.png" width="200">

### News Detail Dark:
<img src="https://github.com/eivanphils/pocket-news/blob/master/assets/screenshoot/news-detail-dark.png" width="200">

### News Detail Light:
<img src="https://github.com/eivanphils/pocket-news/blob/master/assets/screenshoot/news-detail-light.png" width="200">

### Webview:
<img src="https://github.com/eivanphils/pocket-news/blob/master/assets/screenshoot/webview.png" width="200">

### Videos

https://github.com/eivanphils/pocket-news/assets/1909869/b8bbdcdf-1ec0-4364-928c-ce479114a3f6

https://github.com/eivanphils/pocket-news/assets/1909869/777bb32b-2537-4256-a0b6-5702faf8930c

