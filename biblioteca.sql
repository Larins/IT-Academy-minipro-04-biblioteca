SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";

DROP DATABASE IF EXISTS biblioteca;
CREATE DATABASE biblioteca CHARACTER SET utf8mb4;
USE biblioteca;

CREATE TABLE libros (
  id int(11) NOT NULL,
  titulo varchar(100) NOT NULL,
  autor varchar(100) NOT NULL,
  publicacion date NOT NULL,
  isbn varchar(100) NOT NULL,
  genero ENUM ('CUERPOS','ECONOMIA','FEMINISMOS','HISTORIA','NARRATIVA','POESIA','POLITICA','SOCIOLOGIA','TEORIADELGENERO','OTROS'),
  paginas int(11),
  descripcion varchar(1000),
  creacion TIMESTAMP,
  PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO libros (id, titulo, autor, publicacion, isbn, genero, paginas, descripcion) VALUES

(1, 'EL CALIBAN Y LA BRUJA', 'SILVIA FEDERICI', '2010-06-15', '8496453510', 'ECONOMIA', 368, 'A partir del siglo XVI se disparan los juicios por brujería y herejía tanto en Europa como en el Nuevo Mundo. Silvia Federici realiza un inmenso trabajo de investigación para romper con la leyenda de la caza de brujas como un fenómeno medieval (la Edad Media se da por terminada en 1492) a golpe de estadística. Su objetivo: completar la teoría de la acumulación primitiva de Karl Marx. Su argumento: la caza de brujas (y brujos) en los albores de la Edad Moderna no fue otra cosa que una persecución política de grandes dimensiones contra las revueltas campesinas, muy frecuentes en los albores del estado moderno por la pérdida de derechos y calidad de vida que supusieron las primeras reformas de lo que hoy conocemos como el capitalismo incipiente.'),

(2, 'EL PATRIARCADO DEL SALARIO', 'SILVIA FEDERICI', '2018-03-09', '8494806831', 'ECONOMIA', 294, ' Silvia Federici, una vez más, saca los colores a las teorías marxistas, y las completa con la perspectiva de género. Allí donde cualquier obrero echa en falta la plusvalía (la diferencia entre la riqueza que produce durante sus horas trabajadas y lo que se le entrega a cambio en forma de salario, también llamado beneficio empresarial), a las mujeres el salario se nos antoja aún menos representativo del trabajo que hacemos... y no solo porque la brecha salarial sigue siendo tan enorme que al cabo del año las mujeres cobramos, en promedio, como si dejáramos de trabajar el 11 de noviembre. Todos y todas vivimos en una casa orgánica, que es nuestro cuerpo, y un hogar material, que es nuestra casa. Tanto nuestros cuerpos como nuestras casas requieren un mantenimiento, de cuidados, y esos Trabajos siguen, aún hoy, siendo asumidos en su mayor parte por las mujeres de la casa. Si tuviéramos que valorar económicamente el trabajo realizado cada día, por cada mujer, en cada hogar, no habría suficiente dinero en el PIB para pagar los sueldos de cocinera, limpiadora, lavandera, niñera, enfermera y profesora de repaso, por decir solo algunos ejemplos.'),

(3, 'BRUJERÍA Y CONTRACULTURA GAY', 'ARTHUR EVANS', '2016-01-03', '8416553483', 'TEORIADELGENERO', 320, 'Juana de Arco fue la primera persona procesada y condenada a muerte en un juicio por ser disidente de género. Con una afirmación tan contundente e incendiaria, Arthur Evans se remonta a los documentos de 1431 para empezar a desmontar, uno a uno, grandes mitos de la historia y la cultura popular, y plantar la semilla de la duda: ¿el ser humano ha concebido el género, el sexo y la sexualidad de la misma forma que hoy en día? Es natural que pequemos de presentismo y pensemos que sí, y por eso la duda es la base de la ciencia.'),

(4, 'LA BOLCHEVIQUE ENAMORADA', 'ALEXANDRA KOLLONTAI', '2007-11-13', '8481365092', 'NARRATIVA', 240, 'Alejandra Kollontai fue la primera mujer en la historia en ejercer un cargo de ministra. El gobierno que ella contribuyó a crear tras la Revolución de Octubre alcanzó hitos no menos llamativos para tratarse de las primeras décadas del siglo XX: el matrimonio laico, leyes contra la violencia infantil y de género, aborto libre y gratuito, etc. No obstante, en esta obra, la Alejandra Kollontai escritora se acerca a las mujeres de una forma mucho más sutil, y menos panfletaria que en sus horas de militancia. Nos relata la historia de Vassilissa, una chica común y corriente, trabajadora de fábrica y militante sindical, que pese a haberse ya liberado del patrón, de la guerra civil y vivir en un estado revolucionario en construcción, aún tiene que enfrentarse a las opresiones del patriarcado. Muy a menudo, más de lo que sería cómodo, veremos a Vassilissa, una chica de 1919, expuesta a micromachismos que ejerce su propia pareja, muchos de los cuales podría contarnos cualquier amiga hoy. Quedará en decisión del lector o lectora preguntarse si no ha habido tiempo en un siglo para entender y renunciar a los privilegios de género.'),


(5, 'LA REVOLUCIÓN DE LA MENSTRUACIÓN', 'XUSA SANZ', '2021-04-28', '8427048742', 'CUERPOS', 256, 'El ciclo menstrual no es LA REGLA y EL RESTO DEL MES. Más de cincuenta hormonas, neurotransmisores, tejidos y órganos se comunican durante todo el ciclo y regulan mucho más que la reproducción. Ahora puedes conocer los secretos de tu cuerpo menstruante de forma integradora de la mano de Xusa Sanz, enfermera de profesión, y también nutricionista y especialista en PNI.'),

(6, 'DIARIO DE UN CUERPO', 'ERIKA IRUSTA', '2016-11-09)', '8416673160', 'CUERPOS', 432, 'Erika Irusta abre sus entrañas en este relato íntimo sobre su relación consigo misma, con su cuerpo. Junto a ella, podemos aprender muchos detalles sobre el ciclo menstrual, pero sobre todo a sentipensarnos a nosotras y a nuestro cuerpo de una forma más cercana, más íntima, más compasiva.'),

(7, 'MÁS ALLÁ DE LAS ETIQUETAS', 'CORAL HERRERA', '2011-02-23', '8481366102', 'TEORIADELGENERO', 320, 'Lorem fistrum elit amatomaa voluptate por la gloria de mi madre ut condemor. Te voy a borrar el cerito veniam a wan ese pedazo de de la pradera sexuarl amatomaa. Dolor ullamco mamaar ullamco aliquip ullamco officia sed torpedo por la gloria de mi madre dolore. Irure qui velit no te digo trigo por no llamarte Rodrigor.'),

(8, 'LA CONSTRUCCIÓN SOCIOCULTURAL DEL AMOR ROMÁNTICO', 'CORAL HERRERA', '2020-06-13', '8424512006', 'SOCIOLOGIA', 328, 'Lorem fistrum elit amatomaa voluptate por la gloria de mi madre ut condemor. Te voy a borrar el cerito veniam a wan ese pedazo de de la pradera sexuarl amatomaa. Dolor ullamco mamaar ullamco aliquip ullamco officia sed torpedo por la gloria de mi madre dolore. Irure qui velit no te digo trigo por no llamarte Rodrigor.'),

(9, 'LAS BRUJAS DE LA NOCHE', 'LYUBA VINOGRADOVA', '2016-04-11', '8494427296', 'NARRATIVA', 96, 'Lorem fistrum elit amatomaa voluptate por la gloria de mi madre ut condemor. Te voy a borrar el cerito veniam a wan ese pedazo de de la pradera sexuarl amatomaa. Dolor ullamco mamaar ullamco aliquip ullamco officia sed torpedo por la gloria de mi madre dolore. Irure qui velit no te digo trigo por no llamarte Rodrigor.'),

(10, 'LA TEORÍA KING KONG', 'VIRGINIE DESPENTES', '2018-01-25', '8439733852', 'FEMINISMOS', 176, 'Lorem fistrum elit amatomaa voluptate por la gloria de mi madre ut condemor. Te voy a borrar el cerito veniam a wan ese pedazo de de la pradera sexuarl amatomaa. Dolor ullamco mamaar ullamco aliquip ullamco officia sed torpedo por la gloria de mi madre dolore. Irure qui velit no te digo trigo por no llamarte Rodrigor.'),

(11, 'LA POLÍTICA DE TODES', 'HOLLY LEWIS', '2020-11-09', '8412275012', 'TEORIADELGENERO', 324, '¿Quién dice que el materialismo y las Teorías Queer están separadas por una brecha inabarcable? Holly Lewis hace una excelente labor de reflexión para trazar puentes entre la teoría marxista, imprescindible para entender nuestro lugar en el sistema de producción capitalista, y las teorías de la diversidad, sin las cuales no podriamos entender las identidades y la experiencia propia en toda su globalidad. La interseccionalidad es la clave.'),

(12, 'CÓMO ENTENDER TU GÉNERO', 'ALEX IANTAFY, MEG-JOHN BARKER', '2020-03-23', '8412109198', 'TEORIADELGENERO', 320, 'Lorem fistrum elit amatomaa voluptate por la gloria de mi madre ut condemor. Te voy a borrar el cerito veniam a wan ese pedazo de de la pradera sexuarl amatomaa. Dolor ullamco mamaar ullamco aliquip ullamco officia sed torpedo por la gloria de mi madre dolore. Irure qui velit no te digo trigo por no llamarte Rodrigor.'),

(13, 'UNA HABITACIÓN PROPIA', 'VIRGINIA WOOLF', '2016-02-02', '8432222828', 'FEMINISMOS', 160, 'Lorem fistrum elit amatomaa voluptate por la gloria de mi madre ut condemor. Te voy a borrar el cerito veniam a wan ese pedazo de de la pradera sexuarl amatomaa. Dolor ullamco mamaar ullamco aliquip ullamco officia sed torpedo por la gloria de mi madre dolore. Irure qui velit no te digo trigo por no llamarte Rodrigor.'),

(14, 'EL GÉNERO EN DISPUTA', 'JUDITH BUTLER', '2007-06-05', '8449320305', 'TEORIADELGENERO', 320, 'Lorem fistrum elit amatomaa voluptate por la gloria de mi madre ut condemor. Te voy a borrar el cerito veniam a wan ese pedazo de de la pradera sexuarl amatomaa. Dolor ullamco mamaar ullamco aliquip ullamco officia sed torpedo por la gloria de mi madre dolore. Irure qui velit no te digo trigo por no llamarte Rodrigor.'),

(15, 'LA VOZ DORMIDA', 'DULCE CHACÓN', '2016-02-04', '8466332502', 'NARRATIVA', 432, 'Lorem fistrum elit amatomaa voluptate por la gloria de mi madre ut condemor. Te voy a borrar el cerito veniam a wan ese pedazo de de la pradera sexuarl amatomaa. Dolor ullamco mamaar ullamco aliquip ullamco officia sed torpedo por la gloria de mi madre dolore. Irure qui velit no te digo trigo por no llamarte Rodrigor.'),

(16, 'MUJERES, RAZA Y CLASE', 'ANGELA DAVIES', '2004-10-18', '8446020939', 'FEMINISMOS', 240, 'Lorem fistrum elit amatomaa voluptate por la gloria de mi madre ut condemor. Te voy a borrar el cerito veniam a wan ese pedazo de de la pradera sexuarl amatomaa. Dolor ullamco mamaar ullamco aliquip ullamco officia sed torpedo por la gloria de mi madre dolore. Irure qui velit no te digo trigo por no llamarte Rodrigor.'),

(17, 'TODO LO QUE NECESITO YA EXISTE EN MÍ', 'RUPI KAUR', '2021-02-10', '8432237728', 'POESIA', 200, 'Lorem fistrum elit amatomaa voluptate por la gloria de mi madre ut condemor. Te voy a borrar el cerito veniam a wan ese pedazo de de la pradera sexuarl amatomaa. Dolor ullamco mamaar ullamco aliquip ullamco officia sed torpedo por la gloria de mi madre dolore. Irure qui velit no te digo trigo por no llamarte Rodrigor.'),

(18, 'CASADAS, MONJAS, RAMERAS Y BRUJAS', 'MANUEL FERNÁNDEZ ÁLVAREZ', '2005-05-10', '8467034548', 'HISTORIA', 432, '¿Será verdad lo que sale en las películas de época? Manuel Fernández Álvarez, historiador y ex-profesor de instituto, nos acompaña en un viaje al pasado de la Península Ibérica. Él nos descubre que la mujer del Renacimiento es, en realidad, muchas mujeres, y estas cuatro palabras en el título son solo una humilde selección, detrás de la que se esconde una inconmensurable labor, no solo de investigación historiográfica, sino también un trabajo de comprensión de los valores y la cultura de la época, y un esfuerzo narrativo para que los lectores puedan decidir si es verdad, o no, lo que sale en las películas.'),

(19, 'EL CAPITAL (ANTOLOGÍA)', 'KARL MARX', '2010-09-13', '8420674265', 'ECONOMIA', 528, 'Lorem fistrum elit amatomaa voluptate por la gloria de mi madre ut condemor. Te voy a borrar el cerito veniam a wan ese pedazo de de la pradera sexuarl amatomaa. Dolor ullamco mamaar ullamco aliquip ullamco officia sed torpedo por la gloria de mi madre dolore. Irure qui velit no te digo trigo por no llamarte Rodrigor.'),

(20, 'REFORMA O REVOLUCIÓN', 'ROSA LUXEMBURGO', '2005-02-09', '8446041294', 'POLITICA', 160, 'Lorem fistrum elit amatomaa voluptate por la gloria de mi madre ut condemor. Te voy a borrar el cerito veniam a wan ese pedazo de de la pradera sexuarl amatomaa. Dolor ullamco mamaar ullamco aliquip ullamco officia sed torpedo por la gloria de mi madre dolore. Irure qui velit no te digo trigo por no llamarte Rodrigor.');

ALTER TABLE libros
      ADD COLUMN num VARCHAR(256) NOT NULL;

UPDATE libros
      SET num = (CASE 
        WHEN genero = 'CUERPOS' THEN 1
        WHEN genero = 'ECONOMIA' THEN 2
        WHEN genero = 'FEMINISMOS' THEN 3
        WHEN genero = 'HISTORIA' THEN 4
        WHEN genero = 'NARRATIVA' THEN 5
        WHEN genero = 'POESIA' THEN 6
        WHEN genero = 'POLITICA' THEN 7
        WHEN genero = 'SOCIOLOGIA' THEN 8
        WHEN genero = 'TEORIADELGENERO' THEN 9
        WHEN genero = 'OTROS' THEN 10
        ELSE 10 END);

CREATE TABLE usuarios (
  id int(11) NOT NULL,
  usuario varchar(30) NOT NULL,
  password varchar(30) NOT NULL,
  creacion TIMESTAMP,
  PRIMARY KEY (id),
  UNIQUE KEY (usuario)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO usuarios (id, usuario, password) VALUES
(1, 'admin', '456'),
(2, 'lara', 'lara');

ALTER TABLE libros
  MODIFY id int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

ALTER TABLE usuarios
  MODIFY id int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;


/*UPDATE BIBLIOTECA PARA PROBAR EL CRUD WEB*/
/*

TITULO: RECUERDO DE LENIN
AUTOR: NADEZHDA KRUPSKAYA
PUBLICACION: 2015-04-10
ISBN: 978-84-16285-06-8
PAGINAS: 220
DESCRIPCION: Nadezhda Krupskaya fue muchas cosas: profesora, periodista, militante bolchevique, deportada en Siberia, exiliada... Y también esposa, y después viuda, de Vladimir Illich Ulianov, más conocido como Lenin, con quién trabajaría codo con codo hasta que la vida de él terminase en 1924, y ella se retirase a una vida sosegada lejos de la oleada burócrata que alcanzó el poder tras la muerte del líder de la Revolución de Octubre. La vida personal de Nadezhda y su esposo es en gran parte un misterio aún a día de hoy. En esta biografía íntima de Lenin, escrita por ella, podemos atisbar algunos detalles de las muchas facetas de ambos, en tanto que identidades individuales y también como pareja, y podrán quizá satisfacer la curiosidad sobre dos seres humanos que fueron participantes y testigos de hechos verdaderamente trascendentales durante las primeras décadas del siglo XX.

*/