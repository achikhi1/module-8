-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Gegenereerd op: 18 apr 2023 om 17:03
-- Serverversie: 5.7.39
-- PHP-versie: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `webshopdb`
--

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `pokemon`
--

CREATE TABLE `pokemon` (
  `number` int(11) NOT NULL,
  `name` varchar(60) NOT NULL,
  `type1` varchar(30) NOT NULL,
  `type2` varchar(30) DEFAULT NULL,
  `ability` varchar(40) NOT NULL,
  `species` varchar(50) NOT NULL,
  `picture` varchar(256) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Gegevens worden geëxporteerd voor tabel `pokemon`
--

INSERT INTO `pokemon` (`number`, `name`, `type1`, `type2`, `ability`, `species`, `picture`) VALUES
(1, 'Bulbasaur', 'Grass', 'Poison', 'Overgrow', 'Seed Pokemon', '[http://img.pokemondb.net/artwork/bulbasaur.jpg](http://img.pokemondb.net/artwork/bulbasaur.jpg)'),
(2, 'Ivysaur', 'Grass', 'Poison', 'Overgrow', 'Seed Pokemon', '[http://img.pokemondb.net/artwork/ivysaur.jpg](http://img.pokemondb.net/artwork/ivysaur.jpg)'),
(3, 'Venusaur', 'Grass', 'Poison', 'Overgrow', 'Seed Pokemon', '[http://img.pokemondb.net/artwork/venusaur.jpg](http://img.pokemondb.net/artwork/venusaur.jpg)'),
(4, 'Charmander', 'Fire', NULL, 'Blaze', 'Lizard Pokemon', '[http://img.pokemondb.net/artwork/charmander.jpg](http://img.pokemondb.net/artwork/charmander.jpg)'),
(5, 'Charmeleon', 'Fire', NULL, 'Blaze', 'Flame Pokemon', '[http://img.pokemondb.net/artwork/charmeleon.jpg](http://img.pokemondb.net/artwork/charmeleon.jpg)'),
(6, 'Charizard', 'Fire', 'Flying', 'Blaze', 'Flame Pokemon', '[http://img.pokemondb.net/artwork/charizard.jpg](http://img.pokemondb.net/artwork/charizard.jpg)'),
(7, 'Squirtle', 'Water', NULL, 'Torrent', 'Tiny Turtle Pokemon', '[http://img.pokemondb.net/artwork/squirtle.jpg](http://img.pokemondb.net/artwork/squirtle.jpg)'),
(8, 'Wartortle', 'Water', NULL, 'Torrent', 'Turtle Pokemon', '[http://img.pokemondb.net/artwork/wartortle.jpg](http://img.pokemondb.net/artwork/wartortle.jpg)'),
(9, 'Blastoise', 'Water', NULL, 'Torrent', 'Shellfish Pokemon', '[http://img.pokemondb.net/artwork/blastoise.jpg](http://img.pokemondb.net/artwork/blastoise.jpg)'),
(10, 'Caterpie', 'Bug', NULL, 'Shield Dust', 'Worm Pokemon', '[http://img.pokemondb.net/artwork/caterpie.jpg](http://img.pokemondb.net/artwork/caterpie.jpg)'),
(11, 'Metapod', 'Bug', NULL, 'Shed Skin', 'Cocoon Pokemon', '[http://img.pokemondb.net/artwork/metapod.jpg](http://img.pokemondb.net/artwork/metapod.jpg)'),
(12, 'Butterfree', 'Bug', 'Flying', 'Compoundeyes', 'Butterfly Pokemon', '[http://img.pokemondb.net/artwork/butterfree.jpg](http://img.pokemondb.net/artwork/butterfree.jpg)'),
(13, 'Weedle', 'Bug', 'Poison', 'Shield Dust', 'Hairy Bug Pokemon', '[http://img.pokemondb.net/artwork/weedle.jpg](http://img.pokemondb.net/artwork/weedle.jpg)'),
(14, 'Kakuna', 'Bug', 'Poison', 'Shed Skin', 'Cocoon Pokemon', '[http://img.pokemondb.net/artwork/kakuna.jpg](http://img.pokemondb.net/artwork/kakuna.jpg)'),
(15, 'Beedrill', 'Bug', 'Poison', 'Swarm', 'Poison Bee Pokemon', '[http://img.pokemondb.net/artwork/beedrill.jpg](http://img.pokemondb.net/artwork/beedrill.jpg)'),
(16, 'Pidgey', 'Normal', 'Flying', 'Keen Eye', 'Tiny Bird Pokemon', '[http://img.pokemondb.net/artwork/pidgey.jpg](http://img.pokemondb.net/artwork/pidgey.jpg)'),
(17, 'Pidgeotto', 'Normal', 'Flying', 'Keen Eye', 'Bird Pokemon', '[http://img.pokemondb.net/artwork/pidgeotto.jpg](http://img.pokemondb.net/artwork/pidgeotto.jpg)'),
(18, 'Pidgeot', 'Normal', 'Flying', 'Keen Eye', 'Bird Pokemon', '[http://img.pokemondb.net/artwork/pidgeot.jpg](http://img.pokemondb.net/artwork/pidgeot.jpg)'),
(19, 'Rattata', 'Normal', NULL, 'Guts', 'Mouse Pokemon', '[http://img.pokemondb.net/artwork/rattata.jpg](http://img.pokemondb.net/artwork/rattata.jpg)'),
(20, 'Raticate', 'Normal', NULL, 'Guts', 'Mouse Pokemon', '[http://img.pokemondb.net/artwork/raticate.jpg](http://img.pokemondb.net/artwork/raticate.jpg)'),
(21, 'Spearow', 'Normal', 'Flying', 'Keen Eye', 'Tiny Bird Pokemon', '[http://img.pokemondb.net/artwork/spearow.jpg](http://img.pokemondb.net/artwork/spearow.jpg)'),
(22, 'Fearow', 'Normal', 'Flying', 'Keen Eye', 'Beak Pokemon', '[http://img.pokemondb.net/artwork/fearow.jpg](http://img.pokemondb.net/artwork/fearow.jpg)'),
(23, 'Ekans', 'Poison', NULL, 'Intimidate', 'Snake Pokemon', '[http://img.pokemondb.net/artwork/ekans.jpg](http://img.pokemondb.net/artwork/ekans.jpg)'),
(24, 'Arbok', 'Poison', NULL, 'Intimidate', 'Cobra Pokemon', '[http://img.pokemondb.net/artwork/arbok.jpg](http://img.pokemondb.net/artwork/arbok.jpg)'),
(25, 'Pikachu', 'Electric', NULL, 'Static', 'Mouse Pokemon', '[http://img.pokemondb.net/artwork/pikachu.jpg](http://img.pokemondb.net/artwork/pikachu.jpg)'),
(26, 'Raichu', 'Electric', NULL, 'Static', 'Mouse Pokemon', '[http://img.pokemondb.net/artwork/raichu.jpg](http://img.pokemondb.net/artwork/raichu.jpg)'),
(27, 'Sandshrew', 'Ground', NULL, 'Sand Veil', 'Mouse Pokemon', '[http://img.pokemondb.net/artwork/sandshrew.jpg](http://img.pokemondb.net/artwork/sandshrew.jpg)'),
(28, 'Sandslash', 'Ground', NULL, 'Sand Veil', 'Mouse Pokemon', '[http://img.pokemondb.net/artwork/sandslash.jpg](http://img.pokemondb.net/artwork/sandslash.jpg)'),
(29, 'Nidoran (Female)', 'Poison', NULL, 'Poison Point', 'Poison Pin Pokemon', '[http://img.pokemondb.net/artwork/nidoran-f.jpg](http://img.pokemondb.net/artwork/nidoran-f.jpg)'),
(30, 'Nidorina', 'Poison', NULL, 'Poison Point', 'Poison Pin Pokemon', '[http://img.pokemondb.net/artwork/nidorina.jpg](http://img.pokemondb.net/artwork/nidorina.jpg)'),
(31, 'Nidoqueen', 'Poison', 'Ground', 'Poison Point', 'Drill Pokemon', '[http://img.pokemondb.net/artwork/nidoqueen.jpg](http://img.pokemondb.net/artwork/nidoqueen.jpg)'),
(32, 'Nidoran (Male)', 'Poison', NULL, 'Poison Point', 'Poison Pin Pokemon', '[http://img.pokemondb.net/artwork/nidoran-m.jpg](http://img.pokemondb.net/artwork/nidoran-m.jpg)'),
(33, 'Nidorino', 'Poison', NULL, 'Poison Point', 'Poison Pin Pokemon', '[http://img.pokemondb.net/artwork/nidorino.jpg](http://img.pokemondb.net/artwork/nidorino.jpg)'),
(34, 'Nidoking', 'Poison', 'Ground', 'Poison Point', 'Drill Pokemon', '[http://img.pokemondb.net/artwork/nidoking.jpg](http://img.pokemondb.net/artwork/nidoking.jpg)'),
(35, 'Clefairy', 'Normal', NULL, 'Cute Charm', 'Fairy Pokemon', '[http://img.pokemondb.net/artwork/clefairy.jpg](http://img.pokemondb.net/artwork/clefairy.jpg)'),
(36, 'Clefable', 'Normal', NULL, 'Cute Charm', 'Fairy Pokemon', '[http://img.pokemondb.net/artwork/clefable.jpg](http://img.pokemondb.net/artwork/clefable.jpg)'),
(37, 'Vulpix', 'Fire', NULL, 'Flash Fire', 'Fox Pokemon', '[http://img.pokemondb.net/artwork/vulpix.jpg](http://img.pokemondb.net/artwork/vulpix.jpg)'),
(38, 'Ninetales', 'Fire', NULL, 'Flash Fire', 'Fox Pokemon', '[http://img.pokemondb.net/artwork/ninetales.jpg](http://img.pokemondb.net/artwork/ninetales.jpg)'),
(39, 'Jigglypuff', 'Normal', NULL, 'Cute Charm', 'Balloon Pokemon', '[http://img.pokemondb.net/artwork/jigglypuff.jpg](http://img.pokemondb.net/artwork/jigglypuff.jpg)'),
(40, 'Wigglytuff', 'Normal', NULL, 'Cute Charm', 'Balloon Pokemon', '[http://img.pokemondb.net/artwork/wigglytuff.jpg](http://img.pokemondb.net/artwork/wigglytuff.jpg)'),
(41, 'Zubat', 'Poison', 'Flying', 'Inner Focus', 'Bat Pokemon', '[http://img.pokemondb.net/artwork/zubat.jpg](http://img.pokemondb.net/artwork/zubat.jpg)'),
(42, 'Golbat', 'Poison', 'Flying', 'Inner Focus', 'Bat Pokemon', '[http://img.pokemondb.net/artwork/golbat.jpg](http://img.pokemondb.net/artwork/golbat.jpg)'),
(43, 'Oddish', 'Grass', 'Poison', 'Chlorophyll', 'Weed Pokemon', '[http://img.pokemondb.net/artwork/oddish.jpg](http://img.pokemondb.net/artwork/oddish.jpg)'),
(44, 'Gloom', 'Grass', 'Poison', 'Chlorophyll', 'Weed Pokemon', '[http://img.pokemondb.net/artwork/gloom.jpg](http://img.pokemondb.net/artwork/gloom.jpg)'),
(45, 'Vileplume', 'Grass', 'Poison', 'Chlorophyll', 'Flower Pokemon', '[http://img.pokemondb.net/artwork/vileplume.jpg](http://img.pokemondb.net/artwork/vileplume.jpg)'),
(46, 'Paras', 'Bug', 'Grass', 'Dry Skin', 'Mushroom Pokemon', '[http://img.pokemondb.net/artwork/paras.jpg](http://img.pokemondb.net/artwork/paras.jpg)'),
(47, 'Parasect', 'Bug', 'Grass', 'Dry Skin', 'Mushroom Pokemon', '[http://img.pokemondb.net/artwork/parasect.jpg](http://img.pokemondb.net/artwork/parasect.jpg)'),
(48, 'Venonat', 'Bug', 'Poison', 'Compoundeyes', 'Insect Pokemon', '[http://img.pokemondb.net/artwork/venonat.jpg](http://img.pokemondb.net/artwork/venonat.jpg)'),
(49, 'Venomoth', 'Bug', 'Poison', 'Shield Dust', 'Poison Moth Pokemon', '[http://img.pokemondb.net/artwork/venomoth.jpg](http://img.pokemondb.net/artwork/venomoth.jpg)'),
(50, 'Diglett', 'Ground', NULL, 'Arena Trap', 'Mole Pokemon', '[http://img.pokemondb.net/artwork/diglett.jpg](http://img.pokemondb.net/artwork/diglett.jpg)'),
(51, 'Dugtrio', 'Ground', NULL, 'Arena Trap', 'Mole Pokemon', '[http://img.pokemondb.net/artwork/dugtrio.jpg](http://img.pokemondb.net/artwork/dugtrio.jpg)'),
(52, 'Meowth', 'Normal', NULL, 'Pickup', 'Scratch Cat Pokemon', '[http://img.pokemondb.net/artwork/meowth.jpg](http://img.pokemondb.net/artwork/meowth.jpg)'),
(53, 'Persian', 'Normal', NULL, 'Limber', 'Classy Cat Pokemon', '[http://img.pokemondb.net/artwork/persian.jpg](http://img.pokemondb.net/artwork/persian.jpg)'),
(54, 'Psyduck', 'Water', NULL, 'Cloud Nine', 'Duck Pokemon', '[http://img.pokemondb.net/artwork/psyduck.jpg](http://img.pokemondb.net/artwork/psyduck.jpg)'),
(55, 'Golduck', 'Water', NULL, 'Cloud Nine', 'Duck Pokemon', '[http://img.pokemondb.net/artwork/golduck.jpg](http://img.pokemondb.net/artwork/golduck.jpg)'),
(56, 'Mankey', 'Fighting', NULL, 'Anger Point', 'Pig Monkey Pokemon', '[http://img.pokemondb.net/artwork/mankey.jpg](http://img.pokemondb.net/artwork/mankey.jpg)'),
(57, 'Primeape', 'Fighting', NULL, 'Anger Point', 'Pig Monkey Pokemon', '[http://img.pokemondb.net/artwork/primeape.jpg](http://img.pokemondb.net/artwork/primeape.jpg)'),
(58, 'Growlithe', 'Fire', NULL, 'Flash Fire', 'Puppy Pokemon', '[http://img.pokemondb.net/artwork/growlithe.jpg](http://img.pokemondb.net/artwork/growlithe.jpg)'),
(59, 'Arcanine', 'Fire', NULL, 'Flash Fire', 'Legendary Pokemon', '[http://img.pokemondb.net/artwork/arcanine.jpg](http://img.pokemondb.net/artwork/arcanine.jpg)'),
(60, 'Poliwag', 'Water', NULL, 'Damp', 'Tadpole Pokemon', '[http://img.pokemondb.net/artwork/poliwag.jpg](http://img.pokemondb.net/artwork/poliwag.jpg)'),
(61, 'Poliwhirl', 'Water', NULL, 'Damp', 'Tadpole Pokemon', '[http://img.pokemondb.net/artwork/poliwhirl.jpg](http://img.pokemondb.net/artwork/poliwhirl.jpg)'),
(62, 'Poliwrath', 'Water', 'Fighting', 'Damp', 'Tadpole Pokemon', '[http://img.pokemondb.net/artwork/poliwrath.jpg](http://img.pokemondb.net/artwork/poliwrath.jpg)'),
(63, 'Abra', 'Psychic', NULL, 'Inner Focus', 'Psi Pokemon', '[http://img.pokemondb.net/artwork/abra.jpg](http://img.pokemondb.net/artwork/abra.jpg)'),
(64, 'Kadabra', 'Psychic', NULL, 'Inner Focus', 'Psi Pokemon', '[http://img.pokemondb.net/artwork/kadabra.jpg](http://img.pokemondb.net/artwork/kadabra.jpg)'),
(65, 'Alakazam', 'Psychic', NULL, 'Inner Focus', 'Psi Pokemon', '[http://img.pokemondb.net/artwork/alakazam.jpg](http://img.pokemondb.net/artwork/alakazam.jpg)'),
(72, 'Tentacool', 'Water', 'Poison', 'Clear Body', 'Jellyfish Pokemon', '[http://img.pokemondb.net/artwork/tentacool.jpg](http://img.pokemondb.net/artwork/tentacool.jpg)'),
(74, 'Geodude', 'Rock', 'Ground', 'Rock Head', 'Rock Pokemon', '[http://img.pokemondb.net/artwork/geodude.jpg](http://img.pokemondb.net/artwork/geodude.jpg)'),
(118, 'Goldeen', 'Water', NULL, 'Swift Swim', 'Goldfish Pokemon', '[http://img.pokemondb.net/artwork/goldeen.jpg](http://img.pokemondb.net/artwork/goldeen.jpg)'),
(119, 'Seaking', 'Water', NULL, 'Swift Swim', 'Goldfish Pokemon', '[http://img.pokemondb.net/artwork/seaking.jpg](http://img.pokemondb.net/artwork/seaking.jpg)'),
(120, 'Staryu', 'Water', NULL, 'Illuminate', 'Star Shape Pokemon', '[http://img.pokemondb.net/artwork/staryu.jpg](http://img.pokemondb.net/artwork/staryu.jpg)'),
(129, 'Magikarp', 'Water', NULL, 'Swift Swim', 'Fish Pokemon', '[http://img.pokemondb.net/artwork/magikarp.jpg](http://img.pokemondb.net/artwork/magikarp.jpg)'),
(140, 'Kabuto', 'Rock', 'Water', 'Battle Armor', 'Shellfish Pokemon', '[http://img.pokemondb.net/artwork/kabuto.jpg](http://img.pokemondb.net/artwork/kabuto.jpg)');

--
-- Indexen voor geëxporteerde tabellen
--

--
-- Indexen voor tabel `pokemon`
--
ALTER TABLE `pokemon`
  ADD PRIMARY KEY (`number`);

--
-- AUTO_INCREMENT voor geëxporteerde tabellen
--

--
-- AUTO_INCREMENT voor een tabel `pokemon`
--
ALTER TABLE `pokemon`
  MODIFY `number` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=141;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;