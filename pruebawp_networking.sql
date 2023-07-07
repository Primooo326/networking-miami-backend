-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 06-07-2023 a las 09:53:02
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
-- Base de datos: `pruebawp_networking`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `areas_experiencia`
--

CREATE TABLE IF NOT EXISTS `areas_experiencia` (
  `titulo` varchar(255) DEFAULT NULL,
  `descripcion` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `areas_intereses`
--

CREATE TABLE IF NOT EXISTS `areas_intereses` (
  `interes` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ciudades`
--

CREATE TABLE IF NOT EXISTS `ciudades` (
  `condado_id` int(11) DEFAULT NULL,
  `ciudad` varchar(255) DEFAULT NULL,
  KEY `condado_id` (`condado_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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

CREATE TABLE IF NOT EXISTS `condados` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=68 DEFAULT CHARSET=utf8mb4;

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

CREATE TABLE IF NOT EXISTS `conexiones` (
  `conexion` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
-- Estructura de tabla para la tabla `contacto`
--

CREATE TABLE IF NOT EXISTS `contacto` (
  `usuario_id` int(11) DEFAULT NULL,
  `contacto_id` int(11) DEFAULT NULL,
  KEY `usuario_id` (`usuario_id`),
  KEY `contacto_id` (`contacto_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lenguajes`
--

CREATE TABLE IF NOT EXISTS `lenguajes` (
  `lenguaje` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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

CREATE TABLE IF NOT EXISTS `usuario` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `fechaIngreso` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=307 DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarioareaexperiencia`
--

CREATE TABLE IF NOT EXISTS `usuarioareaexperiencia` (
  `usuario_id` int(11) DEFAULT NULL,
  `experiencia` varchar(255) DEFAULT NULL,
  KEY `usuario_id` (`usuario_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuariolenguajes`
--

CREATE TABLE IF NOT EXISTS `usuariolenguajes` (
  `usuario_id` int(11) DEFAULT NULL,
  `lenguaje` varchar(255) DEFAULT NULL,
  KEY `usuario_id` (`usuario_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarionotificaciones`
--

CREATE TABLE IF NOT EXISTS `usuarionotificaciones` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `usuario_id` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `message` text,
  `data` text,
  `time` varchar(255) DEFAULT NULL,
  `estado` varchar(255) DEFAULT NULL,
  `type` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `usuario_id` (`usuario_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarioredessociales`
--

CREATE TABLE IF NOT EXISTS `usuarioredessociales` (
  `usuario_id` int(11) DEFAULT NULL,
  `red` varchar(255) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  KEY `usuario_id` (`usuario_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios_conectados`
--

CREATE TABLE IF NOT EXISTS `usuarios_conectados` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `socket_id` varchar(255) NOT NULL,
  `usuario_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `usuario_id` (`usuario_id`)
) ENGINE=InnoDB AUTO_INCREMENT=393 DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuariotemasinteres`
--

CREATE TABLE IF NOT EXISTS `usuariotemasinteres` (
  `usuario_id` int(11) DEFAULT NULL,
  `interes` varchar(255) DEFAULT NULL,
  KEY `usuario_id` (`usuario_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuariotipoconexion`
--

CREATE TABLE IF NOT EXISTS `usuariotipoconexion` (
  `usuario_id` int(11) DEFAULT NULL,
  `conexion` varchar(255) DEFAULT NULL,
  KEY `usuario_id` (`usuario_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario_solicitudes`
--

CREATE TABLE IF NOT EXISTS `usuario_solicitudes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `usuario_id` int(11) DEFAULT NULL,
  `contacto_id` int(11) DEFAULT NULL,
  `tipo` varchar(255) DEFAULT NULL,
  `estado` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `usuario_id` (`usuario_id`),
  KEY `contacto_id` (`contacto_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `ciudades`
--
ALTER TABLE `ciudades`
  ADD CONSTRAINT `ciudades_ibfk_1` FOREIGN KEY (`condado_id`) REFERENCES `condados` (`id`);

--
-- Filtros para la tabla `contacto`
--
ALTER TABLE `contacto`
  ADD CONSTRAINT `contacto_ibfk_1` FOREIGN KEY (`usuario_id`) REFERENCES `usuario` (`id`),
  ADD CONSTRAINT `contacto_ibfk_2` FOREIGN KEY (`contacto_id`) REFERENCES `usuario` (`id`);

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
-- Filtros para la tabla `usuarionotificaciones`
--
ALTER TABLE `usuarionotificaciones`
  ADD CONSTRAINT `usuarionotificaciones_ibfk_1` FOREIGN KEY (`usuario_id`) REFERENCES `usuario` (`id`);

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
-- Filtros para la tabla `usuario_solicitudes`
--
ALTER TABLE `usuario_solicitudes`
  ADD CONSTRAINT `usuario_solicitudes_ibfk_1` FOREIGN KEY (`usuario_id`) REFERENCES `usuario` (`id`),
  ADD CONSTRAINT `usuario_solicitudes_ibfk_2` FOREIGN KEY (`contacto_id`) REFERENCES `usuario` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
