-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 23-10-2015 a las 22:31:56
-- Versión del servidor: 5.5.44-0ubuntu0.14.04.1
-- Versión de PHP: 5.6.14-1+deb.sury.org~trusty+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `videoteca`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `GENEROS`
--

CREATE TABLE IF NOT EXISTS `GENEROS` (
  `id_genero` int(11) NOT NULL AUTO_INCREMENT,
  `genero` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id_genero`),
  KEY `genero` (`genero`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=22 ;

--
-- Volcado de datos para la tabla `GENEROS`
--

INSERT INTO `GENEROS` (`id_genero`, `genero`) VALUES
(1, 'Accion'),
(3, 'Animacion'),
(2, 'Aventura'),
(0, 'Belica'),
(4, 'Biografia'),
(10, 'Cine negro'),
(5, 'Comedia'),
(6, 'Crimen'),
(7, 'Documental'),
(8, 'Drama'),
(20, 'Fantasia'),
(21, 'Historica'),
(12, 'Horror'),
(14, 'Misterio'),
(13, 'Musical'),
(15, 'Romance'),
(16, 'Sci-Fi'),
(17, 'Thriller'),
(19, 'Western');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `PELICULAS`
--

CREATE TABLE IF NOT EXISTS `PELICULAS` (
  `id_pelicula` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(75) NOT NULL,
  `year` int(11) DEFAULT NULL,
  `duracion` int(11) DEFAULT NULL,
  `director` varchar(30) DEFAULT NULL,
  `id_genero` int(11) NOT NULL,
  PRIMARY KEY (`id_pelicula`),
  KEY `fk_generos` (`id_genero`),
  KEY `titulo` (`titulo`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=273 ;

--
-- Volcado de datos para la tabla `PELICULAS`
--

INSERT INTO `PELICULAS` (`id_pelicula`, `titulo`, `year`, `duracion`, `director`, `id_genero`) VALUES
(1, 'Como Dios', 2003, 101, 'Tom Shadyac', 5),
(2, 'Como perros y gatos', 2001, 87, 'Lawrence Guterman', 5),
(3, 'Critters', 1986, 82, 'Stephen Herek', 12),
(4, 'Daniel el travieso', 1993, 94, 'Nick Castle', 5),
(5, 'Daredevil', 2003, 103, 'Mark Steven Johnson', 1),
(6, 'Cuentos de Terramar', 2006, 115, 'Goro Miyazaki', 3),
(7, 'Desayuno con diamantes', 1961, 115, 'Blake Edwards', 5),
(8, 'Diamante de sangre', 2006, 143, 'Edward Zwick', 2),
(9, 'Dos pájaros a tiro', 1990, 110, 'John Badham', 1),
(10, 'DragonHeart', 1996, 103, 'Rob Cohen', 2),
(11, 'E.T. El extraterrestre', 1982, 115, 'Steven Spielberg', 16),
(12, 'El apartamento', 1960, 125, 'Billy Wilder', 5),
(13, 'El bueno, el feo y el malo', 1966, 182, 'Sergio Leone', 19),
(14, 'Braveheart', 1995, 177, 'Mel Gibson', 4),
(15, 'Cadena perpetua', 1994, 142, 'Frank Darabont', 8),
(16, 'Camino a la perdición', 2002, 117, 'Sam Mendes', 6),
(17, 'Cartas desde Iwo Jima', 2006, 141, 'Clint Eastwood', 0),
(18, 'Casablanca', 1942, 102, 'Michael Curtiz', 8),
(19, 'Casino', 1995, 178, 'Martin Scorsese', 6),
(20, 'Cisne negro', 2010, 108, 'Darren Aronofsky', 8),
(21, 'Cleopatra', 1963, 192, 'Joseph L. Mankiewicz, Rouben M', 4),
(22, 'Cocodrilo Dundee', 1986, 97, 'Peter Faiman', 2),
(23, 'Cocodrilo Dundee 2', 1988, 108, 'John Cornell', 2),
(24, '... Y si no, nos enfadamos', 1974, 101, 'Marcello Fondato', 5),
(25, 'Estoy con los hipopótamos', 1979, 108, 'Italo Zingarelli', 5),
(26, '300', 2006, 117, 'Zack Snyder', 1),
(27, '55 días en Pekín', 1963, 154, 'Nicholas Ray, Guy Green', 8),
(28, 'Ágora', 2009, 127, 'Alejandro Amenábar', 21),
(29, 'Aladdin', 1992, 90, 'Ron Clements, John Musker', 3),
(30, 'American gangster', 2007, 157, 'Ridley Scott', 6),
(31, 'Ana y el rey', 1999, 148, 'Andy Tennant', 8),
(32, 'Antz (Hormigaz)', 1998, 83, 'Eric Darnell, Tim Johnson', 3),
(33, 'Arma letal', 1987, 110, 'Richard Donner', 1),
(34, 'Arma letal 2', 1989, 114, 'Richard Donner', 1),
(35, 'Arma letal 3', 1992, 118, 'Richard Donner', 1),
(36, 'Arma letal 4', 1998, 127, 'Richard Donner', 1),
(37, 'Avatar', 2009, 162, 'James Cameron', 16),
(38, 'Bailando con lobos', 1990, 181, 'Kevin Costner', 19),
(39, 'Banderas de nuestros padres', 2006, 132, 'Clint Eastwood', 0),
(40, 'Batman begins', 2005, 140, 'Christopher Nolan', 1),
(41, 'Ben-Hur', 1959, 212, 'William Wyler', 21),
(42, 'Bichos', 1998, 95, 'John Lasseter, Andrew Stanton', 3),
(43, 'Big Fish', 2003, 125, 'Tim Burton', 8),
(44, 'Black Hawk derribado', 2001, 144, 'Ridley Scott', 0),
(45, 'Blade Runner', 1982, 117, 'Ridley Scott', 16),
(46, 'Matrix', 1999, 136, 'Andy Wachowski, Lana Wachowski', 16),
(47, 'Origen', 2010, 148, 'Christopher Nolan', 16),
(48, 'El caballero oscuro', 2008, 152, 'Christopher Nolan', 1),
(49, 'El caballero oscuro renace', 2012, 165, 'Christopher Nolan', 1),
(50, 'El castillo ambulante', 2004, 119, 'Hayao Miyazaki', 3),
(51, 'El castillo en el cielo', 1986, 124, 'Hayao Miyazaki', 3),
(52, 'El Cid', 1961, 182, 'Anthony Mann', 4),
(53, 'El color púrpura', 1985, 154, 'Steven Spielberg', 8),
(54, 'El día de mañana', 2004, 124, 'Roland Emmerich', 16),
(55, 'El día más largo', 1962, 178, 'Ken Annakin, Andrew Marton', 0),
(56, 'El guardaespaldas', 1992, 129, 'Mick Jackson', 8),
(57, 'El hobbit: Un viaje inesperado', 2012, 169, 'Peter Jackson', 20),
(58, 'El hombre de la máscara de hierro', 1998, 132, 'Randall Wallace', 2),
(59, 'El hombre sin sombra', 2000, 112, 'Paul Verhoeven', 12),
(60, 'El jorobado de Notre Dame', 1996, 91, 'Gary Trousdale, Kirk Wise', 3),
(61, 'El luchador', 2008, 109, 'Darren Aronofsky', 8),
(62, 'El niño con el pijama de rayas', 2008, 94, 'Mark Herman', 8),
(63, 'El orfanato', 2007, 105, 'J.A. Bayona', 17),
(64, 'El oso', 1988, 96, 'Jean-Jacques Annaud', 2),
(65, 'El pacto de los lobos', 2001, 142, 'Christophe Gans', 14),
(66, 'El padrino', 1972, 175, 'Francis Ford Coppola', 6),
(67, 'El padrino. Parte 2', 1974, 200, 'Francis Ford Coppola', 6),
(68, 'El padrino. Parte 3', 1990, 162, 'Francis Ford Coppola', 6),
(69, 'El patriota', 2000, 165, 'Roland Emmerich', 0),
(70, 'El pianista', 2002, 150, 'Roman Polanski', 4),
(71, 'El planeta de los simios', 2001, 119, 'Tim Burton', 16),
(72, 'El precio del poder', 1983, 170, 'Brian De Palma', 6),
(73, 'El quinto elemento', 1997, 126, 'Luc Besson', 16),
(74, 'El regreso de la momia', 2001, 130, 'Stephen Sommers', 2),
(75, 'El resplandor', 1980, 144, 'Stanley Kubrick', 12),
(76, 'El rey Arturo', 2004, 126, 'Antoine Fuqua', 1),
(77, 'El rey león', 1994, 89, 'Roger Allers, Rob Minkoff', 3),
(78, 'El señor de los anillos: La comunidad del anillo', 2001, 178, 'Peter Jackson', 20),
(79, 'El señor de los anillos: Las dos torres', 2002, 179, 'Peter Jackson', 20),
(80, 'El señor de los anillos: El retorno del rey', 2003, 201, 'Peter Jackson', 20),
(81, 'El silencio de los corderos', 1991, 118, 'Jonathan Demme', 17),
(82, 'El último mohicano', 1992, 112, 'Michael Mann', 2),
(83, 'El último samurái', 2003, 154, 'Edward Zwick', 1),
(84, 'En el valle de Elah', 2007, 121, 'Paul Haggis', 14),
(85, 'En tierra hostil', 2008, 131, 'Kathryn Bigelow', 0),
(86, 'Enemigo a las puertas', 2001, 131, 'Jean-Jacques Annaud', 0),
(87, 'Enemigo mío', 1985, 108, 'Wolfgang Petersen', 16),
(88, 'Érase una vez en América', 1984, 229, 'Sergio Leone', 6),
(89, 'Evasión o victoria', 1981, 116, 'John Huston', 1),
(90, 'Fargo', 1996, 98, 'Joel Coen, Ethan Coen', 17),
(91, 'Final Fantasy VII - Advent children', 2005, 101, 'Tetsuya Nomura, Takeshi Nozue', 3),
(92, 'Forrest Gump', 1994, 142, 'Robert Zemeckis', 15),
(93, 'Furia de titanes', 1981, 118, 'Desmond Davis', 2),
(94, 'Gangs of New Yorg', 2002, 167, 'Martin Scorsese', 6),
(95, 'Garfield', 2004, 80, 'Peter Hewitt', 5),
(96, 'George de la jungla', 1997, 92, 'Sam Weisman', 5),
(97, 'Ghost', 1990, 127, 'Jerry Zucker', 8),
(98, 'Gladiator', 2000, 155, 'Ridley Scott', 1),
(99, 'Gremlins', 1984, 106, 'Joe Dante', 5),
(100, 'Gremlins 2', 1990, 106, 'Joe Dante', 5),
(101, 'Hannibal', 2001, 131, 'Ridley Scott', 17),
(102, 'Harry Potter y la piedra filosofal', 2001, 152, 'Chris Columbus', 20),
(103, 'Harry Potter y la cámara secreta', 2002, 161, 'Chris Columbus', 20),
(104, 'Harry Potter y el prisionero de Azkaban', 2004, 142, 'Alfonso Cuarón', 20),
(105, 'Harry Potter y el cáliz de fuego', 2005, 157, 'Mike Newell', 20),
(106, 'Harry Potter y la orden del fénix', 2007, 138, 'David Yates', 20),
(107, 'Harry Potter y el misterio del príncipe', 2009, 153, 'David Yates', 20),
(108, 'Harry Potter y las reliquias de la muerte. I', 2010, 146, 'David Yates', 20),
(109, 'Harry Potter y las reliquias de la muerte. II', 2011, 130, 'David Yates', 20),
(110, 'Hasta que llegó su hora', 1968, 175, 'Sergio Leone', 19),
(111, 'Johnny Guitar', 1954, 110, 'Nicholas Ray', 19),
(112, 'Heat', 1995, 170, 'Michael Mann', 1),
(113, 'Hercules', 1997, 93, 'Ron Clements, John Musker', 3),
(114, 'Hook', 1991, 144, 'Steven Spielberg', 2),
(115, 'Hora punta', 1998, 98, 'Brett Ratner', 1),
(116, 'Hora punta 2', 2001, 86, 'Brett Ratner', 1),
(117, 'Hot shots!', 1991, 84, 'Jim Abrahams', 5),
(118, 'Ice Age', 2002, 81, 'Chris Wedge, Carlos Saldanha', 3),
(119, 'Ice Age 2', 2006, 91, 'Carlos Saldanha', 3),
(120, 'Indiana Jones y el templo maldito', 1984, 118, 'Steven Spielberg', 2),
(121, 'Indiana Jones en busca del arca perdida', 1981, 115, 'Steven Spielberg', 2),
(122, 'Indiana Jones y la última cruzada', 1989, 127, 'Steven Spielberg', 2),
(123, 'Invictus', 2009, 134, 'Clint Eastwood', 4),
(124, 'Sin perdón', 1992, 131, 'Clint Eastwood', 19),
(125, 'Million dollar baby', 2004, 132, 'Clint Eastwood', 8),
(126, 'John Rambo', 2008, 92, 'Sylvester Stallone', 0),
(127, 'Jurassic Park', 1993, 127, 'Steven Spielberg', 2),
(128, 'El mundo perdido', 1997, 129, 'Steven Spielberg', 2),
(129, 'Jurassic Park 3', 2001, 92, 'Joe Johnston', 2),
(130, 'Kill Bill vol. 1', 2003, 111, 'Quentin Tarantino', 1),
(131, 'Kill Bill vol. 2', 2004, 137, 'Quentin Tarantino', 1),
(132, 'King Kong', 2005, 187, 'Peter Jackson', 2),
(133, 'Kiss kiss, bang bang', 2005, 103, 'Shane Black', 1),
(134, 'La bella y la bestia', 1991, 84, 'Gary Trousdale, Kirk Wise', 3),
(135, 'La caza del Octubre Rojo', 1990, 134, 'John McTiernan', 17),
(136, 'La conspiración del pánico', 2008, 118, 'D.J. Caruso', 17),
(137, 'La isla', 2005, 136, 'Michael Bay', 16),
(138, 'La leyenda del pianista en el océano', 1998, 165, 'Giuseppe Tornatore', 13),
(139, 'La lista de Schindler', 1993, 195, 'Steven Spielberg', 4),
(140, 'La milla verde', 1999, 189, 'Frank Darabont', 8),
(141, 'La misión', 1986, 125, 'Roland Joffé', 21),
(142, 'La momia', 1999, 125, 'Stephen Sommers', 2),
(143, 'La momia. La tumba del emperador dragón', 2008, 112, 'Rob Cohen', 2),
(144, 'La muerte tenía un precio', 1965, 132, 'Sergio Leone', 19),
(145, 'La pasión de Cristo', 2004, 127, 'Mel Gibson', 8),
(146, 'La princesa Mononoke', 1997, 134, 'Hayao Miyazaki', 3),
(147, 'La vida es bella', 1997, 116, 'Roberto Benigni', 5),
(148, 'Lady Halcón', 1985, 121, 'Richard Donner', 2),
(149, 'Las crónicas de Narnia: El león, la bruja y el armario', 2005, 143, 'Andrew Adamson', 20),
(150, 'Las crónicas de Narnia: El príncipe Caspian', 2008, 150, 'Andrew Adamson', 20),
(151, 'Lo que la verdad esconde', 2000, 130, 'Robert Zemeckis', 12),
(152, 'Los chicos del coro', 2004, 97, 'Christophe Barratier', 13),
(153, 'Los mercenarios', 2010, 103, 'Sylvester Stallone', 1),
(154, 'Piratas del Caribe. La maldición de la Perla Negra', 2003, 143, 'Gore Verbinski', 2),
(155, 'Piratas del Caribe. El cofre del hombre muerto', 2006, 151, 'Gore Verbinski', 2),
(156, 'Piratas del Caribe. En el fin del mundo', 2007, 169, 'Gore Verbinski', 2),
(157, 'Los siete magníficos', 1960, 128, 'John Sturges', 19),
(158, 'Malditos bastardos', 2009, 153, 'Quentin Tarantino', 0),
(159, 'Master & commander: Al otro lado del mundo', 2003, 138, 'Peter Weir', 2),
(160, 'Matar a un ruiseñor', 1962, 129, 'Robert Mulligan', 8),
(161, 'Matrix reloaded', 2003, 138, 'Andy Wachowski, Lana Wachowski', 16),
(162, 'Mi colega Dunston', 1996, 88, 'Ken Kwapis', 5),
(163, 'Mi vecino Totoro', 1988, 86, 'Hayao Miyazaki', 3),
(164, 'Minority report', 2002, 145, 'Steven Spielberg', 16),
(165, 'Muerte entre las flores', 1990, 115, 'Joel Coen, Ethan Coen', 6),
(166, 'Munich', 2005, 164, 'Steven Spielberg', 21),
(167, 'Mulan', 1998, 88, 'Tony Bancroft, Barry Cook', 3),
(168, 'Mystic River', 2003, 138, 'Clint Eastwood', 6),
(169, 'Nausicaä del Valle del Viento', 1984, 117, 'Hayao Miyazaki', 3),
(170, 'Nicky, la aprendiz de bruja', 1989, 103, 'Hayao Miyazaki', 3),
(171, 'No es país para viejos', 2007, 122, 'Ethan Coen, Joel Coen', 17),
(172, 'Pearl Harbor', 2001, 183, 'Michael Bay', 8),
(173, 'Pesadilla antes de Navidad', 1993, 76, 'Henry Selick', 3),
(174, 'Platoon', 1986, 120, 'Oliver Stone', 0),
(175, 'Pocahontas', 1995, 81, 'Mike Gabriel, Eric Goldberg', 3),
(176, 'Ponyo en el acantilado', 2008, 101, 'Hayao Miyazaki', 3),
(177, 'Porco Rosso', 1992, 94, 'Hayao Miyazaki', 3),
(178, 'Promesas del este', 2007, 100, 'David Cronenberg', 6),
(179, 'Pulp Fiction', 1994, 154, 'Quentin Tarantino', 6),
(180, 'Reservoir Dogs', 1992, 99, 'Quentin Tarantino', 6),
(181, 'Rey de reyes', 1961, 168, 'Nicholas Ray', 4),
(182, 'Sabrina', 1954, 113, 'Billy Wilder', 5),
(183, 'Robin Hood', 2010, 140, 'Ridley Scott', 2),
(184, 'Robin Hood: Príncipe de los ladrones', 1993, 143, 'Kevin Reynolds', 2),
(185, 'Saw', 2004, 103, 'James Wan', 12),
(186, 'Saw 2', 2005, 93, 'Darren Lynn Bousman', 12),
(187, 'Saw 3', 2006, 108, 'Darren Lynn Bousman', 12),
(188, 'Saw 4', 2007, 93, 'Darren Lynn Bousman', 12),
(189, 'Saw 5', 2008, 92, 'David Hackl', 12),
(190, 'Sherlock Holmes', 2009, 128, 'Guy Ritchie', 2),
(191, 'Sherlock Holmes: Juego de sombras', 2011, 129, 'Guy Ritchie', 2),
(192, 'Shutter Island', 2010, 138, 'Martin Scorsese', 17),
(193, 'Silent Hill', 2006, 125, 'Christophe Gans', 12),
(194, 'Sleepy Hollow', 1999, 105, 'Tim Burton', 14),
(195, 'Slumdog millionaire', 2008, 120, 'Danny Boyle, Loveleen Tandan', 15),
(196, 'Snatch: cerdos y diamantes', 2000, 104, 'Guy Ritche', 5),
(197, 'Solo en casa', 1990, 103, 'Chris Columbus', 5),
(198, 'Spider-Man', 2002, 121, 'Sam Raimi', 2),
(199, 'Spider-Man 2', 2004, 127, 'Sam Raimi', 2),
(200, 'Stalingrado', 1993, 134, 'Joseph Vilsmaier', 0),
(201, 'Star Trek', 2009, 127, 'J.J. Abrams', 16),
(202, 'Star Wars: Episodio I - La amenaza fantasma', 1999, 136, 'George Lucas', 16),
(203, 'Star Wars: Episodio II - El ataque de los clones', 2002, 142, 'George Lucas', 16),
(204, 'Star Wars: Episodio III - La venganza de los sith', 2005, 140, 'George Lucas', 16),
(205, 'Star Wars: Episodio IV - Una nueva esperanza', 1977, 121, 'George Lucas', 16),
(206, 'Star Wars: Episodio V - El imperio contraataca', 1980, 124, 'George Lucas', 16),
(207, 'Star Wars: Episodio VI - El retorno del jedi', 1983, 134, 'George Lucas', 16),
(208, 'Stuart Little', 1999, 84, 'Rob Minkoff', 3),
(209, 'Stuart Little 2', 2002, 84, 'Rob Minkoff', 3),
(210, 'Sweeny Todd, el barbero diabólico de la calle Fleet', 2007, 116, 'Tim Burton', 13),
(211, 'Le seguían llamando Trinidad', 1971, 117, 'Enzo Barboni', 19),
(212, 'Cortocircuito', 1980, 98, 'John Badham', 5),
(213, 'Drácula de Bram Stoker', 1992, 128, 'Francis Ford Coppola', 12),
(214, 'Sheena, reina de la selva', 1984, 117, 'John Guillermin', 2),
(215, 'Alguien voló sobre el nido del cuco', 1975, 133, 'Milos Forman', 8),
(216, 'Titanic', 1997, 194, 'James Cameron', 8),
(217, 'Top Secret', 1984, 90, 'Jim Abrahams, David Zucker', 5),
(218, 'Troya', 2004, 163, 'Wolfgang Petersen', 2),
(219, 'Un papá genial', 1999, 93, 'Dennis Dugan', 5),
(220, 'Una mente maravillosa', 2001, 135, 'Ron Howard', 4),
(221, 'Uno de los nuestros', 1996, 146, 'Martin Scorsese', 6),
(222, 'Van Helsing', 2004, 131, 'Stephen Sommers', 2),
(223, 'Van Wilder: animal party', 2002, 92, 'Walt Becker', 5),
(224, 'Wild Wild West', 1999, 106, 'Barry Sonnenfeld', 1),
(225, 'Willow', 1988, 126, 'Ron Howard', 2),
(226, 'Yo, robot', 2004, 115, 'Alex Proyas', 16),
(227, '¡Viven!', 1993, 120, 'Frank Marshall', 4),
(228, 'El sueño de mi vida', 2004, 98, 'Gary Winick', 5),
(229, 'Big', 1988, 104, 'Penny Marshall', 5),
(230, 'Le llamaban Trinidad', 1970, 113, 'Enzo Barboni', 5),
(231, 'Iron Man', 2008, 126, 'Jon Favreau', 1),
(232, 'Alejandro Magno', 2004, 175, 'Oliver Stone', 4),
(233, 'Pinocho', 1940, 88, 'Norman Ferguson, T. Hee', 3),
(234, 'Bambi', 1942, 70, 'James Algar, Samuel Armstrong', 3),
(235, 'La cenicienta', 1950, 74, 'Clyde Geronimi, Wilfred Jackso', 3),
(236, 'Cómo entrenar a tu dragón', 2010, 98, 'Dean DeBlois, Chris Sanders', 3),
(237, 'La guerra de los mundos', 2005, 116, 'Steven Spielberg', 16),
(238, 'El club de la lucha', 1999, 139, 'David Fincher', 8),
(239, 'Apocalypto', 2006, 139, 'Mel Gibson', 2),
(240, 'El imperio del sol', 1987, 153, 'Steven Spielberg', 8),
(241, 'Los mundos de Coraline', 2009, 100, 'Henry Selick', 3),
(242, 'Seven', 1995, 127, 'David Fincher', 17),
(243, 'Balto', 1995, 78, 'Simon Wells', 3),
(244, 'El viento se levanta', 2013, 126, 'Hayao Miyazaki', 3),
(245, 'El Hobbit: La desolación de Smaug (ext.)', 2013, 186, 'Peter Jackson', 20),
(246, 'Conan, el bárbaro', 1982, 129, 'John Milius', 20),
(247, 'Amadeus', 1984, 160, 'Milos Forman', 4),
(248, 'El show de Truman', 1998, 103, 'Peter Weir', 8),
(249, 'Shangai Kid', 2000, 110, 'Tom Dey', 5),
(250, 'Los rebeldes de Shangai', 2003, 114, 'David Dobkin', 5),
(251, 'Up', 2009, 96, 'Pete Docter, Bob Peterson', 3),
(252, 'Wall-E', 2008, 98, 'Andrew Stanton', 3),
(253, 'Eduardo Manostijeras', 1990, 105, 'Tim Burton', 20),
(255, 'Cómo entrenar a tu dragón 2', 2014, 102, 'Dean DeBlois', 3),
(256, '1408', 2007, 104, 'Mikael Håfström', 12),
(257, 'Stargate', 1994, 121, 'Roland Emmerich', 16),
(258, 'Super 8', 2011, 112, 'J.J. Abrams', 16),
(259, 'Tarzán', 1999, 88, 'Chris Buck, Kevin Lima', 3),
(260, 'Ted y Toby', 1981, 83, 'Ted Berman, Richard Rich', 3),
(261, 'La bella durmiente', 1959, 75, 'Clyde Geronimi', 3),
(262, 'Blancanieves y los siete enanitos', 1937, 83, 'William Cottrell, David Hand', 3),
(263, 'El libro de la selva', 1967, 78, 'Wolfgang Reitherman', 3),
(264, 'La sirenita', 1989, 83, 'Ron Clements, John Musker', 3),
(265, 'Regreso al futuro', 1985, 116, 'Robert Zemeckis', 16),
(266, 'Regreso al futuro II', 1989, 108, 'Robert Zemeckis', 16),
(267, 'Regreso al futuro III', 1990, 118, 'Robert Zemeckis', 16),
(268, 'Millenium 1: Los hombres que no amaban a las mujeres', 2009, 152, 'Niels Arden Oplev', 6),
(269, 'Millenium 2: La chica que soñaba con una cerilla y un bidón de gasolina', 2009, 129, 'Daniel Alfredson', 6),
(270, 'Millenium 3: La reina en el palacio de las corrientes de aires', 2009, 147, 'Daniel Alfredson', 6),
(271, 'Amor a quemarropa', 1993, 120, 'Tony Scott', 6),
(272, 'El tren de las 3:10', 2007, 122, 'James Mangold', 19);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `USUARIOS`
--

CREATE TABLE IF NOT EXISTS `USUARIOS` (
  `usuario` varchar(50) NOT NULL,
  `password` varchar(24) NOT NULL,
  PRIMARY KEY (`usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `USUARIOS`
--

INSERT INTO `USUARIOS` (`usuario`, `password`) VALUES
('chiwy', 'chiwy');

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `PELICULAS`
--
ALTER TABLE `PELICULAS`
  ADD CONSTRAINT `PELICULAS_ibfk_1` FOREIGN KEY (`id_genero`) REFERENCES `GENEROS` (`id_genero`) ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
