-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Creato il: Mag 08, 2017 alle 11:46
-- Versione del server: 10.1.21-MariaDB
-- Versione PHP: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `questionario`
--

-- --------------------------------------------------------

--
-- Struttura della tabella `corso`
--

CREATE TABLE `corso` (
  `id` int(254) NOT NULL,
  `codicecorso` varchar(254) NOT NULL,
  `titolocorso` varchar(254) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `corso`
--

INSERT INTO `corso` (`id`, `codicecorso`, `titolocorso`) VALUES
(1, 'b1', 'programmatore'),
(2, 'b3', 'caddista'),
(5, 'b2', 'meccanico');

-- --------------------------------------------------------

--
-- Struttura della tabella `domanda`
--

CREATE TABLE `domanda` (
  `id_domanda` int(254) NOT NULL,
  `testo` varchar(254) NOT NULL,
  `id_risposta` int(254) NOT NULL,
  `id_tipo` int(254) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struttura della tabella `quesito`
--

CREATE TABLE `quesito` (
  `id_quesito` int(254) NOT NULL,
  `titolo` varchar(254) NOT NULL,
  `descrizione` varchar(254) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struttura della tabella `risposta`
--

CREATE TABLE `risposta` (
  `id_risposta` int(254) NOT NULL,
  `id_domada` int(254) NOT NULL,
  `valore` int(254) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struttura della tabella `tiporisposta`
--

CREATE TABLE `tiporisposta` (
  `id_risposta` int(254) NOT NULL,
  `tipo` int(254) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struttura della tabella `utente`
--

CREATE TABLE `utente` (
  `id` int(254) NOT NULL,
  `datacompilazione` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `nome` varchar(254) NOT NULL,
  `cognome` varchar(254) NOT NULL,
  `statooccupazione` tinyint(1) NOT NULL,
  `user` varchar(254) NOT NULL,
  `pass` varchar(254) NOT NULL,
  `codicecorso` varchar(254) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `utente`
--

INSERT INTO `utente` (`id`, `datacompilazione`, `nome`, `cognome`, `statooccupazione`, `user`, `pass`, `codicecorso`) VALUES
(1, '2017-05-02 22:00:00', 'martina', 'coronato', 0, 'dd', 'hh', 'b1'),
(2, '2017-05-03 14:35:55', 'paola', 'decarlo', 1, 'msm', 'hhh', 'b2'),
(3, '2017-05-05 09:10:46', 'marta', 'rossi', 0, 'aa1', 'bb1', 'b3'),
(4, '2017-05-05 12:47:07', 'Valeria', 'bianchi', 1, 'kj', 'kl', 'b3'),
(5, '2017-05-05 14:16:04', 'lisa', 'bianchi', 0, 'dd1', 'ff2', 'b2'),
(6, '2017-05-05 14:22:53', 'milena', 'rossi', 0, 'rr', 'rr', 'b2');

-- --------------------------------------------------------

--
-- Struttura della tabella `utentequiz`
--

CREATE TABLE `utentequiz` (
  `id` int(254) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struttura della tabella `utenterisposte`
--

CREATE TABLE `utenterisposte` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indici per le tabelle scaricate
--

--
-- Indici per le tabelle `corso`
--
ALTER TABLE `corso`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `index_codicecorso` (`codicecorso`);

--
-- Indici per le tabelle `domanda`
--
ALTER TABLE `domanda`
  ADD PRIMARY KEY (`id_domanda`);

--
-- Indici per le tabelle `quesito`
--
ALTER TABLE `quesito`
  ADD PRIMARY KEY (`id_quesito`);

--
-- Indici per le tabelle `risposta`
--
ALTER TABLE `risposta`
  ADD PRIMARY KEY (`id_risposta`);

--
-- Indici per le tabelle `tiporisposta`
--
ALTER TABLE `tiporisposta`
  ADD PRIMARY KEY (`id_risposta`);

--
-- Indici per le tabelle `utente`
--
ALTER TABLE `utente`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `utentequiz`
--
ALTER TABLE `utentequiz`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `utenterisposte`
--
ALTER TABLE `utenterisposte`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT per le tabelle scaricate
--

--
-- AUTO_INCREMENT per la tabella `corso`
--
ALTER TABLE `corso`
  MODIFY `id` int(254) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT per la tabella `domanda`
--
ALTER TABLE `domanda`
  MODIFY `id_domanda` int(254) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT per la tabella `quesito`
--
ALTER TABLE `quesito`
  MODIFY `id_quesito` int(254) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT per la tabella `risposta`
--
ALTER TABLE `risposta`
  MODIFY `id_risposta` int(254) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT per la tabella `tiporisposta`
--
ALTER TABLE `tiporisposta`
  MODIFY `id_risposta` int(254) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT per la tabella `utente`
--
ALTER TABLE `utente`
  MODIFY `id` int(254) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT per la tabella `utentequiz`
--
ALTER TABLE `utentequiz`
  MODIFY `id` int(254) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT per la tabella `utenterisposte`
--
ALTER TABLE `utenterisposte`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
