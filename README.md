## Pocket News

Esta es una aplicación con flutter que consume servicios desde un api pública de noticias, donde se logra mostrar una variedad de noticias segmentadas por categorías y donde se puede ver el detalle de cada una de ella.

---

## Levantar el proyecto

Puede levantar el proyecto con visual studio code ejecutando comand + shift + P. Luego "Select Device".

<img src="https://github.com/eivanphils/flutter-app-counter/blob/master/assets/select_device.png" width="500">     

Luego abre el archivo main.dart y presiona F5 o fn + F5 app. 


**Nota**: es importante tener instalado todas las configuraciones necesarias para flutter

[https://docs.flutter.dev/get-started/install](https://docs.flutter.dev/get-started/install)

## Descripción

La app posee 3 pantallas las cuales son:
- OnBoarding
- Login Page
    - Buscador
    - carrusel de categorias
    - Carrusel de recetas
    - BottomNavigationBar
- Detalle de la receta

## Herramientas externas

Se utiliza el api de [https://www.edamam.com](https://www.edamam.com) para obtener recetas.


## Paquetes de terceros

En el proyecto se han utilizado algunos paquetes de terceros que fueron de mucha ayuda para la construcción final.

A continuación encontrará la información sobre estos paquetes.

| Paquete    | Explicación |
| ------------- |:-------------:|
| cupertino_icons  | Iconos de cupertino |
| providers  | Manejador de estados |
| http  | Peticiones http |
| flutter_launcher_icons  | Librería para configurar icono y splash screen |


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

### Onboarding:

<img src="https://github.com/eivanphils/Tasty-Trove/blob/master/assets/screenshoot/onboarding.png" width="200">   
