-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 16-11-2023 a las 09:48:21
-- Versión del servidor: 5.7.41
-- Versión de PHP: 8.1.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `networking_prod`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `areas_experiencia`
--

CREATE TABLE `areas_experiencia` (
  `titulo` varchar(255) DEFAULT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `areas_experiencia`
--

INSERT INTO `areas_experiencia` (`titulo`, `id`) VALUES
('Dirección', 552),
('Administración', 553),
('Marketing', 554),
('Legal', 555),
('Financiero', 556),
('Ventas', 557),
('Logística', 558),
('Operaciones', 559),
('Tecnología', 560),
('Otro', 561);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `areas_intereses`
--

CREATE TABLE `areas_intereses` (
  `interes` varchar(255) DEFAULT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `areas_intereses`
--

INSERT INTO `areas_intereses` (`interes`, `id`) VALUES
('Tecnología', 1),
('Emprendimiento', 2),
('Innovación', 5),
('Negocios', 6),
('Finanzas', 7),
('Arte y cultura', 9),
('Sostenibilidad', 10),
('Educación', 11),
('Recursos humanos', 12),
('Gestión de proyectos', 13),
('Salud y bienestar', 15),
('Redes sociales', 16),
('E-commerce', 17),
('Inteligencia artificial', 18),
('Diseño', 19),
('Programación', 20),
('Big data', 21),
('Ciberseguridad', 22),
('Gestión empresarial', 23),
('Desarrollo de productos', 24),
('Ingeniería', 25),
('Marketing digital', 26),
('Estrategia empresarial', 27),
('Realidad virtual', 28),
('Internet de las cosas', 29),
('Robótica', 30),
('Energías renovables', 31),
('Telecomunicaciones', 32),
('Diseño de experiencia de usuario', 33),
('Blockchain', 34),
('Inteligencia de negocios', 36),
('Gamificación', 37),
('Psicología organizacional', 39),
('Diseño gráfico', 40),
('Desarrollo web', 41),
('Otros', 42),
('Medio ambiente', 43);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ciudades`
--

CREATE TABLE `ciudades` (
  `condado_id` int(11) DEFAULT NULL,
  `ciudad` varchar(255) DEFAULT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `ciudades`
--

INSERT INTO `ciudades` (`condado_id`, `ciudad`, `id`) VALUES
(1, 'Alachua', 1),
(1, 'Archer', 2),
(1, 'Hawthorne', 3),
(1, 'Gainesville', 4),
(1, 'Micanopy', 5),
(1, 'Newberry', 6),
(1, 'High Springs', 7),
(1, 'Santa Fe', 8),
(1, 'LaCrosse', 9),
(1, 'Waldo', 10),
(2, 'Baker City', 11),
(2, 'Greenhorn', 12),
(2, 'Haines', 13),
(2, 'Halfway', 14),
(2, 'Sumpter', 15),
(2, 'Richland', 16),
(2, 'Huntington', 17),
(2, 'Unity', 18),
(3, 'Lynn Haven', 19),
(3, 'Panama City', 20),
(3, 'Callaway', 21),
(3, 'Springfield', 22),
(3, 'Youngstown', 23),
(3, 'Mexico Beach', 24),
(3, 'Parker', 25),
(3, 'Bayou George', 26),
(3, 'Panama City Beach', 27),
(3, 'Cedar Grove', 28),
(3, 'Southport', 29),
(3, 'Upper Grand Lagoon', 30),
(4, 'Lawtey', 31),
(4, 'Hampton', 32),
(4, 'Brooker', 33),
(4, 'Starke', 34),
(5, 'Titusville', 35),
(5, 'Cocoa', 36),
(5, 'Melbourne', 37),
(5, 'Palm Bay', 38),
(5, 'Merritt Island', 39),
(5, 'Indialantic', 40),
(5, 'Cocoa Beach', 41),
(5, 'Satellite Beach', 42),
(5, 'Indian Harbour Beach', 43),
(5, 'Rockledge', 44),
(5, 'West Melbourne', 45),
(5, 'Cape Canaveral', 46),
(5, 'Grant-Valkaria', 47),
(5, 'Malabar', 48),
(5, 'Palm Shores', 49),
(5, 'Micco', 50),
(6, 'Fort Lauderdale', 51),
(6, 'Hollywood', 52),
(6, 'Pembroke Pines', 53),
(6, 'Coral Springs', 54),
(6, 'Miramar', 55),
(6, 'Davie', 56),
(6, 'Sunrise', 57),
(6, 'Pompano Beach', 58),
(6, 'Plantation', 59),
(6, 'Deerfield Beach', 60),
(6, 'Weston', 61),
(6, 'Cooper City', 62),
(6, 'Tamarac', 63),
(6, 'Hallandale Beach', 64),
(6, 'Margate', 65),
(6, 'Oakland Park', 66),
(6, 'Lauderhill', 67),
(6, 'Dania Beach', 68),
(6, 'Coconut Creek', 69),
(6, 'North Lauderdale', 70),
(6, 'Lighthouse Point', 71),
(6, 'Lauderdale Lakes', 72),
(6, 'Parkland', 73),
(6, 'Wilton Manors', 74),
(6, 'Lauderdale-by-the-Sea', 75),
(6, 'Hillsboro Beach', 76),
(7, 'Altha', 77),
(7, 'Blountstown', 78),
(7, 'Scotts Ferry', 79),
(7, 'Fountain', 80),
(7, 'Clarksville', 81),
(7, 'Mossy Pond', 82),
(8, 'Charlotte', 83),
(8, 'Weddington', 84),
(8, 'Matthews', 85),
(8, 'Lake Wylie', 86),
(8, 'Huntersville', 87),
(8, 'Marvin', 88),
(8, 'Cornelius', 89),
(8, 'Stallings', 90),
(8, 'Indian Trail', 91),
(8, 'Waxhaw', 92),
(8, 'Mint Hill', 93),
(8, 'Davidson', 94),
(8, 'Pineville', 95),
(9, 'Crystal River', 96),
(9, 'Inverness', 97),
(9, 'Homosassa Springs', 98),
(9, 'Lecanto', 99),
(9, 'Beverly Hills', 100),
(9, 'Citrus Springs', 101),
(9, 'Hernando', 102),
(9, 'Floral City', 103),
(9, 'Sugarmill Woods', 104),
(10, 'Middleburg', 105),
(10, 'Penney Farms', 106),
(10, 'Green Cove Springs', 107),
(10, 'Asbury Lake', 108),
(10, 'Bellair-Meadowbrook Terrace', 109),
(10, 'Oakleaf Plantation', 110),
(10, 'Keystone Heights', 111),
(10, 'Orange Park', 112),
(10, 'Fleming Island', 113),
(10, 'Lake Geneva', 114),
(10, 'Lakeside', 115),
(11, 'Golden Gate', 116),
(11, 'Golden Gate Estates', 117),
(11, 'Naples', 118),
(11, 'Pelican Bay', 119),
(11, 'Vanderbilt Beach', 120),
(11, 'East Naples', 121),
(11, 'Marco Island', 122),
(11, 'Orangetree', 123),
(11, 'Immokalee', 124),
(11, 'North Naples', 125),
(11, 'Estero', 126),
(11, 'Lely Resort', 127),
(11, 'Chokoloskee', 128),
(11, 'Everglades City', 129),
(11, 'Goodland', 130),
(12, 'Fort White', 131),
(12, 'Winfield', 132),
(12, 'Lake City', 133),
(12, 'Five Points', 134),
(12, 'Watertown', 135),
(12, 'Lulu', 136),
(13, 'Nocatee', 137),
(13, 'Fort Ogden', 138),
(13, 'Brownville', 139),
(13, 'Lake Suzy', 140),
(13, 'Arcadia', 141),
(14, 'Horseshoe Beach', 142),
(14, 'Cross City', 143),
(15, 'Neptune Beach', 144),
(15, 'Mandarin', 145),
(15, 'Bryceville', 146),
(15, 'Oceanway', 147),
(15, 'Arlington', 148),
(15, 'Jacksonville', 149),
(15, 'Atlantic Beach', 150),
(15, 'Baldwin', 151),
(15, 'San Marco', 152),
(15, 'Jacksonville Beach', 153),
(16, 'Pensacola', 154),
(16, 'Century', 155),
(16, 'Molino', 156),
(16, 'Bellview', 157),
(16, 'Cantonment', 158),
(16, 'Ensley', 159),
(16, 'Warrington', 160),
(16, 'Perdido Key', 161),
(16, 'Gonzalez', 162),
(16, 'Myrtle Grove', 163),
(16, 'Pensacola Beach', 164),
(16, 'Brent', 165),
(16, 'West Pensacola', 166),
(17, 'Palm Coast', 167),
(17, 'Flagler Beach', 168),
(17, 'Bunnell', 169),
(17, 'Marineland', 170),
(17, 'Beverly Beach', 171),
(17, 'Painters Hill', 172),
(17, 'Dupont', 173),
(18, 'Alligator Point', 174),
(18, 'Lanark Village', 175),
(18, 'Eastpoint', 176),
(18, 'St. George Island', 177),
(18, 'Apalachicola', 178),
(18, 'Carrabelle', 179),
(19, 'Chattahoochee', 180),
(19, 'Quincy', 181),
(19, 'Midway', 182),
(19, 'Gretna', 183),
(19, 'Havana', 184),
(19, 'Greensboro', 185),
(20, 'Bell', 186),
(20, 'Trenton', 187),
(20, 'Fanning Springs', 188),
(20, 'Spring Ridge', 189),
(20, 'Waccasassa', 190),
(20, 'Wilcox', 191),
(20, 'Suwannee', 192),
(21, 'Moore Haven', 193),
(21, 'Buckhead Ridge', 194),
(21, 'Palmdale', 195),
(21, 'Muse', 196),
(21, 'Ortona', 197),
(21, 'Lakeport', 198),
(22, 'Dalkeith', 199),
(22, 'Overstreet', 200),
(22, 'Port St. Joe', 201),
(22, 'Wewahitchka', 202),
(22, 'White City', 203),
(22, 'Highland View', 204),
(23, 'Benton', 205),
(23, 'Jasper', 206),
(23, 'Genoa', 207),
(23, 'Jennings', 208),
(23, 'Crossroads', 209),
(23, 'White Springs', 210),
(23, 'Culp', 211),
(24, 'Ona', 212),
(24, 'Fort Green Springs', 213),
(24, 'Limestone', 214),
(24, 'Sweetwater', 215),
(24, 'Wauchula', 216),
(24, 'Bowling Green', 217),
(24, 'Zolfo Springs', 218),
(25, 'LaBelle', 219),
(25, 'Pioneer', 220),
(25, 'Felda', 221),
(25, 'Fort Denaud', 222),
(25, 'Clewiston', 223),
(25, 'Harlem', 224),
(25, 'Montura', 225),
(26, 'Brooksville', 226),
(26, 'Spring Hill', 227),
(26, 'Nobleton', 228),
(26, 'Masaryktown', 229),
(26, 'Weeki Wachee', 230),
(26, 'Ridge Manor', 231),
(26, 'Timber Pines', 232),
(26, 'Aripeka', 233),
(27, 'Sun \'n Lake of Sebring', 234),
(27, 'Sebring', 235),
(27, 'Lorida', 236),
(27, 'Avon Park', 237),
(27, 'Highlands Park Estates', 238),
(27, 'Lake Placid', 239),
(27, 'Placid Lakes', 240),
(27, 'Leisure Lakes', 241),
(26, 'Hernando Beach', 242),
(27, 'Venus', 243),
(28, 'Tampa', 244),
(28, 'Plant City', 245),
(28, 'Thonotosassa', 246),
(28, 'Gibsonton', 247),
(28, 'Riverview', 248),
(28, 'Temple Terrace', 249),
(28, 'Lutz', 250),
(28, 'Dover', 251),
(28, 'Brandon', 252),
(28, 'Valrico', 253),
(28, 'Ruskin', 254),
(28, 'Apollo Beach', 255),
(28, 'Seffner', 256),
(28, 'Wimauma', 257),
(28, 'Sun City Center', 258),
(28, 'Sydney', 259),
(28, 'Ruskin Colony Farms', 260),
(28, 'Balm', 261),
(29, 'Bonifay', 262),
(29, 'Ponce de Leon', 263),
(29, 'Westville', 264),
(29, 'Noma', 265),
(29, 'Esto', 266),
(30, 'Vero Beach', 267),
(30, 'Sebastian', 268),
(30, 'Wabasso', 269),
(30, 'Indian River Shores', 270),
(31, 'Cottondale', 271),
(31, 'Sneads', 272),
(31, 'Alford', 273),
(31, 'Grand Ridge', 274),
(31, 'Marianna', 275),
(31, 'Graceville', 276),
(30, 'Orchid', 277),
(30, 'Roseland', 278),
(30, 'Gifford', 279),
(31, 'Bascom', 280),
(31, 'Malone', 281),
(31, 'Greenwood', 282),
(32, 'Monticello', 283),
(32, 'Lloyd', 284),
(32, 'Wacissa', 285),
(32, 'Aucilla', 286),
(30, 'Winter Beach', 287),
(30, 'Fellsmere', 288),
(33, 'Mayo', 289),
(33, 'Day', 290),
(34, 'Clermont', 291),
(34, 'Eustis', 292),
(34, 'Leesburg', 293),
(34, 'Tavares', 294),
(34, 'Mascotte', 295),
(34, 'Fruitland Park', 296),
(34, 'Mount Dora', 297),
(34, 'Montverde', 298),
(34, 'Umatilla', 299),
(34, 'Astatula', 300),
(34, 'Howey-in-the-Hills', 301),
(34, 'Sorrento', 302),
(34, 'Lady Lake', 303),
(34, 'Groveland', 304),
(34, 'Minneola', 305),
(34, 'Grand Island', 306),
(34, 'Paisley', 307),
(34, 'Okahumpka', 308),
(34, 'Astor', 309),
(34, 'Altoona', 310),
(34, 'Mount Plymouth', 311),
(34, 'Deer Island', 312),
(34, 'Yalaha', 313),
(34, 'Pittman', 314),
(34, 'Tangerine', 315),
(34, 'Lake Kathryn', 316),
(34, 'Lisbon', 317),
(34, 'Yeehaw Junction', 318),
(35, 'Cape Coral', 319),
(35, 'Fort Myers', 320),
(35, 'Bonita Springs', 321),
(35, 'Estero', 322),
(35, 'Lehigh Acres', 323),
(35, 'Matlacha', 324),
(35, 'Sanibel', 325),
(35, 'Fort Myers Beach', 326),
(35, 'Captiva', 327),
(35, 'Boca Grande', 328),
(35, 'Bokeelia', 329),
(35, 'Pineland', 330),
(35, 'North Fort Myers', 331),
(35, 'Tice', 332),
(35, 'Pine Manor', 333),
(35, 'Suncoast Estates', 334),
(35, 'Charleston Park', 335),
(35, 'Burnt Store Marina', 336),
(35, 'Page Park', 337),
(35, 'San Carlos Park', 338),
(35, 'Whiskey Creek', 339),
(35, 'Three Oaks', 340),
(35, 'Punta Rassa', 341),
(35, 'St. James City', 342),
(35, 'McGregor', 343),
(35, 'Tropical Gulf Acres', 344),
(35, 'Gateway', 345),
(35, 'Buckingham', 346),
(35, 'Olga', 347),
(35, 'Fort Myers Shores', 348),
(35, 'Babcock Ranch', 349),
(35, 'Bonita Beach', 350),
(35, 'Cypress Lake', 351),
(35, 'Harlem Heights', 352),
(35, 'Iona', 353),
(35, 'Cypress Lake', 354),
(35, 'Villas', 355),
(35, 'Fort Myers Villas', 356),
(36, 'Midway', 357),
(36, 'Tallahassee', 358),
(36, 'Lake Talquin', 359),
(36, 'Woodville', 360),
(36, 'Chaires', 361),
(36, 'Miccosukee', 362),
(36, 'Lloyd', 363),
(36, 'Havana', 364),
(36, 'Crawfordville', 365),
(36, 'St. Marks', 366),
(36, 'Bradfordville', 367),
(36, 'Wacissa', 368),
(36, 'Centerville', 369),
(37, 'Williston', 370),
(37, 'Chiefland', 371),
(37, 'Morriston', 372),
(37, 'Inglis', 373),
(37, 'Otter Creek', 374),
(37, 'Yankeetown', 375),
(37, 'Manatee Road', 376),
(37, 'Andrews', 377),
(37, 'Cedar Key', 378),
(37, 'Bronson', 379),
(38, 'Bristol', 380),
(38, 'Sumatra', 381),
(38, 'Hosford', 382),
(38, 'Orange', 383),
(39, 'Madison', 384),
(39, 'Greenville', 385),
(39, 'Pinetta', 386),
(39, 'Lee', 387),
(40, 'Palmetto', 388),
(40, 'Bradenton', 389),
(40, 'Anna Maria', 390),
(40, 'Holmes Beach', 391),
(40, 'Bradenton Beach', 392),
(40, 'Longboat Key', 393),
(40, 'Myakka City', 394),
(40, 'Cortez', 395),
(40, 'Ellenton', 396),
(40, 'Parrish', 397),
(40, 'Samoset', 398),
(40, 'Memphis', 399),
(40, 'South Bradenton', 400),
(40, 'West Bradenton', 401),
(40, 'Bayshore Gardens', 402),
(40, 'Whitfield', 403),
(40, 'West Samoset', 404),
(40, 'Oneco', 405),
(40, 'Village of the Arts', 406),
(40, 'West Samoset', 407),
(41, 'Ocala', 408),
(41, 'Belleview', 409),
(41, 'Silver Springs Shores', 410),
(41, 'Dunnellon', 411),
(41, 'Reddick', 412),
(41, 'The Villages', 413),
(41, 'McIntosh', 414),
(41, 'Ocklawaha', 415),
(41, 'Weirsdale', 416),
(41, 'Citra', 417),
(41, 'Salt Springs', 418),
(41, 'Summerfield', 419),
(41, 'Anthony', 420),
(41, 'Rainbow Lakes Estates', 421),
(41, 'Marion Oaks', 422),
(41, 'Silver Springs', 423),
(41, 'Fort McCoy', 424),
(41, 'Orange Springs', 425),
(41, 'Sparr', 426),
(41, 'Orange Lake', 427),
(41, 'Buckhead Ridge', 428),
(41, 'Candler', 429),
(42, 'Stuart', 430),
(42, 'Jensen Beach', 431),
(42, 'Palm City', 432),
(42, 'North River Shores', 433),
(42, 'Hobe Sound', 434),
(42, 'Port Mayaca', 435),
(42, 'Port Salerno', 436),
(42, 'Indiantown', 437),
(42, 'Sewall\'s Point', 438),
(42, 'Rio', 439),
(42, 'Canal Point', 440),
(43, 'Hialeah', 442),
(43, 'Miami', 443),
(43, 'Miami Gardens', 444),
(43, 'Miami Lakes', 445),
(43, 'North Miami Beach', 446),
(43, 'North Miami', 447),
(43, 'Coral Gables', 448),
(43, 'Doral', 449),
(43, 'Cutler Bay', 450),
(43, 'Aventura', 451),
(43, 'Homestead', 452),
(43, 'Opa-locka', 453),
(43, 'Sweetwater', 454),
(43, 'Miami Springs', 455),
(43, 'Palmetto Bay', 456),
(43, 'Key Biscayne', 457),
(43, 'South Miami', 458),
(43, 'North Bay Village', 459),
(43, 'West Miami', 460),
(43, 'Sunny Isles Beach', 461),
(43, 'Pinecrest', 462),
(43, 'Florida City', 463),
(43, 'Miami Shores', 464),
(43, 'Ojus', 465),
(43, 'Bal Harbour', 466),
(43, 'Bay Harbor Islands', 467),
(43, 'Biscayne Park', 468),
(43, 'Surfside', 469),
(43, 'Virginia Gardens', 470),
(43, 'El Portal', 471),
(43, 'Golden Beach', 472),
(43, 'Medley', 473),
(43, 'Indian Creek', 474),
(43, 'Fisher Island', 475),
(43, 'Brownsville', 476),
(43, 'Glenvar Heights', 477),
(43, 'Westchester', 478),
(43, 'Kendall', 479),
(43, 'Tamiami', 480),
(43, 'West Little River', 481),
(43, 'Westwood Lakes', 482),
(43, 'Country Walk', 483),
(43, 'The Crossings', 484),
(43, 'Richmond West', 485),
(43, 'South Miami Heights', 486),
(43, 'Three Lakes', 487),
(43, 'The Hammocks', 488),
(43, 'Kendall West', 489),
(43, 'Princeton', 490),
(43, 'Goulds', 491),
(43, 'Naranja', 492),
(43, 'Leisure City', 493),
(43, 'Islandia', 494),
(43, 'Pinewood', 495),
(43, 'Cutler Ridge', 496),
(43, 'Bunche Park', 497),
(43, 'South Beach', 498),
(43, 'Miami Beach', 499),
(43, 'South Pointe', 500),
(43, 'Oceanfront', 501),
(44, 'Marathon', 502),
(44, 'Key West', 503),
(44, 'Key Largo', 504),
(44, 'Tavernier', 505),
(44, 'Big Pine Key', 506),
(44, 'Stock Island', 507),
(44, 'Duck Key', 508),
(44, 'Islamorada', 509),
(44, 'Sugarloaf Key', 510),
(44, 'Cudjoe Key', 511),
(44, 'Key Colony Beach', 512),
(44, 'Layton', 513),
(44, 'Plantation Key', 514),
(44, 'Tennessee', 515),
(44, 'Flamingo', 516),
(44, 'Conch Key', 517),
(44, 'Lower Keys', 518),
(44, 'Upper Keys', 519),
(44, 'Key Haven', 520),
(44, 'No Name Key', 521),
(45, 'Fernandina Beach', 522),
(45, 'Yulee', 523),
(45, 'Callahan', 524),
(45, 'Hilliard', 525),
(46, 'Crestview', 526),
(46, 'Fort Walton Beach', 527),
(46, 'Destin', 528),
(46, 'Niceville', 529),
(46, 'Mary Esther', 530),
(46, 'Shalimar', 531),
(46, 'Ocean City', 532),
(46, 'Valparaiso', 533),
(46, 'Wright', 534),
(46, 'Cinco Bayou', 535),
(46, 'Lake Lorraine', 536),
(46, 'Gulf Breeze', 537),
(46, 'Eglin AFB', 538),
(46, 'Hurlburt Field', 539),
(46, 'Laurel Hill', 540),
(47, 'Cypress Quarters', 541),
(47, 'Okeechobee', 542),
(47, 'Taylor Creek', 543),
(47, 'Basinger', 544),
(48, 'Orlando', 545),
(48, 'Oak Ridge', 546),
(48, 'Apopka', 547),
(48, 'Winter Garden', 548),
(48, 'Winter Park', 549),
(48, 'Oviedo', 550),
(48, 'Kissimmee', 551),
(48, 'Ocoee', 552),
(48, 'Winter Springs', 553),
(48, 'Saint Cloud', 554),
(48, 'Union Park', 555),
(48, 'Lake Buena Vista', 556),
(48, 'Clermont', 557),
(48, 'Meadow Woods', 558),
(48, 'Azalea Park', 559),
(48, 'Maitland', 560),
(48, 'Lake Butler', 561),
(48, 'Belle Isle', 562),
(48, 'Doctor Phillips', 563),
(48, 'Pine Hills', 564),
(48, 'Windermere', 565),
(48, 'Hunters Creek', 566),
(48, 'Waterford Lakes', 567),
(48, 'Williamsburg', 568),
(48, 'Lockhart', 569),
(48, 'Southchase', 570),
(48, 'Taft', 571),
(48, 'Fairview Shores', 572),
(48, 'Bay Hill', 573),
(48, 'University Park', 574),
(48, 'Alafaya', 575),
(48, 'Holden Heights', 576),
(48, 'Conway', 577),
(48, 'Oakland', 578),
(48, 'Lake Hart', 579),
(48, 'Zellwood', 580),
(48, 'Sky Lake', 581),
(48, 'Wedgefield', 582),
(48, 'Pine Castle', 583),
(48, 'Tangelo Park', 584),
(48, 'Edgewood', 585),
(48, 'Tildenville', 586),
(48, 'Mango', 587),
(48, 'Paradise Heights', 588),
(48, 'Clarcona', 589),
(48, 'Orlovista', 590),
(48, 'Orlo Vista', 591),
(48, 'Gotha', 592),
(48, 'Wekiwa Springs', 593),
(48, 'Mount Plymouth', 594),
(48, 'Christmas', 595),
(48, 'Apopka', 596),
(48, 'Lake Mary Jane', 597),
(49, 'Kissimmee', 598),
(49, 'St. Cloud', 599),
(49, 'Celebration', 600),
(49, 'Poinciana', 601),
(49, 'Buenaventura Lakes', 602),
(49, 'Campbell', 603),
(49, 'Yeehaw Junction', 604),
(49, 'Narcoossee', 605),
(49, 'Kenansville', 606),
(49, 'Holopaw', 607),
(49, 'Intercession City', 608),
(50, 'West Palm Beach', 609),
(50, 'Boynton Beach', 610),
(50, 'Delray Beach', 611),
(50, 'Boca Raton', 612),
(50, 'Jupiter', 613),
(50, 'Greenacres', 614),
(50, 'Riviera Beach', 615),
(50, 'Lake Worth', 616),
(50, 'Palm Springs', 617),
(50, 'Royal Palm Beach', 618),
(50, 'Wellington', 619),
(50, 'North Palm Beach', 620),
(50, 'Palm Beach Gardens', 621),
(50, 'Lake Park', 622),
(50, 'Lantana', 623),
(50, 'Palm Beach Shores', 624),
(50, 'South Palm Beach', 625),
(50, 'Haverhill', 626),
(50, 'Tequesta', 627),
(50, 'Palm Beach', 628),
(50, 'Atlantis', 629),
(50, 'Lake Clarke Shores', 630),
(50, 'Juno Beach', 631),
(50, 'Glen Ridge', 632),
(50, 'Palm Beach Gardens', 633),
(50, 'Limestone Creek', 634),
(50, 'Gulf Stream', 635),
(50, 'Jupiter Inlet Colony', 636),
(50, 'Briny Breezes', 637),
(50, 'Golf', 638),
(50, 'Cloud Lake', 639),
(50, 'Loxahatchee Groves', 640),
(51, 'New Port Richey', 641),
(51, 'Zephyrhills', 642),
(51, 'Dade City', 643),
(51, 'Wesley Chapel', 644),
(51, 'Odessa', 645),
(51, 'Port Richey', 646),
(51, 'Land O\' Lakes', 647),
(51, 'Holiday', 648),
(51, 'Hudson', 649),
(51, 'Trinity', 650),
(51, 'San Antonio', 651),
(51, 'Lacoochee', 652),
(51, 'Aripeka', 653),
(51, 'Shady Hills', 654),
(51, 'Jasmine Estates', 655),
(51, 'Beacon Square', 656),
(51, 'Elfers', 657),
(51, 'Meadow Oaks', 658),
(51, 'Bayonet Point', 659),
(51, 'St. Leo', 660),
(51, 'Gulf Harbors', 661),
(51, 'Blanton', 662),
(51, 'Crystal Springs', 663),
(51, 'Richland', 664),
(51, 'Dade City North', 665),
(51, 'Trilby', 666),
(51, 'Pasadena Hills', 667),
(51, 'Quail Ridge', 668),
(51, 'Key Vista', 669),
(51, 'Moon Lake', 670),
(51, 'Jessamine', 671),
(51, 'Avalon', 672),
(51, 'Heritage Pines', 673),
(51, 'Pine Island', 674),
(51, 'Spring Hill', 675),
(51, 'Hill \'n Dale', 676),
(52, 'St. Petersburg', 677),
(52, 'Largo', 678),
(52, 'Pinellas Park', 679),
(52, 'Seminole', 680),
(52, 'Safety Harbor', 681),
(52, 'Palm Harbor', 682),
(52, 'Dunedin', 683),
(52, 'Madeira Beach', 684),
(52, 'St. Pete Beach', 685),
(52, 'Tarpon Springs', 686),
(52, 'Gulfport', 687),
(52, 'South Pasadena', 688),
(52, 'Treasure Island', 689),
(52, 'Oldsmar', 690),
(52, 'Clearwater', 691),
(52, 'Indian Rocks Beach', 692),
(52, 'North Redington Beach', 693),
(52, 'Belleair Bluffs', 694),
(52, 'Belleair Beach', 695),
(52, 'Kenneth City', 696),
(52, 'Feather Sound', 697),
(52, 'Tierra Verde', 698),
(52, 'Redington Shores', 699),
(52, 'Belleair', 700),
(52, 'Indian Shores', 701),
(52, 'Palm Harbor', 702),
(52, 'Bear Creek', 703),
(52, 'East Lake', 704),
(52, 'West and East Lealman', 705),
(52, 'Ridgecrest', 706),
(52, 'Gandy', 707),
(52, 'Tarpon Springs', 708),
(52, 'Dunedin', 709),
(52, 'South Highpoint', 710),
(52, 'Bay Pines', 711),
(53, 'Bartow', 712),
(53, 'Lake Wales', 713),
(53, 'Lakeland', 714),
(53, 'Auburndale', 715),
(53, 'Bartow', 716),
(53, 'Davenport', 717),
(53, 'Mulberry', 718),
(53, 'Winter Haven', 719),
(53, 'Poinciana', 720),
(53, 'Lake Alfred', 721),
(53, 'Lakeland Highlands', 722),
(53, 'Eagle Lake', 723),
(53, 'Bartow', 724),
(53, 'Haines City', 725),
(53, 'Bartow', 726),
(53, 'Fort Meade', 727),
(53, 'Highland City', 728),
(53, 'Jan Phyl Village', 729),
(53, 'Fussels Corner', 730),
(53, 'Frostproof', 731),
(53, 'Wahneta', 732),
(53, 'Medulla', 733),
(53, 'Willow Oak', 734),
(53, 'Cypress Gardens', 735),
(53, 'Hillcrest Heights', 736),
(53, 'Combee Settlement', 737),
(53, 'Babson Park', 738),
(53, 'Polk City', 739),
(53, 'Lake Hamilton', 740),
(53, 'Crooked Lake Park', 741),
(53, 'Lake Wales', 742),
(53, 'Dundee', 743),
(53, 'Eaton Park', 744),
(53, 'Lake Alfred', 745),
(53, 'Inwood', 746),
(53, 'Highland Park', 747),
(53, 'Loughman', 748),
(53, 'Eloise', 749),
(53, 'Lake Wales', 750),
(53, 'Homeland', 751),
(53, 'Lake Wales', 752),
(53, 'Brewster', 753),
(53, 'Alturas', 754),
(53, 'Highland City', 755),
(53, 'Bowling Green', 756),
(53, 'Frostproof', 757),
(53, 'Mulberry', 758),
(53, 'Gibsonia', 759),
(54, 'Pomona Park', 760),
(54, 'Hawthorne', 761),
(54, 'Crescent City', 762),
(54, 'San Mateo', 763),
(54, 'East Palatka', 764),
(54, 'Palatka', 765),
(54, 'Melrose', 766),
(54, 'Interlachen', 767),
(54, 'Florahome', 768),
(54, 'Bardin', 769),
(54, 'Georgetown', 770),
(54, 'Satsuma', 771),
(54, 'Pomona Park', 772),
(54, 'Welaka', 773),
(54, 'Pomona Park', 774),
(54, 'Palatka', 775),
(55, 'Ponte Vedra Beach', 776),
(55, 'St. Augustine', 777),
(55, 'St. Augustine Beach', 778),
(55, 'Hastings', 779),
(55, 'Crescent Beach', 780),
(55, 'Fruit Cove', 781),
(55, 'Sawgrass', 782),
(55, 'Nocatee', 783),
(55, 'Vilano Beach', 784),
(55, 'Butler Beach', 785),
(55, 'St. Johns', 786),
(56, 'Indian River Estates', 787),
(56, 'Hobe Sound', 788),
(56, 'Port St. Lucie', 789),
(56, 'Lakewood Park', 790),
(56, 'Fort Pierce', 791),
(56, 'Indiantown', 792),
(56, 'St. Lucie Village', 793),
(56, 'Hutchinson Island South', 794),
(56, 'White City', 795),
(56, 'Port St. Lucie-River Park', 796),
(56, 'Fort Pierce South', 797),
(56, 'Walton', 798),
(56, 'North Beach', 799),
(56, 'Lakewood Park', 800),
(56, 'River Park', 801),
(56, 'Fort Pierce North', 802),
(57, 'Bagdad', 803),
(57, 'Pea Ridge', 804),
(57, 'Berrydale', 805),
(57, 'Milton', 806),
(57, 'Gulf Breeze', 807),
(57, 'East Milton', 808),
(57, 'Avalon', 809),
(57, 'Garcon Point', 810),
(57, 'Whiting Field', 811),
(57, 'Navarre Beach', 812),
(57, 'Mount Carmel', 813),
(57, 'Wallace', 814),
(57, 'Holley', 815),
(57, 'Allentown', 816),
(57, 'Point Baker', 817),
(57, 'Pace', 818),
(57, 'Jay', 819),
(57, 'Navarre', 820),
(57, 'Mulat', 821),
(57, 'Chumuckla', 822),
(58, 'Sarasota', 823),
(58, 'Siesta Key', 824),
(58, 'Venice', 825),
(58, 'Englewood', 826),
(58, 'Fruitville', 827),
(58, 'Longboat Key', 828),
(58, 'South Venice', 829),
(58, 'Gulf Gate Estates', 830),
(58, 'Laurel', 831),
(58, 'Bee Ridge', 832),
(58, 'Southgate', 833),
(58, 'Vamo', 834),
(58, 'Osprey', 835),
(58, 'Plantation', 836),
(58, 'Ridge Wood Heights', 837),
(58, 'The Meadows', 838),
(58, 'Desoto Lakes', 839),
(58, 'Warm Mineral Springs', 840),
(58, 'Nokomis', 841),
(58, 'Kensington Park', 842),
(58, 'Lake Sarasota', 843),
(58, 'Grove City', 844),
(58, 'Sarasota Springs', 845),
(58, 'Gulf Gate Estates', 846),
(58, 'South Venice', 847),
(58, 'Bayshore Gardens', 848),
(58, 'South Sarasota', 849),
(58, 'South Gate Ridge', 850),
(58, 'Sarasota', 851),
(58, 'Sarasota', 852),
(59, 'Altamonte Springs', 853),
(59, 'Winter Springs', 854),
(59, 'Casselberry', 855),
(59, 'Oviedo', 856),
(59, 'Sanford', 857),
(59, 'Longwood', 858),
(59, 'Lake Mary', 859),
(59, 'Oviedo', 860),
(59, 'Wekiwa Springs', 861),
(59, 'Apopka', 862),
(59, 'Forest City', 863),
(59, 'Goldenrod', 864),
(59, 'Alaqua', 865),
(59, 'Fern Park', 866),
(59, 'Geneva', 867),
(59, 'Chuluota', 868),
(58, 'North Port', 869),
(59, 'Heathrow', 870),
(59, 'Midway', 871),
(59, 'Winter Springs', 872),
(59, 'Sanford', 873),
(60, 'The Villages', 874),
(60, 'Center Hill', 875),
(60, 'Oxford', 876),
(60, 'Lake Panasoffkee', 877),
(60, 'Wildwood', 878),
(60, 'Coleman', 879),
(60, 'Bushnell', 880),
(60, 'Royal', 881),
(60, 'Webster', 882),
(60, 'Sumterville', 883),
(60, 'Adamsville', 884),
(60, 'Astatula', 885),
(60, 'Bay Lake', 886),
(60, 'Clermont', 887),
(60, 'Ferndale', 888),
(60, 'Fruitland Park', 889),
(60, 'Groveland', 890),
(60, 'Howey-in-the-Hills', 891),
(60, 'Lady Lake', 892),
(60, 'Leesburg', 893),
(60, 'Mascotte', 894),
(60, 'Minneola', 895),
(60, 'Montverde', 896),
(60, 'Mount Dora', 897),
(60, 'Paisley', 898),
(60, 'Tavares', 899),
(60, 'Rutland', 900),
(60, 'Umatilla', 901),
(60, 'Haines Creek', 902),
(60, 'Okahumpka', 903),
(60, 'Yalaha', 904),
(60, 'Grand Island', 905),
(60, 'Conant', 906),
(60, 'Lisbon', 907),
(60, 'Don Pedro', 908),
(60, 'Astor', 909),
(60, 'Pittman', 910),
(61, 'Buckville', 911),
(61, 'Live Oak', 912),
(61, 'McAlpin', 913),
(61, 'O\'Brien', 914),
(61, 'Suwannee', 915),
(61, 'Dowling Park', 916),
(61, 'Falmouth', 917),
(61, 'Day', 918),
(62, 'Steinhatchee', 919),
(62, 'Shady Grove', 920),
(62, 'Eridu', 921),
(62, 'Keaton Beach', 922),
(62, 'Salem', 923),
(62, 'Boyd', 924),
(62, 'Sirmans', 925),
(62, 'Bucell Junction', 926),
(62, 'Lake Bird', 927),
(62, 'Foley', 928),
(62, 'San Pedro', 929),
(62, 'Dekle Beach', 930),
(62, 'Econfina', 931),
(62, 'Rosehead', 932),
(62, 'Salem', 933),
(61, 'Wellborn', 934),
(62, 'Fenholloway', 935),
(62, 'Dekle Beach', 936),
(62, 'Buckeye', 937),
(61, 'Branford', 938),
(62, 'Graveyard Point', 939),
(61, 'Hatchbend', 940),
(62, 'Limestone', 941),
(62, 'Perry', 942),
(63, 'Raiford', 943),
(63, 'Lake Butler', 944),
(63, 'Worthington Springs', 945),
(64, 'Port Orange', 946),
(64, 'DeLand', 947),
(64, 'Daytona Beach', 948),
(64, 'Deltona', 949),
(64, 'Ormond Beach', 950),
(64, 'Edgewater', 951),
(64, 'Orange City', 952),
(64, 'DeBary', 953),
(64, 'Deltona', 954),
(64, 'Ponce Inlet', 955),
(64, 'New Smyrna Beach', 956),
(64, 'Ormond-by-the-Sea', 957),
(64, 'Lake Helen', 958),
(64, 'Ormond Beach', 959),
(64, 'DeBary', 960),
(64, 'Oak Hill', 961),
(64, 'Pierson', 962),
(64, 'DeLand', 963),
(64, 'Glencoe', 964),
(64, 'Seville', 965),
(64, 'Cassadaga', 966),
(64, 'Lake Kathryn', 967),
(64, 'De Leon Springs', 968),
(64, 'New Smyrna Beach', 969),
(64, 'Barberville', 970),
(64, 'Samsula-Spruce Creek', 971),
(64, 'West DeLand', 972),
(64, 'Daytona Beach Shores', 973),
(64, 'Wilbur-by-the-Sea', 974),
(64, 'Edgewater', 975),
(64, 'South Daytona', 976),
(64, 'Holly Hill', 977),
(64, 'Hillcrest', 978),
(64, 'Maytown', 979),
(64, 'Port Orange', 980),
(65, 'Sopchoppy', 981),
(65, 'Panacea', 982),
(65, 'Saint Marks', 983),
(65, 'Crawfordville', 984),
(65, 'Alligator Point', 985),
(65, 'Wakulla Beach', 986),
(65, 'Shell Point', 987),
(65, 'St. Marks', 988),
(66, 'DeFuniak Springs', 989),
(66, 'Freeport', 990),
(66, 'Miramar Beach', 991),
(66, 'Santa Rosa Beach', 992),
(66, 'Argyle', 993),
(66, 'Paxton', 994),
(66, 'Mossy Head', 995),
(66, 'Ponce de Leon', 996),
(66, 'Glendale', 997),
(66, 'Liberty', 998),
(66, 'Bonifay', 999),
(66, 'Ebro', 1000),
(66, 'Bruce', 1001),
(66, 'Florala', 1002),
(66, 'Darlington', 1003),
(66, 'Redbay', 1004),
(66, 'Walton Beaches', 1005),
(66, 'Vernon', 1006),
(67, 'Chipley', 1007),
(67, 'Vernon', 1008),
(67, 'Caryville', 1009),
(67, 'Ebro', 1010),
(67, 'Greenhead', 1011),
(67, 'Sunny Hills', 1012),
(67, 'Wausau', 1013),
(67, 'Vernon', 1014),
(67, 'Ebro', 1015);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `condados`
--

CREATE TABLE `condados` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
  `conexion` varchar(255) DEFAULT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `conexiones`
--

INSERT INTO `conexiones` (`conexion`, `id`) VALUES
('Estoy buscando compartir o adquirir conocimiento', 1),
('Quiero conectar con personas con intereses similares', 2),
('Estoy buscando socios o aliados o inversión', 3),
('Estoy buscando u ofreciendo trabajo', 4),
('Estoy buscando u ofreciendo oportunidades de negocios', 5),
('Estoy buscando una comunidad de la que formar parte', 7);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lenguajes`
--

CREATE TABLE `lenguajes` (
  `lenguaje` varchar(255) DEFAULT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `lenguajes`
--

INSERT INTO `lenguajes` (`lenguaje`, `id`) VALUES
('Chino (mandarín)', 1),
('Español', 2),
('Inglés', 3),
('Hindi', 4),
('Árabe', 5),
('Bengalí', 6),
('Portugués', 7),
('Ruso', 8),
('Japonés', 9),
('Panyabí', 10),
('Alemán', 11),
('Javanés', 12),
('Wu (shanghainés)', 13),
('Malayo', 14),
('Telugu', 15),
('Maratí', 16),
('Tamil', 17),
('Francés', 18),
('Turco', 19),
('Urdu', 20),
('Italiano', 21),
('Coreano', 22),
('Yue (cantonés)', 23),
('Tailandés', 24),
('Gujarati', 25),
('Persa', 26),
('Polaco', 27),
('Pashto', 28),
('Swahili', 29),
('Ucraniano', 30),
('Xiang (hunanés)', 31);

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
  `verificado` tinyint(1) DEFAULT '0',
  `condado` varchar(255) DEFAULT NULL,
  `ciudad` varchar(255) DEFAULT NULL,
  `genero` varchar(255) DEFAULT NULL,
  `telefono` varchar(255) DEFAULT NULL,
  `biografia` text,
  `avatar` varchar(255) DEFAULT NULL,
  `fotoPortada` varchar(255) DEFAULT NULL,
  `objetivo` text,
  `fechaIngreso` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios_conectados`
--

CREATE TABLE `usuarios_conectados` (
  `id` int(11) NOT NULL,
  `socket_id` varchar(255) NOT NULL,
  `usuario_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario_conexion`
--

CREATE TABLE `usuario_conexion` (
  `usuario_id` int(11) DEFAULT NULL,
  `conexion` varchar(255) DEFAULT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario_contacto`
--

CREATE TABLE `usuario_contacto` (
  `usuario_id` int(11) DEFAULT NULL,
  `contacto_id` int(11) DEFAULT NULL,
  `id` int(11) NOT NULL,
  `fijado` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario_conversaciones`
--

CREATE TABLE `usuario_conversaciones` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `usuario_id_1` int(11) DEFAULT NULL,
  `usuario_id_2` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario_experiencia`
--

CREATE TABLE `usuario_experiencia` (
  `usuario_id` int(11) DEFAULT NULL,
  `experiencia` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario_intereses`
--

CREATE TABLE `usuario_intereses` (
  `usuario_id` int(11) DEFAULT NULL,
  `interes` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario_lenguajes`
--

CREATE TABLE `usuario_lenguajes` (
  `usuario_id` int(11) DEFAULT NULL,
  `lenguaje` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
  `estado` enum('no_visto','visto') DEFAULT 'no_visto',
  `fecha_envio` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario_notificaciones`
--

CREATE TABLE `usuario_notificaciones` (
  `id` int(11) NOT NULL,
  `usuario_id` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `message` text,
  `data` text,
  `time` varchar(255) DEFAULT NULL,
  `estado` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `areas_experiencia`
--
ALTER TABLE `areas_experiencia`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `areas_intereses`
--
ALTER TABLE `areas_intereses`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `ciudades`
--
ALTER TABLE `ciudades`
  ADD PRIMARY KEY (`id`),
  ADD KEY `condado_id` (`condado_id`);

--
-- Indices de la tabla `condados`
--
ALTER TABLE `condados`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `conexiones`
--
ALTER TABLE `conexiones`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `lenguajes`
--
ALTER TABLE `lenguajes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuarios_conectados`
--
ALTER TABLE `usuarios_conectados`
  ADD PRIMARY KEY (`id`),
  ADD KEY `usuario_id` (`usuario_id`);

--
-- Indices de la tabla `usuario_conexion`
--
ALTER TABLE `usuario_conexion`
  ADD PRIMARY KEY (`id`),
  ADD KEY `usuario_id` (`usuario_id`);

--
-- Indices de la tabla `usuario_contacto`
--
ALTER TABLE `usuario_contacto`
  ADD PRIMARY KEY (`id`),
  ADD KEY `usuario_id` (`usuario_id`),
  ADD KEY `contacto_id` (`contacto_id`);

--
-- Indices de la tabla `usuario_conversaciones`
--
ALTER TABLE `usuario_conversaciones`
  ADD PRIMARY KEY (`id`),
  ADD KEY `usuario_id_1` (`usuario_id_1`),
  ADD KEY `usuario_id_2` (`usuario_id_2`);

--
-- Indices de la tabla `usuario_experiencia`
--
ALTER TABLE `usuario_experiencia`
  ADD KEY `usuario_id` (`usuario_id`);

--
-- Indices de la tabla `usuario_intereses`
--
ALTER TABLE `usuario_intereses`
  ADD KEY `usuario_id` (`usuario_id`);

--
-- Indices de la tabla `usuario_lenguajes`
--
ALTER TABLE `usuario_lenguajes`
  ADD KEY `usuario_id` (`usuario_id`);

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
-- AUTO_INCREMENT de la tabla `areas_experiencia`
--
ALTER TABLE `areas_experiencia`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=562;

--
-- AUTO_INCREMENT de la tabla `areas_intereses`
--
ALTER TABLE `areas_intereses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT de la tabla `ciudades`
--
ALTER TABLE `ciudades`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1016;

--
-- AUTO_INCREMENT de la tabla `condados`
--
ALTER TABLE `condados`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT de la tabla `conexiones`
--
ALTER TABLE `conexiones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `lenguajes`
--
ALTER TABLE `lenguajes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

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
-- AUTO_INCREMENT de la tabla `usuario_conexion`
--
ALTER TABLE `usuario_conexion`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `usuario_contacto`
--
ALTER TABLE `usuario_contacto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `usuario_conversaciones`
--
ALTER TABLE `usuario_conversaciones`
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
-- Filtros para la tabla `usuarios_conectados`
--
ALTER TABLE `usuarios_conectados`
  ADD CONSTRAINT `usuarios_conectados_ibfk_1` FOREIGN KEY (`usuario_id`) REFERENCES `usuario` (`id`);

--
-- Filtros para la tabla `usuario_conexion`
--
ALTER TABLE `usuario_conexion`
  ADD CONSTRAINT `usuario_conexion_ibfk_1` FOREIGN KEY (`usuario_id`) REFERENCES `usuario` (`id`);

--
-- Filtros para la tabla `usuario_contacto`
--
ALTER TABLE `usuario_contacto`
  ADD CONSTRAINT `usuario_contacto_ibfk_1` FOREIGN KEY (`usuario_id`) REFERENCES `usuario` (`id`),
  ADD CONSTRAINT `usuario_contacto_ibfk_2` FOREIGN KEY (`contacto_id`) REFERENCES `usuario` (`id`);

--
-- Filtros para la tabla `usuario_conversaciones`
--
ALTER TABLE `usuario_conversaciones`
  ADD CONSTRAINT `usuario_conversaciones_ibfk_1` FOREIGN KEY (`usuario_id_1`) REFERENCES `usuario` (`id`),
  ADD CONSTRAINT `usuario_conversaciones_ibfk_2` FOREIGN KEY (`usuario_id_2`) REFERENCES `usuario` (`id`);

--
-- Filtros para la tabla `usuario_experiencia`
--
ALTER TABLE `usuario_experiencia`
  ADD CONSTRAINT `usuario_experiencia_ibfk_1` FOREIGN KEY (`usuario_id`) REFERENCES `usuario` (`id`);

--
-- Filtros para la tabla `usuario_intereses`
--
ALTER TABLE `usuario_intereses`
  ADD CONSTRAINT `usuario_intereses_ibfk_1` FOREIGN KEY (`usuario_id`) REFERENCES `usuario` (`id`);

--
-- Filtros para la tabla `usuario_lenguajes`
--
ALTER TABLE `usuario_lenguajes`
  ADD CONSTRAINT `usuario_lenguajes_ibfk_1` FOREIGN KEY (`usuario_id`) REFERENCES `usuario` (`id`);

--
-- Filtros para la tabla `usuario_mensajes`
--
ALTER TABLE `usuario_mensajes`
  ADD CONSTRAINT `usuario_mensajes_ibfk_1` FOREIGN KEY (`conversacion_id`) REFERENCES `usuario_conversaciones` (`id`),
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
