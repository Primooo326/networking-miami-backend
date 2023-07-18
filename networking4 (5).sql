-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 14-07-2023 a las 23:46:11
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `networking4`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `areas_experiencia`
--

CREATE TABLE `areas_experiencia` (
  `titulo` varchar(255) DEFAULT NULL,
  `descripcion` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `areas_experiencia`
--

INSERT INTO `areas_experiencia` (`titulo`, `descripcion`) VALUES
('Gerentes', 'Los gerentes planifican, dirigen, coordinan y evalúan las actividades generales de empresas, gobiernos y otras organizaciones, o de unidades organizacionales dentro de ellos, y formulan y revisan sus políticas, leyes, normas y reglamentos. El desempeño competente en la mayoría de las ocupaciones de este grupo principal requiere habilidades en el cuarto nivel de habilidades de la CIUO, excepto para el subgrupo principal 14: Gerentes de hotelería, comercio minorista y otros servicios, para los cuales generalmente se requieren habilidades en el tercer nivel de habilidades de la CIUO.'),
('Jefes ejecutivos, altos funcionarios y legisladores', 'Los directores ejecutivos, altos funcionarios y legisladores formulan y revisan las políticas y planifican, dirigen, coordinan y evalúan las actividades generales de las empresas, los gobiernos y otras organizaciones con el apoyo de otros gerentes. El desempeño competente en la mayoría de las ocupaciones de este subgrupo principal requiere habilidades en el cuarto nivel de habilidades de la CIUO.'),
('Legisladores y altos funcionarios', 'Los legisladores y altos funcionarios determinan, formulan, asesoran y dirigen la implementación de las políticas de los gobiernos o comunidades nacionales, estatales, regionales o locales, y de las organizaciones de intereses especiales. Elaboran, ratifican, modifican o derogan leyes, normas y reglamentos públicos y planifican, organizan, dirigen, controlan y evalúan las actividades generales de los departamentos y organismos gubernamentales, las comunidades tradicionales y las organizaciones de intereses especiales.'),
('legisladores', 'Los legisladores determinan, formulan y dirigen las políticas de los gobiernos nacionales, estatales, regionales o locales y las agencias gubernamentales internacionales, y hacen, ratifican, enmendan o derogan leyes, normas y reglamentos públicos. Incluyen miembros electos y no electos de parlamentos, consejos y gobiernos.'),
('Altos funcionarios gubernamentales', 'Los altos funcionarios gubernamentales asesoran a los gobiernos sobre cuestiones de política, supervisan la interpretación y la implementación de las políticas y la legislación gubernamentales por parte de los departamentos y organismos gubernamentales, representan a su país en el extranjero y actúan en su nombre, o realizan tareas similares en organizaciones intergubernamentales. Planifican, organizan, dirigen, controlan y evalúan las actividades generales de los departamentos, juntas, agencias o comisiones del gobierno municipal o local, regional y nacional de acuerdo con la legislación y las políticas establecidas por los órganos gubernamentales y legislativos.'),
('Jefes Tradicionales y Jefes de Pueblos', 'Los jefes tradicionales y los jefes de aldea realizan una variedad de tareas y deberes legislativos, administrativos y ceremoniales, determinados por tradiciones antiguas, así como por la división de derechos y responsabilidades entre los jefes de aldea y las autoridades locales, regionales y nacionales.'),
('Altos funcionarios de organizaciones de intereses especiales', 'Los altos funcionarios de las organizaciones de intereses especiales determinan, formulan y dirigen la implementación de las políticas de las organizaciones de intereses especiales, como las organizaciones de partidos políticos, los sindicatos, las organizaciones de empleadores, las asociaciones comerciales e industriales, las organizaciones humanitarias o benéficas o las asociaciones deportivas, y representar a sus organizaciones y actuar en su nombre.'),
('Gerentes Administrativos y Comerciales', 'Los gerentes administrativos y comerciales planifican, organizan, dirigen, controlan y coordinan las actividades financieras, administrativas, de recursos humanos, políticas, planificación, investigación y desarrollo, publicidad, relaciones públicas y ventas y marketing de empresas y organizaciones, o de empresas que brindan tales servicios a otras empresas y organizaciones. El desempeño competente en la mayoría de las ocupaciones de este subgrupo principal requiere habilidades en el cuarto nivel de habilidades de la CIUO.'),
('Gerentes de Administración y Servicios Empresariales', 'Los gerentes de administración y servicios comerciales planifican, organizan, dirigen, controlan y coordinan las actividades financieras, administrativas, de recursos humanos, de políticas y de planificación de las organizaciones o de las empresas que brindan tales servicios a otras empresas y organizaciones.'),
('Gerentes de Finanzas', 'Los gerentes de finanzas planifican, dirigen y coordinan las operaciones financieras de una empresa u organización, en consulta con los gerentes superiores y con los gerentes de otros departamentos o secciones, o de empresas que brindan servicios financieros a otras empresas y organizaciones.'),
('Gerentes de Recursos Humanos', 'Los gerentes de recursos humanos planifican, dirigen y coordinan las políticas relativas al personal, las relaciones laborales y las actividades de salud y seguridad en el trabajo de una empresa u organización, o de empresas que prestan servicios de recursos humanos a otras empresas y organizaciones.'),
('Gerentes de políticas y planificación', 'Los gerentes de políticas y planificación planifican, organizan, dirigen y coordinan el asesoramiento sobre políticas y las actividades de planificación estratégica dentro del gobierno o para organizaciones no gubernamentales y agencias del sector privado, o administran las actividades de empresas que brindan servicios de políticas y planificación estratégica.'),
('Gerentes de administración y servicios comerciales no clasificados en otra parte', 'Este grupo primario comprende los gerentes de administración y servicios comerciales no clasificados en otra parte del Grupo Menor 121: Gerentes de administración y servicios comerciales. Por ejemplo, el grupo incluye ocupaciones como gerente de instalaciones, gerente de servicios de limpieza, gerente de servicios administrativos empleado ya sea como gerente de un departamento de una gran empresa y organización, o de una empresa que brinda dichos servicios a otras empresas y organizaciones.'),
('Gerentes de ventas, marketing y desarrollo', 'Los gerentes de ventas, marketing y desarrollo planifican, organizan, dirigen, controlan y coordinan las actividades de publicidad, relaciones públicas, investigación y desarrollo y ventas y marketing de empresas y organizaciones, o de empresas que brindan tales servicios a otras empresas y organizaciones.'),
('Gerentes de Ventas y Marketing', 'Los gerentes de ventas y marketing planifican, dirigen y coordinan las actividades de ventas y marketing de una empresa u organización, o de empresas que brindan servicios de ventas y marketing a otras empresas y organizaciones.'),
('Gerentes de Publicidad y Relaciones Públicas', 'Los gerentes de publicidad y relaciones públicas planifican, dirigen y coordinan las actividades de publicidad, relaciones públicas e información pública de empresas y organizaciones o de empresas que brindan servicios relacionados a otras empresas y organizaciones.'),
('Gerentes de Investigación y Desarrollo', 'Los gerentes de investigación y desarrollo planifican, dirigen y coordinan las actividades de investigación y desarrollo de una empresa u organización o de empresas que brindan servicios relacionados a otras empresas y organizaciones.'),
('Gerentes de Producción y Servicios Especializados', 'Los gerentes de producción y servicios especializados planifican, dirigen y coordinan la producción de los bienes y la prestación de los servicios profesionales y técnicos especializados que brinda una empresa u organización, ya sea como gerente de un departamento o como gerente general de una empresa u organización que no tener una jerarquía de gerentes. Son responsables de las operaciones de fabricación, minería, construcción, logística, tecnología de la información y las comunicaciones, de las operaciones agrícolas, forestales y pesqueras a gran escala, y de la prestación de servicios de salud, educación, bienestar social, banca, seguros y otros servicios profesionales y técnicos. El desempeño competente en la mayoría de las ocupaciones de este subgrupo principal requiere habilidades en el cuarto nivel de habilidades de la CIUO.'),
('Gerentes de Producción en Agricultura, Silvicultura y Pesca', 'Los gerentes de producción en agricultura, silvicultura y pesca planifican, dirigen y coordinan la producción en operaciones agrícolas, hortícolas, forestales, acuícolas y pesqueras a gran escala, como plantaciones, grandes ranchos, granjas colectivas y cooperativas para cultivar y cosechar cultivos, criar y criar ganado. , pescados y mariscos y para capturar y recolectar peces y otras formas de vida acuática.'),
('Gerentes de Producción Agropecuaria y Forestal', 'Los gerentes de producción agrícola y forestal planifican, dirigen y coordinan la producción en operaciones agrícolas, hortícolas y forestales a gran escala, como plantaciones, grandes ranchos, granjas colectivas y cooperativas agrícolas para cultivar y cosechar cultivos, y criar y criar ganado.'),
('Gerentes de Producción Acuícola y Pesquera', 'Los gerentes de producción acuícola y pesquera planifican, dirigen y coordinan la producción en operaciones acuícolas y pesqueras a gran escala para capturar y recolectar peces y mariscos, y cultivar peces, mariscos u otras formas de vida acuática, como cultivos comerciales o para su liberación en agua dulce o salada. .'),
('Gerentes de Manufactura, Minería, Construcción y Distribución', 'Los gerentes de manufactura, minería, construcción y distribución planifican, organizan y coordinan las operaciones de manufactura, extracción de minerales, construcción, suministro, almacenamiento y transporte, ya sea como gerente de un departamento o como gerente general de una empresa u organización que no tener una jerarquía de gerentes.'),
('Gerentes de Fabricación', 'Los gerentes de manufactura planifican, dirigen y coordinan las actividades relacionadas con la producción de bienes, la producción y distribución de electricidad, gas y agua, y la recolección, tratamiento y eliminación de desechos. Pueden administrar los departamentos de producción de grandes empresas o ser gerentes de pequeñas empresas manufactureras.'),
('Gerentes de Minería', 'Los gerentes mineros planifican, dirigen y coordinan la producción de las actividades de explotación de minas, canteras y extracción de petróleo y gas, ya sea como gerente de un departamento o como gerente general de una empresa u organización que no tenga una jerarquía de gerentes.'),
('Gerentes de Construcción', 'Los directores de obra planifican, dirigen y coordinan la construcción de proyectos de ingeniería civil, edificios y viviendas, ya sea como director de un departamento o como director general de una empresa u organización que no tenga una jerarquía de directores.'),
('Gerentes de Abastecimiento, Distribución y Afines', 'Los gerentes de suministro, distribución y afines planifican, dirigen y coordinan los sistemas e instalaciones de transporte de pasajeros y el suministro, transporte, almacenamiento y distribución de bienes, ya sea como gerente de un departamento o como gerente general de una empresa u organización que no tiene un jerarquía de gerentes.'),
('Gerentes de Servicios Profesionales', 'Los gerentes de servicios profesionales planifican, dirigen y coordinan la prestación de servicios de cuidado de niños, salud, bienestar, educación y otros servicios profesionales, y administran las sucursales de instituciones que brindan servicios financieros y de seguros.'),
('Gerentes de servicios de cuidado infantil', 'Los gerentes de servicios de cuidado infantil planifican, dirigen, coordinan y evalúan la provisión de cuidado para niños en centros y servicios de guardería antes y después de la escuela, durante las vacaciones y durante el día.'),
('Gerentes de Servicios de Salud', 'Los gerentes de servicios de salud planifican, dirigen, coordinan y evalúan la provisión de servicios de atención de salud clínicos y comunitarios en hospitales, clínicas, agencias de salud pública y organizaciones similares.'),
('Gerentes de servicios de atención a la tercera edad', 'Los gestores de servicios de atención a la tercera edad planifican, coordinan y evalúan directamente la prestación de servicios de atención residencial y personal para las personas y familias que los necesitan debido a los efectos del envejecimiento.'),
('Gerentes de Bienestar Social', 'Los administradores de bienestar social planifican, dirigen y coordinan la provisión de programas de servicios sociales y comunitarios, como apoyo a los ingresos, asistencia familiar, servicios para niños y otros programas y servicios comunitarios.'),
('Gerentes de Educación', 'Los gerentes de educación planifican, dirigen, coordinan y evalúan los aspectos educativos y administrativos de los servicios educativos, escuelas primarias y secundarias, colegios y facultades y departamentos en universidades y otras instituciones educativas.'),
('Gerentes de Sucursales de Servicios Financieros y de Seguros', 'Los gerentes de sucursales de servicios financieros y de seguros planifican, dirigen y coordinan las sucursales de instituciones que brindan servicios financieros y de seguros, como bancos, sociedades de crédito hipotecario, cooperativas de crédito y compañías de seguros. Brindan asesoramiento y asistencia a los clientes en materia financiera y de seguros.'),
('Gerentes de servicios profesionales no clasificados en otra parte', 'Este grupo primario comprende a los gerentes que planifican, dirigen, coordinan y evalúan la prestación de servicios técnicos y profesionales especializados y no están clasificados en el Grupo Menor 121: Gerentes de Administración y Servicios Empresariales, ni en ningún otro lugar del Grupo Menor 134: Gerentes de Servicios Profesionales. Por ejemplo, los gerentes responsables de la provisión de servicios policiales, correccionales, bibliotecarios, legales y de bomberos se clasifican aquí.'),
('Gerentes de Hotelería, Retail y Otros Servicios', 'Los gerentes de hostelería, comercio y servicios relacionados planifican, organizan y dirigen las operaciones de los establecimientos que ofrecen alojamiento, hostelería, venta al por menor y otros servicios. El desempeño competente en la mayoría de las ocupaciones de este subgrupo principal requiere habilidades en el tercer nivel de habilidades de la CIUO.'),
('Gerentes de hoteles y restaurantes', 'Los gerentes de hoteles y restaurantes planifican, organizan y dirigen las operaciones de los establecimientos que brindan alojamiento, comidas, bebidas y otros servicios de hospitalidad.'),
('Gerentes de hotel', 'Los administradores de hoteles planifican, organizan y dirigen las operaciones de hoteles, moteles y establecimientos similares para brindar alojamiento a los huéspedes y otros servicios.'),
('Gerentes de restaurante', 'Los gerentes de restaurantes planifican, organizan y dirigen las operaciones de cafés, restaurantes y establecimientos relacionados para brindar servicios de comidas y catering.'),
('Gerentes de otros servicios', 'Los administradores de otros servicios planifican, organizan y controlan las operaciones de los establecimientos que brindan servicios deportivos, culturales, recreativos, de viajes, contacto con el cliente y otros servicios de esparcimiento.'),
('Gerentes de Centros Deportivos, Recreativos y Culturales', 'Los administradores de centros deportivos, recreativos y culturales planifican, organizan y controlan el funcionamiento de los establecimientos que prestan servicios deportivos, artísticos, teatrales y otros de esparcimiento y esparcimiento.'),
('Gerentes de servicios no clasificados en otra parte', 'Este grupo primario comprende a los gerentes que planifican, dirigen y coordinan la prestación de servicios y no están clasificados en el Subgrupo principal 13: Gerentes de producción y servicios especializados ni en ningún otro lugar del Subgrupo principal 14: Gerentes de hotelería, comercio minorista y otros servicios. Por ejemplo, los gerentes de agencias de viajes, centros de conferencias, centros de contacto y centros comerciales se clasifican aquí.'),
('Profesionales', 'Los profesionales aumentan el stock de conocimiento existente; aplicar conceptos y teorías científicas o artísticas; enseñar sobre lo anterior de manera sistemática; o participar en cualquier combinación de estas actividades. El desempeño competente en la mayoría de las ocupaciones de este grupo principal requiere habilidades en el cuarto nivel de habilidades de la CIUO.'),
('Profesionales de la ciencia y la ingeniería', 'Los profesionales de la ciencia y la ingeniería realizan investigaciones, mejoran o desarrollan conceptos, teorías y métodos operativos, o aplican conocimientos científicos relacionados con campos como la física, la astronomía, la meteorología, la química, la geofísica, la geología, la biología, la ecología, la farmacología, la medicina, las matemáticas, la estadística, la arquitectura, ingeniería, diseño y tecnología. El desempeño competente en la mayoría de las ocupaciones de este subgrupo principal requiere habilidades en el cuarto nivel de habilidades de la CIUO.'),
('Profesionales de las Ciencias Físicas y de la Tierra', 'Los profesionales de las ciencias físicas y de la tierra realizan investigaciones; mejorar o desarrollar conceptos, teorías y métodos operativos, o aplicar conocimientos científicos relacionados con la física, la astronomía, la meteorología, la química, la geología y la geofísica.'),
('físicos y astrónomos', 'Los físicos y astrónomos realizan investigaciones y mejoran o desarrollan conceptos, teorías y métodos operativos relacionados con la materia, el espacio, el tiempo, la energía, las fuerzas y los campos y la interrelación entre estos fenómenos físicos. Aplican conocimientos científicos relacionados con la física y la astronomía en campos industriales, médicos, militares u otros.'),
('meteorólogos', 'Los meteorólogos preparan pronósticos meteorológicos a corto o largo plazo que se utilizan en la aviación, el transporte marítimo, la agricultura y otras áreas y para la información del público en general. Realizan investigaciones relacionadas con la composición, estructura y dinámica de la atmósfera.'),
('Farmacia', 'Los químicos realizan investigaciones, mejoran o desarrollan conceptos, teorías y métodos operativos, o aplican conocimientos científicos relacionados con la química, para desarrollar nuevos conocimientos o productos y para el control de procesos y calidad.'),
('Geólogos y geofísicos', 'Los geólogos y geofísicos realizan investigaciones; mejorar o desarrollar conceptos, teorías y métodos operativos, o aplicar conocimientos científicos relacionados con la geología y la geofísica en campos como la exploración y extracción de petróleo, gas y minerales, la conservación del agua, la ingeniería civil, las telecomunicaciones y la navegación, y la evaluación y mitigación de los efectos de proyectos de desarrollo y eliminación de residuos en el medio ambiente.'),
('Profesionales de las Ciencias de la Vida', 'Los profesionales de las ciencias de la vida aplican el conocimiento obtenido de la investigación sobre la vida humana, animal y vegetal y sus interacciones entre sí y con el medio ambiente para desarrollar nuevos conocimientos, mejorar la producción agrícola y forestal y resolver problemas ambientales y de salud humana.'),
('Biólogos, Botánicos, Zoólogos y Profesionales Afines', 'Los biólogos, botánicos, zoólogos y profesionales afines estudian los organismos vivos y sus interacciones entre sí y con el medio ambiente, y aplican este conocimiento para resolver problemas ambientales y de salud humana. Trabajan en campos tan diversos como la botánica, zoología, ecología, biología marina, genética, inmunología, farmacología, toxicología, fisiología, bacteriología y virología.'),
('Asesores Agropecuarios, Forestales y Pesqueros', 'Los asesores agrícolas, forestales y pesqueros estudian y brindan asistencia y asesoramiento sobre gestión agrícola, forestal y pesquera, incluidos el cultivo, la fertilización, la cosecha, la erosión y composición del suelo, la prevención de enfermedades, la nutrición, la rotación de cultivos y la comercialización. Desarrollan técnicas para aumentar la productividad y estudian y desarrollan planes y políticas para la gestión de la tierra y la pesca.'),
('Profesionales de la Protección Ambiental', 'Los profesionales de la protección ambiental estudian y evalúan los efectos sobre el medio ambiente de la actividad humana, como la contaminación del aire, el agua y el ruido, la contaminación del suelo, el cambio climático, los desechos tóxicos y el agotamiento y degradación de los recursos naturales. Desarrollan planes y soluciones para proteger, conservar, restaurar, minimizar y prevenir mayores daños al medio ambiente.'),
('Profesionales de Ingeniería (excluyendo Electrotecnología)', 'Los profesionales de la ingeniería (excluida la electrotecnia) diseñan, planifican y organizan las pruebas, la construcción, la instalación y el mantenimiento de estructuras, máquinas y sus componentes, y sistemas y plantas de producción; y planificar programas de producción y procedimientos de trabajo para garantizar que los proyectos de ingeniería se lleven a cabo de manera segura, eficiente y rentable.'),
('Ingenieros Industriales y de Producción', 'Los ingenieros industriales y de producción investigan y diseñan, organizan y supervisan la construcción, operación y mantenimiento de los procesos e instalaciones de producción industrial. Establecen programas para la coordinación de las actividades de fabricación y evalúan la rentabilidad y la seguridad.'),
('Ingenieros Civiles', 'Los ingenieros civiles realizan investigaciones, asesoran, diseñan y dirigen la construcción; administrar la operación y mantenimiento de estructuras de ingeniería civil; o estudiar y asesorar sobre aspectos tecnológicos de materiales particulares.'),
('Ingenieros Ambientales', 'Los ingenieros ambientales realizan investigaciones, asesoran, diseñan e implementan directamente soluciones para prevenir, controlar o remediar los impactos negativos de la actividad humana en el medio ambiente utilizando una variedad de disciplinas de ingeniería. Realizan evaluaciones ambientales de proyectos de construcción e ingeniería civil y aplican principios de ingeniería al control de la contaminación, el reciclaje y la eliminación de desechos.'),
('Ingenieros mecánicos', 'Los ingenieros mecánicos realizan investigaciones; asesorar, diseñar y dirigir la producción de máquinas, aeronaves, barcos, maquinaria y plantas, equipos y sistemas industriales; asesorar y dirigir su funcionamiento, mantenimiento y reparación; o estudiar y asesorar sobre aspectos mecánicos de materiales, productos o procesos particulares.'),
('Ingenieros Químicos', 'Los ingenieros químicos realizan investigaciones y desarrollan, asesoran y dirigen procesos químicos a escala comercial y la producción de diversas sustancias y artículos, como petróleo crudo, derivados del petróleo, productos alimenticios y bebidas, medicamentos o materiales sintéticos. Dirigen el mantenimiento y la reparación de plantas y equipos químicos y estudian y asesoran sobre aspectos químicos de materiales, productos o procesos particulares.'),
('Ingenieros de Minas, Metalúrgicos y Afines', 'Los ingenieros de minas, metalúrgicos y profesionales afines investigan, diseñan, desarrollan y mantienen métodos a escala comercial para extraer metales de sus minerales, o minerales, agua, petróleo o gas de la tierra, y desarrollar nuevas aleaciones, cerámicas y otros materiales, o estudiar y asesorar sobre aspectos mineros o metalúrgicos de materiales, productos o procesos particulares.'),
('Profesionales de la ingeniería no clasificados en otra parte', 'Este grupo primario comprende a los profesionales de la ingeniería no clasificados en otra parte del Grupo secundario 214: Profesionales de la ingeniería (excluida la electrotecnología) o del Grupo secundario 215: Ingenieros en electrotecnología. Por ejemplo, el grupo incluye a quienes realizan investigaciones y asesoran o desarrollan procedimientos y soluciones de ingeniería relacionados con la seguridad en el lugar de trabajo, la ingeniería biomédica, la óptica, los materiales, la generación de energía nuclear y los explosivos.'),
('Ingenieros en Electrotecnología', 'Los ingenieros en electrotecnología investigan y diseñan, asesoran, planifican y dirigen la construcción y operación de sistemas, componentes, motores y equipos electrónicos, eléctricos y de telecomunicaciones. Organizan y establecen sistemas de control para monitorear el desempeño y la seguridad de los conjuntos y sistemas eléctricos y electrónicos.'),
('Ingenieros electricos', 'Los ingenieros eléctricos investigan y asesoran, diseñan y dirigen la construcción y operación de sistemas, componentes, motores y equipos eléctricos, y asesoran y dirigen su funcionamiento, mantenimiento y reparación, o estudian y asesoran sobre aspectos tecnológicos de materiales y productos de ingeniería eléctrica. y procesos.'),
('Ingenieros electrónicos', 'Los ingenieros electrónicos investigan, diseñan y dirigen la construcción, el funcionamiento, el mantenimiento y la reparación de sistemas electrónicos, y estudian y asesoran sobre aspectos tecnológicos de materiales, productos o procesos de ingeniería electrónica.'),
('Ingenieros de Telecomunicaciones', 'Los ingenieros de telecomunicaciones investigan y asesoran, diseñan y dirigen la construcción, funcionamiento, mantenimiento y reparación de sistemas y equipos de telecomunicaciones. Estudian y asesoran sobre aspectos tecnológicos de materiales, productos o procesos de ingeniería de telecomunicaciones.'),
('Arquitectos, Planificadores, Topógrafos y Diseñadores', 'Los arquitectos, planificadores, topógrafos y diseñadores planifican y diseñan paisajes, exteriores e interiores de edificios, productos para la fabricación y contenido visual y audiovisual para la comunicación de información. Realizan trabajos topográficos para posicionar con precisión las características geográficas; diseñar, preparar y revisar mapas; y desarrollar e implementar planes y políticas para controlar el uso de la tierra.'),
('Arquitectos de la construcción', 'Los arquitectos de edificios diseñan edificios comerciales, industriales, institucionales, residenciales y recreativos y planifican y supervisan su construcción, mantenimiento y rehabilitación.'),
('Arquitectos Paisajistas', 'Los arquitectos paisajistas planifican y diseñan paisajes y espacios abiertos para proyectos como parques, escuelas, instituciones, carreteras, áreas externas para sitios comerciales, industriales y residenciales, y planifican y supervisan su construcción, mantenimiento y rehabilitación.'),
('Diseñadores de productos y prendas', 'Los diseñadores de productos y prendas diseñan y desarrollan productos para la fabricación y preparan diseños y especificaciones de productos para la producción en masa, por lotes y única.'),
('Urbanistas y planificadores de tráfico', 'Los urbanistas y planificadores de tráfico desarrollan e implementan planes y políticas para el uso controlado de suelo urbano y rural y para sistemas de tráfico. Realizan investigaciones y brindan asesoramiento sobre los factores económicos, ambientales y sociales que afectan el uso de la tierra y los flujos de tráfico.'),
('Cartógrafos y Agrimensores', 'Los cartógrafos y agrimensores determinan la posición exacta, o preparan y revisan mapas digitales, gráficos y pictóricos, tablas u otras representaciones visuales de las características naturales y construidas y los límites de la tierra, los mares, las áreas subterráneas y los cuerpos celestes, aplicando principios científicos y matemáticos.'),
('Diseñadores Gráficos y Multimedia', 'Los diseñadores gráficos y multimedia diseñan contenido visual y audiovisual para la comunicación de información utilizando medios impresos, cinematográficos, electrónicos, digitales y otras formas de medios visuales y de audio. Crean gráficos, efectos especiales, animaciones u otras imágenes visuales para usar en juegos de computadora, películas, videos musicales, medios impresos y anuncios.'),
('Profesionales de la salud', 'Los profesionales de la salud realizan investigaciones; mejorar o desarrollar conceptos, teorías y métodos operativos; y aplicar los conocimientos científicos relacionados con la medicina, enfermería, odontología, medicina veterinaria, farmacia y promoción de la salud. El desempeño competente en la mayoría de las ocupaciones de este subgrupo principal requiere habilidades en el cuarto nivel de habilidades de la CIUO.'),
('Doctores en Medicina', 'Los médicos (médicos) estudian, diagnostican, tratan y previenen enfermedades, lesiones y otros impedimentos físicos y mentales en los seres humanos mediante la aplicación de los principios y procedimientos de la medicina moderna. Planifican, supervisan y evalúan la implementación de planes de atención y tratamiento por parte de otros proveedores de atención médica, y realizan actividades de investigación y educación médica.'),
('Médicos Generalistas', 'Los médicos generalistas (incluidos los médicos de familia y de atención primaria) diagnostican, tratan y previenen enfermedades, lesiones y otros impedimentos físicos y mentales y mantienen la salud general en los seres humanos mediante la aplicación de los principios y procedimientos de la medicina moderna. No limitan su práctica a ciertas categorías de enfermedades o métodos de tratamiento, y pueden asumir la responsabilidad de brindar atención médica continua e integral a individuos, familias y comunidades.'),
('Médicos especialistas', 'Los médicos especialistas (médicos) diagnostican, tratan y previenen enfermedades, lesiones y otros impedimentos físicos y mentales en humanos, utilizando pruebas especializadas, técnicas de diagnóstico, médicas, quirúrgicas, físicas y psiquiátricas, mediante la aplicación de los principios y procedimientos de medicina moderna. Se especializan en ciertas categorías de enfermedades, tipos de pacientes o métodos de tratamiento y pueden realizar estudios e investigaciones médicas en las áreas de especialización que elijan.'),
('Profesionales de Enfermería y Partería', 'Los profesionales de enfermería y obstetricia brindan servicios de tratamiento y atención a personas con enfermedades físicas o mentales, discapacitadas o enfermas, y otras personas que necesitan atención debido a riesgos potenciales para la salud, incluso antes, durante y después del parto. Asumen la responsabilidad de la planificación, gestión y evaluación de la atención de los pacientes, incluida la supervisión de otros trabajadores de la salud, trabajando de forma autónoma o en equipos con médicos y otros en la aplicación práctica de medidas preventivas y curativas.'),
('Profesionales de Enfermería', 'Los profesionales de enfermería brindan servicios de tratamiento, apoyo y atención a las personas que necesitan atención de enfermería debido a los efectos del envejecimiento, lesiones, enfermedades u otros impedimentos físicos o mentales, o riesgos potenciales para la salud. Asumen la responsabilidad de la planificación y gestión de la atención de los pacientes, incluida la supervisión de otros trabajadores de la salud, trabajando de forma autónoma o en equipos con médicos y otros en la aplicación práctica de medidas preventivas y curativas.'),
('Profesionales de la partería', 'Los profesionales de partería planifican, gestionan, brindan y evalúan los servicios de atención de partería antes, durante y después del embarazo y el parto. Proporcionan atención del parto para reducir los riesgos para la salud de las mujeres y los niños recién nacidos, trabajando de forma autónoma o en equipos con otros proveedores de atención médica.'),
('Otros profesionales de la salud', 'Otros profesionales de la salud brindan servicios de salud relacionados con odontología, farmacia, salud e higiene ambiental, salud y seguridad ocupacional, fisioterapia, nutrición, terapias de audición, habla, visión y rehabilitación. Este grupo menor incluye a todos los profesionales de la salud humana, excepto médicos, practicantes de medicina tradicional y complementaria, enfermeras, parteras y profesionales paramédicos.'),
('dentistas', 'Los dentistas diagnostican, tratan y previenen enfermedades, lesiones y anomalías de los dientes, la boca, los maxilares y los tejidos asociados aplicando los principios y procedimientos de la odontología moderna. Utilizan una amplia gama de técnicas especializadas de diagnóstico, quirúrgicas y de otro tipo para promover y restaurar la salud oral.'),
('farmacéuticos', 'Los farmacéuticos almacenan, conservan, elaboran y dispensan productos medicinales y asesoran sobre el uso adecuado y los efectos adversos de las drogas y medicamentos siguiendo las prescripciones emitidas por médicos y otros profesionales de la salud. Contribuyen a investigar, probar, preparar, prescribir y monitorear terapias medicinales para optimizar la salud humana.'),
('Profesionales de la Salud e Higiene Ambiental y Ocupacional', 'Los profesionales de la salud e higiene ambiental y ocupacional evalúan, planifican e implementan programas para reconocer, monitorear y controlar los factores ambientales que pueden afectar la salud humana, para garantizar condiciones de trabajo seguras y saludables y para prevenir enfermedades o lesiones causadas por agentes químicos, físicos, radiológicos y biológicos. agentes o factores ergonómicos.'),
('fisioterapeutas', 'Los fisioterapeutas evalúan, planifican e implementan programas de rehabilitación que mejoran o restauran las funciones motoras humanas, maximizan la capacidad de movimiento, alivian los síndromes de dolor y tratan o previenen los desafíos físicos asociados con lesiones, enfermedades y otros impedimentos. Aplican una amplia gama de terapias físicas y técnicas como movimiento, ultrasonido, calor, láser y otras técnicas.'),
('Dietistas y Nutricionistas', 'Los dietistas y nutricionistas evalúan, planifican e implementan programas para mejorar el impacto de los alimentos y la nutrición en la salud humana.'),
('Audiólogos y logopedas', 'Los audiólogos y terapeutas del habla evalúan, manejan y tratan los trastornos físicos que afectan la audición, el habla, la comunicación y la deglución humanas. Recetan dispositivos correctivos o terapias de rehabilitación para la pérdida auditiva, los trastornos del habla y los problemas sensoriales y neurales relacionados, y brindan asesoramiento sobre la seguridad auditiva y el desempeño de la comunicación.'),
('Optometristas y Ópticos Oftálmicos', 'Los optometristas y ópticos oftálmicos brindan servicios de diagnóstico, manejo y tratamiento para los trastornos de los ojos y el sistema visual. Aconsejan sobre el cuidado de los ojos y prescriben ayudas ópticas u otras terapias para los trastornos visuales.'),
('Profesionales de la salud no clasificados en otra parte', 'Este grupo primario cubre a los profesionales de la salud no clasificados en otra parte del Subgrupo principal 22: Profesionales de la salud. Por ejemplo, el grupo incluye ocupaciones como podólogo, terapeuta ocupacional, terapeuta recreativo, quiropráctico, osteópata y otros profesionales que brindan servicios de salud de diagnóstico, prevención, curación y rehabilitación.'),
('Profesionales de la enseñanza', 'Los profesionales de la enseñanza enseñan la teoría y la práctica de una o más disciplinas en los diferentes niveles educativos; investigacion de conducta; mejorar o desarrollar conceptos, teorías y métodos operativos relacionados con su disciplina particular; y preparar artículos y libros académicos. El desempeño competente en la mayoría de las ocupaciones de este subgrupo principal requiere habilidades en el cuarto nivel de habilidades de la CIUO.'),
('Profesores de educación vocacional', 'Los profesores de educación vocacional enseñan o instruyen materias vocacionales u ocupacionales en instituciones de educación superior y de adultos y a estudiantes de último año en escuelas secundarias y universidades. Preparan a los estudiantes para el empleo en ocupaciones específicas o áreas ocupacionales para las que normalmente no se requiere educación universitaria o superior.'),
('Profesores de Educación Profesional', 'Los profesores de educación vocacional enseñan o instruyen materias vocacionales u ocupacionales en instituciones de educación superior y de adultos y a estudiantes de último año en escuelas secundarias y universidades. Preparan a los estudiantes para el empleo en ocupaciones específicas o áreas ocupacionales para las que normalmente no se requiere educación universitaria o superior.'),
('Profesores de Educación Primaria y Primera Infancia', 'Los maestros de la escuela primaria y de la primera infancia enseñan una variedad de materias en el nivel de educación primaria y organizan actividades educativas para niños menores de la edad de asistir a la escuela primaria.'),
('Profesores de primaria', 'Los maestros de escuela primaria enseñan una variedad de materias en el nivel de educación primaria.'),
('Educadores de la Primera Infancia', 'Los educadores de la primera infancia promueven el desarrollo social, físico e intelectual de los niños por debajo de la edad de asistir a la escuela primaria mediante la provisión de actividades educativas y lúdicas.'),
('Otros profesionales de la enseñanza', 'Otros profesionales de la enseñanza realizan investigaciones y asesoran sobre métodos de enseñanza, enseñan a personas con dificultades de aprendizaje o necesidades especiales; enseñar idiomas no nativos para la migración y fines relacionados; dar clases particulares; enseñar artes, tecnología de la información y otras materias fuera de los sistemas generales de educación primaria, secundaria y superior; y prestar otros servicios de enseñanza no clasificados en otra parte del Subgrupo principal 23: Profesionales de la enseñanza.'),
('Especialistas en Métodos Educativos', 'Los especialistas en métodos educativos realizan investigaciones y desarrollan o asesoran sobre métodos de enseñanza, cursos y ayudas. Revisan y examinan el trabajo de los docentes, el funcionamiento de las instituciones educativas y los resultados alcanzados y recomiendan cambios y mejoras.'),
('Maestros con necesidades especiales', 'Los profesores de necesidades especiales enseñan a niños, jóvenes o adultos discapacitados física o mentalmente, oa aquellos con dificultades de aprendizaje u otras necesidades especiales. Promueven el desarrollo social, emocional, intelectual y físico de sus alumnos.'),
('Profesores de otros idiomas', 'Los profesores de otros idiomas enseñan idiomas no nativos a adultos y niños que están aprendiendo un idioma por motivos de migración, para cumplir con los requisitos u oportunidades laborales, para facilitar la participación en programas educativos impartidos en un idioma extranjero o para el enriquecimiento personal. Trabajan fuera de los sistemas generales de educación primaria, secundaria y superior, o en apoyo de los estudiantes y docentes dentro de esos sistemas.'),
('Otros profesores de música', 'Otros profesores de música enseñan a los estudiantes en la práctica, la teoría y la interpretación de la música fuera de los sistemas de educación primaria, secundaria y superior, pero pueden ofrecer clases particulares o en grupos pequeños como actividad extracurricular en asociación con las instituciones educativas convencionales.'),
('Otros profesores de artes', 'Otros profesores de artes enseñan a los estudiantes la práctica, la teoría y la interpretación de la danza, el teatro, las artes visuales y otras artes (excepto la música) fuera de los sistemas de educación primaria, secundaria y superior convencionales, pero pueden proporcionar clases particulares o en grupos pequeños como actividad extracurricular en asociación. con las principales instituciones educativas.'),
('Entrenadores de tecnología de la información', 'Los capacitadores en tecnología de la información desarrollan, programan y llevan a cabo programas y cursos de capacitación para usuarios de computadoras y otras tecnologías de la información fuera de los sistemas principales de educación primaria, secundaria y superior.'),
('Profesionales de la enseñanza no clasificados en otra parte', 'Este grupo primario cubre a los profesionales de la enseñanza no clasificados en otra parte del Subgrupo principal 23: Profesionales de la enseñanza. Por ejemplo, el grupo incluye a quienes brindan clases particulares en materias que no sean lenguas extranjeras y artes, y quienes brindan asesoramiento educativo a los estudiantes.'),
('Profesionales de la Administración y la Empresa', 'Los profesionales de administración y negocios realizan labores analíticas, conceptuales y prácticas para brindar servicios en materia financiera, desarrollo de recursos humanos, relaciones públicas, mercadeo y ventas en las áreas técnica, médica, tecnologías de la información y la comunicación; y conducta, revisiones de estructuras, métodos y sistemas organizacionales, así como análisis cuantitativos de la información que afecta los programas de inversión. El desempeño competente en la mayoría de las ocupaciones de este subgrupo principal requiere habilidades en el cuarto nivel de habilidades de la CIUO.'),
('Profesionales de las finanzas', 'Los profesionales de las finanzas planifican, desarrollan, organizan, administran, invierten, gestionan y realizan análisis cuantitativos de sistemas de contabilidad financiera o de fondos para personas, establecimientos e instituciones públicas o privadas.'),
('contadores', 'Los contadores planifican, organizan y administran los sistemas de contabilidad para individuos y establecimientos. Algunas ocupaciones clasificadas aquí examinan y analizan los registros contables y financieros de personas y establecimientos para garantizar la precisión y el cumplimiento de las normas y procedimientos contables establecidos.'),
('Asesores Financieros y de Inversiones', 'Los asesores financieros y de inversiones desarrollan planes financieros para individuos y organizaciones, e invierten y administran fondos en su nombre.'),
('Analistas Financieros', 'Los analistas financieros realizan análisis cuantitativos de la información que afecta los programas de inversión de instituciones públicas o privadas.'),
('Profesionales de la Administración', 'Los profesionales de la administración aplican varios conceptos y teorías relacionados con la mejora de la eficacia de las organizaciones y de las personas que la integran.'),
('Analistas de Gestión y Organización', 'Los analistas de gestión y organización ayudan a las organizaciones a lograr una mayor eficiencia y resolver problemas organizacionales. Estudian estructuras organizativas, métodos, sistemas y procedimientos.'),
('Profesionales de la administración de pólizas', 'Los profesionales de administración de políticas desarrollan y analizan políticas que guían el diseño, la implementación y la modificación de operaciones y programas gubernamentales y comerciales.'),
('Personal y Carreras Profesionales', 'Los profesionales de personal y de carrera prestan servicios empresariales profesionales relacionados con políticas de personal tales como contratación o desarrollo de empleados, análisis ocupacional y orientación vocacional.'),
('Profesionales de Capacitación y Desarrollo del Personal', 'Los profesionales de capacitación y desarrollo del personal planifican, desarrollan, implementan y evalúan programas de capacitación y desarrollo para garantizar que la gerencia y el personal adquieran las habilidades y desarrollen las competencias requeridas por las organizaciones para cumplir con los objetivos organizacionales.'),
('Profesionales de Ventas, Marketing y Relaciones Públicas', 'Los profesionales de ventas, marketing y relaciones públicas planifican, desarrollan, coordinan e implementan programas de difusión de información para promover organizaciones, bienes y servicios; y representar a empresas en la venta de una gama de bienes y servicios técnicos, industriales, médicos, farmacéuticos y de TIC.'),
('Profesionales de la publicidad y el marketing', 'Los profesionales de la publicidad y el marketing desarrollan y coordinan estrategias y campañas publicitarias, determinan el mercado para nuevos bienes y servicios, e identifican y desarrollan oportunidades de mercado para bienes y servicios nuevos y existentes.'),
('Profesionales de Relaciones Públicas', 'Los profesionales de relaciones públicas planifican, desarrollan, implementan y evalúan estrategias de información y comunicación que crean una comprensión y una visión favorable de las empresas y otras organizaciones, sus bienes y servicios, y su papel en la comunidad.'),
('Profesionales de Ventas Técnicas y Médicas (excluyendo TIC)', 'Los profesionales de ventas técnicas y médicas (excluidas las TIC) representan a las empresas en la venta de una gama de bienes y servicios industriales, médicos y farmacéuticos a establecimientos industriales, comerciales, profesionales y de otro tipo.'),
('Profesionales de Ventas de Tecnologías de la Información y las Comunicaciones', 'Los profesionales de ventas de tecnología de la información y las comunicaciones (TIC) venden, a nivel mayorista, una variedad de hardware, software y otros bienes y servicios de tecnología de la información y las comunicaciones, incluidas las instalaciones, y brindan información especializada según sea necesario.'),
('Profesionales de las Tecnologías de la Información y las Comunicaciones', 'Los profesionales de la tecnología de la información y las comunicaciones realizan investigaciones, planifican, diseñan, escriben, prueban, brindan asesoramiento y mejoran los sistemas de tecnología de la información, el hardware, el software y los conceptos relacionados para aplicaciones específicas; desarrollar documentación asociada que incluya principios, políticas y procedimientos; y diseñar, desarrollar, controlar, mantener y respaldar bases de datos y otros sistemas de información para garantizar un rendimiento óptimo y la integridad y seguridad de los datos.'),
('Desarrolladores y analistas de software y aplicaciones', 'Los desarrolladores y analistas de software y aplicaciones realizan investigaciones, planifican, diseñan, escriben, prueban, brindan asesoramiento y mejoran los sistemas de tecnología de la información, como hardware, software y otras aplicaciones, para cumplir con requisitos específicos. El desempeño competente en la mayoría de las ocupaciones de este subgrupo principal requiere habilidades en el cuarto nivel de habilidades de la CIUO.'),
('Analistas de Sistemas', 'Los analistas de sistemas realizan investigaciones, analizan y evalúan los requisitos, procedimientos o problemas de tecnología de la información del cliente, y desarrollan e implementan propuestas, recomendaciones y planes para mejorar los sistemas de información actuales o futuros.'),
('Desarrolladores de software', 'Los desarrolladores de software investigan, analizan y evalúan los requisitos para aplicaciones de software y sistemas operativos existentes o nuevos, y diseñan, desarrollan, prueban y mantienen soluciones de software para cumplir con estos requisitos.'),
('Desarrolladores Web y Multimedia', 'Los profesionales del desarrollo web y multimedia combinan diseño y conocimientos técnicos para investigar, analizar, evaluar, diseñar, programar y modificar sitios web y aplicaciones que reúnen texto, gráficos, animaciones, imágenes, audio y video y otros medios interactivos.'),
('Programadores de aplicaciones', 'Los programadores de aplicaciones escriben y mantienen código programable descrito en instrucciones y especificaciones técnicas para aplicaciones de software y sistemas operativos.'),
('Desarrolladores y analistas de software y aplicaciones no clasificados en otra parte', 'Este grupo primario cubre los desarrolladores y analistas de software y aplicaciones no clasificados en otra parte del Grupo secundario 251: Desarrolladores y analistas de software y aplicaciones. Por ejemplo, el grupo incluye a aquellos profesionales que se especializan en el aseguramiento de la calidad, incluidas las pruebas de software.'),
('Profesionales de bases de datos y redes', 'Los profesionales de bases de datos y redes diseñan, desarrollan, controlan, mantienen y respaldan el rendimiento y la seguridad óptimos de los sistemas e infraestructuras de tecnología de la información, incluidas las bases de datos, el hardware y el software, las redes y los sistemas operativos.'),
('Diseñadores y administradores de bases de datos', 'Los diseñadores y administradores de bases de datos diseñan, desarrollan, controlan, mantienen y respaldan el rendimiento y la seguridad óptimos de las bases de datos.'),
('Administradores de sistemas', 'Los administradores de sistemas desarrollan, controlan, mantienen y respaldan el rendimiento y la seguridad óptimos de los sistemas de tecnología de la información.'),
('Profesionales de redes informáticas', 'Los profesionales de redes informáticas investigan, analizan, diseñan, prueban y recomiendan estrategias para la arquitectura y el desarrollo de redes. Implementan, administran, mantienen y configuran hardware y software de red, y supervisan, solucionan problemas y optimizan el rendimiento.'),
('Profesionales de bases de datos y redes no clasificados en otra parte', 'Este grupo primario incluye profesionales de bases de datos y redes no clasificados en otra parte del Grupo menor 252: Profesionales de bases de datos y redes. Por ejemplo, el grupo incluye especialistas en seguridad de tecnología de la información y las comunicaciones.');
INSERT INTO `areas_experiencia` (`titulo`, `descripcion`) VALUES
('Profesionales Jurídicos, Sociales y Culturales', 'Los profesionales del derecho, la sociedad y la cultura realizan investigaciones, mejoran o desarrollan conceptos, teorías y métodos operativos; o aplicar conocimientos relacionados con la ley, almacenamiento y recuperación de información y artefactos, psicología, bienestar social, política, economía, historia, religión, idiomas, sociología, otras ciencias sociales y artes y entretenimiento. El desempeño competente en la mayoría de las ocupaciones de este subgrupo principal requiere habilidades en el cuarto nivel de habilidades de la CIUO.'),
('Profesionales Legales', 'Los profesionales del derecho realizan investigaciones sobre problemas jurídicos, asesoran a clientes sobre aspectos jurídicos de los problemas, defienden casos o llevan a cabo acciones judiciales en los tribunales de justicia, presiden procedimientos judiciales en los tribunales de justicia y redactan leyes y reglamentos'),
('Abogados', 'Los abogados brindan a los clientes asesoramiento legal sobre una amplia variedad de temas, redactan documentos legales, representan a los clientes ante juntas o tribunales administrativos y defienden casos o llevan a cabo procesos en los tribunales de justicia, o instruyen a los abogados para que aboguen ante los tribunales superiores de justicia.'),
('jueces', 'Los jueces presiden procedimientos civiles y penales en los tribunales de justicia.'),
('Profesionales del derecho no clasificados en otra parte', 'Este grupo primario cubre a los profesionales del derecho no clasificados en otra parte del Grupo menor 261: Profesionales del derecho. Por ejemplo, el grupo incluye a quienes desempeñan funciones legales distintas de la defensa o el enjuiciamiento de casos o la presidencia de procedimientos judiciales.'),
('Bibliotecarios, Archiveros y Conservadores', 'Los bibliotecarios, archiveros y curadores desarrollan y mantienen las colecciones de archivos, bibliotecas, museos, galerías de arte y establecimientos similares.'),
('Archiveros y conservadores', 'Los archiveros y conservadores recopilan, valoran y velan por la custodia y conservación del contenido de archivos, artefactos y registros de interés histórico, cultural, administrativo y artístico, y de arte y otros objetos. Planifican, diseñan e implementan sistemas para la custodia de registros y documentos históricamente valiosos.'),
('Bibliotecarios y profesionales de la información relacionada', 'Los bibliotecarios y los profesionales de la información relacionados recopilan, seleccionan, desarrollan, organizan y mantienen las colecciones de la biblioteca y otros depósitos de información, organizan y controlan otros servicios de la biblioteca y brindan información a los usuarios.'),
('Profesionales Sociales y Religiosos', 'Los profesionales sociales y religiosos realizan investigaciones, mejoran o desarrollan conceptos, teorías y métodos operativos; aplicar conocimientos relacionados con la filosofía, la política, la economía, la sociología, la antropología, la historia, la psicología y otras ciencias sociales; o proporcionar servicios sociales para satisfacer las necesidades de individuos y familias en una comunidad.'),
('economistas', 'Los economistas realizan investigaciones, monitorean datos, analizan información y preparan informes y planes para resolver problemas económicos y comerciales y desarrollan modelos para analizar, explicar y pronosticar comportamientos y patrones económicos. Brindan asesoramiento a empresas, grupos de interés y gobiernos para formular soluciones a problemas económicos y empresariales presentes o proyectados.'),
('Sociólogos, Antropólogos y Profesionales Afines', 'Sociólogos, antropólogos y profesionales afines investigan y describen la estructura, origen y evolución de las sociedades y la interdependencia entre las condiciones ambientales y las actividades humanas. Brindan asesoramiento sobre la aplicación práctica de sus hallazgos en la formulación de políticas económicas y sociales.'),
('Filósofos, historiadores y politólogos', 'Los filósofos, historiadores y politólogos realizan investigaciones sobre la naturaleza de la experiencia y la existencia humanas, las fases o aspectos de la historia humana y las estructuras políticas, los movimientos y el comportamiento. Documentan e informan sobre los hallazgos para informar y guiar las acciones políticas e individuales.'),
('psicólogos', 'Los psicólogos investigan y estudian los procesos mentales y el comportamiento de los seres humanos como individuos o en grupos, y aplican este conocimiento para promover el ajuste y el desarrollo personal, social, educativo u ocupacional.'),
('Profesionales del Trabajo Social y Consejería', 'Los profesionales del trabajo social y el asesoramiento brindan asesoramiento y orientación a individuos, familias, grupos, comunidades y organizaciones en respuesta a dificultades sociales y personales. Ayudan a los clientes a desarrollar habilidades y acceder a los recursos y servicios de apoyo necesarios para responder a los problemas que surgen del desempleo, la pobreza, la discapacidad, la adicción, el comportamiento delictivo y delictivo, y los problemas maritales y de otro tipo.'),
('Profesionales Religiosos', 'Los profesionales religiosos funcionan como perpetuadores de tradiciones, prácticas y creencias sagradas. Llevan a cabo servicios religiosos, celebran o administran los ritos de una fe o denominación religiosa, brindan orientación espiritual y moral y realizan otras funciones asociadas con la práctica de una religión.'),
('Autores, Periodistas y Lingüistas', 'Los autores, periodistas y lingüistas conciben y crean obras literarias, interpretan y comunican noticias y asuntos públicos a través de los medios de comunicación; y traducir o interpretar de un idioma a otro.'),
('Autores y escritores relacionados', 'Los autores y escritores afines planifican, investigan y escriben libros, guiones, storyboards, obras de teatro, ensayos, discursos, manuales, especificaciones y otros artículos no periodísticos (excepto material para periódicos, revistas y otras publicaciones periódicas) para su publicación o presentación.'),
('Periodistas', 'Los periodistas investigan, investigan, interpretan y comunican noticias y asuntos públicos a través de periódicos, televisión, radio y otros medios.'),
('Traductores, intérpretes y otros lingüistas', 'Los traductores, intérpretes y otros lingüistas traducen o interpretan de un idioma a otro y estudian el origen, desarrollo y estructura de los idiomas.'),
('Artistas creativos y escénicos', 'Los artistas creativos e intérpretes comunican ideas, impresiones y hechos en una amplia gama de medios para lograr efectos particulares; interpretar una composición como una partitura musical o un guión para realizar o dirigir la actuación; y organizar la presentación de dicha actuación y otros eventos mediáticos.'),
('Artistas Visuales', 'Los artistas visuales crean y ejecutan obras de arte esculpiendo, pintando, dibujando, creando caricaturas, grabando o utilizando otras técnicas.'),
('Músicos, Cantantes y Compositores', 'Músicos, cantantes y compositores escriben, arreglan, dirigen y ejecutan composiciones musicales.'),
('Bailarines y Coreógrafos', 'Los bailarines y coreógrafos conciben y crean o ejecutan bailes.'),
('Directores y productores de cine, teatro y afines', 'Los directores y productores de cine, teatro y afines supervisan y controlan los aspectos técnicos y artísticos de las producciones cinematográficas, televisivas o radiofónicas y los espectáculos teatrales.'),
('Actores', 'Los actores interpretan papeles en películas, producciones de televisión o radio y espectáculos teatrales.'),
('Locutores en Radio, Televisión y Otros Medios', 'Los locutores de radio, televisión y otros medios leen boletines de noticias, realizan entrevistas y hacen otros anuncios o presentaciones en radio, televisión y en teatros y otros establecimientos o medios'),
('Artistas creativos e intérpretes no clasificados en otra parte', 'Este grupo primario cubre todos los artistas creativos e interpretativos no clasificados en otra parte del Grupo menor 265: Artistas creativos e interpretativos. Por ejemplo, el grupo incluye payasos, magos, acróbatas y otros artistas escénicos.'),
('Técnicos y Profesionales Asociados', 'Los técnicos y profesionales asociados realizan tareas técnicas y afines relacionadas con la investigación y la aplicación de conceptos científicos o artísticos y métodos operativos, y regulaciones gubernamentales o comerciales. El desempeño competente en la mayoría de las ocupaciones de este grupo principal requiere habilidades en el tercer nivel de habilidades de la CIUO.'),
('Profesionales Asociados en Ciencias e Ingeniería', 'Los profesionales asociados de ciencia e ingeniería realizan tareas técnicas relacionadas con la investigación y los métodos operativos en ciencia e ingeniería. Supervisan y controlan los aspectos técnicos y operativos de la minería, la fabricación, la construcción y otras operaciones de ingeniería, y operan equipos técnicos, incluidos aviones y barcos. El desempeño competente en la mayoría de las ocupaciones de este subgrupo principal requiere habilidades en el tercer nivel de habilidades de la CIUO.'),
('Técnicos en Ciencias Físicas e Ingeniería', 'Los técnicos en ciencias físicas e ingeniería realizan tareas técnicas para ayudar en la investigación y la aplicación práctica de conceptos, principios y métodos operativos particulares de las ciencias físicas, incluidas áreas como la ingeniería, el dibujo técnico o la eficiencia económica de los procesos de producción.'),
('Técnicos en Ciencias Químicas y Físicas', 'Los técnicos en ciencias químicas y físicas realizan tareas técnicas para ayudar en la investigación en química, física, geología, geofísica, meteorología y astronomía, y en el desarrollo de aplicaciones industriales, médicas, militares y otras aplicaciones prácticas de los resultados de la investigación.'),
('Técnicos en Ingeniería Civil', 'Los técnicos en ingeniería civil realizan tareas técnicas en la investigación de ingeniería civil y en el diseño, construcción, operación, mantenimiento y reparación de edificios y otras estructuras, como sistemas de suministro de agua y tratamiento de aguas residuales, puentes, carreteras, presas y aeropuertos.'),
('Técnicos en Ingeniería Eléctrica', 'Los técnicos en ingeniería eléctrica realizan tareas técnicas para ayudar en la investigación de ingeniería eléctrica y en el diseño, fabricación, montaje, construcción, operación, mantenimiento y reparación de equipos, instalaciones y sistemas de distribución eléctricos.'),
('Técnicos en Ingeniería Electrónica', 'Los técnicos en ingeniería electrónica realizan tareas técnicas para ayudar en la investigación electrónica y en el diseño, fabricación, montaje, construcción, operación, mantenimiento y reparación de equipos electrónicos.'),
('Técnicos en Ingeniería Mecánica', 'Los técnicos en ingeniería mecánica realizan tareas técnicas para ayudar en la investigación de ingeniería mecánica y en el diseño, fabricación, montaje, construcción, operación, mantenimiento y reparación de máquinas, componentes y equipos mecánicos.'),
('Técnicos en Ingeniería Química', 'Los técnicos en ingeniería química realizan tareas técnicas para ayudar en la investigación de ingeniería química y en el diseño, fabricación, construcción, operación, mantenimiento y reparación de plantas químicas.'),
('Técnicos en minería y metalurgia', 'Los técnicos mineros y metalúrgicos realizan tareas técnicas para asistir en la investigación y experimentación relacionada con la metalurgia, en el mejoramiento de métodos de extracción de minerales sólidos, petróleo y gas, y en el diseño, construcción, operación, mantenimiento y reparación de minas e instalaciones mineras, de sistemas para transporte y almacenamiento de petróleo y gas natural, y para la extracción de metales a partir de minerales.'),
('dibujantes', 'Los dibujantes preparan dibujos técnicos, mapas e ilustraciones a partir de bocetos, medidas y otros datos, y copian los dibujos y pinturas finales en planchas de impresión.'),
('Técnicos en ciencias físicas y de ingeniería no clasificados en otra parte', 'Este grupo primario cubre a los técnicos en ciencias físicas y de ingeniería no clasificados en otra parte del Grupo menor 311: Técnicos en ciencias físicas y de ingeniería. Por ejemplo, el grupo de unidades incluye a aquellos que asisten a científicos e ingenieros involucrados en el desarrollo de procedimientos o en la realización de investigaciones sobre seguridad, ingeniería biomédica, ambiental o industrial y de producción.'),
('Supervisores de Minería, Manufactura y Construcción', 'Los supervisores de minería, manufactura y construcción coordinan, supervisan, controlan y programan las actividades de los trabajadores en operaciones de manufactura, minería y construcción.'),
('Supervisores de Minería', 'Los supervisores de minería supervisan las operaciones de explotación de minas y canteras y supervisan y coordinan directamente las actividades de los mineros que trabajan en minas y canteras subterráneas y de superficie.'),
('Supervisores de Fabricación', 'Los supervisores de fabricación coordinan y supervisan las actividades de los técnicos de control de procesos, operadores de máquinas, ensambladores y otros trabajadores de fabricación.'),
('Supervisores de Construcción', 'Supervisores de obras, coordinan, supervisan y programan las actividades de los trabajadores que se dedican a la construcción y reparación de edificios y estructuras.'),
('Técnicos de Control de Procesos', 'Los técnicos de control de procesos operan y monitorean tableros de distribución, sistemas de control computarizados, maquinaria de control de procesos multifunción y mantienen unidades de procesamiento en generación y distribución de energía eléctrica, aguas residuales, tratamiento de aguas residuales y plantas de eliminación de desechos, refinerías químicas, de petróleo y gas natural, en procesamiento de metales y otras operaciones de procesos múltiples.'),
('Operadores de plantas de producción de energía', 'Los operadores de plantas de producción de energía operan, monitorean y mantienen tableros de distribución y equipos relacionados en centros de control eléctrico que controlan la producción y distribución de energía eléctrica o de otro tipo en las redes de transmisión. Los equipos operados incluyen reactores, turbinas, generadores y otros equipos auxiliares en centrales generadoras de energía eléctrica.'),
('Operadores de Incineradores y Plantas de Tratamiento de Agua', 'Los operadores de incineradores y plantas de tratamiento de agua monitorean y operan sistemas de control computarizados y equipos relacionados en plantas de tratamiento de desechos sólidos y líquidos para regular el tratamiento y eliminación de aguas residuales y desechos, y en plantas de tratamiento y filtración de agua para regular el tratamiento y distribución de agua.'),
('Controladores de plantas de procesamiento químico', 'Los controladores de plantas de procesamiento de productos químicos operan y monitorean plantas químicas y maquinaria de control de procesos multifunción relacionada, y ajustan y mantienen unidades y equipos de procesamiento que destilan, filtran, separan, calientan o refinan productos químicos.'),
('Operadores de Plantas de Refinación de Petróleo y Gas Natural', 'Los operadores de plantas de refinación de petróleo y gas natural operan y supervisan las plantas y ajustan y mantienen unidades y equipos de procesamiento que refinan, destilan y tratan petróleo, productos y subproductos a base de petróleo o gas natural.'),
('Controladores de procesos de producción de metales', 'Los controladores de procesos de producción de metales operan y monitorean maquinaria y equipos de control de procesos multifunción para controlar el procesamiento de hornos de conversión y refinación de metales, trenes de laminación de metales, plantas de tratamiento térmico de metales o de extrusión de metales.'),
('Técnicos de control de procesos no clasificados en otra parte', 'Este grupo primario cubre a los técnicos de control de procesos no clasificados en otra parte del Grupo menor 313: Técnicos de control de procesos. Por ejemplo, el grupo de unidades incluye a aquellos que operan múltiples equipos de control de procesos en líneas de ensamblaje de manufactura y producción de papel y pulpa.'),
('Técnicos en Ciencias de la Vida y Profesionales Asociados Relacionados', 'Los técnicos de ciencias de la vida y los profesionales asociados relacionados realizan una variedad de tareas técnicas para apoyar a los profesionales de las ciencias de la vida en su trabajo de investigación, desarrollo, gestión, conservación y protección, en áreas como biología, botánica, zoología, biotecnología y bioquímica, y agricultura, pesca y silvicultura.'),
('Técnicos en Ciencias de la Vida (excluyendo Médicos)', 'Los técnicos en ciencias de la vida (excluidos los médicos) brindan apoyo técnico a los profesionales de las ciencias de la vida que realizan investigaciones, análisis y pruebas de organismos vivos, y desarrollo y aplicación de productos y procesos resultantes de la investigación en áreas como la gestión de recursos naturales, la protección del medio ambiente, la biología vegetal y animal. , microbiología y biología celular y molecular.'),
('Técnicos Agrícolas', 'Los técnicos agrícolas realizan pruebas y experimentos, y brindan apoyo técnico y científico a científicos agrícolas, agricultores y administradores de fincas.'),
('Técnicos Forestales', 'Los técnicos forestales realizan funciones técnicas y de supervisión en apoyo de la investigación forestal y la gestión forestal, la cosecha, la conservación de los recursos y la protección del medio ambiente.'),
('Controladores y Técnicos de Buques y Aeronaves', 'Los controladores y técnicos de barcos y aeronaves comandan y navegan barcos y aeronaves; realizar funciones técnicas para garantizar un movimiento y operaciones seguras y eficientes; y desarrollar sistemas de control de aire eléctricos, electromecánicos y computarizados.'),
('Ingenieros de barcos', 'Los maquinistas de buques controlan y participan en la operación, el mantenimiento y la reparación de equipos y maquinaria mecánicos, eléctricos y electrónicos a bordo del buque, o realizan funciones de apoyo relacionadas en tierra.'),
('Oficiales de Cubierta y Prácticos de Barcos', 'Los oficiales de cubierta y los prácticos de los barcos comandan y navegan barcos y embarcaciones similares, y realizan funciones relacionadas en tierra.'),
('Pilotos de Aeronaves y Profesionales Asociados Relacionados', 'Los pilotos de aeronaves y los profesionales asociados afines controlan el funcionamiento de los equipos mecánicos, eléctricos y electrónicos, a fin de pilotar aeronaves para el transporte de pasajeros, correo y carga, y realizar tareas relacionadas antes y durante el vuelo.'),
('Controladores de tráfico aéreo', 'Los controladores de tránsito aéreo dirigen los movimientos de las aeronaves en el espacio aéreo y en tierra, utilizando sistemas de radio, radar e iluminación, y brindan información relevante para la operación de las aeronaves.'),
('Técnicos en Electrónica de Seguridad del Tráfico Aéreo', 'Los técnicos en electrónica de seguridad del tráfico aéreo realizan tareas técnicas relacionadas con el diseño, instalación, gestión, operación, mantenimiento y reparación de sistemas de control del tráfico aéreo y navegación aérea.'),
('Profesionales Asociados de la Salud', 'Los profesionales asociados de la salud realizan tareas técnicas y prácticas para respaldar el diagnóstico y el tratamiento de enfermedades, lesiones y deficiencias en humanos y animales, y para respaldar la implementación de planes de atención médica, tratamiento y derivación generalmente establecidos por médicos, veterinarios, enfermeros y otros profesionales de la salud. . El desempeño competente en la mayoría de las ocupaciones de este subgrupo principal requiere habilidades en el tercer nivel de habilidades de la CIUO.'),
('Técnicos Médicos y Farmacéuticos', 'Los técnicos médicos y farmacéuticos realizan tareas técnicas para ayudar en el diagnóstico y tratamiento de enfermedades, lesiones y deficiencias.'),
('Técnicos en Imagen Médica y Equipos Terapéuticos', 'Los técnicos de equipos terapéuticos y de imágenes médicas prueban y operan equipos de radiografía, ultrasonido y otros equipos de imágenes médicas para producir imágenes de estructuras corporales para el diagnóstico y tratamiento de lesiones, enfermedades y otras deficiencias. Pueden administrar tratamientos de radiación a pacientes bajo la supervisión de un radiólogo u otro profesional de la salud.'),
('Técnicos de Laboratorio Médico y de Patología', 'Los técnicos de laboratorio médico y de patología realizan pruebas clínicas en muestras de fluidos y tejidos corporales para obtener información sobre la salud de un paciente o la causa de la muerte.'),
('Técnicos y Auxiliares Farmacéuticos', 'Los técnicos y auxiliares farmacéuticos realizan una variedad de tareas asociadas con la dispensación de medicamentos bajo la guía de un farmacéutico u otro profesional de la salud.'),
('Técnicos Médicos y Protésicos Dentales', 'Los técnicos protésicos médicos y dentales diseñan, ajustan, mantienen y reparan dispositivos y aparatos médicos y dentales siguiendo las prescripciones o instrucciones establecidas por un profesional de la salud. Pueden dar servicio a una amplia gama de instrumentos de apoyo para corregir problemas físicos, médicos o dentales, como aparatos ortopédicos para el cuello, férulas ortopédicas, miembros artificiales, audífonos, soportes para el arco, dentaduras postizas y coronas y puentes dentales.'),
('Profesionales Asociados de Enfermería y Partería', 'Los profesionales asociados de enfermería y obstetricia brindan atención personal y de enfermería básica a personas con enfermedades físicas o mentales, discapacitadas o enfermas, y otras personas que necesitan atención debido a riesgos potenciales para la salud, incluso antes, durante y después del parto. Por lo general, trabajan bajo la supervisión de, y en apoyo de la implementación de los planes de atención médica, tratamiento y referencias establecidos por médicos, enfermeras, parteras y otros profesionales de la salud.'),
('Profesionales Asociados de Enfermería', 'Los profesionales asociados de enfermería brindan atención personal y de enfermería básica a las personas que necesitan dicha atención debido a los efectos del envejecimiento, enfermedad, lesión u otro impedimento físico o mental. Por lo general, trabajan bajo la supervisión de, y en apoyo de la implementación de los planes de atención médica, tratamiento y referencias establecidos por médicos, enfermeras y otros profesionales de la salud.'),
('Profesionales asociados de partería', 'Los profesionales asociados de partería brindan atención médica básica y asesoramiento antes, durante y después del embarazo y el parto. Implementan planes de atención, tratamiento y referencia generalmente establecidos por médicos, parteras y otros profesionales de la salud.'),
('Otros profesionales asociados de la salud', 'Otros profesionales asociados de la salud realizan tareas técnicas y brindan servicios de apoyo en odontología, administración de registros médicos, salud comunitaria, corrección de la agudeza visual reducida, fisioterapia, salud ambiental, tratamiento médico de emergencia y otras actividades para apoyar y promover la salud humana.'),
('Asistentes dentales y terapeutas', 'Los asistentes y terapeutas dentales brindan servicios básicos de atención dental para la prevención y el tratamiento de enfermedades y trastornos de los dientes y la boca, de acuerdo con los planes y procedimientos de atención establecidos por un dentista u otro profesional de la salud bucal.'),
('Técnicos en Registros Médicos e Información en Salud', 'Los técnicos de registros médicos e información de salud desarrollan, mantienen e implementan sistemas de procesamiento, almacenamiento y recuperación de registros de salud en instalaciones médicas y otros entornos de atención médica para cumplir con los requisitos legales, profesionales, éticos y administrativos de mantenimiento de registros de la prestación de servicios de salud.'),
('Trabajadores de salud comunitarios', 'Los trabajadores comunitarios de la salud brindan educación sobre la salud, derivación y seguimiento, gestión de casos, atención médica preventiva básica y servicios de visitas domiciliarias a comunidades específicas. Brindan apoyo y asistencia a individuos y familias en la navegación por el sistema de servicios sociales y de salud.'),
('Ópticas Dosificadoras', 'Los ópticos dispensadores diseñan, ajustan y dispensan lentes ópticos según la prescripción de un oftalmólogo u optometrista para la corrección de la agudeza visual reducida. Dan servicio a anteojos correctivos, lentes de contacto, ayudas para la baja visión y otros dispositivos ópticos.'),
('Técnicos y Auxiliares de Fisioterapia', 'Los técnicos y asistentes de fisioterapia brindan tratamientos fisioterapéuticos a pacientes en circunstancias en las que el movimiento funcional se ve amenazado por una lesión, enfermedad o discapacidad. Las terapias generalmente se brindan según los planes de rehabilitación establecidos por un fisioterapeuta u otro profesional de la salud.'),
('Asistentes Médicos', 'Los asistentes médicos realizan tareas clínicas y administrativas básicas para apoyar la atención del paciente bajo la supervisión directa de un médico u otro profesional de la salud.'),
('Inspectores de Salud Ambiental y Ocupacional y Asociados', 'Los inspectores y asociados de salud ambiental y ocupacional investigan la implementación de normas y reglamentos relacionados con los factores ambientales que pueden afectar la salud humana, la seguridad en el lugar de trabajo y la seguridad de los procesos para la producción de bienes y servicios. Pueden implementar y evaluar programas para restaurar o mejorar las condiciones de seguridad y sanidad bajo la supervisión de un profesional de la salud.'),
('Trabajadores de ambulancia', 'Los trabajadores de ambulancia brindan atención médica de emergencia a pacientes que están lesionados, enfermos, enfermos o con algún otro impedimento físico o mental antes y durante el transporte a las instalaciones médicas.'),
('Profesionales asociados de la salud no clasificados en otra parte', 'Este grupo primario cubre los profesionales asociados de la salud no clasificados en otra parte del subgrupo principal 32: Profesionales asociados de la salud. Por ejemplo, el grupo incluye ocupaciones como consejero de VIH, consejero de planificación familiar y otros profesionales asociados de la salud.'),
('Profesionales Asociados en Administración y Negocios', 'Los profesionales asociados de administración y negocios realizan principalmente tareas técnicas relacionadas con la aplicación práctica de conocimientos relacionados con asuntos de transacciones y contabilidad financiera, cálculos matemáticos, desarrollo de recursos humanos, compra y venta de instrumentos financieros, tareas de secretaría especializadas y cumplimiento o aplicación de normas gubernamentales. También se incluyen los trabajadores que brindan servicios comerciales como despacho de aduanas, planificación de conferencias, colocación laboral, compra y venta de bienes raíces o productos básicos a granel, y que actúan como agentes para artistas, como atletas y artistas. El desempeño competente en la mayoría de las ocupaciones de este subgrupo principal requiere habilidades en el tercer nivel de habilidades de la CIUO.'),
('Profesionales Asociados Financieros y Matemáticos', 'Los profesionales financieros y matemáticos asociados asignan un valor a varios artículos y propiedades, mantienen registros de transacciones financieras, analizan la información de la solicitud de préstamo y toman una decisión, compran y venden instrumentos financieros y realizan cálculos matemáticos y relacionados.'),
('Agentes y corredores de valores y finanzas', 'Los comerciantes y corredores de valores y finanzas compran y venden valores, acciones, bonos y otros instrumentos financieros, y negocian en los mercados de divisas, al contado o de futuros, en nombre de su propia empresa o para clientes a comisión. Recomiendan transacciones a los clientes oa la alta gerencia.'),
('Oficiales de Crédito y Préstamos', 'Los oficiales de crédito y préstamos analizan y evalúan la información financiera sobre las solicitudes de crédito y préstamos y determinan la aprobación o desaprobación del cliente para el crédito o préstamo, o recomiendan la aprobación o desaprobación de la gerencia.'),
('Profesionales Asociados Contables', 'Los profesionales asociados de contabilidad mantienen registros completos de las transacciones financieras de una empresa y verifican la exactitud de los documentos y registros relacionados con dichas transacciones.'),
('Profesionales Asociados en Estadística, Matemáticas y Afines', 'Los profesionales asociados estadísticos, matemáticos y afines asisten en la planificación de la recopilación, el procesamiento y la presentación de datos estadísticos, matemáticos o actuariales y en la realización de estas operaciones, generalmente trabajando bajo la guía de estadísticos, matemáticos y actuarios.'),
('Valuadores y evaluadores de pérdidas', 'Los tasadores y tasadores de pérdidas valoran la propiedad y diversos bienes y evalúan las pérdidas cubiertas por las pólizas de seguro.'),
('Agentes y Corredores de Ventas y Compras', 'Los agentes y corredores de compras y ventas representan a empresas, gobiernos y otras organizaciones para comprar y vender productos básicos, bienes, seguros, envíos y otros servicios a establecimientos industriales, profesionales, comerciales o de otro tipo, o actúan como agentes independientes para reunir a compradores y vendedores de productos básicos. y servicios.'),
('Representantes de seguros', 'Los representantes de seguros asesoran y venden seguros de vida, de accidentes, de automóviles, de responsabilidad civil, patrimoniales, contra incendios, marítimos y de otro tipo a clientes nuevos y establecidos.'),
('Representantes Comerciales de Ventas', 'Los representantes de ventas comerciales representan a las empresas para vender diversos bienes y servicios a empresas y otras organizaciones y brindan información específica del producto según sea necesario.'),
('Compradores', 'Los compradores compran bienes y servicios para su uso o reventa en nombre de establecimientos y organizaciones industriales, comerciales, gubernamentales u otros.'),
('Corredores de comercio', 'Los corredores comerciales compran y venden productos básicos y servicios de envío, generalmente a granel, en nombre de su propia empresa o para los clientes a cambio de una comisión.'),
('Agentes de servicios comerciales', 'Los agentes de servicios comerciales establecen contactos para vender diversos servicios comerciales, como espacios publicitarios en los medios; llevar a cabo actividades de despacho de aduanas asegurándose de que los documentos necesarios estén en orden; relacionar a los solicitantes de empleo con las vacantes; encontrar trabajadores para los empleadores; concertar contratos para la actuación de atletas, animadores y artistas, así como para la publicación de libros, la producción de obras de teatro o la grabación, interpretación y venta de música; y planificar y organizar conferencias y eventos similares.'),
('Agentes de compensación y reenvío', 'Los agentes de despacho y expedición llevan a cabo los procedimientos de despacho aduanero y se aseguran de que los seguros, las licencias de exportación/importación y otras formalidades estén en orden.'),
('Organizadores de conferencias y eventos', 'Los planificadores de conferencias y eventos organizan y coordinan servicios para conferencias, eventos, funciones, banquetes y seminarios.'),
('Agentes de empleo y contratistas', 'Los agentes de empleo y los contratistas conectan a los solicitantes de empleo con las vacantes, encuentran trabajadores para los empleadores y contratan mano de obra para proyectos particulares a pedido de empresas y otras organizaciones, incluidos el gobierno y otras instituciones, o encuentran lugares para los solicitantes de empleo a cambio de una comisión.'),
('Agentes inmobiliarios y administradores de propiedades', 'Los agentes inmobiliarios y los administradores de propiedades organizan la venta, compra, alquiler y arrendamiento de bienes inmuebles, generalmente en nombre de los clientes y a comisión.'),
('Agentes de servicios comerciales no clasificados en otra parte', 'Este grupo primario cubre los agentes de servicios comerciales no clasificados en otra parte del Grupo menor 333: Agentes de servicios comerciales. Por ejemplo, el grupo incluye a quienes establecen contactos comerciales, venden servicios comerciales como espacios publicitarios en los medios de comunicación, organizan contratos para actuaciones de atletas, animadores y artistas, para la publicación de libros, la producción de obras de teatro o la grabación, actuación y venta de música, vender bienes y bienes en subasta y que diseñan y organizan viajes combinados y grupales.'),
('Secretarios Administrativos y Especializados', 'Las secretarias administrativas y especializadas brindan servicios de apoyo organizativo, de comunicación y documentación, utilizando conocimientos especializados de la actividad comercial de la organización en la que están empleadas. Asumen la responsabilidad de supervisión de los empleados de oficina en la organización.'),
('Supervisores de oficina', 'Los supervisores de oficina supervisan y coordinan las actividades de los trabajadores del Grupo principal 4: Trabajadores administrativos de apoyo.'),
('Secretarios Legales', 'Los secretarios legales aplican conocimientos especializados de terminología y procedimientos legales para brindar apoyo a los profesionales del derecho con actividades de comunicación, documentación y coordinación gerencial interna, en bufetes de abogados, departamentos legales de grandes firmas y gobiernos.'),
('Secretarios Administrativos y Ejecutivos', 'Los secretarios administrativos y ejecutivos realizan labores de enlace, coordinación y organización en apoyo de los directivos y profesionales y/o preparan correspondencia, informes y actas y otra documentación especializada.'),
('secretarias medicas', 'Las secretarias médicas, utilizando conocimientos especializados de terminología médica y procedimientos de prestación de atención médica, ayudan a los profesionales de la salud y otros trabajadores mediante el desempeño de una variedad de funciones de comunicación, documentación, administración y coordinación interna, para apoyar a los trabajadores de la salud en las instalaciones médicas y otras organizaciones relacionadas con la atención médica. .'),
('Profesionales Asociados en Regulación Gubernamental', 'Los profesionales asociados de regulación gubernamental administran, hacen cumplir o aplican las normas y reglamentos gubernamentales pertinentes relacionados con las fronteras nacionales, los impuestos y los beneficios sociales; investigar hechos y circunstancias relacionados con los delitos; y emitir o examinar solicitudes de licencias o autorizaciones en relación con viajes, exportaciones e importaciones de bienes, establecimiento de negocios, construcción de edificios y otras actividades sujetas a regulaciones gubernamentales.'),
('Inspectores de aduanas y fronteras', 'Los inspectores de aduanas y fronteras controlan a las personas y los vehículos que cruzan las fronteras nacionales para administrar y hacer cumplir las normas y reglamentos gubernamentales pertinentes.'),
('Funcionarios de impuestos e impuestos especiales del gobierno', 'Los funcionarios gubernamentales de impuestos e impuestos especiales examinan las declaraciones de impuestos, las facturas de venta y otros documentos para determinar el tipo y el monto de los impuestos, aranceles y otros tipos de tarifas que deben pagar las personas o empresas, remitiendo casos excepcionales o importantes a contadores, altos funcionarios gubernamentales o gerentes'),
('Funcionarios de Beneficios Sociales del Gobierno', 'Los funcionarios gubernamentales de beneficios sociales examinan las solicitudes de programas gubernamentales, financieros o de servicios para determinar la elegibilidad y el monto de los beneficios o los servicios apropiados, remitiendo los casos excepcionales o importantes a los altos funcionarios o gerentes del gobierno.'),
('Funcionarios de licencias del gobierno', 'Los funcionarios gubernamentales que otorgan las licencias examinan las solicitudes de licencias para exportar o importar bienes, establecer negocios, construir casas u otras estructuras, u obtener pasaportes, determinar la elegibilidad de las solicitudes para la emisión de licencias o pasaportes, e identificar las condiciones o restricciones específicas que se aplicarán a las licencias emitidas. , refiriendo casos excepcionales o importantes a altos funcionarios o gerentes del gobierno.'),
('Inspectores y detectives de policía', 'Los inspectores y detectives de policía investigan los hechos y circunstancias relacionados con los delitos cometidos para identificar a los presuntos delincuentes y obtener información que no está fácilmente disponible o no es aparente sobre los establecimientos o las circunstancias y el comportamiento de las personas, principalmente para prevenir delitos.'),
('Asociado de regulación gubernamentalProfesionales no clasificados en otra parte', 'Este grupo primario cubre a los profesionales asociados regulatorios del gobierno no clasificados en otra parte. Por ejemplo, el grupo incluye inspectores agrícolas, pesqueros, forestales, de precios, salarios y pesos y medidas.'),
('Profesionales Asociados Jurídicos, Sociales, Culturales y Afines', 'Los profesionales adjuntos del ámbito jurídico, social, cultural y afines realizan tareas técnicas relacionadas con la aplicación práctica de los conocimientos relacionados con los servicios jurídicos, el trabajo social, la cultura, la preparación de alimentos, el deporte y la religión. El desempeño competente en la mayoría de las ocupaciones de este subgrupo principal requiere habilidades en el tercer nivel de habilidades de la CIUO.'),
('Profesionales Asociados Jurídicos, Sociales y Religiosos', 'Los profesionales adjuntos jurídicos, sociales y religiosos brindan servicios técnicos y prácticos y funciones de apoyo en procesos e investigaciones legales, programas de asistencia social y comunitaria y actividades religiosas.'),
('Profesionales Asociados Legales y Afines', 'Los profesionales asociados del derecho y afines realizan funciones de apoyo en los tribunales de justicia o en los despachos de abogados, prestan servicios relacionados con asuntos legales tales como contratos de seguros, la transferencia de propiedad y la concesión de préstamos y otras transacciones financieras o realizan investigaciones para los clientes.'),
('Profesionales Asociados en Trabajo Social', 'Los profesionales asociados de trabajo social administran e implementan programas de asistencia social y servicios comunitarios y ayudan a los clientes a lidiar con problemas personales y sociales.'),
('Profesionales Religiosos Asociados', 'Los profesionales religiosos asociados brindan apoyo a los ministros de una religión oa una comunidad religiosa, realizan obras religiosas, predican y propagan las enseñanzas de una religión en particular y se esfuerzan por mejorar el bienestar a través del poder de la fe y el consejo espiritual.'),
('Trabajadores del deporte y el fitness', 'Los trabajadores del deporte y el acondicionamiento físico se preparan y compiten en eventos deportivos para obtener ganancias financieras, capacitan a deportistas aficionados y profesionales para mejorar el rendimiento; promover la participación y los estándares en el deporte; organizar y oficiar eventos deportivos; y proporcionar instrucción, capacitación y supervisión para diversas formas de ejercicio y otras actividades recreativas.'),
('Atletas y Deportistas', 'Los atletas y deportistas participan en eventos deportivos competitivos. Entrenan y compiten, ya sea individualmente o como parte de un equipo, en su deporte elegido.'),
('Entrenadores deportivos, instructores y oficiales', 'Los entrenadores, instructores y oficiales deportivos trabajan con deportistas aficionados y profesionales para mejorar el rendimiento, fomentar una mayor participación en el deporte y organizar y oficiar eventos deportivos de acuerdo con las reglas establecidas.'),
('Instructores de acondicionamiento físico y recreación y líderes de programas', 'Los instructores de acondicionamiento físico y recreación y los líderes de programas dirigen, guían e instruyen a grupos e individuos en actividades recreativas, de acondicionamiento físico o de aventura al aire libre.'),
('Profesionales Asociados Artísticos, Culturales y Culinarios', 'Los profesionales asociados artísticos, culturales y culinarios combinan habilidades creativas y conocimientos técnicos y culturales para tomar y procesar fotografías fijas; diseño y decoración de decorados de teatro, escaparates de comercios e interiores de viviendas; preparación de objetos para exhibición; mantenimiento de colecciones, registros y sistemas de catalogación de bibliotecas y galerías; creación de menús y preparación y presentación de alimentos; apoyo a la producción teatral, cinematográfica y televisiva; y en otras áreas del esfuerzo artístico y cultural.'),
('Fotógrafos', 'Los fotógrafos operan cámaras fijas para fotografiar personas, eventos, escenas, materiales, productos y otros temas.'),
('Interioristas y Decoradores', 'Los diseñadores y decoradores de interiores planifican y diseñan interiores de edificios comerciales, industriales, públicos, minoristas y residenciales para producir un entorno adaptado a un propósito, teniendo en cuenta los factores que mejoran los entornos de vida y de trabajo y la promoción de ventas. Coordinan y participan en su construcción y decoración.'),
('Técnicos de Galerías, Museos y Bibliotecas', 'Los técnicos de galerías, museos y bibliotecas preparan obras de arte, especímenes y artefactos para colecciones, organizan y construyen exhibiciones en galerías y ayudan a los bibliotecarios a organizar y operar sistemas para manejar material grabado y archivos.'),
('Otros Profesionales Asociados Artísticos y Culturales', 'Este grupo primario cubre los profesionales asociados artísticos y culturales no clasificados en otra parte del Grupo menor 343: Profesionales asociados artísticos, culturales y culinarios. Por ejemplo, se clasifican aquí aquellos que asisten a directores o actores en la puesta en escena de producciones teatrales, cinematográficas, televisivas o comerciales.'),
('Técnicos de Información y Comunicaciones', 'Los técnicos de la información y las comunicaciones prestan apoyo en el día a día de los sistemas informáticos, sistemas y redes de comunicaciones y realizan tareas técnicas relacionadas con las telecomunicaciones, la emisión de imagen y sonido, así como otro tipo de señales de telecomunicaciones en tierra, mar o aeronaves . El desempeño competente en la mayoría de las ocupaciones de este subgrupo principal requiere habilidades en el tercer nivel de habilidades de la CIUO.'),
('Técnicos de Operaciones y Atención al Usuario de Tecnologías de la Información y las Comunicaciones', 'Los técnicos de operaciones de tecnología de la información y las comunicaciones y de apoyo al usuario brindan apoyo para el funcionamiento diario de los sistemas de comunicaciones, los sistemas informáticos y las redes, y brindan asistencia técnica a los usuarios.'),
('Técnicos de Operaciones de Tecnologías de la Información y las Comunicaciones', 'Los técnicos de operaciones de tecnología de la información y las comunicaciones respaldan el procesamiento, la operación y el control diarios de los sistemas, periféricos, hardware, software y equipos informáticos relacionados de la tecnología de la información y las comunicaciones para garantizar un rendimiento óptimo e identificar cualquier problema.'),
('Técnicos de Atención al Usuario de Tecnologías de la Información y las Comunicaciones', 'Los técnicos de apoyo a usuarios de tecnología de la información y las comunicaciones brindan asistencia técnica a los usuarios, ya sea directamente o por teléfono, correo electrónico u otros medios electrónicos, incluido el diagnóstico y la resolución de cuestiones y problemas con el software, el hardware, los equipos periféricos informáticos, las redes, las bases de datos e Internet, y brindan orientación y apoyo en el despliegue, instalación y mantenimiento de sistemas.'),
('Técnicos en Redes y Sistemas Informáticos', 'Los técnicos de sistemas y redes informáticas establecen, operan y mantienen redes y otros sistemas de comunicación de datos.'),
('Técnicos Web', 'Los técnicos web mantienen, monitorean y respaldan el funcionamiento óptimo de los sitios web de Internet e Intranet y el hardware y software del servidor web.'),
('Técnicos de Telecomunicaciones y Radiodifusión', 'Los técnicos de telecomunicaciones y de radiodifusión controlan el funcionamiento técnico de los equipos de grabación y edición de imágenes y sonido y de transmisión de imágenes y sonidos por radio y televisión, así como otro tipo de señales de telecomunicaciones en tierra, mar o aeronaves; realizar tareas técnicas relacionadas con la investigación en ingeniería de telecomunicaciones y con el diseño, fabricación, montaje, construcción, operación, mantenimiento y reparación de sistemas de telecomunicaciones.'),
('Técnicos de Radiodifusión y Audiovisuales', 'Los técnicos de radiodifusión y audiovisuales controlan el funcionamiento técnico de los equipos de grabación y edición de imágenes y sonido y de transmisión de imágenes y sonidos por radio y televisión, así como otro tipo de señales de telecomunicaciones en tierra, mar o aeronaves.'),
('Técnicos en Ingeniería de Telecomunicaciones', 'Los técnicos en ingeniería de telecomunicaciones realizan tareas técnicas relacionadas con la investigación en ingeniería de telecomunicaciones, así como con el diseño, fabricación, montaje, construcción, operación, mantenimiento y reparación de sistemas de telecomunicaciones.'),
('Trabajadores de apoyo administrativo', 'Los trabajadores de apoyo administrativo registran, organizan, almacenan, calculan y recuperan información, y realizan una serie de tareas administrativas relacionadas con operaciones de manejo de dinero, arreglos de viaje, solicitudes de información y citas. El desempeño competente en la mayoría de las ocupaciones de este grupo principal requiere habilidades en el segundo nivel de habilidades de la CIUO.'),
('Empleados generales y teclados', 'Los empleados generales y de teclado registran, organizan, almacenan y recuperan información y realizan una amplia gama de tareas administrativas y de oficina de acuerdo con los procedimientos establecidos. El desempeño competente en la mayoría de las ocupaciones de este subgrupo principal requiere habilidades en el segundo nivel de habilidades de la CIUO.'),
('Operadores de teclado', 'Los operadores de teclado ingresan y procesan texto y datos, y preparan, editan y generan documentos para almacenamiento, procesamiento, publicación y transmisión.'),
('Mecanógrafos y operadores de procesamiento de textos', 'Los mecanógrafos y los operadores de procesamiento de texto escriben, editan e imprimen texto utilizando máquinas de escribir, computadoras personales u otros procesadores de texto, y registran material oral o escrito en taquigrafía.'),
('Empleados de entrada de datos', 'Los empleados de ingreso de datos ingresan datos codificados, estadísticos, financieros y otros datos numéricos en equipos electrónicos, bases de datos computarizadas, hojas de cálculo u otros depósitos de datos usando un teclado, mouse, escáner óptico, software de reconocimiento de voz u otras herramientas de ingreso de datos. Introducen datos en dispositivos mecánicos y electrónicos para realizar cálculos matemáticos.'),
('Empleados de atención al cliente', 'Los empleados de servicios al cliente se ocupan de los clientes en relación con las operaciones de manejo de dinero, arreglos de viaje, solicitudes de información, concertación de citas, operación de centralitas telefónicas y entrevistas para encuestas o para completar solicitudes de elegibilidad para servicios. El desempeño competente en la mayoría de las ocupaciones de este subgrupo principal requiere habilidades en el segundo nivel de habilidades de la CIUO.'),
('Cajeros, cobradores y empleados afines', 'Los cajeros, cobradores y empleados afines realizan operaciones de manejo de dinero en establecimientos relacionados con la banca, servicios postales, apuestas o juegos de azar, empeño y cobro de deudas.'),
('Cajeros de Banco y Empleados Relacionados', 'Los cajeros bancarios y empleados relacionados tratan directamente con clientes de bancos u oficinas de correos en relación con la recepción, el cambio y el pago de dinero, o la prestación de servicios de correo.'),
('Corredores de apuestas, croupiers y trabajadores relacionados con el juego', 'Los corredores de apuestas y los croupiers y los trabajadores relacionados con el juego determinan las probabilidades y reciben y pagan apuestas sobre los resultados de eventos deportivos o de otro tipo, o realizan juegos de azar en establecimientos de juego.'),
('Casas de empeño y prestamistas', 'Los prestamistas y prestamistas prestan dinero contra artículos depositados como prenda, o contra propiedad u otra garantía.'),
('Cobradores de Deudas y Trabajadores Relacionados', 'Los cobradores de deudas y los trabajadores relacionados cobran los pagos de las cuentas vencidas y los cheques sin fondos y cobran los pagos de caridad.');
INSERT INTO `areas_experiencia` (`titulo`, `descripcion`) VALUES
('Trabajadores de la información del cliente', 'Los empleados de información del cliente brindan u obtienen información en persona, por teléfono o por medios electrónicos, como el correo electrónico, en relación con la organización de viajes, la descripción de los productos o servicios de una organización, el registro y la recepción de invitados y visitantes, la concertación de citas, la conexión de llamadas telefónicas y la recopilación de información. de encuestados o solicitantes de servicios.'),
('Asesores de viajes y empleados', 'Los asesores y empleados de viajes brindan información sobre destinos de viaje, organizan itinerarios de viaje, obtienen reservas de viaje y alojamiento y registran a los pasajeros en el momento del check-in y la salida.'),
('Empleados de información del centro de contacto', 'Los empleados de información del centro de contacto brindan asesoramiento e información a los clientes, responden consultas sobre bienes, servicios o políticas de una empresa u organización, y procesan transacciones financieras utilizando el teléfono o medios de comunicación electrónicos, como el correo electrónico. Están ubicados en locales que pueden estar alejados de los clientes u otras operaciones de las organizaciones o empresas sobre las que se proporciona información.'),
('Operadores de centralita telefónica', 'Los operadores de centralitas telefónicas operan consolas y centralitas de comunicaciones telefónicas para establecer conexiones telefónicas, recibir consultas de las personas que llaman e informes de problemas de servicio, y grabar y transmitir mensajes al personal o a los clientes.'),
('recepcionistas de hoteles', 'Los recepcionistas de hotel dan la bienvenida y registran a los huéspedes en los hoteles y otros establecimientos que prestan servicios de alojamiento. Asignan habitaciones, emiten llaves, brindan información sobre los servicios prestados, hacen reservaciones de habitaciones, mantienen un registro de las habitaciones disponibles para ocupación y presentan declaraciones de cargos a los huéspedes que se van y reciben el pago.'),
('Empleados de investigación', 'Los empleados de consultas responden consultas y quejas personales, escritas, por correo electrónico y telefónicas sobre los bienes, servicios y políticas de la organización, brindan información y remiten a las personas a otras fuentes. Están empleados en lugares que los ponen en contacto directo con los clientes o con la producción de los bienes y servicios prestados.'),
('Recepcionistas (general)', 'Los recepcionistas (generales) reciben y dan la bienvenida a los visitantes, clientes o invitados y responden a consultas y solicitudes, incluida la organización de citas.'),
('Entrevistadores de encuestas e investigaciones de mercado', 'Los entrevistadores de encuestas e investigaciones de mercado entrevistan a personas y registran sus respuestas a preguntas de encuestas e investigaciones de mercado sobre una variedad de temas.'),
('Trabajadores de la información del cliente no clasificados en otra parte', 'Este grupo primario incluye a los trabajadores de la información del cliente no incluidos en otra parte del Grupo menor 422: Trabajadores de la información del cliente. Por ejemplo, incluye trabajadores que obtienen y procesan la información de los clientes necesaria para determinar la elegibilidad para los servicios.'),
('Empleados de registro numérico y material', 'Los empleados de registro numérico y material obtienen, compilan y computan datos contables, contables, estadísticos, financieros y otros datos numéricos, y se hacen cargo de las transacciones en efectivo relacionadas con asuntos comerciales. Algunas ocupaciones clasificadas aquí mantienen registros de bienes producidos, comprados, almacenados, despachados y de materiales necesarios en fechas de producción específicas, o mantienen registros de aspectos operativos y coordinan el tiempo de transporte de pasajeros y carga. El desempeño competente en la mayoría de las ocupaciones de este subgrupo principal requiere habilidades en el segundo nivel de habilidades de la CIUO.'),
('Empleados numéricos', 'Los empleados numéricos obtienen, compilan y computan datos contables, contables, estadísticos, financieros y otros datos numéricos, y se hacen cargo de las transacciones en efectivo relacionadas con asuntos comerciales.'),
('Empleados de contabilidad y teneduría de libros', 'Los empleados de contabilidad y teneduría de libros calculan, clasifican y registran datos numéricos para mantener completos los registros financieros. Realizan cualquier combinación de tareas rutinarias de cálculo, publicación y verificación para obtener datos financieros primarios para usar en el mantenimiento de registros contables.'),
('Empleados de Estadística, Finanzas y Seguros', 'Los empleados de estadística, finanzas y seguros obtienen, recopilan y computan datos estadísticos o actuariales o realizan tareas administrativas relacionadas con las transacciones de establecimientos de seguros, bancos y otros establecimientos financieros.'),
('Empleados de nómina', 'Los empleados de nómina recopilan, verifican y procesan la información de nómina y calculan los derechos de pago y beneficios para los empleados dentro de un departamento, empresa u otro establecimiento.'),
('Empleados de Registro y Transporte de Material', 'Los empleados de transporte y registro de materiales mantienen registros de los bienes producidos, comprados, almacenados y enviados, y de los materiales necesarios en las fechas de producción especificadas, o mantienen registros de los aspectos operativos y coordinan el tiempo del transporte de pasajeros y carga.'),
('Empleados de almacén', 'Los empleados de inventario mantienen registros de los bienes producidos y los materiales de producción recibidos, pesados, entregados, despachados o almacenados.'),
('Empleados de producción', 'Los empleados de producción calculan las cantidades de materiales necesarios en fechas específicas para la fabricación, la construcción y programas de producción similares, y preparan y verifican los programas de operaciones de producción.'),
('empleados de transporte', 'Los empleados de transporte mantienen registros de los aspectos operativos y coordinan los tiempos del transporte de pasajeros y mercancías por tren, carretera y aire, y preparan informes para la gerencia.'),
('empleados de la biblioteca', 'Los empleados de la biblioteca emiten y reciben materiales de la biblioteca, clasifican y archivan libros, grabaciones de sonido y visión, publicaciones periódicas, diarios, revistas y periódicos y brindan información general de la biblioteca a los usuarios de la biblioteca.'),
('Carteros y empleados de clasificación', 'Los carteros y los empleados de clasificación realizan tareas de clasificación, registro, entrega y otras en relación con los servicios de correo de las oficinas postales u organizaciones relacionadas, así como desde o dentro de un establecimiento.'),
('Empleados de codificación, revisión y afines', 'Los empleados de codificación, revisión y afines convierten la información en códigos, verifican y corrigen las pruebas y realizan una serie de tareas administrativas diversas.'),
('Escribas y trabajadores afines', 'Los escribas y trabajadores relacionados escriben cartas y completan formularios en nombre de personas que no saben leer ni escribir.'),
('Empleados de archivo y fotocopias', 'Los empleados de archivo y copia archivan la correspondencia, las tarjetas, las facturas, los recibos y otros registros en orden alfabético o numérico o según el sistema de archivo utilizado. Localizan y eliminan material del archivo cuando se les solicita y fotocopian, escanean o envían por fax los documentos.'),
('Empleados de personal', 'Los empleados de personal mantienen y actualizan registros de personal, como información sobre transferencias y promociones, evaluaciones de desempeño, licencias de empleados tomadas y acumuladas, salarios, calificaciones y capacitación.'),
('Trabajadores administrativos de apoyo no clasificados en otra parte', 'Este grupo primario cubre a los trabajadores de apoyo administrativo no clasificados en otra parte del Grupo principal 4: Trabajadores de apoyo administrativo. Por ejemplo, el grupo incluye empleados de correspondencia, recortadores de prensa y empleados de publicaciones.'),
('Trabajadores de servicio y ventas', 'Los trabajadores de servicios y ventas prestan servicios personales y de protección relacionados con los viajes, la limpieza, la restauración, el cuidado personal o la protección contra incendios y actos ilegales, o muestran y venden mercancías en tiendas mayoristas o minoristas y establecimientos similares, así como en puestos y mercados. . El desempeño competente en la mayoría de las ocupaciones de este grupo principal requiere habilidades en el segundo nivel de habilidades de la CIUO.'),
('Trabajadores de servicios personales', 'Los trabajadores de servicios personales brindan servicios personales relacionados con viajes, limpieza, catering y hospitalidad, peluquería y tratamiento de belleza, cuidado de animales, preparación y entrenamiento, compañía y otros servicios de carácter personal. El desempeño competente en la mayoría de las ocupaciones de este subgrupo principal requiere habilidades en el segundo nivel de habilidades de la CIUO.'),
('Auxiliares de viaje, conductores y guías', 'Asistentes de viaje, conductores y guías brindan diversos servicios personales en relación con viajes en avión, tren, barco, autobús u otro vehículo, y acompañan a individuos y grupos en recorridos turísticos, visitas turísticas y excursiones.'),
('Auxiliares de viaje y administradores de viajes', 'Los auxiliares de viaje y los asistentes de viaje garantizan la comodidad y la seguridad de los pasajeros, sirven comidas y bebidas y brindan servicios personales, generalmente en aeronaves y a bordo de barcos. Pueden planificar y coordinar actividades sociales y de limpieza en los barcos.'),
('Conductores de transporte', 'Los conductores de transporte verifican y emiten boletos y garantizan la seguridad y la comodidad de los pasajeros en trenes, tranvías, autobuses y otros vehículos de transporte público.'),
('Guías de viaje', 'Los guías de viaje acompañan a personas o grupos en viajes, visitas turísticas y excursiones y en visitas a lugares de interés como sitios históricos, establecimientos industriales y parques temáticos. Describen puntos de interés y proporcionan información básica sobre características interesantes.'),
('Meseros y Bartenders', 'Los camareros y cantineros sirven comidas y bebidas en lugares comerciales para comer y beber, clubes, instituciones y cantinas, a bordo de barcos y trenes de pasajeros.'),
('camareros', 'Los camareros sirven comidas y bebidas en mesas de comedores y bares, clubes, instituciones y cantinas, a bordo de barcos y trenes de pasajeros.'),
('Camareros', 'Los cantineros preparan, mezclan y sirven bebidas alcohólicas y no alcohólicas directamente a los clientes en una barra o mostrador, oa través de meseros.'),
('Peluqueros, Esteticistas y Trabajadores Afines', 'Los peluqueros, esteticistas y trabajadores afines cortan y arreglan el cabello, afeitan y recortan la barba, realizan tratamientos de belleza, aplican cosméticos y maquillaje y dan otros tipos de tratamientos a las personas para mejorar su apariencia.'),
('Peluquería', 'Los peluqueros cortan, peinan, colorean, alisan y ondulan permanentemente el cabello, afeitan o recortan el vello facial y tratan las afecciones del cuero cabelludo.'),
('Esteticistas y Trabajadores Afines', 'Los esteticistas y afines, realizan tratamientos de belleza facial y corporal, aplican cosméticos y maquillajes y dan otro tipo de tratamientos a las personas con el fin de mejorar su apariencia.'),
('Supervisores de construcción y limpieza', 'Los supervisores de limpieza y construcción coordinan, programan y supervisan el trabajo de los limpiadores y otro personal de limpieza en locales comerciales, industriales y residenciales. Asumen la responsabilidad de las funciones de limpieza y cuidado en hoteles, oficinas, apartamentos, casas y viviendas privadas.'),
('Supervisores de Limpieza y Housekeeping en Oficinas, Hoteles y Otros Establecimientos', 'Los supervisores de limpieza y limpieza en oficinas, hoteles y otros establecimientos organizan, supervisan y realizan funciones de limpieza con el fin de mantener limpios y ordenados los interiores, enseres e instalaciones de estos establecimientos.'),
('Amas de casa domésticas', 'Las amas de llaves domésticas organizan, supervisan y llevan a cabo funciones de limpieza en hogares privados y pequeños establecimientos de alojamiento con o sin el apoyo de personal subordinado.'),
('Vigilantes del edificio', 'Los cuidadores de edificios se encargan de los edificios de apartamentos, hoteles, oficinas, iglesias y otros edificios y los mantienen limpios y ordenados junto con los terrenos asociados. Pueden supervisar a otros trabajadores y contratistas según el tamaño y la naturaleza del edificio en cuestión.'),
('Otros trabajadores de servicios personales', 'Otros trabajadores de servicios personales relatan eventos pasados y predicen eventos futuros en la vida de las personas, brindan compañía y otros servicios personales, acicalan, entrenan y cuidan animales, brindan servicios funerarios y de embalsamamiento y entrenan a personas para conducir vehículos.'),
('Astrólogos, Adivinos y Trabajadores Afines', 'Los astrólogos, adivinos y trabajadores afines cuentan el pasado y predicen eventos futuros en la vida de las personas mediante la práctica de la astrología, sobre la base de las características de las palmas de las manos de los clientes, muestras de naipes extraídos u otras técnicas.'),
('Acompañantes y Valet', 'Los acompañantes y ayuda de cámara brindan compañía y atienden diversas necesidades del cliente o empleador.'),
('Funerarios y Embalsamadores', 'Los enterradores y embalsamadores organizan funerales y realizan diversas tareas en la eliminación de cuerpos humanos.'),
('Peluqueros de mascotas y trabajadores de cuidado de animales', 'Los peluqueros de mascotas y los trabajadores del cuidado de los animales alimentan, manipulan, entrenan y acicalan a los animales y ayudan a los veterinarios, tecnólogos y técnicos en salud animal en instalaciones veterinarias, refugios de animales, criaderos y residencias caninas, zoológicos, laboratorios, tiendas minoristas de mascotas, escuelas de equitación, escuelas de adiestramiento canino. Establecimientos de peluquería y similares.'),
('Instructores de manejo', 'Los instructores de manejo enseñan a las personas cómo conducir vehículos motorizados.'),
('Trabajadores de servicios personales no clasificados en otra parte', 'Este grupo primario cubre a los trabajadores de servicios personales no clasificados en otra parte del Subgrupo principal 51: Trabajadores de servicios personales. Por ejemplo, se clasifican aquí las que prestan servicios y compañía como parejas de baile, acompañantes sociales y azafatas o anfitrionas de locales nocturnos.'),
('trabajadores de ventas', 'Los trabajadores de ventas venden y hacen demostraciones de productos en tiendas mayoristas o minoristas, en puestos y mercados, puerta a puerta, por teléfono o centros de atención al cliente. Pueden registrar y aceptar pagos por bienes y servicios comprados, y pueden operar pequeños establecimientos minoristas. El desempeño competente en la mayoría de las ocupaciones de este subgrupo principal requiere habilidades en el segundo nivel de habilidades de la CIUO.'),
('Vendedores de calle y mercado', 'Los vendedores ambulantes y de mercado venden productos en puestos de mercado o en la calle y preparan y venden alimentos y bebidas fríos o calientes listos para el consumo inmediato en las calles y lugares públicos.'),
('Vendedores de puestos y mercados', 'Los vendedores de puestos y mercados venden diversos productos en puestos en mercados al aire libre o cubiertos o en puestos en calles u otros espacios abiertos.'),
('Vendedores de comida callejera', 'Los vendedores ambulantes de comida preparan y venden, o venden alimentos y bebidas previamente preparados, calientes o fríos, listos para su consumo inmediato en las calles y lugares públicos como estaciones, cines o teatros.'),
('Tienda Aalespersonas', 'Los vendedores de tiendas venden una variedad de bienes y servicios directamente al público o en nombre de establecimientos minoristas y mayoristas. Explican las funciones y cualidades de estos bienes y servicios, y pueden operar pequeñas tiendas o supervisar las actividades de los dependientes y cajeros de las tiendas.'),
('comerciantes', 'Los comerciantes operan pequeñas tiendas minoristas de forma independiente o con el apoyo de un pequeño número de personas.'),
('Supervisores de tiendas', 'Los supervisores de tiendas supervisan y coordinan las actividades de los asistentes de ventas de tiendas, los operadores de caja y otros trabajadores en tiendas minoristas y mayoristas, como supermercados y grandes almacenes.'),
('Asistentes de ventas de tiendas', 'Los dependientes de tienda venden una gama de bienes y servicios directamente al público o en nombre de establecimientos minoristas y mayoristas, y explican las funciones y cualidades de estos bienes y servicios.'),
('Otros trabajadores de ventas', 'Otros trabajadores de ventas exhiben, demuestran, exhiben y venden bienes, alimentos y servicios, generalmente al público en general, en contextos distintos a las ventas en mercados, calles y tiendas. Este grupo incluye a los vendedores no clasificados en los Grupos Menores 521: Vendedores de Calle y Mercado, 522: Vendedores de Tienda y 523: Cajeros y Taquilladores.'),
('Moda y Otros Modelos', 'Los modelos de moda y otros usan y exhiben ropa y accesorios y posan para fotografías, películas y videos, publicidad, fotografía fija o para la creación artística.'),
('Demostradoras de ventas', 'Los demostradores de ventas demuestran los productos en locales comerciales, exposiciones y domicilios particulares.'),
('Vendedores puerta a puerta', 'Los vendedores de puerta en puerta describen, demuestran y venden bienes y servicios y solicitan negocios para establecimientos acercándose o visitando a clientes potenciales, generalmente residentes en casas particulares, yendo de puerta en puerta.'),
('Vendedores del centro de contacto', 'Los vendedores del centro de contacto contactan a los clientes actuales y potenciales, utilizando el teléfono u otros medios de comunicación electrónica, para promocionar bienes y servicios, obtener ventas y concertar visitas de ventas. Pueden trabajar desde un centro de atención al cliente o desde locales no centralizados.'),
('Auxiliares de Estaciones de Servicio', 'Los encargados de las estaciones de servicio venden combustible, lubricantes y otros productos de automoción y prestan servicios tales como repostaje, limpieza, lubricación y reparaciones menores de vehículos de motor.'),
('Asistentes de mostrador de servicio de alimentos', 'Los asistentes de mostrador de servicio de alimentos atienden a los clientes en los mostradores de comida y terminan la preparación de alimentos simples en restaurantes, cafeterías, hoteles, establecimientos de comida rápida, cafeterías, hospitales y otros entornos.'),
('Trabajadores de ventas no clasificados en otra parte', 'Este grupo primario incluye a los trabajadores de ventas no clasificados en otra parte del Subgrupo principal 52: Trabajadores de ventas.'),
('Trabajadores de cuidado personal', 'Los trabajadores de cuidado personal brindan cuidado, supervisión y asistencia a niños, pacientes y personas mayores, convalecientes o discapacitadas en entornos institucionales y residenciales. El desempeño competente en la mayoría de las ocupaciones de este subgrupo principal requiere habilidades en el segundo nivel de habilidades de la CIUO.'),
('Trabajadores de cuidado infantil y ayudantes de maestros', 'Los trabajadores de cuidado infantil y los ayudantes de los maestros brindan atención y supervisión a los niños en escuelas, hogares residenciales e instalaciones de cuidado infantil.'),
('Trabajadores de cuidado infantil', 'Los trabajadores de cuidado infantil brindan atención y supervisión a los niños en hogares residenciales y en centros de cuidado diurno, de vacaciones y antes y después de la escuela.'),
('Ayudantes de maestros', 'Los auxiliares docentes realizan tareas no docentes para ayudar al personal docente y brindar atención y supervisión a los niños en las escuelas y centros preescolares.'),
('Trabajadores de Cuidado Personal en Servicios de Salud', 'Los trabajadores de atención personal en los servicios de salud brindan atención personal y asistencia con la movilidad y las actividades de la vida diaria a pacientes y personas mayores, convalecientes y discapacitadas en entornos de atención médica y residenciales.'),
('Asistentes de atención médica', 'Los asistentes de atención médica brindan atención personal directa y asistencia con las actividades de la vida diaria a pacientes y residentes en una variedad de entornos de atención médica, como hospitales, clínicas y centros residenciales de atención de enfermería. Por lo general, trabajan en la implementación de planes y prácticas de atención establecidos, y bajo la supervisión directa de médicos, enfermeras u otros profesionales de la salud o profesionales asociados.'),
('Trabajadores de cuidado personal a domicilio', 'Los trabajadores de atención personal a domicilio brindan atención personal de rutina y asistencia con las actividades de la vida diaria a las personas que necesitan dicha atención debido a los efectos del envejecimiento, enfermedad, lesión u otra condición física o mental en hogares privados y otros entornos residenciales independientes. .'),
('Trabajadores de cuidados personales en servicios de salud no clasificados en otra parte', 'Este grupo primario cubre a los proveedores de servicios de apoyo de cuidado personal y de salud de rutina no clasificados en otra parte del Grupo menor 532: Trabajadores de cuidado personal en servicios de salud. Por ejemplo, el grupo incluye ocupaciones como asistente dental, asistente de esterilización, asistente de hospital, asistente de imágenes médicas y asistente de farmacia.'),
('Bomberos', 'Los bomberos previenen, combaten y extinguen incendios y ayudan en otras emergencias, protegen la vida y la propiedad y realizan labores de rescate.'),
('Oficiales de policía', 'Los oficiales de policía mantienen la ley y el orden, patrullan las áreas públicas, hacen cumplir las leyes y los reglamentos y arrestan a los presuntos delincuentes.'),
('Guardas de prisión', 'Los guardias penitenciarios vigilan y mantienen el orden entre los reclusos de prisiones, reformatorios o penitenciarías.'),
('Guardias de seguridad', 'Los guardias de seguridad patrullan o monitorean las instalaciones para proteger la propiedad contra robos y vandalismo. Controlan el acceso a los establecimientos y mantienen el orden y hacen cumplir las normas en los eventos públicos y dentro de los establecimientos.'),
('Trabajadores de servicios de protección no clasificados en otra parte', 'Este grupo primario cubre a los trabajadores de los servicios de protección no clasificados en otra parte del Grupo menor 541: Trabajadores de los servicios de protección. Por ejemplo, el grupo de unidad incluye socorristas, guardias de cruce y oficiales de control de animales.'),
('Trabajadores agrícolas, forestales y pesqueros calificados', 'Los trabajadores calificados en agricultura, silvicultura y pesca cultivan y cosechan cultivos de campo o árboles y arbustos, recolectan frutas y plantas silvestres, crían, cuidan o cazan animales, producen una variedad de productos de cría de animales; cultivar, conservar y explotar los bosques; criar o pescar peces; y cultiven o recolecten otras formas de vida acuática con el fin de proporcionar alimentos, refugio e ingresos para ellos y sus familias. El desempeño competente en la mayoría de las ocupaciones de este grupo principal requiere habilidades en el segundo nivel de habilidades de la CIUO.'),
('Trabajadores agrícolas calificados orientados al mercado', 'Los trabajadores agrícolas calificados orientados al mercado planifican, organizan y realizan operaciones agrícolas para cultivar y cosechar cultivos de campo o árboles y arbustos y producir una variedad de animales y productos animales para la venta o entrega en forma regular a compradores mayoristas, organizaciones de mercadeo o en mercados. El desempeño competente en la mayoría de las ocupaciones de este subgrupo principal requiere habilidades en el segundo nivel de habilidades de la CIUO.'),
('Jardineros y cultivadores de cultivos', 'Los horticultores y productores de cultivos planifican, organizan y realizan operaciones para cultivar y cosechar cultivos de campo, cultivar frutas y otros cultivos de árboles y arbustos, cultivar hortalizas y plantas medicinales y de otro tipo; y producir productos hortícolas y de viveros, para la venta o entrega periódica a compradores mayoristas, organizaciones de comercialización o en mercados.'),
('Productores de hortalizas y cultivos de campo', 'Los cultivadores de cultivos extensivos y hortalizas planifican, organizan y realizan operaciones agrícolas para cultivar y cosechar diversos tipos de cultivos extensivos, como trigo y otros cereales, arroz, remolacha, caña de azúcar, cacahuetes, tabaco, caña u otros cultivos extensivos y patatas, repollos u otras hortalizas de campo, para la venta o entrega periódica a compradores mayoristas, organizaciones de comercialización o en mercados.'),
('Cultivadores de árboles y arbustos', 'Los cultivadores de árboles y arbustos planifican, organizan y realizan operaciones agrícolas para cultivar y cosechar árboles y arbustos, como árboles frutales y de nueces, arbustos de té y café, vides, arbustos con bayas, árboles de cacao y árboles de caucho, y para recolectar savia. , para la venta o entrega periódica a compradores mayoristas, organizaciones de comercialización o en mercados.'),
('Jardineros, horticultores y viveristas', 'Los jardineros, horticultores y viveristas planifican, organizan y realizan operaciones para cultivar y mantener árboles, arbustos, flores y otras plantas en parques y jardines privados, y para producir árboles jóvenes, bulbos y semillas o cultivar hortalizas y flores mediante técnicas de cultivo intensivo, para la venta o entrega regular a compradores mayoristas, organizaciones de mercadeo o en mercados.'),
('Productores de cultivos mixtos', 'Los productores de cultivos mixtos planifican, organizan y realizan operaciones agrícolas para cultivar y cosechar combinaciones específicas de cultivos de campo, vegetales de campo, cultivos de árboles y arbustos y productos de jardinería, horticultura y viveros, para la venta o entrega a compradores mayoristas, organizaciones de mercadeo o en mercados.'),
('Productores de animales', 'Los productores de animales planifican, organizan y realizan operaciones agrícolas para criar y criar animales domésticos, aves de corral, insectos y animales no domésticos para la producción de carne, productos lácteos, miel, pieles, textiles y otros productos, o para uso como trabajo, deporte o animales recreativos, para la venta o entrega a compradores mayoristas, organizaciones de mercadeo o en mercados.'),
('Productores Ganaderos y Lácteos', 'Los productores de ganado y de productos lácteos planifican, organizan y ejecutan operaciones agrícolas para criar y criar animales domésticos (excepto aves de corral), como bovinos, ovinos, porcinos, caprinos, equinos y camellos, para la producción de carne, leche y otros productos lácteos, pieles y lana o para uso como animales de trabajo, deportivos o recreativos, para la venta o entrega a compradores mayoristas, organizaciones de mercadeo o en mercados.'),
('Productores Avícolas', 'Los productores avícolas planifican, organizan y realizan operaciones agrícolas para reproducir y criar pollos, pavos, gansos, patos y otras aves de corral para producir carne, huevos y reproductores para la venta o entrega a compradores mayoristas, organizaciones de mercadeo o en mercados.'),
('Apicultores y Sericultores', 'Los apicultores y sericultores planifican, organizan y realizan operaciones para criar, criar y cuidar insectos como abejas melíferas, gusanos de seda y otras especies para producir miel, cera de abeja, seda y otros productos para la venta o entrega a compradores mayoristas, organizaciones de mercadeo o en mercados.'),
('Productores de animales no clasificados en otra parte', 'Este grupo primario cubre los productores de animales orientados al mercado no clasificados en otra parte del Grupo menor 612: Productores de animales. Por ejemplo, el grupo incluye los que se dedican a la cría, crianza y cuidado de mamíferos no domesticados, aves de caza y otras aves (excepto aves de corral), caracoles, serpientes y otros reptiles, así como diversos insectos y animales utilizados para pruebas de laboratorio, para la venta o entrega regular a compradores mayoristas, organizaciones de mercadeo, zoológicos y circos, o en mercados.'),
('Trabajadores calificados de la silvicultura, la pesca y la caza orientados al mercado', 'Los trabajadores forestales, pesqueros y cinegéticos calificados y orientados al mercado planifican, organizan y realizan operaciones para cultivar, conservar y explotar bosques naturales y de plantaciones, criar y criar peces, recolectar y capturar peces; y cazar y atrapar animales, para la venta o entrega periódica a compradores mayoristas, organizaciones de comercialización o en mercados. El desempeño competente en la mayoría de las ocupaciones de este subgrupo principal requiere habilidades en el segundo nivel de habilidades de la CIUO.'),
('Trabajadores de la pesca, cazadores y tramperos', 'Los trabajadores de la pesca, cazadores y tramperos crían y crían peces, recolectan y capturan peces, y cazan y atrapan animales, para la venta o entrega periódica a compradores mayoristas, organizaciones de comercialización o en mercados.'),
('Trabajadores de la acuicultura', 'Los trabajadores de acuicultura crían y crían peces y cultivan mejillones, ostras y otras formas de vida acuática, para la venta o entrega periódica a compradores mayoristas, organizaciones de comercialización o en mercados.'),
('Trabajadores de la pesca en aguas continentales y costeras', 'Los trabajadores de la pesca en aguas interiores y costeras, solos o como miembros de las tripulaciones de los buques pesqueros, capturan peces o recolectan otras formas de vida acuática en aguas interiores o costeras para venderlos o entregarlos periódicamente a compradores mayoristas, organizaciones de comercialización o en mercados.'),
('Trabajadores de la pesca en aguas profundas', 'Los trabajadores de la pesca de altura, como capitanes o miembros de la tripulación de los buques pesqueros, capturan peces de aguas profundas para venderlos o entregarlos a compradores mayoristas, organizaciones de comercialización o en mercados.'),
('Cazadores y Tramperos', 'Los cazadores y tramperos capturan y matan mamíferos, aves o reptiles principalmente para obtener carne, piel, plumas y otros productos para la venta o entrega periódica a compradores mayoristas, organizaciones de comercialización o en mercados.'),
('Agricultores de subsistencia, pescadores, cazadores y recolectores', 'Los agricultores de subsistencia, los pescadores, los cazadores y los recolectores cultivan y cosechan cultivos de campo o de árboles y arbustos, verduras y frutas, recolectan frutas silvestres, plantas medicinales y de otro tipo, cuidan o cazan animales, capturan peces y recolectan diversas formas de vida acuática para proporcionar alimentos. , vivienda y, en algunos casos, un mínimo de ingresos en efectivo para ellos y sus hogares. El desempeño competente en la mayoría de las ocupaciones de este subgrupo principal requiere habilidades en el segundo nivel de habilidades de la CIUO.'),
('Trabajadores de oficios artesanales y afines', 'Los trabajadores de oficios artesanales y afines aplican conocimientos y habilidades técnicas y prácticas específicas en los campos para construir y mantener edificios; forma de metal; levantar estructuras metálicas; configurar máquinas herramienta o fabricar, ajustar, mantener y reparar maquinaria, equipo o herramientas; realizar trabajos de imprenta; y producir o procesar productos alimenticios, textiles y artículos de madera, metal y otros, incluidos los artículos de artesanía. El desempeño competente en la mayoría de las ocupaciones de este grupo principal requiere habilidades en el segundo nivel de habilidades de la CIUO. El trabajo se realiza a mano y con herramientas manuales y otras que se utilizan para reducir la cantidad de esfuerzo físico y el tiempo requerido para tareas específicas, así como para mejorar la calidad de los productos. Las tareas exigen una comprensión de todas las etapas del proceso de producción, los materiales y herramientas utilizados, y la naturaleza y propósito del producto final.'),
('Trabajadores de la construcción y oficios afines (excepto electricistas)', 'Los trabajadores de la construcción y oficios afines construyen, mantienen y reparan edificios, levantan y reparan cimientos, paredes y estructuras de ladrillo, piedra y materiales similares; dar forma y acabado a la piedra para la construcción y otros fines. El desempeño competente en la mayoría de las ocupaciones de este subgrupo principal requiere habilidades en el segundo nivel de habilidades de la CIUO. El trabajo se realiza a mano y con herramientas manuales y otras que se utilizan para reducir la cantidad de esfuerzo físico y el tiempo requerido para tareas específicas, así como para mejorar la calidad de los productos. Las tareas exigen una comprensión de la organización del trabajo, los materiales y herramientas utilizados, y la naturaleza y propósito del producto final.'),
('Trabajadores de estructuras de construcción y oficios relacionados', 'Los trabajadores de estructuras de edificios y oficios relacionados construyen, mantienen y reparan edificios; levantar y reparar cimientos, muros y estructuras de ladrillo, piedra y materiales similares; y dar forma y acabado a la piedra para la construcción y otros fines; y realizar diversas tareas de construcción y mantenimiento de edificios.'),
('Constructores de casas', 'Los constructores de casas construyen, mantienen y reparan casas y pequeños edificios similares utilizando técnicas y materiales tradicionales o modernos.'),
('Albañiles y Trabajadores Afines', 'Los albañiles y trabajadores afines colocan ladrillos, piedras precortadas y otros tipos de bloques de construcción en mortero para construir y reparar paredes, tabiques, arcos y otras estructuras.'),
('Canteros, cortadores de piedra, divisores y talladores', 'Los canteros, canteros, cortadores y tallistas cortan y dan forma a bloques y losas de piedra dura y blanda para la construcción y el mantenimiento de estructuras de piedra y mampostería monumental, y tallan diseños y figuras en piedra.'),
('Colocadores de hormigón, acabadores de hormigón y trabajadores afines', 'Los colocadores de hormigón, los acabadores de hormigón y los trabajadores relacionados levantan armazones y estructuras de hormigón armado, hacen formas para moldear hormigón, refuerzan superficies de hormigón, cementan aberturas en paredes o revestimientos para pozos, terminan y reparan superficies de cemento y realizan trabajos de terrazo.'),
('Carpinteros y Ebanistas', 'Los carpinteros y carpinteros cortan, dan forma, ensamblan, erigen, mantienen y reparan diversos tipos de estructuras y accesorios hechos de madera y otros materiales.'),
('Trabajadores de estructuras de construcción y oficios relacionados no clasificados en otra parte', 'Este grupo primario cubre los trabajadores de estructuras de edificios y oficios afines no clasificados en otra parte del Grupo menor 711: Trabajadores de estructuras de edificios y oficios afines. Por ejemplo, el grupo básico incluye a los trabajadores de los montacargas, los andamios y los trabajadores de demolición.'),
('Trabajadores de acabados de edificios y oficios relacionados', 'Los trabajadores de acabados de edificios y oficios relacionados cubren, aplican o instalan, mantienen y reparan techos, pisos, paredes, sistemas de aislamiento, vidrios en ventanas u otros marcos, así como sistemas de plomería, tuberías y electricidad en edificios y otras estructuras.'),
('techadores', 'Los techadores construyen y reparan techos en todo tipo de edificios utilizando uno o más tipos de materiales.'),
('Ponedores de suelo y colocadores de baldosas', 'Los instaladores de pisos y losetas instalan, mantienen y reparan pisos, y cubren pisos, paredes y otras superficies con alfombras, losetas o paneles de mosaico con fines decorativos o de otro tipo.'),
('Yeseros', 'Los yeseros instalan, mantienen y reparan placas de yeso en edificios y aplican revestimientos decorativos y protectores de yeso, cemento y materiales similares en el interior y exterior de las estructuras.'),
('Trabajadores de aislamiento', 'Los trabajadores de aislamiento aplican y reparan materiales aislantes en edificios, calderas, tuberías o equipos de refrigeración y aire acondicionado.'),
('vidrieros', 'Los vidrieros miden, cortan, acaban, ajustan e instalan vidrios planos y espejos.'),
('Plomeros y instaladores de tuberías', 'Los plomeros y los instaladores de tuberías ensamblan, instalan, reparan y mantienen sistemas de tuberías, desagües, canaletas, conductos y accesorios y accesorios relacionados para sistemas de agua, gas, drenaje, alcantarillado, calefacción, refrigeración y ventilación, y para equipos hidráulicos y neumáticos.'),
('Mecánica de Aire Acondicionado y Refrigeración', 'Los mecánicos de aire acondicionado y refrigeración ensamblan, instalan, mantienen y reparan sistemas y equipos de aire acondicionado y refrigeración.'),
('Pintores, Limpiadores de Estructuras de Edificios y Trabajadores de Oficios Relacionados', 'Pintores, limpiadores de estructuras de edificios y trabajadores de oficios relacionados preparan superficies y aplican pintura y materiales similares a edificios y otras estructuras, vehículos o diversos artículos manufacturados. Cubren paredes y techos interiores con papel tapiz, limpian chimeneas y superficies exteriores de edificios y otras estructuras.'),
('Pintores y Trabajadores Afines', 'Los pintores y trabajadores afines preparan las superficies de los edificios y otras estructuras para pintar, aplican capas protectoras y decorativas de pintura o materiales similares, o cubren las paredes interiores y los techos de los edificios con papel tapiz u otros acabados.'),
('Pintores y Barnices en Aerosol', 'Los pintores y barnizadores en aerosol operan equipos de pintura y barnizado en aerosol para aplicar revestimientos protectores a elementos o estructuras fabricados.'),
('Limpiadores de estructuras de edificios', 'Los limpiadores de estructuras de edificios limpian las superficies exteriores de los edificios y otras estructuras y eliminan el hollín de las chimeneas.'),
('Trabajadores del metal, maquinaria y oficios relacionados', 'Los trabajadores del metal, maquinaria y oficios relacionados funden, sueldan, forjan y, por otros métodos, dan forma al metal; erigir, mantener y reparar estructuras de metal pesado; se dedican al montaje de máquinas herramienta, así como al montaje, mantenimiento y reparación de maquinaria, incluidos motores, vehículos, o producen herramientas y diversos artículos de metales no preciosos. El desempeño competente en la mayoría de las ocupaciones de este subgrupo principal requiere habilidades en el segundo nivel de habilidades de la CIUO. El trabajo se realiza a mano y con herramientas manuales y otras que se utilizan para reducir la cantidad de esfuerzo físico y el tiempo requerido para tareas específicas, así como para mejorar la calidad de los productos. Las tareas exigen una comprensión de la organización del trabajo, los materiales y herramientas utilizados, y la naturaleza y propósito del producto final.'),
('Trabajadores de láminas y estructuras metálicas, moldeadores y soldadores, y trabajadores afines', 'Trabajadores de láminas y estructuras metálicas, moldeadores y soldadores, y trabajadores afines, fabrican moldes y machos para fundición de metales, sueldan y cortan piezas metálicas, fabrican y reparan artículos de láminas metálicas, e instalan, erigen, mantienen y reparan estructuras metálicas pesadas, abordan, teleféricos y equipos relacionados.'),
('Moldeadores de metal y Coremakers', 'Los moldeadores y machos de metal fabrican moldes y machos para la fundición de metal.'),
('Soldadores y Cortallamas', 'Los soldadores y oxicortes sueldan y cortan piezas de metal utilizando llama de gas, arco eléctrico y otras fuentes de calor para fundir y cortar, o para fundir y fusionar metal.'),
('Trabajadores de chapa', 'Los chapistas fabrican, instalan y reparan artículos y partes de artículos hechos de chapa como acero, cobre, estaño, latón, aluminio, zinc o hierro galvanizado.'),
('Preparadores y montadores de estructuras metálicas', 'Los preparadores y montadores de estructuras metálicas montan, montan y desmontan estructuras metálicas estructurales de edificios y otras estructuras.'),
('Aparejadores y empalmadores de cables', 'Los aparejadores y empalmadores de cables ensamblan aparejos para mover y colocar equipos y componentes estructurales, o instalar y mantener cables, cuerdas y alambres en sitios de construcción, edificios u otras estructuras.'),
('Herreros, fabricantes de herramientas y trabajadores de oficios afines', 'Herreros, herramentistas y trabajadores de oficios afines, martillos y forjadores de barras, varillas o lingotes de hierro, acero y otros metales para fabricar y reparar diversas clases de herramientas, equipos y otros artículos; configurar máquinas herramienta para operadores o configurar y operar varias máquinas herramienta; y pulir y afilar superficies.'),
('Herreros, martilladores y trabajadores de prensas de forja', 'Los herreros, martilladores y trabajadores de prensas de forja martillan y forjan barras, varillas, lingotes y planchas de hierro, acero u otros metales, y estiran alambre para fabricar y reparar diversos tipos de herramientas, artículos metálicos, equipos e implementos agrícolas y afines.'),
('Fabricantes de herramientas y trabajadores afines', 'Los fabricantes de herramientas y trabajadores afines fabrican y reparan herramientas especializadas y hechas a la medida, armas deportivas, cerraduras, troqueles, patrones, componentes de maquinaria y otros artículos metálicos utilizando herramientas manuales y mecánicas para trabajar el metal con tolerancias finas.'),
('Preparadores y operadores de máquinas herramienta para trabajar metales', 'Los montadores y operadores de máquinas herramienta para trabajar metales ajustan y/u operan varias máquinas herramienta, trabajando con tolerancias finas.'),
('Pulidoras de metal, amoladoras de ruedas y afiladoras de herramientas', 'Los pulidores de metal, las amoladoras de ruedas y los afiladores de herramientas pulen y afilan superficies metálicas y afilan herramientas.'),
('Mecánicos y Reparadores de Maquinaria', 'Los mecánicos y reparadores de maquinaria ajustan, instalan, mantienen y reparan motores, vehículos, maquinaria agrícola o industrial y equipos mecánicos similares.'),
('Mecánicos y Reparadores de Vehículos Motorizados', 'Los mecánicos y reparadores de vehículos automotores ajustan, instalan, mantienen, dan servicio y reparan motores y equipos mecánicos y relacionados de automóviles de pasajeros, camiones de reparto, motocicletas y otros vehículos automotores.'),
('Mecánicos y reparadores de motores de aeronaves', 'Los mecánicos y reparadores de motores de aeronaves ajustan, mantienen, reparan y reacondicionan motores y ensamblajes de aeronaves, como fuselajes, sistemas hidráulicos y neumáticos.'),
('Mecánicos y Reparadores de Maquinaria Agrícola e Industrial', 'Los mecánicos y reparadores de maquinaria agrícola e industrial ajustan, instalan, examinan, mantienen y reparan motores, maquinaria agrícola e industrial y equipos mecánicos, excepto vehículos de motor, aeronaves y motores eléctricos.'),
('Reparadores de bicicletas y afines', 'Los reparadores de bicicletas y afines ajustan, mantienen, revisan y reparan equipos mecánicos y afines de bicicletas, rickshaws, cochecitos de bebé, sillas de ruedas y equipos de transporte no motorizados similares.'),
('Trabajadores de la Artesanía y la Imprenta', 'Los trabajadores de la artesanía y la imprenta combinan habilidades artísticas y manuales para diseñar, producir, mantener y decorar instrumentos de precisión, instrumentos musicales, joyas y otros metales preciosos, cerámica, porcelana y cristalería, artículos de madera o textiles, cuero o materiales relacionados, y artículos impresos. productos como libros, periódicos y revistas. Aplican técnicas tradicionales y/o de reciente desarrollo para tallar, moldear, ensamblar, tejer y decorar diversos artículos; para componer y configurar el tipo antes de imprimir; instalar y operar imprentas; para encuadernar y terminar productos impresos; y para preparar esténciles y operar equipos de serigrafía. El desempeño competente en la mayoría de las ocupaciones de este subgrupo principal requiere habilidades en el segundo nivel de habilidades de la CIUO. El trabajo puede realizarse a mano o implicar el uso de herramientas manuales, herramientas eléctricas manuales y, en algunos casos, la instalación y operación de maquinaria y máquinas herramienta. Las tareas exigen una comprensión de la organización del trabajo, los materiales y herramientas utilizados, y la naturaleza y propósito del producto final.'),
('Trabajadores Artesanales', 'Los trabajadores artesanales combinan habilidades artísticas y manuales para diseñar, fabricar, reparar, ajustar, mantener y decorar instrumentos de precisión, instrumentos musicales, joyas y otros metales preciosos, cerámica y porcelana. Aplican técnicas tradicionales y/o desarrolladas recientemente para tallar, moldear, ensamblar, tejer y decorar diversos artículos de vidrio, cerámica, textiles, paja, piedra, madera y cuero.'),
('Fabricantes y reparadores de instrumentos de precisión', 'Los fabricantes y reparadores de instrumentos de precisión fabrican, calibran, reparan, mantienen, ajustan e instalan relojes y relojes mecánicos, e instrumentos y equipos náuticos, meteorológicos, ópticos y de precisión, y los ajustan para su correcto funcionamiento.'),
('Fabricantes y afinadores de instrumentos musicales', 'Los fabricantes y afinadores de instrumentos musicales fabrican, ensamblan, reparan, ajustan y restauran instrumentos musicales y los afinan al tono requerido con herramientas manuales o eléctricas. Por lo general, se especializan en un tipo de instrumento, como instrumentos de cuerda, de metal, de lengüeta, pianos o de percusión.'),
('Trabajadores de joyería y metales preciosos', 'Los trabajadores de joyería y metales preciosos diseñan, fabrican, ajustan, reparan o tasan joyas, artículos ceremoniales o religiosos, oro, plata, otros metales preciosos o gemas. Cortan, liman, pulen y engastan piedras preciosas y semipreciosas, incluidas gemas y diamantes, y graban diseños en joyas y artículos de metales preciosos. Cortan y pulen diamantes para fines industriales.'),
('Alfareros y Trabajadores Afines', 'Los alfareros y trabajadores afines preparan cerámica, porcelana, sanitarios, ladrillos, tejas y ruedas abrasivas a mano o con máquina.'),
('Vidrieros, Cortadores, Molinos y Acabadores', 'Los fabricantes de vidrio, cortadores, trituradores y acabadores soplan, moldean, prensan, cortan, recortan, muelen y pulen el vidrio, y dan forma al vidrio fundido de acuerdo con los patrones.'),
('Letreros, pintores decorativos, grabadores y grabadores', 'Los rotulistas, pintores decorativos, grabadores y grabadores decoran artículos de madera, metal, textiles, vidrio, cerámica y otros materiales. Planifican, diseñan y pintan letras, figuras, monogramas y diseños para hacer letreros y grabar y grabar diseños ornamentales y florales en vidrio y otros artículos.'),
('Trabajadores Artesanales en Madera, Cestería y Materiales Afines', 'Los trabajadores de la artesanía en madera, cestería y materiales afines aplican técnicas tradicionales como el secado, la impregnación para preparar madera, paja, ratán, juncos, arcilla, conchas y otros materiales, y tallan, moldean, ensamblan, tejen o pintan y decoran diversos artículos para uso personal. o uso doméstico o con fines decorativos. Los cesteros, cepillos y trabajadores afines seleccionan y preparan materiales como cerdas, nailon, fibra, lubina, barbas y alambres para fabricar muebles de mimbre, cepillos y escobas, y tejer diversos tipos de cestos.'),
('Trabajadores Artesanales en Textil, Cuero y Materiales Afines', 'Los trabajadores de la artesanía en textiles, cuero y materiales relacionados aplican técnicas y patrones tradicionales para producir telas tejidas, prendas de vestir y artículos de punto, bordados, tejidos y otros para uso doméstico, así como calzado tradicional, carteras, cinturones y otros accesorios.'),
('Trabajadores de la artesanía no clasificados en otra parte', 'Este grupo primario comprende a los artesanos que realizan artesanías tradicionales no clasificadas en otra parte. Por ejemplo, el grupo incluye trabajadores artesanales tradicionales en metales no preciosos y piedra.'),
('Trabajadores de oficios de imprenta', 'Los trabajadores de los oficios de impresión componen y colocan tipos antes de imprimir, configuran y operan imprentas, encuadernan y terminan productos impresos, y preparan plantillas y operan equipos de serigrafía.'),
('Técnicos de Preprensa', 'Los técnicos de preimpresión prueban, dan formato, configuran y componen texto y gráficos en una forma adecuada para su uso en diversos procesos de impresión y representación en otros medios visuales.'),
('Impresoras', 'Los impresores instalan y operan prensas digitales, tipográficas, litográficas, flexográficas, de huecograbado, de periódicos y otras imprentas.');
INSERT INTO `areas_experiencia` (`titulo`, `descripcion`) VALUES
('Trabajadores de acabado y encuadernación de impresión', 'Los trabajadores de acabado y encuadernación de imprenta encuadernan libros y otras publicaciones, y terminan los productos impresos a mano oa máquina.'),
('Trabajadores de oficios eléctricos y electrónicos', 'Los trabajadores de oficios eléctricos y electrónicos instalan, ajustan y mantienen sistemas de cableado eléctrico y maquinaria y otros aparatos eléctricos, líneas y cables de transmisión y suministro eléctrico, y equipos y sistemas electrónicos y de telecomunicaciones. El desempeño competente en la mayoría de las ocupaciones de este subgrupo principal requiere habilidades en el segundo nivel de habilidades de la CIUO. El trabajo se realiza a mano y con herramientas manuales y otras que se utilizan para reducir la cantidad de esfuerzo físico y el tiempo requerido para tareas específicas, así como para mejorar la calidad de los productos. Las tareas exigen una comprensión de la organización del trabajo, los materiales y herramientas utilizados, y la naturaleza y propósito del producto final.'),
('Instaladores y reparadores de equipos eléctricos', 'Los instaladores y reparadores de equipos eléctricos instalan, ajustan y mantienen sistemas de cableado eléctrico y equipos relacionados, maquinaria eléctrica y otros aparatos eléctricos y líneas y cables de transmisión y suministro eléctrico.'),
('Electricistas de construcción y afines', 'Los electricistas de edificios y afines instalan, mantienen y reparan sistemas de cableado eléctrico y equipos y accesorios relacionados.'),
('Mecánicos Eléctricos y Instaladores', 'Los mecánicos y montadores eléctricos ajustan, ajustan, instalan y reparan maquinaria eléctrica y otros aparatos y equipos eléctricos en edificios, fábricas, vehículos de motor, talleres u otros lugares.'),
('Instaladores y Reparadores de Líneas Eléctricas', 'Los instaladores y reparadores de líneas eléctricas instalan, reparan y unen cables de transmisión y suministro eléctrico y equipos relacionados.'),
('Instaladores y Reparadores de Electrónica y Telecomunicaciones', 'Los instaladores y reparadores de electrónica y telecomunicaciones ajustan, mantienen, ajustan y reparan equipos electrónicos tales como máquinas comerciales y de oficina, instrumentos electrónicos y sistemas de control; instalar, reparar y mantener equipos de telecomunicaciones, equipos de transmisión de datos, cables y antenas; y reparar, ajustar y mantener computadoras.'),
('Mecánicos y Servicers electrónicos', 'Los mecánicos y reparadores electrónicos ajustan, mantienen, ajustan y reparan equipos electrónicos, como máquinas comerciales y de oficina, e instrumentos electrónicos y sistemas de control.'),
('Instaladores y Servicers de Tecnologías de la Información y las Comunicaciones', 'Los instaladores y proveedores de servicios de tecnología de la información y las comunicaciones (TIC) instalan, reparan y mantienen equipos de telecomunicaciones, equipos de transmisión de datos, cables, antenas y conductos y reparan, ajustan y mantienen computadoras.'),
('Trabajadores de procesamiento de alimentos, carpintería, prendas de vestir y otras artesanías y oficios relacionados', 'Los trabajadores del procesamiento de alimentos, la carpintería, la confección y otros oficios artesanales y afines tratan y transforman las materias primas agrícolas y pesqueras en alimentos y otros productos, y producen y reparan bienes hechos de madera, textiles, pieles, cuero u otros materiales. El desempeño competente en la mayoría de las ocupaciones de este subgrupo principal requiere habilidades en el segundo nivel de habilidades de la CIUO. El trabajo se realiza a mano y con herramientas manuales y otras que se utilizan para reducir la cantidad de esfuerzo físico y el tiempo requerido para tareas específicas, así como para mejorar la calidad de los productos. Las tareas exigen una comprensión de la organización del trabajo, los materiales y herramientas utilizados, y la naturaleza y propósito del producto final.'),
('Trabajadores de procesamiento de alimentos y oficios relacionados', 'Los trabajadores de procesamiento de alimentos y oficios relacionados sacrifican animales; tratarlos y prepararlos y los alimentos relacionados para el consumo humano y animal; hacer varios tipos de pan, pasteles y otros productos de harina; procesar y conservar frutas, verduras y alimentos relacionados; probar y clasificar diversos productos alimenticios y bebidas; o preparar tabaco y hacer productos de tabaco.'),
('Carnicerías, Pescaderías y Preparadores de Alimentos Afines', 'Los carniceros, pescaderos y preparadores de alimentos afines sacrifican animales, limpian, cortan y preparan carne y pescado, eliminan los huesos y preparan alimentos relacionados, o conservan carne, pescado y otros alimentos y productos alimenticios mediante secado, salado o ahumado.'),
('Panaderos, Pasteleros y Confiteros', 'Panaderos, pasteleros y confiteros elaboran diversos tipos de pan, pasteles y otros productos de harina, así como chocolatería y confitería artesanales.'),
('Fabricantes de productos lácteos', 'Los fabricantes de productos lácteos procesan mantequilla y varios tipos de queso, crema u otros productos lácteos.'),
('Conservantes de frutas, verduras y afines', 'Los conservantes de frutas, verduras y afines procesan o conservan frutas, frutos secos y alimentos afines de diversas formas, como la cocción, el secado, la salazón o la extracción de jugo o aceite.'),
('Catadores y Clasificadores de Alimentos y Bebidas', 'Los catadores y calificadores de alimentos y bebidas inspeccionan, prueban y clasifican varios tipos de productos agrícolas, alimentos y bebidas.'),
('Preparadores de tabaco y fabricantes de productos de tabaco', 'Los preparadores de tabaco y los fabricantes de productos de tabaco preparan hojas de tabaco y fabrican varios productos de tabaco.'),
('Trabajadores de la Madera, Ebanistas y Afines', 'Los tratantes de madera, ebanistas y trabajadores de oficios afines conservan y tratan la madera; fabrican, decoran y reparan muebles de madera, vehículos y otros productos y componentes de madera y montan, operan y cuidan equipos de curado y conservación de madera y equipos, máquinas y máquinas herramienta para trabajar la madera.'),
('Tratadores de madera', 'Los tratadores de madera curan, conservan y tratan la madera y la madera aserrada manualmente o utilizando equipos de tratamiento de madera como hornos y tanques.'),
('Ebanistas y Trabajadores Afines', 'Los ebanistas y trabajadores afines fabrican, decoran y reparan muebles de madera, carros y otros vehículos, ruedas, piezas, accesorios, patrones, maquetas y otros productos de madera utilizando máquinas para trabajar la madera, máquinas herramienta y herramientas manuales especializadas.'),
('Ajustadores y operadores de máquinas herramienta para trabajar la madera', 'Los montadores y operadores de máquinas-herramienta para trabajar la madera instalan, operan y supervisan máquinas automáticas o semiautomáticas para trabajar la madera, como sierras de precisión, moldeadoras, cepilladoras, perforadoras, torneadoras y talladoras de madera para fabricar o reparar piezas de madera para muebles, accesorios y otros productos de madera .'),
('Trabajadores de la confección y oficios relacionados', 'Los trabajadores de la confección y oficios relacionados ajustan, modifican y reparan ropa a la medida; diseñar y confeccionar prendas textiles y de piel y productos de cuero o piel; reparar, renovar y decorar prendas de vestir, guantes y otros productos textiles; crear patrones para prendas de vestir; instalar, reparar y reemplazar tapicería de muebles, enseres, aparatos ortopédicos y accesorios de automóviles; recortar, raspar, curtir, pulir y teñir cueros, pieles o pieles de animales; y modificar y reparar calzado y artículos de cuero.'),
('Sastres, Modistas, Peleteros y Sombrereros', 'Los sastres, modistas, peleteros y sombrereros fabrican, ajustan, modifican y reparan prendas de vestir hechas a medida o hechas a mano. Producen prendas a la medida como trajes, abrigos y vestidos a partir de tejidos textiles, pieles ligeras, pieles y otros materiales, o fabrican sombreros o pelucas según las especificaciones del cliente y del fabricante de la indumentaria.'),
('Patronistas y cortadores de prendas de vestir y afines', 'Los creadores de patrones y cortadores de prendas de vestir y afines crean patrones maestros de precisión para la producción de prendas de vestir y otros productos textiles, de cuero o de piel. Marcan, cortan, dan forma y recortan textiles, cueros ligeros y otros materiales según planos o especificaciones en la confección de prendas, sombreros y gorras, guantes y productos varios.'),
('Trabajadores de Costura, Bordado y Afines', 'Los trabajadores de la costura, el bordado y afines cosen, reparan, renuevan y decoran prendas de vestir, guantes y otros productos textiles, de piel, cuero ligero y otros materiales y fabrican velas, toldos y lonas para tiendas de campaña. Trabajan principalmente a mano con aguja e hilo, pero pueden realizar algunas tareas con una máquina de coser.'),
('Tapiceros y Trabajadores Afines', 'Los tapiceros y trabajadores afines instalan, reparan y reemplazan tapicería de muebles, enseres, aparatos ortopédicos, asientos, paneles, capotas convertibles y de vinilo y otros muebles de automóviles, vagones de ferrocarril, aeronaves, barcos y artículos similares con tapicería de tela, cuero, rexine u otra tapicería material. También fabrican y reparan cojines, edredones y colchones.'),
('Peletizadores, curtidores y talladores de pieles', 'Los peleteros, curtidores y peleteros recortan, raspan, limpian, curten, pulen y tiñen cueros, pieles o pieles de animales para producir material de cuero y pieles acabadas para la confección de prendas de vestir y otros productos.'),
('Zapateros y Trabajadores Afines', 'Los zapateros y trabajadores afines fabrican, modifican y reparan calzado estándar, a medida u ortopédico y artículos de cuero natural o sintético, tales como maletas, bolsos y cinturones (excepto prendas de cuero, sombreros y guantes), o participan en la fabricación de zapatos y afines. bienes. Decoran, refuerzan o rematan zapatos, maletas, bolsos y cinturones.'),
('Otros trabajadores artesanales y afines', 'Otros trabajadores artesanales y afines trabajan bajo la superficie del agua, utilizando aparatos de respiración subacuáticos; colocar, ensamblar y detonar explosivos; inspeccionar y probar materias primas y componentes y productos fabricados; elimine los organismos no deseados para evitar daños a los cultivos, edificios y otras estructuras. Este grupo incluye otras ocupaciones comerciales y artesanales no clasificadas en otra parte del Grupo principal 7: Trabajadores artesanales y oficios afines.'),
('buzos submarinos', 'Los buzos submarinos trabajan bajo la superficie del agua, con o sin la ayuda de aparatos de respiración subacuáticos, para inspeccionar, instalar, reparar y retirar equipos y estructuras, realizar pruebas o experimentos, manipular explosivos, fotografiar estructuras o vida marina, recolectar diversas formas de vida con fines comerciales o de investigación, y encontrar y recuperar objetos y personas desaparecidos.'),
('Shotfirers y Blasters', 'Shotfirers y blasters colocan, ensamblan y detonan explosivos en sitios de minería, canteras y demolición.'),
('Clasificadores y probadores de productos (excepto alimentos y bebidas)', 'Los evaluadores y evaluadores de productos (excepto alimentos y bebidas) inspeccionan, prueban, clasifican, toman muestras y pesan materias primas, componentes fabricados y productos no comestibles producidos o vendidos, para garantizar el cumplimiento de los estándares de calidad e identificar defectos, desgaste y desviaciones de las especificaciones. , y graduarlos y clasificarlos según su calidad.'),
('Fumigadores y otros controladores de plagas y malezas', 'Los fumigadores y otros controladores de plagas y malezas utilizan productos químicos para eliminar insectos dañinos, animales pequeños, plantas silvestres y otros organismos no deseados, para evitar daños a los cultivos y a los edificios y otras estructuras y sus alrededores, y para prevenir riesgos para la salud.'),
('Trabajadores artesanales y afines no clasificados en otra parte', 'Este grupo cubre las ocupaciones artesanales y comerciales no clasificadas en otra parte del Grupo principal 7: Trabajadores artesanales y oficios afines. Por ejemplo, el grupo incluye a quienes moldean, rebanan, muelen y pulen lentes ópticos y quienes arreglan flores para exhibición.'),
('Operadores de plantas y máquinas, y ensambladores', 'Los operadores de plantas y máquinas, y los ensambladores operan y monitorean maquinaria y equipos industriales y agrícolas en el lugar o por control remoto; conducir y operar trenes, vehículos de motor y maquinaria y equipos móviles; o ensamblar productos a partir de componentes de acuerdo con especificaciones y procedimientos estrictos. El desempeño competente en la mayoría de las ocupaciones de este grupo principal requiere habilidades en el segundo nivel de habilidades de la CIUO. El trabajo requiere principalmente experiencia y comprensión de la maquinaria y los equipos industriales y agrícolas, así como la capacidad de hacer frente a las operaciones al ritmo de las máquinas y adaptarse a las innovaciones tecnológicas.'),
('Operadores de máquinas y plantas estacionarias', 'Los operadores de máquinas y plantas estacionarias supervisan y operan plantas, maquinaria y equipos industriales estacionarios, o para los cuales la movilidad no es una parte integral de la operación. El desempeño competente en la mayoría de las ocupaciones de este subgrupo principal requiere habilidades en el segundo nivel de habilidades de la CIUO. El trabajo requiere principalmente experiencia y comprensión de la planta industrial, maquinaria o equipo que se opera y supervisa. A menudo se requiere capacidad para hacer frente a operaciones a ritmo de máquina y para adaptarse a las innovaciones en maquinaria y equipo.'),
('Operadores de plantas de procesamiento de minerales y minería', 'Los operadores de plantas de procesamiento de minerales y minería operan y monitorean plantas y maquinaria y operan herramientas manuales para extraer rocas y minerales de la tierra, procesar minerales y piedras, perforar pozos y perforaciones, y fabricar y terminar productos de cemento y piedra.'),
('mineros y canteros', 'Los mineros y canteros operan plantas, maquinaria y herramientas manuales para extraer rocas, minerales y otros depósitos de minas y canteras subterráneas y de superficie.'),
('Operadores de plantas de procesamiento de minerales y piedras', 'Los operadores de plantas de procesamiento de minerales y piedras operan y supervisan la maquinaria y el equipo para procesar rocas, minerales y piedras a fin de recuperar productos refinados para uso inmediato o procesamiento posterior.'),
('Perforadores y barrenadores de pozos y trabajadores afines', 'Los perforadores y perforadores de pozos y los trabajadores relacionados colocan, ensamblan y operan maquinaria de perforación y equipos relacionados para perforar pozos, extraer muestras de rocas, líquidos y gases o para una variedad de otros fines.'),
('Operadores de máquinas de cemento, piedra y otros productos minerales', 'Los operadores de máquinas de cemento, piedra y otros productos minerales supervisan y operan máquinas para la fabricación y el acabado de productos prefabricados de hormigón, betún y piedra, y para la fabricación de piedra colada con fines de construcción.'),
('Operadores de plantas de procesamiento y acabado de metales', 'Operadores de plantas de procesamiento y acabado de metales, supervisan y operan maquinaria y equipos de control de procesos de una sola función para controlar la conversión, el procesamiento y el acabado de minerales y metales.'),
('Operadores de plantas de procesamiento de metales', 'Operadores de plantas de procesamiento de metales, supervisan, operan, ajustan y mantienen maquinaria y equipos de proceso de una sola función para procesar y convertir minerales y refinar, endurecer, laminar y extruir metales.'),
('Operadores de máquinas de acabado, enchapado y revestimiento de metales', 'Los operadores de máquinas de productos fotográficos operan y controlan equipos que fabrican películas y papel fotográficos, y que procesan películas fotográficas expuestas y hacen impresiones.'),
('Operadores de máquinas y plantas de productos químicos y fotográficos', 'Los operadores de máquinas y plantas de productos químicos y fotográficos supervisan y operan máquinas que procesan una variedad de productos químicos y otros ingredientes para producir productos farmacéuticos, artículos de tocador, explosivos y productos fotográficos u otros productos químicos.'),
('Operadores de Máquinas y Plantas de Productos Químicos', 'Los operadores de máquinas y plantas de productos químicos operan y supervisan unidades y maquinaria para combinar, mezclar, procesar y envasar una amplia gama de productos químicos.'),
('Operadores de máquinas de productos fotográficos', 'Los operadores de máquinas de productos fotográficos operan y monitorean equipos que fabrican películas y papel fotográficos, y que procesan películas fotográficas expuestas y hacen impresiones.'),
('Operadores de máquinas de productos de caucho, plástico y papel', 'Los operadores de máquinas de productos de caucho, plástico y papel controlan y operan máquinas que amasan y mezclan caucho y compuestos de caucho y producen diversos componentes y productos a partir de caucho y plásticos naturales y sintéticos, o producen diferentes productos de papel a partir de papel, cartón, cartón y materiales similares.'),
('Operadores de máquinas de productos de caucho', 'Los operadores de máquinas de productos de caucho supervisan y operan máquinas que amasan y mezclan caucho y compuestos de caucho y producen diversos componentes y productos a partir de caucho natural y sintético, como calzado moldeado, artículos domésticos, materiales aislantes, accesorios industriales o neumáticos.'),
('Operadores de máquinas de productos plásticos', 'Los operadores de máquinas de productos supervisan y operan máquinas que amasan y mezclan compuestos para obtener materiales plásticos y que fabrican diversos componentes y artículos de plástico.'),
('Operadores de máquinas de productos de papel', 'Los operadores de máquinas de productos de papel supervisan y operan máquinas que producen cajas, sobres, bolsas y otros productos de papel, cartón, cartón y materiales similares.'),
('Operadores de máquinas de productos textiles, de piel y de cuero', 'Los operadores de máquinas de productos textiles, de piel y de cuero controlan y operan varios tipos de máquinas que preparan, procesan y tratan fibras, hilados, hilos, cuero o pieles; producir, modificar y reparar calzado, prendas de vestir y fabricar o lavar en seco textiles, peletería o artículos ligeros de cuero.'),
('Operadores de máquinas de preparación, hilado y bobinado de fibras', 'Los operadores de máquinas de preparación de fibras, hilatura y bobinado operan y supervisan máquinas que preparan fibras y hilan, doblan, retuercen y enrollan hilados e hilos de fibras textiles naturales. Retuercen dos o más hebras de hilo para preparar hebras individuales más fuertes, más suaves, uniformes y más pesadas, y tratan los textiles para hacerlos rígidos y resistentes al agua.'),
('Operadores de máquinas de tejer y tejer', 'Los operadores de máquinas de tejer y tejer instalan, operan y supervisan máquinas de tejer y tejer que procesan hilo o hilo en productos tejidos, no tejidos y de punto, como telas, encajes, alfombras, telas industriales, calcetería y prendas de punto o para acolchar y bordar telas .'),
('Operadores de máquinas de coser', 'Los operadores de máquinas de coser supervisan y operan máquinas de coser para fabricar, reparar, zurcir y renovar prendas textiles, de piel, sintéticas o de cuero o bordar diseños ornamentales en prendas u otros materiales. Operan máquinas para hacer ojales y perforar ojales para cortar agujeros, coser alrededor de agujeros, coser botones y fijar ojales a las prendas.'),
('Operadores de máquinas de blanqueo, teñido y limpieza de telas', 'Los operadores de máquinas de blanqueo, teñido y limpieza de telas operan y supervisan máquinas que blanquean, encogen, tiñen y tratan de otro modo fibras, hilados o telas.'),
('Operadores de máquinas de preparación de pieles y cueros', 'Los operadores de máquinas de preparación de pieles y cuero supervisan y operan varias máquinas que preparan cuero o tratan pieles de piel o de lana. Recortan, raspan, limpian, broncean, pulen y tiñen cueros, pieles o pieles de animales para producir material de cuero y pieles acabadas.'),
('Zapatero y operadores de máquinas afines', 'Los maquinistas de zapatería y afines supervisan y manejan máquinas que producen y reparan calzado estándar o especial, bolsos y otros accesorios, principalmente de cuero.'),
('Operadores de Lavandería', 'Los operadores de máquinas de lavandería operan máquinas de lavandería, limpieza en seco, prensado y tratamiento de telas en lavanderías y establecimientos de limpieza en seco.'),
('Operadores de máquinas de productos textiles, de piel y de cuero no clasificados en otra parte', 'Este grupo primario cubre los operadores de máquinas para productos textiles, de piel y de cuero no clasificados en otra parte del Grupo menor 815: Operadores de máquinas para productos textiles, de piel y de cuero. Por ejemplo, el grupo incluye aquellos que se dedican a operar y monitorear máquinas que fabrican sombreros, tiendas de campaña, colchones o artículos diversos como trenzas u otros adornos.'),
('Operadores de plantas de procesamiento de madera y fabricación de papel', 'Los operadores de plantas de procesamiento de madera y fabricación de papel supervisan, operan y controlan la maquinaria para aserrar madera, cortar chapas, hacer madera contrachapada, producir pulpa y papel y preparar madera, pulpa y papel para su uso posterior.'),
('Operadores de plantas de fabricación de pulpa y papel', 'Los operadores de plantas de fabricación de pulpa y papel operan y supervisan el equipo para procesar madera, pulpa y otros materiales de celulosa en la producción de pulpa y para producir papel de revestimiento y acabado.'),
('Operadores de plantas de procesamiento de madera', 'Los operadores de plantas de procesamiento de madera supervisan, operan y controlan el equipo de aserradero para aserrar troncos de madera en madera en bruto, cortar chapas, fabricar madera contrachapada y tableros de partículas, y preparar la madera para su uso posterior.'),
('Otros operadores de máquinas y plantas estacionarias', 'Este grupo primario incluye operadores de máquinas y plantas estacionarias no clasificados en otra parte del subgrupo principal 81: Operadores de máquinas y plantas estacionarias. El grupo incluye, por ejemplo, operadores de máquinas que fabrican chips de silicio y empalman cables y cuerdas.'),
('Operadores de Plantas de Vidrio y Cerámica', 'Los operadores de plantas de vidrio y cerámica operan y supervisan hornos, hornos y otra maquinaria y equipo utilizado en la fabricación de vidrio, cerámica, porcelana, azulejos o ladrillos. Operan máquinas para recocer, endurecer o decorar vidrio y cerámica.'),
('Operadores de máquinas de vapor y calderas', 'Los operadores de máquinas de vapor y calderas mantienen y operan varios tipos de máquinas de vapor, calderas, turbinas y equipos auxiliares para proporcionar energía y otros servicios públicos para edificios comerciales, industriales e institucionales, en sitios de trabajo y a bordo de barcos o embarcaciones autopropulsadas.'),
('Operadores de Máquinas Empacadoras, Embotelladoras y Etiquetadoras', 'Los operadores de máquinas empacadoras, embotelladoras y etiquetadoras supervisan y operan máquinas que pesan, empaquetan y etiquetan varios productos, o llenan diferentes contenedores con productos.'),
('Operadores de máquinas y plantas estacionarias no clasificados en otra parte', 'Este grupo primario incluye operadores de máquinas y plantas estacionarias no clasificados en otra parte del subgrupo principal 81: Operadores de máquinas y plantas estacionarias. El grupo incluye, por ejemplo, operadores de máquinas que fabrican chips de silicio y empalman cables y cuerdas.'),
('Ensambladores de Maquinaria Mecánica', 'Los ensambladores de maquinaria mecánica ensamblan, de acuerdo con procedimientos estrictamente establecidos, componentes de maquinaria mecánica como motores, vehículos de motor, turbinas y aeronaves.'),
('Ensambladores de equipos eléctricos y electrónicos', 'Los ensambladores de equipos eléctricos y electrónicos ensamblan o modifican, según procedimientos estrictamente establecidos, componentes de equipos eléctricos, electromecánicos y electrónicos.'),
('Ensambladores no clasificados en otra parte', 'Los ensambladores no clasificados en otra parte ensamblan, de acuerdo con procedimientos estrictamente establecidos, diversos productos que no incluyen componentes electrónicos, eléctricos o mecánicos.'),
('Choferes y Operadores de Plantas Móviles', 'Los conductores y operadores de plantas móviles conducen y atienden trenes y vehículos de motor, o conducen, operan y supervisan maquinaria y equipos industriales y agrícolas, o ejecutan tareas de cubierta a bordo de barcos y otras embarcaciones acuáticas. El desempeño competente en la mayoría de las ocupaciones de este subgrupo principal requiere habilidades en el segundo nivel de habilidades de la CIUO.'),
('Maquinistas de locomotoras y trabajadores afines', 'Los conductores de locomotoras y trabajadores afines conducen o asisten en la conducción de locomotoras para el transporte de pasajeros y mercancías, se encargan y protegen los trenes de mercancías durante los viajes; controlar el movimiento del tráfico ferroviario mediante señales operativas, cambiar el material rodante y formar trenes en patios ferroviarios; formar trenes para el arrastre de minas y controlar su movimiento.'),
('Conductores de locomotoras', 'Los conductores de locomotoras conducen o ayudan a conducir motores de locomotoras para transportar pasajeros y mercancías.'),
('Operadores de frenos, señales y desvíos ferroviarios', 'Los frenos, señalizadores y maniobras ferroviarios se encargan y protegen los trenes de carga ferroviarios durante los recorridos, controlan el movimiento del tráfico ferroviario mediante la operación de señales, cambian el material rodante y preparan los trenes en los patios ferroviarios, preparan los trenes para el arrastre de minas y controlan su movimiento.'),
('Conductores de automóviles, camionetas y motocicletas', 'Los conductores de automóviles, camionetas y motocicletas conducen y cuidan motocicletas, triciclos motorizados, automóviles o camionetas para el transporte de pasajeros, materiales o mercancías.'),
('Conductores de motocicletas', 'Los conductores de motocicletas conducen y cuidan motocicletas o triciclos motorizados equipados para transportar materiales, mercancías o pasajeros.'),
('Conductores de coches, taxis y furgonetas', 'Los conductores de automóviles, taxis y camionetas conducen y atienden automóviles y camionetas para transportar pasajeros, correo o mercancías.'),
('Conductores de camiones pesados y autobuses', 'Los conductores de camiones pesados y autobuses conducen y atienden camiones pesados, camiones, autobuses o tranvías para el transporte de mercancías, líquidos, materiales pesados, correo o pasajeros.'),
('Conductores de autobuses y tranvías', 'Los conductores de autobuses y tranvías conducen y atienden autobuses o tranvías para transportar pasajeros, correo o mercancías.'),
('Conductores de camiones pesados y camiones', 'Los conductores de camiones y camiones pesados conducen y cuidan vehículos de motor pesados para transportar mercancías, líquidos y materiales pesados en distancias cortas o largas.'),
('Operadores de plantas móviles', 'Los operadores de plantas móviles conducen, atienden, operan y monitorean maquinaria o equipo motorizado para fines especiales que se utiliza para limpiar o preparar la tierra; cavar, mover y esparcir tierra, roca y materiales similares; y levantar o mover objetos pesados.'),
('Operadores de Plantas Forestales y Granjas Móviles', 'Los operadores de plantas agrícolas y forestales móviles conducen, atienden, operan y supervisan uno o más tipos de maquinaria o equipo móvil motorizado para fines especiales que se utiliza en operaciones agrícolas, hortícolas y forestales.'),
('Operadores de movimiento de tierras y plantas afines', 'Los operadores de movimiento de tierras y plantas afines operan máquinas para excavar, nivelar, alisar y compactar tierra o materiales similares.'),
('Operadores de grúas, polipastos y plantas afines', 'Los operadores de grúas, montacargas y plantas relacionadas operan y monitorean grúas estacionarias y móviles y otros equipos de elevación.'),
('Operadores de carretillas elevadoras', 'Los operadores de carretillas elevadoras conducen, manejan y supervisan carretillas elevadoras o vehículos similares para transportar, levantar y apilar palés con mercancías.'),
('Ocupaciones elementales', 'Las ocupaciones elementales implican la realización de tareas simples y rutinarias que pueden requerir el uso de herramientas manuales y un esfuerzo físico considerable. La mayoría de las ocupaciones de este grupo principal requieren habilidades en el primer nivel de habilidades de la CIUO.'),
('Limpiadores y ayudantes', 'Los limpiadores y ayudantes realizan diversas tareas en casas particulares, hoteles, oficinas, hospitales y otros establecimientos, así como en aviones, trenes, vagones, tranvías y vehículos similares, para mantener limpios los interiores y enseres, y lavar y planchar prendas y textiles. manualmente. La mayoría de las ocupaciones de este subgrupo principal requieren habilidades en el primer nivel de habilidades de la CIUO.'),
('Limpiadores y ayudantes domésticos, de hoteles y oficinas', 'Limpiadores y ayudantes domésticos, de hoteles y oficinas, barren, aspiran, lavan, lustran, cuidan la ropa del hogar, compran artículos para el hogar; realizar diversas tareas para mantener limpios y ordenados los interiores y enseres de hoteles, oficinas y otros establecimientos, así como de aeronaves, trenes, autobuses y vehículos similares.'),
('Limpiadores y ayudantes domésticos', 'Los trabajadores domésticos y los ayudantes barren, aspiran, lavan y lustran, cuidan la ropa del hogar, compran artículos para el hogar, preparan alimentos, sirven comidas y realizan otras tareas domésticas.'),
('Limpiadores y Ayudantes en Oficinas, Hoteles y Otros Establecimientos', 'Los limpiadores y ayudantes de oficinas, hoteles y otros establecimientos realizan diversas labores de limpieza con el fin de mantener limpios y ordenados los interiores y enseres de hoteles, oficinas y otros establecimientos, así como de aeronaves, trenes, autobuses y vehículos similares.'),
('Trabajadores de limpieza de vehículos, ventanas, lavandería y otras manos', 'Los trabajadores de vehículos, ventanas, lavandería y otros trabajadores de limpieza manual limpian ventanas, vitrinas u otras superficies de edificios o vehículos; y planchar, lavar o limpiar en seco ropa de cama y otros textiles a mano.'),
('Lavadoras y Prensas Manuales', 'Los lavadores y planchadores manuales lavan, planchan o limpian en seco prendas de vestir, ropa de cama y otros textiles a mano.'),
('Limpiadores de vehículos', 'Los limpiadores de vehículos lavan, limpian y pulen el exterior y el interior de los vehículos.'),
('Limpiadores de ventanas', 'Los limpiadores de ventanas lavan y pulen ventanas y otros accesorios de vidrio.'),
('Otros trabajadores de limpieza', 'Este grupo primario incluye a los trabajadores de limpieza no clasificados en otra parte. El grupo incluye, por ejemplo, a quienes limpian superficies, materiales y objetos, como alfombras, paredes, piscinas y torres de refrigeración, utilizando equipos de limpieza y productos químicos especializados.'),
('Trabajadores agrícolas de cultivos', 'Los trabajadores agrícolas de cultivos realizan tareas simples y rutinarias en las granjas en la producción de cultivos como frutas, nueces, granos y verduras.'),
('Trabajadores de fincas ganaderas', 'Los trabajadores de granjas ganaderas realizan tareas simples y rutinarias en la producción agrícola de animales, incluidas las aves de corral y los insectos.'),
('Trabajadores de cultivos mixtos y ganadería', 'Los trabajadores agrícolas mixtos de cultivos y ganado realizan tareas simples y rutinarias en la producción agrícola tanto de cultivos como de animales.'),
('Trabajadores de jardinería y horticultura', 'Los trabajadores de jardinería y horticultura realizan tareas simples y rutinarias en operaciones para cultivar y mantener árboles, arbustos, flores y otras plantas en parques y jardines privados, para producir árboles jóvenes, bulbos y semillas, o cultivar vegetales y flores mediante técnicas de cultivo intensivo.'),
('Trabajadores Forestales', 'Los trabajadores forestales realizan tareas sencillas y rutinarias para cultivar y mantener bosques naturales y de plantaciones, y talar, talar y aserrar árboles.'),
('Peones de Pesca y Acuicultura', 'Los trabajadores de la pesca y la acuicultura realizan tareas sencillas y rutinarias para cultivar, capturar y recolectar peces y mariscos en la acuicultura y en las operaciones de pesca en aguas interiores, costeras y de aguas profundas.'),
('Obreros en Minería, Construcción, Manufactura y Transporte', 'Los trabajadores de la minería, la construcción, la manufactura y el transporte realizan tareas manuales simples y rutinarias en operaciones de minería, explotación de canteras, ingeniería civil, construcción, manufactura, transporte y almacenamiento, y operan vehículos y maquinaria de tracción humana y animal. La mayoría de las ocupaciones de este subgrupo principal requieren habilidades en el primer nivel de habilidades de la CIUO.'),
('Obreros de Minería y Construcción', 'Los trabajadores de la minería y la construcción realizan tareas manuales sencillas y rutinarias en operaciones de minería, explotación de canteras, ingeniería civil y construcción.'),
('Trabajadores de minas y canteras', 'Los trabajadores de minas y canteras realizan tareas rutinarias en las operaciones de minería y canteras.'),
('Obreros de ingeniería civil', 'Los trabajadores de ingeniería civil realizan tareas rutinarias relacionadas con la construcción y el mantenimiento de carreteras, vías férreas, represas y otros proyectos de ingeniería civil.'),
('Trabajadores de la construcción de edificios', 'Los trabajadores de la construcción de edificios realizan tareas rutinarias relacionadas con la construcción de edificios y trabajos de demolición.'),
('Obreros de Manufactura', 'Los trabajadores de fabricación realizan una variedad de tareas manuales simples y rutinarias en la fabricación para ayudar en el trabajo de los operadores de máquinas y ensambladores.'),
('Empacadores manuales', 'Los empacadores manuales pesan, empacan y etiquetan materiales y productos a mano.'),
('Trabajadores de manufactura no clasificados en otra parte', 'Los trabajadores de manufactura no clasificados en otra parte ayudan en el trabajo de los operadores de máquinas y ensambladores y realizan una variedad de tareas manuales simples y rutinarias en la manufactura, excluyendo el empaque y etiquetado de productos terminados.'),
('Trabajadores de Transporte y Almacenamiento', 'Los trabajadores de transporte y almacenamiento impulsan bicicletas y vehículos similares y conducen vehículos tirados por animales para transportar pasajeros o mercancías, manejan maquinaria tirada por animales, manejan carga y equipaje, y almacenan estantes.'),
('Conductores de vehículos manuales y de pedales', 'Los conductores de vehículos manuales y de pedales impulsan bicicletas, carros manuales y vehículos similares para entregar mensajes y transportar pasajeros o mercancías.'),
('Conductores de vehículos y maquinaria de tracción animal', 'Los conductores de vehículos y maquinaria de tracción animal conducen vehículos de tracción animal para transportar pasajeros o mercancías, así como maquinaria de tracción animal generalmente relacionada con la agricultura.'),
('Manipuladores de carga', 'Los manipuladores de carga realizan tareas como empacar, transportar, cargar y descargar muebles y otros artículos del hogar, o cargar y descargar cargamentos de barcos y aviones y otras mercancías, o transportar y apilar mercancías en varios almacenes.'),
('Rellenos de estantes', 'Los rellenos de estantes almacenan estantes y áreas de exhibición y mantienen el inventario limpio y en orden en supermercados y otras tiendas minoristas y mayoristas.'),
('Preparadores de comida rápida', 'Los preparadores de comida rápida preparan y cocinan por encargo una gama limitada de alimentos o bebidas que implican procesos de preparación sencillos y una pequeña cantidad de ingredientes. Pueden tomar pedidos de los clientes y servir en mostradores o mesas.'),
('Ayudantes de cocina', 'Los ayudantes de cocina limpian las mesas, limpian las áreas de la cocina, lavan los platos, preparan los ingredientes y realizan otras tareas para ayudar a los trabajadores que preparan o sirven alimentos y bebidas.'),
('Trabajadores de ventas y servicios de la calle y afines', 'Los vendedores ambulantes y afines y los trabajadores de servicios venden bienes (excepto alimentos) para consumo inmediato y brindan una variedad de servicios en las calles y en otros lugares públicos como las estaciones. La mayoría de las ocupaciones de este subgrupo principal requieren habilidades en el primer nivel de habilidades de la CIUO.'),
('Trabajadores de basura y otros trabajadores elementales', 'Los trabajadores de basura y otros trabajadores elementales recolectan, procesan y reciclan basura de edificios, patios, calles y otros lugares públicos. Mantienen las calles y otros lugares públicos limpios y ordenados, entregan y transportan mensajes y paquetes y realizan trabajos ocasionales para hogares o establecimientos privados. La mayoría de las ocupaciones de este subgrupo principal requieren habilidades en el primer nivel de habilidades de la CIUO.'),
('Trabajadores de basura', 'Los trabajadores de basura recolectan, procesan y reciclan la basura de los edificios, patios, calles y otros lugares públicos, o mantienen limpias las calles y otros lugares públicos.'),
('Recolectores de Basura y Reciclaje', 'Los recolectores de basura recolectan y retiran la basura y los artículos para reciclar de edificios, patios, calles y otros lugares.'),
('Clasificadores de basura', 'Los clasificadores de basura identifican, recolectan y clasifican los artículos descartados aptos para el reciclaje en vertederos y empresas de reciclaje o en edificios, calles y otros lugares públicos.'),
('Barrenderos y Trabajadores Afines', 'Los barrenderos y trabajadores afines barren y limpian calles, parques, aeropuertos, estaciones y otros lugares públicos.'),
('Otros trabajadores elementales', 'Otros trabajadores elementales entregan y transportan mensajes y paquetes, realizan una variedad de tareas simples de mantenimiento y reparación, recolectan dinero y almacenan máquinas expendedoras, leen medidores; recoger agua y leña; y recoger y emitir billetes de aparcamiento o eventos.'),
('Mensajeros, repartidores de paquetes y porteadores de equipaje', 'Los mensajeros, repartidores de paquetes y porteadores de equipaje transportan y entregan mensajes, paquetes y otros artículos a pie, dentro de un establecimiento o entre establecimientos, a domicilio y en otros lugares, o transportan equipaje, especialmente en hoteles, estaciones y aeropuertos.'),
('Personas con trabajos eventuales', 'Las personas con trabajos ocasionales limpian, pintan y mantienen edificios, terrenos e instalaciones, y realizan reparaciones simples.'),
('Lectores de contadores y cobradores de máquinas expendedoras', 'Los lectores de contadores y los cobradores de máquinas expendedoras almacenan máquinas expendedoras y cobran dinero de ellas o de parquímetros y otras cajas de monedas, o leen medidores de electricidad, gas o agua.'),
('Recolectores de Agua y Leña', 'Los recolectores de agua y leña recogen agua y leña y las transportan a pie o en carretas manuales o de animales.'),
('Trabajadores elementales no clasificados en otra parte', 'Este grupo primario cubre a los trabajadores elementales no clasificados en otra parte del Grupo principal 9: Ocupaciones elementales. Por ejemplo, el grupo incluye a quienes emiten y cobran boletos de estacionamiento o de admisión, brindan artículos personales a los usuarios o clientes en los guardarropas y ayudan a los usuarios en eventos de entretenimiento.'),
('Ocupaciones de las Fuerzas Armadas', 'Las ocupaciones de las fuerzas armadas incluyen todos los trabajos realizados por miembros de las fuerzas armadas. Los miembros de las fuerzas armadas son aquellos miembros del personal que actualmente prestan servicio en las fuerzas armadas, incluidos los servicios auxiliares, ya sea de forma voluntaria u obligatoria, y que no tienen la libertad de aceptar un empleo civil y están sujetos a la disciplina militar. Se incluyen los miembros regulares del ejército, la marina, la fuerza aérea y otros servicios militares, así como los reclutas inscritos para entrenamiento militar u otro servicio durante un período específico.'),
('Oficiales comisionados de las fuerzas armadas', 'Los oficiales comisionados de las fuerzas armadas brindan liderazgo y gestión a las unidades organizativas de las fuerzas armadas y/o realizan tareas similares a las realizadas en una variedad de ocupaciones civiles fuera de las fuerzas armadas. Este grupo incluye a todos los miembros de las fuerzas armadas con el grado de subteniente (o equivalente) o superior. El desempeño competente en la mayoría de las ocupaciones de este subgrupo principal requiere habilidades en el cuarto nivel de habilidades de la CIUO.'),
(NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `areas_intereses`
--

CREATE TABLE `areas_intereses` (
  `interes` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `areas_intereses`
--

INSERT INTO `areas_intereses` (`interes`) VALUES
('Tecnología'),
('Emprendimiento'),
('Marketing'),
('Desarrollo personal'),
('Innovación'),
('Negocios'),
('Finanzas'),
('Carreras profesionales'),
('Arte y cultura'),
('Sostenibilidad'),
('Educación'),
('Recursos humanos'),
('Gestión de proyectos'),
('Ciencia y tecnología'),
('Salud y bienestar'),
('Redes sociales'),
('E-commerce'),
('Inteligencia artificial'),
('Diseño'),
('Programación'),
('Big data'),
('Ciberseguridad'),
('Gestión empresarial'),
('Desarrollo de productos'),
('Ingeniería'),
('Marketing digital'),
('Estrategia empresarial'),
('Realidad virtual'),
('Internet de las cosas'),
('Robótica'),
('Energías renovables'),
('Telecomunicaciones'),
('Diseño de experiencia de usuario'),
('Blockchain'),
('Ciencias de la salud'),
('Inteligencia de negocios'),
('Gamificación'),
('Marketing de contenidos'),
('Psicología organizacional'),
('Diseño gráfico'),
('Desarrollo web'),
('Otros');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ciudades`
--

CREATE TABLE `ciudades` (
  `condado_id` int(11) DEFAULT NULL,
  `ciudad` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `ciudades`
--

INSERT INTO `ciudades` (`condado_id`, `ciudad`) VALUES
(1, 'Alachua'),
(1, 'Archer'),
(1, 'Hawthorne'),
(1, 'Gainesville'),
(1, 'Micanopy'),
(1, 'Newberry'),
(1, 'High Springs'),
(1, 'Santa Fe'),
(1, 'LaCrosse'),
(1, 'Waldo'),
(2, 'Baker City'),
(2, 'Greenhorn'),
(2, 'Haines'),
(2, 'Halfway'),
(2, 'Sumpter'),
(2, 'Richland'),
(2, 'Huntington'),
(2, 'Unity'),
(3, 'Lynn Haven'),
(3, 'Panama City'),
(3, 'Callaway'),
(3, 'Springfield'),
(3, 'Youngstown'),
(3, 'Mexico Beach'),
(3, 'Parker'),
(3, 'Bayou George'),
(3, 'Panama City Beach'),
(3, 'Cedar Grove'),
(3, 'Southport'),
(3, 'Upper Grand Lagoon'),
(4, 'Lawtey'),
(4, 'Hampton'),
(4, 'Brooker'),
(4, 'Starke'),
(5, 'Titusville'),
(5, 'Cocoa'),
(5, 'Melbourne'),
(5, 'Palm Bay'),
(5, 'Merritt Island'),
(5, 'Indialantic'),
(5, 'Cocoa Beach'),
(5, 'Satellite Beach'),
(5, 'Indian Harbour Beach'),
(5, 'Rockledge'),
(5, 'West Melbourne'),
(5, 'Cape Canaveral'),
(5, 'Grant-Valkaria'),
(5, 'Malabar'),
(5, 'Palm Shores'),
(5, 'Micco'),
(6, 'Fort Lauderdale'),
(6, 'Hollywood'),
(6, 'Pembroke Pines'),
(6, 'Coral Springs'),
(6, 'Miramar'),
(6, 'Davie'),
(6, 'Sunrise'),
(6, 'Pompano Beach'),
(6, 'Plantation'),
(6, 'Deerfield Beach'),
(6, 'Weston'),
(6, 'Cooper City'),
(6, 'Tamarac'),
(6, 'Hallandale Beach'),
(6, 'Margate'),
(6, 'Oakland Park'),
(6, 'Lauderhill'),
(6, 'Dania Beach'),
(6, 'Coconut Creek'),
(6, 'North Lauderdale'),
(6, 'Lighthouse Point'),
(6, 'Lauderdale Lakes'),
(6, 'Parkland'),
(6, 'Wilton Manors'),
(6, 'Lauderdale-by-the-Sea'),
(6, 'Hillsboro Beach'),
(7, 'Altha'),
(7, 'Blountstown'),
(7, 'Scotts Ferry'),
(7, 'Fountain'),
(7, 'Clarksville'),
(7, 'Mossy Pond'),
(8, 'Charlotte'),
(8, 'Weddington'),
(8, 'Matthews'),
(8, 'Lake Wylie'),
(8, 'Huntersville'),
(8, 'Marvin'),
(8, 'Cornelius'),
(8, 'Stallings'),
(8, 'Indian Trail'),
(8, 'Waxhaw'),
(8, 'Mint Hill'),
(8, 'Davidson'),
(8, 'Pineville'),
(9, 'Crystal River'),
(9, 'Inverness'),
(9, 'Homosassa Springs'),
(9, 'Lecanto'),
(9, 'Beverly Hills'),
(9, 'Citrus Springs'),
(9, 'Hernando'),
(9, 'Floral City'),
(9, 'Sugarmill Woods'),
(10, 'Middleburg'),
(10, 'Penney Farms'),
(10, 'Green Cove Springs'),
(10, 'Asbury Lake'),
(10, 'Bellair-Meadowbrook Terrace'),
(10, 'Oakleaf Plantation'),
(10, 'Keystone Heights'),
(10, 'Orange Park'),
(10, 'Fleming Island'),
(10, 'Lake Geneva'),
(10, 'Lakeside'),
(11, 'Golden Gate'),
(11, 'Golden Gate Estates'),
(11, 'Naples'),
(11, 'Pelican Bay'),
(11, 'Vanderbilt Beach'),
(11, 'East Naples'),
(11, 'Marco Island'),
(11, 'Orangetree'),
(11, 'Immokalee'),
(11, 'North Naples'),
(11, 'Estero'),
(11, 'Lely Resort'),
(11, 'Chokoloskee'),
(11, 'Everglades City'),
(11, 'Goodland'),
(12, 'Fort White'),
(12, 'Winfield'),
(12, 'Lake City'),
(12, 'Five Points'),
(12, 'Watertown'),
(12, 'Lulu'),
(13, 'Nocatee'),
(13, 'Fort Ogden'),
(13, 'Brownville'),
(13, 'Lake Suzy'),
(13, 'Arcadia'),
(14, 'Horseshoe Beach'),
(14, 'Cross City'),
(15, 'Neptune Beach'),
(15, 'Mandarin'),
(15, 'Bryceville'),
(15, 'Oceanway'),
(15, 'Arlington'),
(15, 'Jacksonville'),
(15, 'Atlantic Beach'),
(15, 'Baldwin'),
(15, 'San Marco'),
(15, 'Jacksonville Beach'),
(16, 'Pensacola'),
(16, 'Century'),
(16, 'Molino'),
(16, 'Bellview'),
(16, 'Cantonment'),
(16, 'Ensley'),
(16, 'Warrington'),
(16, 'Perdido Key'),
(16, 'Gonzalez'),
(16, 'Myrtle Grove'),
(16, 'Pensacola Beach'),
(16, 'Brent'),
(16, 'West Pensacola'),
(17, 'Palm Coast'),
(17, 'Flagler Beach'),
(17, 'Bunnell'),
(17, 'Marineland'),
(17, 'Beverly Beach'),
(17, 'Painters Hill'),
(17, 'Dupont'),
(18, 'Alligator Point'),
(18, 'Lanark Village'),
(18, 'Eastpoint'),
(18, 'St. George Island'),
(18, 'Apalachicola'),
(18, 'Carrabelle'),
(19, 'Chattahoochee'),
(19, 'Quincy'),
(19, 'Midway'),
(19, 'Gretna'),
(19, 'Havana'),
(19, 'Greensboro'),
(20, 'Bell'),
(20, 'Trenton'),
(20, 'Fanning Springs'),
(20, 'Spring Ridge'),
(20, 'Waccasassa'),
(20, 'Wilcox'),
(20, 'Suwannee'),
(21, 'Moore Haven'),
(21, 'Buckhead Ridge'),
(21, 'Palmdale'),
(21, 'Muse'),
(21, 'Ortona'),
(21, 'Lakeport'),
(22, 'Dalkeith'),
(22, 'Overstreet'),
(22, 'Port St. Joe'),
(22, 'Wewahitchka'),
(22, 'White City'),
(22, 'Highland View'),
(23, 'Benton'),
(23, 'Jasper'),
(23, 'Genoa'),
(23, 'Jennings'),
(23, 'Crossroads'),
(23, 'White Springs'),
(23, 'Culp'),
(24, 'Ona'),
(24, 'Fort Green Springs'),
(24, 'Limestone'),
(24, 'Sweetwater'),
(24, 'Wauchula'),
(24, 'Bowling Green'),
(24, 'Zolfo Springs'),
(25, 'LaBelle'),
(25, 'Pioneer'),
(25, 'Felda'),
(25, 'Fort Denaud'),
(25, 'Clewiston'),
(25, 'Harlem'),
(25, 'Montura'),
(26, 'Brooksville'),
(26, 'Spring Hill'),
(26, 'Nobleton'),
(26, 'Masaryktown'),
(26, 'Weeki Wachee'),
(26, 'Ridge Manor'),
(26, 'Timber Pines'),
(26, 'Aripeka'),
(27, 'Sun \'n Lake of Sebring'),
(27, 'Sebring'),
(27, 'Lorida'),
(27, 'Avon Park'),
(27, 'Highlands Park Estates'),
(27, 'Lake Placid'),
(27, 'Placid Lakes'),
(27, 'Leisure Lakes'),
(26, 'Hernando Beach'),
(27, 'Venus'),
(28, 'Tampa'),
(28, 'Plant City'),
(28, 'Thonotosassa'),
(28, 'Gibsonton'),
(28, 'Riverview'),
(28, 'Temple Terrace'),
(28, 'Lutz'),
(28, 'Dover'),
(28, 'Brandon'),
(28, 'Valrico'),
(28, 'Ruskin'),
(28, 'Apollo Beach'),
(28, 'Seffner'),
(28, 'Wimauma'),
(28, 'Sun City Center'),
(28, 'Sydney'),
(28, 'Ruskin Colony Farms'),
(28, 'Balm'),
(29, 'Bonifay'),
(29, 'Ponce de Leon'),
(29, 'Westville'),
(29, 'Noma'),
(29, 'Esto'),
(30, 'Vero Beach'),
(30, 'Sebastian'),
(30, 'Wabasso'),
(30, 'Indian River Shores'),
(31, 'Cottondale'),
(31, 'Sneads'),
(31, 'Alford'),
(31, 'Grand Ridge'),
(31, 'Marianna'),
(31, 'Graceville'),
(30, 'Orchid'),
(30, 'Roseland'),
(30, 'Gifford'),
(31, 'Bascom'),
(31, 'Malone'),
(31, 'Greenwood'),
(32, 'Monticello'),
(32, 'Lloyd'),
(32, 'Wacissa'),
(32, 'Aucilla'),
(30, 'Winter Beach'),
(30, 'Fellsmere'),
(33, 'Mayo'),
(33, 'Day'),
(34, 'Clermont'),
(34, 'Eustis'),
(34, 'Leesburg'),
(34, 'Tavares'),
(34, 'Mascotte'),
(34, 'Fruitland Park'),
(34, 'Mount Dora'),
(34, 'Montverde'),
(34, 'Umatilla'),
(34, 'Astatula'),
(34, 'Howey-in-the-Hills'),
(34, 'Sorrento'),
(34, 'Lady Lake'),
(34, 'Groveland'),
(34, 'Minneola'),
(34, 'Grand Island'),
(34, 'Paisley'),
(34, 'Okahumpka'),
(34, 'Astor'),
(34, 'Altoona'),
(34, 'Mount Plymouth'),
(34, 'Deer Island'),
(34, 'Yalaha'),
(34, 'Pittman'),
(34, 'Tangerine'),
(34, 'Lake Kathryn'),
(34, 'Lisbon'),
(34, 'Yeehaw Junction'),
(35, 'Cape Coral'),
(35, 'Fort Myers'),
(35, 'Bonita Springs'),
(35, 'Estero'),
(35, 'Lehigh Acres'),
(35, 'Matlacha'),
(35, 'Sanibel'),
(35, 'Fort Myers Beach'),
(35, 'Captiva'),
(35, 'Boca Grande'),
(35, 'Bokeelia'),
(35, 'Pineland'),
(35, 'North Fort Myers'),
(35, 'Tice'),
(35, 'Pine Manor'),
(35, 'Suncoast Estates'),
(35, 'Charleston Park'),
(35, 'Burnt Store Marina'),
(35, 'Page Park'),
(35, 'San Carlos Park'),
(35, 'Whiskey Creek'),
(35, 'Three Oaks'),
(35, 'Punta Rassa'),
(35, 'St. James City'),
(35, 'McGregor'),
(35, 'Tropical Gulf Acres'),
(35, 'Gateway'),
(35, 'Buckingham'),
(35, 'Olga'),
(35, 'Fort Myers Shores'),
(35, 'Babcock Ranch'),
(35, 'Bonita Beach'),
(35, 'Cypress Lake'),
(35, 'Harlem Heights'),
(35, 'Iona'),
(35, 'Cypress Lake'),
(35, 'Villas'),
(35, 'Fort Myers Villas'),
(36, 'Midway'),
(36, 'Tallahassee'),
(36, 'Lake Talquin'),
(36, 'Woodville'),
(36, 'Chaires'),
(36, 'Miccosukee'),
(36, 'Lloyd'),
(36, 'Havana'),
(36, 'Crawfordville'),
(36, 'St. Marks'),
(36, 'Bradfordville'),
(36, 'Wacissa'),
(36, 'Centerville'),
(37, 'Williston'),
(37, 'Chiefland'),
(37, 'Morriston'),
(37, 'Inglis'),
(37, 'Otter Creek'),
(37, 'Yankeetown'),
(37, 'Manatee Road'),
(37, 'Andrews'),
(37, 'Cedar Key'),
(37, 'Bronson'),
(38, 'Bristol'),
(38, 'Sumatra'),
(38, 'Hosford'),
(38, 'Orange'),
(39, 'Madison'),
(39, 'Greenville'),
(39, 'Pinetta'),
(39, 'Lee'),
(40, 'Palmetto'),
(40, 'Bradenton'),
(40, 'Anna Maria'),
(40, 'Holmes Beach'),
(40, 'Bradenton Beach'),
(40, 'Longboat Key'),
(40, 'Myakka City'),
(40, 'Cortez'),
(40, 'Ellenton'),
(40, 'Parrish'),
(40, 'Samoset'),
(40, 'Memphis'),
(40, 'South Bradenton'),
(40, 'West Bradenton'),
(40, 'Bayshore Gardens'),
(40, 'Whitfield'),
(40, 'West Samoset'),
(40, 'Oneco'),
(40, 'Village of the Arts'),
(40, 'West Samoset'),
(41, 'Ocala'),
(41, 'Belleview'),
(41, 'Silver Springs Shores'),
(41, 'Dunnellon'),
(41, 'Reddick'),
(41, 'The Villages'),
(41, 'McIntosh'),
(41, 'Ocklawaha'),
(41, 'Weirsdale'),
(41, 'Citra'),
(41, 'Salt Springs'),
(41, 'Summerfield'),
(41, 'Anthony'),
(41, 'Rainbow Lakes Estates'),
(41, 'Marion Oaks'),
(41, 'Silver Springs'),
(41, 'Fort McCoy'),
(41, 'Orange Springs'),
(41, 'Sparr'),
(41, 'Orange Lake'),
(41, 'Buckhead Ridge'),
(41, 'Candler'),
(42, 'Stuart'),
(42, 'Jensen Beach'),
(42, 'Palm City'),
(42, 'North River Shores'),
(42, 'Hobe Sound'),
(42, 'Port Mayaca'),
(42, 'Port Salerno'),
(42, 'Indiantown'),
(42, 'Sewall\'s Point'),
(42, 'Rio'),
(42, 'Canal Point'),
(43, 'Miami Beach'),
(43, 'Hialeah'),
(43, 'Miami'),
(43, 'Miami Gardens'),
(43, 'Miami Lakes'),
(43, 'North Miami Beach'),
(43, 'North Miami'),
(43, 'Coral Gables'),
(43, 'Doral'),
(43, 'Cutler Bay'),
(43, 'Aventura'),
(43, 'Homestead'),
(43, 'Opa-locka'),
(43, 'Sweetwater'),
(43, 'Miami Springs'),
(43, 'Palmetto Bay'),
(43, 'Key Biscayne'),
(43, 'South Miami'),
(43, 'North Bay Village'),
(43, 'West Miami'),
(43, 'Sunny Isles Beach'),
(43, 'Pinecrest'),
(43, 'Florida City'),
(43, 'Miami Shores'),
(43, 'Ojus'),
(43, 'Bal Harbour'),
(43, 'Bay Harbor Islands'),
(43, 'Biscayne Park'),
(43, 'Surfside'),
(43, 'Virginia Gardens'),
(43, 'El Portal'),
(43, 'Golden Beach'),
(43, 'Medley'),
(43, 'Indian Creek'),
(43, 'Fisher Island'),
(43, 'Brownsville'),
(43, 'Glenvar Heights'),
(43, 'Westchester'),
(43, 'Kendall'),
(43, 'Tamiami'),
(43, 'West Little River'),
(43, 'Westwood Lakes'),
(43, 'Country Walk'),
(43, 'The Crossings'),
(43, 'Richmond West'),
(43, 'South Miami Heights'),
(43, 'Three Lakes'),
(43, 'The Hammocks'),
(43, 'Kendall West'),
(43, 'Princeton'),
(43, 'Goulds'),
(43, 'Naranja'),
(43, 'Leisure City'),
(43, 'Islandia'),
(43, 'Pinewood'),
(43, 'Cutler Ridge'),
(43, 'Bunche Park'),
(43, 'South Beach'),
(43, 'Miami Beach'),
(43, 'South Pointe'),
(43, 'Oceanfront'),
(44, 'Marathon'),
(44, 'Key West'),
(44, 'Key Largo'),
(44, 'Tavernier'),
(44, 'Big Pine Key'),
(44, 'Stock Island'),
(44, 'Duck Key'),
(44, 'Islamorada'),
(44, 'Sugarloaf Key'),
(44, 'Cudjoe Key'),
(44, 'Key Colony Beach'),
(44, 'Layton'),
(44, 'Plantation Key'),
(44, 'Tennessee'),
(44, 'Flamingo'),
(44, 'Conch Key'),
(44, 'Lower Keys'),
(44, 'Upper Keys'),
(44, 'Key Haven'),
(44, 'No Name Key'),
(45, 'Fernandina Beach'),
(45, 'Yulee'),
(45, 'Callahan'),
(45, 'Hilliard'),
(46, 'Crestview'),
(46, 'Fort Walton Beach'),
(46, 'Destin'),
(46, 'Niceville'),
(46, 'Mary Esther'),
(46, 'Shalimar'),
(46, 'Ocean City'),
(46, 'Valparaiso'),
(46, 'Wright'),
(46, 'Cinco Bayou'),
(46, 'Lake Lorraine'),
(46, 'Gulf Breeze'),
(46, 'Eglin AFB'),
(46, 'Hurlburt Field'),
(46, 'Laurel Hill'),
(47, 'Cypress Quarters'),
(47, 'Okeechobee'),
(47, 'Taylor Creek'),
(47, 'Basinger'),
(48, 'Orlando'),
(48, 'Oak Ridge'),
(48, 'Apopka'),
(48, 'Winter Garden'),
(48, 'Winter Park'),
(48, 'Oviedo'),
(48, 'Kissimmee'),
(48, 'Ocoee'),
(48, 'Winter Springs'),
(48, 'Saint Cloud'),
(48, 'Union Park'),
(48, 'Lake Buena Vista'),
(48, 'Clermont'),
(48, 'Meadow Woods'),
(48, 'Azalea Park'),
(48, 'Maitland'),
(48, 'Lake Butler'),
(48, 'Belle Isle'),
(48, 'Doctor Phillips'),
(48, 'Pine Hills'),
(48, 'Windermere'),
(48, 'Hunters Creek'),
(48, 'Waterford Lakes'),
(48, 'Williamsburg'),
(48, 'Lockhart'),
(48, 'Southchase'),
(48, 'Taft'),
(48, 'Fairview Shores'),
(48, 'Bay Hill'),
(48, 'University Park'),
(48, 'Alafaya'),
(48, 'Holden Heights'),
(48, 'Conway'),
(48, 'Oakland'),
(48, 'Lake Hart'),
(48, 'Zellwood'),
(48, 'Sky Lake'),
(48, 'Wedgefield'),
(48, 'Pine Castle'),
(48, 'Tangelo Park'),
(48, 'Edgewood'),
(48, 'Tildenville'),
(48, 'Mango'),
(48, 'Paradise Heights'),
(48, 'Clarcona'),
(48, 'Orlovista'),
(48, 'Orlo Vista'),
(48, 'Gotha'),
(48, 'Wekiwa Springs'),
(48, 'Mount Plymouth'),
(48, 'Christmas'),
(48, 'Apopka'),
(48, 'Lake Mary Jane'),
(49, 'Kissimmee'),
(49, 'St. Cloud'),
(49, 'Celebration'),
(49, 'Poinciana'),
(49, 'Buenaventura Lakes'),
(49, 'Campbell'),
(49, 'Yeehaw Junction'),
(49, 'Narcoossee'),
(49, 'Kenansville'),
(49, 'Holopaw'),
(49, 'Intercession City'),
(50, 'West Palm Beach'),
(50, 'Boynton Beach'),
(50, 'Delray Beach'),
(50, 'Boca Raton'),
(50, 'Jupiter'),
(50, 'Greenacres'),
(50, 'Riviera Beach'),
(50, 'Lake Worth'),
(50, 'Palm Springs'),
(50, 'Royal Palm Beach'),
(50, 'Wellington'),
(50, 'North Palm Beach'),
(50, 'Palm Beach Gardens'),
(50, 'Lake Park'),
(50, 'Lantana'),
(50, 'Palm Beach Shores'),
(50, 'South Palm Beach'),
(50, 'Haverhill'),
(50, 'Tequesta'),
(50, 'Palm Beach'),
(50, 'Atlantis'),
(50, 'Lake Clarke Shores'),
(50, 'Juno Beach'),
(50, 'Glen Ridge'),
(50, 'Palm Beach Gardens'),
(50, 'Limestone Creek'),
(50, 'Gulf Stream'),
(50, 'Jupiter Inlet Colony'),
(50, 'Briny Breezes'),
(50, 'Golf'),
(50, 'Cloud Lake'),
(50, 'Loxahatchee Groves'),
(51, 'New Port Richey'),
(51, 'Zephyrhills'),
(51, 'Dade City'),
(51, 'Wesley Chapel'),
(51, 'Odessa'),
(51, 'Port Richey'),
(51, 'Land O\' Lakes'),
(51, 'Holiday'),
(51, 'Hudson'),
(51, 'Trinity'),
(51, 'San Antonio'),
(51, 'Lacoochee'),
(51, 'Aripeka'),
(51, 'Shady Hills'),
(51, 'Jasmine Estates'),
(51, 'Beacon Square'),
(51, 'Elfers'),
(51, 'Meadow Oaks'),
(51, 'Bayonet Point'),
(51, 'St. Leo'),
(51, 'Gulf Harbors'),
(51, 'Blanton'),
(51, 'Crystal Springs'),
(51, 'Richland'),
(51, 'Dade City North'),
(51, 'Trilby'),
(51, 'Pasadena Hills'),
(51, 'Quail Ridge'),
(51, 'Key Vista'),
(51, 'Moon Lake'),
(51, 'Jessamine'),
(51, 'Avalon'),
(51, 'Heritage Pines'),
(51, 'Pine Island'),
(51, 'Spring Hill'),
(51, 'Hill \'n Dale'),
(52, 'St. Petersburg'),
(52, 'Largo'),
(52, 'Pinellas Park'),
(52, 'Seminole'),
(52, 'Safety Harbor'),
(52, 'Palm Harbor'),
(52, 'Dunedin'),
(52, 'Madeira Beach'),
(52, 'St. Pete Beach'),
(52, 'Tarpon Springs'),
(52, 'Gulfport'),
(52, 'South Pasadena'),
(52, 'Treasure Island'),
(52, 'Oldsmar'),
(52, 'Clearwater'),
(52, 'Indian Rocks Beach'),
(52, 'North Redington Beach'),
(52, 'Belleair Bluffs'),
(52, 'Belleair Beach'),
(52, 'Kenneth City'),
(52, 'Feather Sound'),
(52, 'Tierra Verde'),
(52, 'Redington Shores'),
(52, 'Belleair'),
(52, 'Indian Shores'),
(52, 'Palm Harbor'),
(52, 'Bear Creek'),
(52, 'East Lake'),
(52, 'West and East Lealman'),
(52, 'Ridgecrest'),
(52, 'Gandy'),
(52, 'Tarpon Springs'),
(52, 'Dunedin'),
(52, 'South Highpoint'),
(52, 'Bay Pines'),
(53, 'Bartow'),
(53, 'Lake Wales'),
(53, 'Lakeland'),
(53, 'Auburndale'),
(53, 'Bartow'),
(53, 'Davenport'),
(53, 'Mulberry'),
(53, 'Winter Haven'),
(53, 'Poinciana'),
(53, 'Lake Alfred'),
(53, 'Lakeland Highlands'),
(53, 'Eagle Lake'),
(53, 'Bartow'),
(53, 'Haines City'),
(53, 'Bartow'),
(53, 'Fort Meade'),
(53, 'Highland City'),
(53, 'Jan Phyl Village'),
(53, 'Fussels Corner'),
(53, 'Frostproof'),
(53, 'Wahneta'),
(53, 'Medulla'),
(53, 'Willow Oak'),
(53, 'Cypress Gardens'),
(53, 'Hillcrest Heights'),
(53, 'Combee Settlement'),
(53, 'Babson Park'),
(53, 'Polk City'),
(53, 'Lake Hamilton'),
(53, 'Crooked Lake Park'),
(53, 'Lake Wales'),
(53, 'Dundee'),
(53, 'Eaton Park'),
(53, 'Lake Alfred'),
(53, 'Inwood'),
(53, 'Highland Park'),
(53, 'Loughman'),
(53, 'Eloise'),
(53, 'Lake Wales'),
(53, 'Homeland'),
(53, 'Lake Wales'),
(53, 'Brewster'),
(53, 'Alturas'),
(53, 'Highland City'),
(53, 'Bowling Green'),
(53, 'Frostproof'),
(53, 'Mulberry'),
(53, 'Gibsonia'),
(54, 'Pomona Park'),
(54, 'Hawthorne'),
(54, 'Crescent City'),
(54, 'San Mateo'),
(54, 'East Palatka'),
(54, 'Palatka'),
(54, 'Melrose'),
(54, 'Interlachen'),
(54, 'Florahome'),
(54, 'Bardin'),
(54, 'Georgetown'),
(54, 'Satsuma'),
(54, 'Pomona Park'),
(54, 'Welaka'),
(54, 'Pomona Park'),
(54, 'Palatka'),
(55, 'Ponte Vedra Beach'),
(55, 'St. Augustine'),
(55, 'St. Augustine Beach'),
(55, 'Hastings'),
(55, 'Crescent Beach'),
(55, 'Fruit Cove'),
(55, 'Sawgrass'),
(55, 'Nocatee'),
(55, 'Vilano Beach'),
(55, 'Butler Beach'),
(55, 'St. Johns'),
(56, 'Indian River Estates'),
(56, 'Hobe Sound'),
(56, 'Port St. Lucie'),
(56, 'Lakewood Park'),
(56, 'Fort Pierce'),
(56, 'Indiantown'),
(56, 'St. Lucie Village'),
(56, 'Hutchinson Island South'),
(56, 'White City'),
(56, 'Port St. Lucie-River Park'),
(56, 'Fort Pierce South'),
(56, 'Walton'),
(56, 'North Beach'),
(56, 'Lakewood Park'),
(56, 'River Park'),
(56, 'Fort Pierce North'),
(57, 'Bagdad'),
(57, 'Pea Ridge'),
(57, 'Berrydale'),
(57, 'Milton'),
(57, 'Gulf Breeze'),
(57, 'East Milton'),
(57, 'Avalon'),
(57, 'Garcon Point'),
(57, 'Whiting Field'),
(57, 'Navarre Beach'),
(57, 'Mount Carmel'),
(57, 'Wallace'),
(57, 'Holley'),
(57, 'Allentown'),
(57, 'Point Baker'),
(57, 'Pace'),
(57, 'Jay'),
(57, 'Navarre'),
(57, 'Mulat'),
(57, 'Chumuckla'),
(58, 'Sarasota'),
(58, 'Siesta Key'),
(58, 'Venice'),
(58, 'Englewood'),
(58, 'Fruitville'),
(58, 'Longboat Key'),
(58, 'South Venice'),
(58, 'Gulf Gate Estates'),
(58, 'Laurel'),
(58, 'Bee Ridge'),
(58, 'Southgate'),
(58, 'Vamo'),
(58, 'Osprey'),
(58, 'Plantation'),
(58, 'Ridge Wood Heights'),
(58, 'The Meadows'),
(58, 'Desoto Lakes'),
(58, 'Warm Mineral Springs'),
(58, 'Nokomis'),
(58, 'Kensington Park'),
(58, 'Lake Sarasota'),
(58, 'Grove City'),
(58, 'Sarasota Springs'),
(58, 'Gulf Gate Estates'),
(58, 'South Venice'),
(58, 'Bayshore Gardens'),
(58, 'South Sarasota'),
(58, 'South Gate Ridge'),
(58, 'Sarasota'),
(58, 'Sarasota'),
(59, 'Altamonte Springs'),
(59, 'Winter Springs'),
(59, 'Casselberry'),
(59, 'Oviedo'),
(59, 'Sanford'),
(59, 'Longwood'),
(59, 'Lake Mary'),
(59, 'Oviedo'),
(59, 'Wekiwa Springs'),
(59, 'Apopka'),
(59, 'Forest City'),
(59, 'Goldenrod'),
(59, 'Alaqua'),
(59, 'Fern Park'),
(59, 'Geneva'),
(59, 'Chuluota'),
(58, 'North Port'),
(59, 'Heathrow'),
(59, 'Midway'),
(59, 'Winter Springs'),
(59, 'Sanford'),
(60, 'The Villages'),
(60, 'Center Hill'),
(60, 'Oxford'),
(60, 'Lake Panasoffkee'),
(60, 'Wildwood'),
(60, 'Coleman'),
(60, 'Bushnell'),
(60, 'Royal'),
(60, 'Webster'),
(60, 'Sumterville'),
(60, 'Adamsville'),
(60, 'Astatula'),
(60, 'Bay Lake'),
(60, 'Clermont'),
(60, 'Ferndale'),
(60, 'Fruitland Park'),
(60, 'Groveland'),
(60, 'Howey-in-the-Hills'),
(60, 'Lady Lake'),
(60, 'Leesburg'),
(60, 'Mascotte'),
(60, 'Minneola'),
(60, 'Montverde'),
(60, 'Mount Dora'),
(60, 'Paisley'),
(60, 'Tavares'),
(60, 'Rutland'),
(60, 'Umatilla'),
(60, 'Haines Creek'),
(60, 'Okahumpka'),
(60, 'Yalaha'),
(60, 'Grand Island'),
(60, 'Conant'),
(60, 'Lisbon'),
(60, 'Don Pedro'),
(60, 'Astor'),
(60, 'Pittman'),
(61, 'Buckville'),
(61, 'Live Oak'),
(61, 'McAlpin'),
(61, 'O\'Brien'),
(61, 'Suwannee'),
(61, 'Dowling Park'),
(61, 'Falmouth'),
(61, 'Day'),
(62, 'Steinhatchee'),
(62, 'Shady Grove'),
(62, 'Eridu'),
(62, 'Keaton Beach'),
(62, 'Salem'),
(62, 'Boyd'),
(62, 'Sirmans'),
(62, 'Bucell Junction'),
(62, 'Lake Bird'),
(62, 'Foley'),
(62, 'San Pedro'),
(62, 'Dekle Beach'),
(62, 'Econfina'),
(62, 'Rosehead'),
(62, 'Salem'),
(61, 'Wellborn'),
(62, 'Fenholloway'),
(62, 'Dekle Beach'),
(62, 'Buckeye'),
(61, 'Branford'),
(62, 'Graveyard Point'),
(61, 'Hatchbend'),
(62, 'Limestone'),
(62, 'Perry'),
(63, 'Raiford'),
(63, 'Lake Butler'),
(63, 'Worthington Springs'),
(64, 'Port Orange'),
(64, 'DeLand'),
(64, 'Daytona Beach'),
(64, 'Deltona'),
(64, 'Ormond Beach'),
(64, 'Edgewater'),
(64, 'Orange City'),
(64, 'DeBary'),
(64, 'Deltona'),
(64, 'Ponce Inlet'),
(64, 'New Smyrna Beach'),
(64, 'Ormond-by-the-Sea'),
(64, 'Lake Helen'),
(64, 'Ormond Beach'),
(64, 'DeBary'),
(64, 'Oak Hill'),
(64, 'Pierson'),
(64, 'DeLand'),
(64, 'Glencoe'),
(64, 'Seville'),
(64, 'Cassadaga'),
(64, 'Lake Kathryn'),
(64, 'De Leon Springs'),
(64, 'New Smyrna Beach'),
(64, 'Barberville'),
(64, 'Samsula-Spruce Creek'),
(64, 'West DeLand'),
(64, 'Daytona Beach Shores'),
(64, 'Wilbur-by-the-Sea'),
(64, 'Edgewater'),
(64, 'South Daytona'),
(64, 'Holly Hill'),
(64, 'Hillcrest'),
(64, 'Maytown'),
(64, 'Port Orange'),
(65, 'Sopchoppy'),
(65, 'Panacea'),
(65, 'Saint Marks'),
(65, 'Crawfordville'),
(65, 'Alligator Point'),
(65, 'Wakulla Beach'),
(65, 'Shell Point'),
(65, 'St. Marks'),
(66, 'DeFuniak Springs'),
(66, 'Freeport'),
(66, 'Miramar Beach'),
(66, 'Santa Rosa Beach'),
(66, 'Argyle'),
(66, 'Paxton'),
(66, 'Mossy Head'),
(66, 'Ponce de Leon'),
(66, 'Glendale'),
(66, 'Liberty'),
(66, 'Bonifay'),
(66, 'Ebro'),
(66, 'Bruce'),
(66, 'Florala'),
(66, 'Darlington'),
(66, 'Redbay'),
(66, 'Walton Beaches'),
(66, 'Vernon'),
(67, 'Chipley'),
(67, 'Vernon'),
(67, 'Caryville'),
(67, 'Ebro'),
(67, 'Greenhead'),
(67, 'Sunny Hills'),
(67, 'Wausau'),
(67, 'Vernon'),
(67, 'Ebro');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `condados`
--

CREATE TABLE `condados` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `condados`
--

INSERT INTO `condados` (`id`, `nombre`) VALUES
(1, 'Alachua'),
(2, 'Baker'),
(3, 'Bay'),
(4, 'Bradford'),
(5, 'Brevard'),
(6, 'Broward'),
(7, 'Calhoun'),
(8, 'Charlotte'),
(9, 'Citrus'),
(10, 'Clay'),
(11, 'Collier'),
(12, 'Columbia'),
(13, 'DeSoto'),
(14, 'Dixie'),
(15, 'Duval'),
(16, 'Escambia'),
(17, 'Flagler'),
(18, 'Franklin'),
(19, 'Gadsden'),
(20, 'Gilchrist'),
(21, 'Glades'),
(22, 'Gulf'),
(23, 'Hamilton'),
(24, 'Hardee'),
(25, 'Hendry'),
(26, 'Hernando'),
(27, 'Highlands'),
(28, 'Hillsborough'),
(29, 'Holmes'),
(30, 'Indian'),
(31, 'Jackson'),
(32, 'Jefferson'),
(33, 'Lafayette'),
(34, 'Lake'),
(35, 'Lee'),
(36, 'Leon'),
(37, 'Levy'),
(38, 'Liberty'),
(39, 'Madison'),
(40, 'Manatee'),
(41, 'Marion'),
(42, 'Martin'),
(43, 'Miami-Dade'),
(44, 'Monroe'),
(45, 'Nassau'),
(46, 'Okaloosa'),
(47, 'Okeechobee'),
(48, 'Orange'),
(49, 'Osceola'),
(50, 'Palm Beach'),
(51, 'Pasco'),
(52, 'Pinellas'),
(53, 'Polk'),
(54, 'Putnam'),
(55, 'St. Johns'),
(56, 'St. Lucie'),
(57, 'Santa Rosa'),
(58, 'Sarasota'),
(59, 'Seminole'),
(60, 'Sumter'),
(61, 'Suwannee'),
(62, 'Taylor'),
(63, 'Union'),
(64, 'Volusia'),
(65, 'Wakulla'),
(66, 'Walton'),
(67, 'Washington');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `conexiones`
--

CREATE TABLE `conexiones` (
  `conexion` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `conexiones`
--

INSERT INTO `conexiones` (`conexion`) VALUES
('Quiero compartir mi conocimiento.'),
('Quiero conectar con personas con intereses similares.'),
('Estoy buscando nuevas conexiones.'),
('Estoy buscando trabajo.'),
('Estoy buscando nuevas oportunidades de negocio.'),
('Estoy buscando productos nuevos y únicos.'),
('Estoy buscando una comunidad de la que formar parte.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `conversaciones`
--

CREATE TABLE `conversaciones` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `usuario_id_1` int(11) DEFAULT NULL,
  `usuario_id_2` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lenguajes`
--

CREATE TABLE `lenguajes` (
  `lenguaje` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `lenguajes`
--

INSERT INTO `lenguajes` (`lenguaje`) VALUES
('Chino (mandarín)'),
('Español'),
('Inglés'),
('Hindi'),
('Árabe'),
('Bengalí'),
('Portugués'),
('Ruso'),
('Japonés'),
('Panyabí'),
('Alemán'),
('Javanés'),
('Wu (shanghainés)'),
('Malayo'),
('Telugu'),
('Maratí'),
('Tamil'),
('Francés'),
('Turco'),
('Urdu'),
('Italiano'),
('Coreano'),
('Yue (cantonés)'),
('Tailandés'),
('Gujarati'),
('Persa'),
('Polaco'),
('Pashto'),
('Swahili'),
('Ucraniano'),
('Xiang (hunanés)');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `fechaNacimiento` varchar(255) DEFAULT NULL,
  `verificado` tinyint(1) DEFAULT 0,
  `condado` varchar(255) DEFAULT NULL,
  `ciudad` varchar(255) DEFAULT NULL,
  `genero` varchar(255) DEFAULT NULL,
  `telefono` varchar(255) DEFAULT NULL,
  `biografia` text DEFAULT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `fotoPortada` varchar(255) DEFAULT NULL,
  `objetivo` text DEFAULT NULL,
  `fechaIngreso` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarioareaexperiencia`
--

CREATE TABLE `usuarioareaexperiencia` (
  `usuario_id` int(11) DEFAULT NULL,
  `experiencia` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuariolenguajes`
--

CREATE TABLE `usuariolenguajes` (
  `usuario_id` int(11) DEFAULT NULL,
  `lenguaje` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarioredessociales`
--

CREATE TABLE `usuarioredessociales` (
  `usuario_id` int(11) DEFAULT NULL,
  `red` varchar(255) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios_conectados`
--

CREATE TABLE `usuarios_conectados` (
  `id` int(11) NOT NULL,
  `socket_id` varchar(255) NOT NULL,
  `usuario_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuariotemasinteres`
--

CREATE TABLE `usuariotemasinteres` (
  `usuario_id` int(11) DEFAULT NULL,
  `interes` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuariotipoconexion`
--

CREATE TABLE `usuariotipoconexion` (
  `usuario_id` int(11) DEFAULT NULL,
  `conexion` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario_contacto`
--

CREATE TABLE `usuario_contacto` (
  `usuario_id` int(11) DEFAULT NULL,
  `contacto_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario_mensajes`
--

CREATE TABLE `usuario_mensajes` (
  `id` int(11) NOT NULL,
  `conversacion_id` int(11) DEFAULT NULL,
  `remitente_id` int(11) DEFAULT NULL,
  `destinatario_id` int(11) DEFAULT NULL,
  `contenido` varchar(255) DEFAULT NULL,
  `fecha_envio` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario_notificaciones`
--

CREATE TABLE `usuario_notificaciones` (
  `id` int(11) NOT NULL,
  `usuario_id` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `message` text DEFAULT NULL,
  `data` text DEFAULT NULL,
  `time` varchar(255) DEFAULT NULL,
  `estado` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario_solicitudes`
--

CREATE TABLE `usuario_solicitudes` (
  `id` int(11) NOT NULL,
  `solicitante_id` int(11) DEFAULT NULL,
  `receptor_id` int(11) DEFAULT NULL,
  `fecha_solicitud` varchar(255) DEFAULT NULL,
  `estado` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `ciudades`
--
ALTER TABLE `ciudades`
  ADD KEY `condado_id` (`condado_id`);

--
-- Indices de la tabla `condados`
--
ALTER TABLE `condados`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `conversaciones`
--
ALTER TABLE `conversaciones`
  ADD PRIMARY KEY (`id`),
  ADD KEY `usuario_id_1` (`usuario_id_1`),
  ADD KEY `usuario_id_2` (`usuario_id_2`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuarioareaexperiencia`
--
ALTER TABLE `usuarioareaexperiencia`
  ADD KEY `usuario_id` (`usuario_id`);

--
-- Indices de la tabla `usuariolenguajes`
--
ALTER TABLE `usuariolenguajes`
  ADD KEY `usuario_id` (`usuario_id`);

--
-- Indices de la tabla `usuarioredessociales`
--
ALTER TABLE `usuarioredessociales`
  ADD KEY `usuario_id` (`usuario_id`);

--
-- Indices de la tabla `usuarios_conectados`
--
ALTER TABLE `usuarios_conectados`
  ADD PRIMARY KEY (`id`),
  ADD KEY `usuario_id` (`usuario_id`);

--
-- Indices de la tabla `usuariotemasinteres`
--
ALTER TABLE `usuariotemasinteres`
  ADD KEY `usuario_id` (`usuario_id`);

--
-- Indices de la tabla `usuariotipoconexion`
--
ALTER TABLE `usuariotipoconexion`
  ADD KEY `usuario_id` (`usuario_id`);

--
-- Indices de la tabla `usuario_contacto`
--
ALTER TABLE `usuario_contacto`
  ADD KEY `usuario_id` (`usuario_id`),
  ADD KEY `contacto_id` (`contacto_id`);

--
-- Indices de la tabla `usuario_mensajes`
--
ALTER TABLE `usuario_mensajes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `conversacion_id` (`conversacion_id`),
  ADD KEY `remitente_id` (`remitente_id`),
  ADD KEY `destinatario_id` (`destinatario_id`);

--
-- Indices de la tabla `usuario_notificaciones`
--
ALTER TABLE `usuario_notificaciones`
  ADD PRIMARY KEY (`id`),
  ADD KEY `usuario_id` (`usuario_id`);

--
-- Indices de la tabla `usuario_solicitudes`
--
ALTER TABLE `usuario_solicitudes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `solicitante_id` (`solicitante_id`),
  ADD KEY `receptor_id` (`receptor_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `condados`
--
ALTER TABLE `condados`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT de la tabla `conversaciones`
--
ALTER TABLE `conversaciones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `usuarios_conectados`
--
ALTER TABLE `usuarios_conectados`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `usuario_mensajes`
--
ALTER TABLE `usuario_mensajes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `usuario_notificaciones`
--
ALTER TABLE `usuario_notificaciones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `usuario_solicitudes`
--
ALTER TABLE `usuario_solicitudes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `ciudades`
--
ALTER TABLE `ciudades`
  ADD CONSTRAINT `ciudades_ibfk_1` FOREIGN KEY (`condado_id`) REFERENCES `condados` (`id`);

--
-- Filtros para la tabla `conversaciones`
--
ALTER TABLE `conversaciones`
  ADD CONSTRAINT `conversaciones_ibfk_1` FOREIGN KEY (`usuario_id_1`) REFERENCES `usuario` (`id`),
  ADD CONSTRAINT `conversaciones_ibfk_2` FOREIGN KEY (`usuario_id_2`) REFERENCES `usuario` (`id`);

--
-- Filtros para la tabla `usuarioareaexperiencia`
--
ALTER TABLE `usuarioareaexperiencia`
  ADD CONSTRAINT `usuarioareaexperiencia_ibfk_1` FOREIGN KEY (`usuario_id`) REFERENCES `usuario` (`id`);

--
-- Filtros para la tabla `usuariolenguajes`
--
ALTER TABLE `usuariolenguajes`
  ADD CONSTRAINT `usuariolenguajes_ibfk_1` FOREIGN KEY (`usuario_id`) REFERENCES `usuario` (`id`);

--
-- Filtros para la tabla `usuarioredessociales`
--
ALTER TABLE `usuarioredessociales`
  ADD CONSTRAINT `usuarioredessociales_ibfk_1` FOREIGN KEY (`usuario_id`) REFERENCES `usuario` (`id`);

--
-- Filtros para la tabla `usuarios_conectados`
--
ALTER TABLE `usuarios_conectados`
  ADD CONSTRAINT `usuarios_conectados_ibfk_1` FOREIGN KEY (`usuario_id`) REFERENCES `usuario` (`id`);

--
-- Filtros para la tabla `usuariotemasinteres`
--
ALTER TABLE `usuariotemasinteres`
  ADD CONSTRAINT `usuariotemasinteres_ibfk_1` FOREIGN KEY (`usuario_id`) REFERENCES `usuario` (`id`);

--
-- Filtros para la tabla `usuariotipoconexion`
--
ALTER TABLE `usuariotipoconexion`
  ADD CONSTRAINT `usuariotipoconexion_ibfk_1` FOREIGN KEY (`usuario_id`) REFERENCES `usuario` (`id`);

--
-- Filtros para la tabla `usuario_contacto`
--
ALTER TABLE `usuario_contacto`
  ADD CONSTRAINT `usuario_contacto_ibfk_1` FOREIGN KEY (`usuario_id`) REFERENCES `usuario` (`id`),
  ADD CONSTRAINT `usuario_contacto_ibfk_2` FOREIGN KEY (`contacto_id`) REFERENCES `usuario` (`id`);

--
-- Filtros para la tabla `usuario_mensajes`
--
ALTER TABLE `usuario_mensajes`
  ADD CONSTRAINT `usuario_mensajes_ibfk_1` FOREIGN KEY (`conversacion_id`) REFERENCES `conversaciones` (`id`),
  ADD CONSTRAINT `usuario_mensajes_ibfk_2` FOREIGN KEY (`remitente_id`) REFERENCES `usuario` (`id`),
  ADD CONSTRAINT `usuario_mensajes_ibfk_3` FOREIGN KEY (`destinatario_id`) REFERENCES `usuario` (`id`);

--
-- Filtros para la tabla `usuario_notificaciones`
--
ALTER TABLE `usuario_notificaciones`
  ADD CONSTRAINT `usuario_notificaciones_ibfk_1` FOREIGN KEY (`usuario_id`) REFERENCES `usuario` (`id`);

--
-- Filtros para la tabla `usuario_solicitudes`
--
ALTER TABLE `usuario_solicitudes`
  ADD CONSTRAINT `usuario_solicitudes_ibfk_1` FOREIGN KEY (`solicitante_id`) REFERENCES `usuario` (`id`),
  ADD CONSTRAINT `usuario_solicitudes_ibfk_2` FOREIGN KEY (`receptor_id`) REFERENCES `usuario` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
