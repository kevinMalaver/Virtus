# PROYECTO PEP VIRTUS

## Plataforma de Enseñanza de Programacion

Esta plataforma de enseñanza de programacion nace como un proyecto del Grupo de investigación interinstitucional en ambientes virtuales de aprendizaje [VIRTUS](http://grupovirtus.org/sitio/ "VIRTUS"), y nace con la finalidad de desarrollar una plataforma web que permita a los estudiantes mejorar sus habilidades en la programación, teniendo a disposición diferentes líneas de conocimiento. Este conocimiento será creado de manera compartida, es decir que tanto los estudiantes como los profesores interesados en compartir su conocimiento, puedan ir publicando programas de aprendizaje en programación. Será también posible la petición de cursos, comentarios y la comunicación, de esta manera se creará una plataforma de conocimiento compartido.

## Requerimientos
La plataforma estara desarrollado sobre el sistema de gestion de contenidos Joomla 4.1.5, los requisitos para su ejecusion se pueden consultar en [Technical Requirements](https://downloads.joomla.org/technical-requirements "Technical Requirements"), a continuación se señalan requerimientos usados en el desarrollo actual:

| Requerimiento      | Ver. Utilizada
| --------- | -------:|
| PHP  | 8.1.8
| MySQL  | 8.0.29
| Apache     |   2.4.41 |

## Ejecución
La plataforma podra montarse localmente o en un servidor, para desarrollo se recomineda hacerlo en un ambiente local para mayor rendimiento. si se instala local se puede realizar mediante herramientas como [XAMP](https://www.apachefriends.org/index.html "XAMP"), o intalacion de cada componente.
Una vez se tengan listos los requerimientos se procede a seguir los sisguientes pasos: 
#### Copiar repositorio 
Clonar o descargar el repositorio actual.
#### Ubicar archivos
Descomprimir o hubicar los archivos de este repositorio en el directorio html de Apache (/var/www/html en linux, o directorio configurado en XAMP en caso de usar este).
Recuerde que si crea una carpeta dento de este directorio, al ingresar desde el navegador no se hace directamente desde `localhost`, debera hacerse desde `localhost/directorio/`
#### Restaurar Base de Datos
Ingresar al directorio `db_backup` del repositorio donde se encuetran respaldos de la base de datos, descargar la version con fecha mas reciente y se debe cargar este respaldo a MySQL(o MariaDB).

Si se presenta el error `collation desconocida: 'utf8mb4_0900_ai_ci'` cuando se este realizando la importacion de la base de datos, esto se debe a diferencias de versiones entre las versiones de MySQL, para solucionarlo se debe abrir el archivo `.sql` con un editor de texto y remplazar el texto `utf8mb4_0900_ai_ci` por `utf8mb4_general_ci`.


#### Cambiar configuration.php
Para que la plataforma funciones en el nuevo ambiente es necesario cambiar algunos datos en el archivo configuration.php. Se debe editar/cambiar lo siguiente:
```
var $host = 'localhost'; // usually "localhost". If it's different for your server then your hosting provider should be able to tell you that.
var $user = 'the_db_username';
var $db = 'the_databasename';
var $password = 'the_db_password';
var $live_site = ''; // is usually empty.
var $cookie_domain = ''; // Should be empty.
```

La plataforma funcionara, pero sera necesario configurar `$log_path` y `$tmp_path`, necesarios para poder instalar extensiones. Ingrese como administrador agregando a la direccion del sitio /administrator, por ejempo `localhost/administrator/`:
- user: Administrador
- pass: virtusadmin2022

Seria conveniente cambiar la contraseña cuando el sitio este en producción

Una vez se este en el sitio de administracion ir a:
- System > System Information > Directory Permissions.

Y se verifican las siguientes filas
```
cache (Cache Directory) Writable
administrator/cache (Cache Directory)  Writable
/var/www/some/other/folder/example.com/logs/ (Log directory) Unwritable
/var/www/some/other/folder/example.com/tmp (Temp directory)  Unwritable
```

Si `$log_path` y `$tmp_path` esta como "Unwritable", sera necesario cambiar los valores en configuration.php por los directorios especificos.

Utilice los valores del "Directorio de caché" sin la parte de "/cache/" cambielos en `$log_path` and `$tmp_path`, quedando como:

```
   var $log_path = '/var/www/example.com/logs';
   var $tmp_path = '/var/www/example.com/tmp';
```

Cuando estos directorios aparesca como "Writable", sera posible instalar extensiones.

#### Otras consideraciones
- Es posible que sea necesario dar permisos al directorio donde se ubique los archivos de la plataforma.
