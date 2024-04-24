-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : mer. 24 avr. 2024 à 15:40
-- Version du serveur : 10.4.32-MariaDB
-- Version de PHP : 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `actunews_cergy_v2`
--

-- --------------------------------------------------------

--
-- Structure de la table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(60) NOT NULL,
  `slug` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `category`
--

INSERT INTO `category` (`id`, `name`, `slug`) VALUES
(6, 'Essai', 'essai'),
(7, 'Comparatif', 'comparatif'),
(8, 'World SBK', 'world-sbk'),
(9, 'Actualités', 'actualites'),
(10, 'Nouveautés', 'nouveaute');

-- --------------------------------------------------------

--
-- Structure de la table `messenger_messages`
--

CREATE TABLE `messenger_messages` (
  `id` bigint(20) NOT NULL,
  `body` longtext NOT NULL,
  `headers` longtext NOT NULL,
  `queue_name` varchar(190) NOT NULL,
  `created_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `available_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `delivered_at` datetime DEFAULT NULL COMMENT '(DC2Type:datetime_immutable)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `post`
--

CREATE TABLE `post` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `content` longtext NOT NULL,
  `created_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `updated_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `deleted_at` datetime DEFAULT NULL COMMENT '(DC2Type:datetime_immutable)',
  `published_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `post`
--

INSERT INTO `post` (`id`, `user_id`, `title`, `slug`, `image`, `content`, `created_at`, `updated_at`, `deleted_at`, `published_at`) VALUES
(47, 5, 'Kawasaki Z500', 'Kawasaki-Z500', 'essai-kawasaki-z500-6620d76c4cade.jpg', '<h3>Bicylindre en ligne de 451 cm3, 45,4 ch et 42,6 Nm, 167 kg, &agrave; partir de 5.999 euros</h3>\r\n\r\n<p>Incontournable succ&egrave;s des ventes de&nbsp;<a href=\"http://www.lerepairedesmotards.com/dossiers/constructeurs/kawasaki.php\">Kawasaki</a>&nbsp;sur le segment midsize d&egrave;s son apparition en 2004, les&nbsp;<a href=\"http://www.lerepairedesmotards.com/essais/motos/kawasaki-z750s.php\">roadsters midsize Z750</a>&nbsp;et ses descendantes&nbsp;<a href=\"http://www.lerepairedesmotards.com/essais/motos/kawasaki-z800.php\">Z800</a>&nbsp;et&nbsp;<a href=\"http://www.lerepairedesmotards.com/essais/motos/kawasaki-z-900.php\">Z900</a>&nbsp;affolent les compteurs. D&eacute;clin&eacute; en Z125 et&nbsp;<a href=\"http://www.lerepairedesmotards.com/essais/motos/kawasaki-z400.php\">Z400</a>, le roadster se dote ainsi d&rsquo;une famille &agrave; succ&egrave;s. Mais les petite-moyennes cylindr&eacute;es du mod&egrave;le ont d&eacute;sormais fort &agrave; faire avec une concurrence toujours plus pressante sur le march&eacute; A2. Apr&egrave;s son Eliminator 500, le constructeur d&rsquo;Akashi met &agrave; jour sa Z avec une &eacute;volution en version &laquo; 500 &raquo;. Deux d&eacute;clinaisons sont disponibles, standard et SE. C&rsquo;est cette derni&egrave;re que nous emmenons dans l&rsquo;arri&egrave;re-pays d&rsquo;Alicante (Espagne) sur un rac&eacute; soigneusement choisi par la marque japonaise pour nous permettre de juger des qualit&eacute;s de son roadster de poche.</p>', '2024-04-18 10:18:52', '2024-04-18 10:18:52', NULL, '2024-04-18 10:18:00'),
(48, 5, 'Essai comparatif Kawasaki ZX-4RR / ZX-6R', 'Essai-comparatif-Kawasaki-ZX-4RR-ZX-6R', 'kawasaki-zx-4r-6r-4rr-comparo-6620d7bca876a.jpg', '<h3>4 cylindres en ligne de 399 cm3, 15.000 tr/min, 80 ch et 39 Nm, 189 kg, 8.899 euros</h3>\r\n\r\n<p>Avec la ZX-4R et la ZX-6R, c&rsquo;est le grand retour des hyst&eacute;riques des hauts r&eacute;gimes, des symphonies en turbine majeure. Kawasaki relance en effet sa fameuse ZX-6R et d&eacute;voile en m&ecirc;me temps sa ZX-4RR, harpie de poche des circuits. Fan des screamers, vous pouvez de nouveau hurler de plaisir, avec le choix des armes et des pistardes. Essai...</p>', '2024-04-18 10:20:12', '2024-04-18 10:20:12', NULL, '2024-04-18 10:19:00'),
(49, 5, 'Essai moto Kawasaki Ninja 7 Hybrid', 'Essai-moto-Kawasaki-Ninja-7-Hybrid', 'kawasaki-ninja-7-hybrid-statique-gauche-6620d7e739aa2.jpg', '<h3>Bicylindre de 451 cm3, 59 chevaux / 69 chevaux, 227 kilos</h3>\r\n\r\n<p>On se demandait qui oserait en premier sortir une motorisation hybride sur une moto ou un scooter. Quoi de plus naturel qu&#39;un motoriste de renom, doubl&eacute; d&#39;un constructeur sachant innover, soit &agrave; la pointe d&rsquo;une nouvelle technologie ? C&#39;est donc&nbsp;<a href=\"http://www.lerepairedesmotards.com/dossiers/constructeurs/kawasaki.php\">Kawasaki</a>&nbsp;qui s&#39;y colle et t&acirc;te le terrain au travers de cette premi&egrave;re mondiale. Un terrain connu dans le monde automobile, dont Kawasaki ne fait d&rsquo;ailleurs pas partie contrairement &agrave; Honda ou &agrave; Suzuki, mais un terrain totalement vierge dans l&#39;univers du deux roues motoris&eacute; de s&eacute;rie. Kawasaki, c&#39;est aussi une &laquo; marque &raquo;. La River Marque, en l&rsquo;occurrence, arbor&eacute;e par les mod&egrave;les d&#39;exception. Et cette nouvelle&nbsp;<a href=\"http://www.lerepairedesmotards.com/actualites/2023/sportive-kawasaki-ninja-7-hybrid.php\">Ninja 7 Hybrid</a>&nbsp;la porte. Quant &agrave; savoir ce qu&#39;elle apporte, ou devrait apporter, voyons ensemble. Essai, vid&eacute;o incluse...</p>', '2024-04-18 10:20:55', '2024-04-18 10:20:55', NULL, '2024-04-18 10:20:00'),
(50, 5, 'Comparo roadsters Honda Hornet, Kawasaki Z650 et Yamaha MT-07', 'Comparo-roadsters-Honda-Hornet-Kawasaki-Z650-et-Yamaha-MT-07', 'essai-honda-cb750-hornet-kawasaki-z650-yamaha-mt07-6620e71cead34.jpg', '<h2>Fight Side Of Japan</h2>\r\n\r\n<p>Dans la cat&eacute;gorie&nbsp;<a href=\"http://www.lerepairedesmotards.com/dossiers/definitions/roadster.php\">roadster midsize</a>, je demande la moto la plus vendue : et je nomme&nbsp;<a href=\"http://www.lerepairedesmotards.com/essais/motos/yamaha-mt-07-2021.php\">la Yamaha MT-07</a>. Car la MT07 domine le segment depuis des ann&eacute;es, avec encore 4.363 mod&egrave;les vendus en 2022., loin devant une certaine&nbsp;<a href=\"http://www.lerepairedesmotards.com/essais/motos/kawasaki-z-650.php\">Kawasaki Z650</a>&nbsp;&agrave; 1.316 mod&egrave;les vendus, derri&egrave;re m&ecirc;me une certaine Honda CB650R. Et puis arrive la&nbsp;<a href=\"http://www.lerepairedesmotards.com/essais/motos/honda-cb750-hornet.php\">Honda CB750 Hornet</a>&nbsp;&agrave; un tarif quasi identique, mais avec un moteur bien plus puissant. Peut-on encore parler de comparatif, tellement les diff&eacute;rences sont grandes pour envisager un duel &agrave; armes &eacute;gales ? Essai, vid&eacute;o &agrave; l&#39;appui des mod&egrave;les, version A2 comprise.</p>', '2024-04-18 11:25:48', '2024-04-18 11:25:48', NULL, '2024-04-18 11:25:00'),
(51, 5, 'Essai comparo Kawasaki Z : de la Z650 à Z900 en passant par les RS et SE', 'Essai-comparo-Kawasaki-Z-de-la-Z650-a-Z900-en-passant-par-les-RS-et-SE', 'kawasaki-z650-z900-rs-se-gamme-6620e742caaa1.jpg', '<h2>AnniverZaire familial avec les Z650, Z650 RS, Z900, Z900 RS et leurs variantes SE</h2>\r\n\r\n<p>1972 &ndash; 2022, c&rsquo;est&nbsp;<a href=\"http://www.lerepairedesmotards.com/dossiers/constructeurs/kawasaki.php\">50 ans de mod&egrave;le Z Kawasaki</a>. C&#39;est l&#39;occasion de f&ecirc;ter cet anniversaire en essayant tous les mod&egrave;les de la famille Z des Z650 aux Z900 en passant par les mod&egrave;les n&eacute;o-r&eacute;tro RS sans oublier leurs variantes SE et en nous rendant en Suisse, &agrave; H&auml;rkingen, o&ugrave; se cache un extraordinaire mus&eacute;e moto. Particularit&eacute;, tous les mod&egrave;les expos&eacute;s sont virtuellement neufs, n&rsquo;ont jamais roul&eacute;s autrement que pour aller &agrave; l&rsquo;atelier &ecirc;tre entretenus. Et bien s&ucirc;r, dans cette centaine des machines tr&ocirc;ne une Z1, la fameuse, l&#39;originelle.</p>', '2024-04-18 11:26:26', '2024-04-18 11:26:26', NULL, '2024-04-18 11:25:00'),
(52, 5, 'Essai néo-rétro Kawasaki Z650 RS', 'Essai-neo-retro-Kawasaki-Z650-RS', 'essai-kawasaki-z-650-rs-6620e7794084c.jpg', '<h3>Bicylindre de 649 cm3, 68 ch, 64 Nm, 8.299 euros</h3>\r\n\r\n<p>La famille Z assume une esth&eacute;tique tranch&eacute;e, mais pas forc&eacute;ment appr&eacute;ci&eacute;e de tous au contraire de la d&eacute;clinaison n&eacute;o-r&eacute;tro initi&eacute;e avec la Z900RS, qui a su s&eacute;duire un plus large public et trouve d&eacute;sormais sa d&eacute;clinaison en mode twin de moyenne cylindr&eacute;e. Rac&eacute;e, p&eacute;tillante, la Z650RS ne manque pas d&rsquo;atouts pour faire revivre les seventies.</p>', '2024-04-18 11:27:21', '2024-04-18 11:27:21', NULL, '2024-04-18 11:25:00'),
(53, 5, 'Essai moto Kawasaki Ninja ZX-10R', 'Essai-moto-Kawasaki-Ninja-ZX-10R', 'kawasaki-ninja-zx-10r-circuit-virage-6620e79d76525.jpg', '<h3>4 cylindres en ligne, 998 cm3, 203 ch et 11,7 mkg &agrave; 11 400 tr/mn, 206 kg tous pleins faits, 19 399 euros.</h3>\r\n\r\n<p>Qui n&rsquo;a pas eu&nbsp;<a href=\"http://www.lerepairedesmotards.com/dossiers/definitions/sportive.php\">sa sportive adul&eacute;e</a>, un jour, dans son cheminement motard ? On en a tous r&ecirc;v&eacute;, on s&rsquo;est serr&eacute; la ceinture pour se la payer, puis le silencieux d&rsquo;&eacute;chappement, les pneus qui d&eacute;gagent &agrave; toute vitesse, le quotidien &eacute;go&iuml;ste, les points de permis qui volent&hellip; L&rsquo;&eacute;poque est aujourd&rsquo;hui plus raisonnable que celle des ann&eacute;es 80, quand la Suz&rsquo; GSX-R pointait en t&ecirc;te des ventes de moto en France. Le prix des sportives a depuis suivi celui de l&rsquo;immobilier au c&oelig;ur des m&eacute;tropoles : inabordable. En &eacute;change, elles donnent plus de 200 ch pour &agrave; peine plus de kilos, de l&rsquo;&eacute;lectronique en pagaille et de la tenue de route dont on ne voit pas le bout, ainsi que des positions de conduite de plus en plus radicales. Si la plupart roulent sur circuit, quelques irr&eacute;ductibles r&eacute;sistent, on les croise parfois, on les envie, on les admire&hellip;</p>', '2024-04-18 11:27:57', '2024-04-18 11:27:57', NULL, '2024-04-18 11:25:00'),
(54, 5, 'Essai moto Kawasaki Versys 1000 S Grand tourer', 'Essai-moto-Kawasaki-Versys-1000-S-Grand-tourer', 'hauteur-selle-kawasaki-versys-1000-s-6620e7e72b9ac.jpg', '<h3>1043 cm3, 120 ch &agrave; 9.000 tr/min, 102 Nm &agrave; 7 500 tr/mn, 257 kg, 15 099 euros (17 099 euros version Grand Tourer)</h3>\r\n\r\n<p>Cette moto, pour &ecirc;tre honn&ecirc;te, n&rsquo;atteint pas le c&oelig;ur au premier regard, en tout cas le mien. La Versys 1000, pourtant rhabill&eacute;e en 2015, n&rsquo;accroche pas comme une&nbsp;<a href=\"http://www.lerepairedesmotards.com/essais/motos/ducati-multistrada-v4-s.php\">Ducati Multistrada V4</a>&nbsp;ou une&nbsp;<a href=\"http://www.lerepairedesmotards.com/essais/motos/honda-africa-twin-crf1100l-adventure-sports.php\">Honda AfricaTwin 1100</a>. J&#39;irai m&ecirc;me plus loin : Kawasaki gal&egrave;re pas mal question trail, depuis presque toujours, ses petits mythes restant anecdotiques, comme la Big Horn. Suzuki s&rsquo;appuie sur l&rsquo;image de sa bonne vieille DR, Yamaha prolonge tant bien que mal le r&ecirc;ve T&eacute;n&eacute;r&eacute;, comme Honda avec l&rsquo;AfricaTwin ; Kawa ne saurait en faire autant. La KLR 650 ou l&rsquo;&eacute;trange Tenga&iuml;de 1989 ? Franchement, non ! Encore moins la KLV 1000&hellip;Peut-&ecirc;tre plus la KLX 650, mais rien de comparable avec les autres trails japonais. Les mod&egrave;les cross KX et leurs d&eacute;riv&eacute;s enduro ont leur part d&rsquo;histoire, mais en rallye raid, Kawasaki ne s&rsquo;est jamais illustr&eacute;. Et la m&eacute;moire a la peau &eacute;paisse. BMW, Yamaha et Honda doivent encore beaucoup aux&nbsp;<a href=\"http://www.lerepairedesmotards.com/dossiers/evenements/paris-dakar.php\">grandes heures du Dakar</a>. Ducati a su contourner le mythe, jouer sur son image sportive pour finalement faire briller l&rsquo;&eacute;carlate de la Multistrada, mais ce fut long. La premi&egrave;re (2002), dont le dessin rappelle celui de la premi&egrave;re Versys 1000 de 2012, laissait une moue mitig&eacute;e, jusqu&rsquo;&agrave; ce qu&rsquo;on l&rsquo;essaye. Elles appartiennent &agrave; cette famille de routi&egrave;res aux longues pattes, lanc&eacute;e par la Yamaha TDM 900, suivie de la Multistradapuis d&rsquo;autres, comme la Honda Cross Tourer (moteur V4 de 1200 cm3) et donc la Versys. Des motos souvent sans image, sans s&eacute;duction magn&eacute;tique, a contrario tr&egrave;s agr&eacute;ables une fois au guidon pour la majorit&eacute; d&rsquo;entre elles. Pour cette raison, le parall&egrave;le avec le ph&eacute;nom&egrave;ne SUV en bagnole ne tient pas : ce genre de voiture pose un statut, en impose, alors que les routi&egrave;res aux longues pattes ont un c&ocirc;t&eacute; &laquo; moto p&eacute;p&egrave;re &raquo;, utilitaro-confortable. Seule la BMW R 1250 GS supporte la comparaison avec le ph&eacute;nom&egrave;ne SUV.</p>', '2024-04-18 11:29:11', '2024-04-18 11:29:11', NULL, '2024-04-18 11:28:00'),
(55, 5, 'Essai moto comparatif Kawasaki Ninja 650 A2 et full', 'Essai-moto-comparatif-Kawasaki-Ninja-650-A2-et-full', 'comparo-kawasaki-ninja-650-a2-full-6620e81778e0c.jpg', '<h2>Essai au quotidien pendant 15 jours des deux versions</h2>\r\n\r\n<h3>649 cm3, 68 chevaux - 47,5 cv en A2 - pour 193 kilos</h3>\r\n\r\n<p>Qui se souvient de l&#39;ER-6, le mod&egrave;le d&eacute;voil&eacute; en 2005 et disparu depuis ? En fait, le mod&egrave;le continue bien sa vie mais sous un autre patronyme plus coh&eacute;rent dans la gamme Kawasaki, avec la&nbsp;<a href=\"http://www.lerepairedesmotards.com/dossiers/definitions/roadster.php\">Z pour le roadster</a>&nbsp;et la&nbsp;<a href=\"http://www.lerepairedesmotards.com/dossiers/definitions/sportive.php\">Ninja pour la sportive</a>. L&#39;ER6-n est ainsi devenue&nbsp;<a href=\"http://www.lerepairedesmotards.com/essais/motos/kawasaki-z-650.php\">Z650</a>&nbsp;et l&#39;<a href=\"http://www.lerepairedesmotards.com/essais/motos/kawasaki-er6f-2012.php\">ER6f</a>, Ninja 650. C&#39;&eacute;tait la grande r&eacute;volution de 2016 lors du passage de la moto &agrave; Euro4 qui va passer d&eacute;sormais &agrave; Euro5... enfin l&#39;ann&eacute;e prochaine. Car pour l&#39;instant la Ninja 650 est uniquement &quot;Euro5 ready&quot; comme aime &agrave; le dire le constructeur, pour confirmer que la moto reste au catalogue et va continuer sa vie avec juste quelques modifications au niveau injection et catalyseur. Mais alors qu&#39;il &eacute;tait simple de deviner que l&#39;ER6-f &eacute;tait une d&eacute;clinaison car&eacute;n&eacute;e du roaster, qu&#39;en est-il de la Ninja 650 par rapport &agrave; la Z650 et surtout que vaut la version A2 de la Ninja 650 par rapport &agrave; la version full. La Ninja est-elle une moto que l&#39;on revend imm&eacute;diatement apr&egrave;s avoir effectu&eacute; la passerelle A2-A, ou m&eacute;rite-t-elle d&#39;&ecirc;tre gard&eacute;e avec son potentiel en passant en full. Autre mani&egrave;re de le dire, le bridage A2 transforme-t-il la moto en poumon, m&eacute;ritant de se tourner vers un autre mod&egrave;le ? Essai comparatif des deux mod&egrave;les A2 et full au quotidien.</p>', '2024-04-18 11:29:59', '2024-04-18 11:29:59', NULL, '2024-04-18 11:29:00');

-- --------------------------------------------------------

--
-- Structure de la table `post_category`
--

CREATE TABLE `post_category` (
  `post_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `post_category`
--

INSERT INTO `post_category` (`post_id`, `category_id`) VALUES
(47, 7),
(48, 6),
(49, 8),
(50, 9),
(51, 10),
(52, 6),
(52, 10),
(53, 6),
(53, 7),
(53, 10),
(54, 8),
(55, 9);

-- --------------------------------------------------------

--
-- Structure de la table `tag`
--

CREATE TABLE `tag` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `tag_post`
--

CREATE TABLE `tag_post` (
  `tag_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `email` varchar(180) NOT NULL,
  `roles` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '(DC2Type:json)' CHECK (json_valid(`roles`)),
  `password` varchar(255) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `family_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id`, `email`, `roles`, `password`, `first_name`, `family_name`) VALUES
(4, 'admin@actu.news', '[\"ROLE_ADMIN\"]', '$2y$13$akP462ZXZlPPsuTQSVVH/ucdfJVhLxjJele5kH5vh.8Dcnq4hZI3K', 'Admin', 'Test'),
(5, 'reporter@actu.news', '[\"ROLE_REPORTER\"]', '$2y$13$D9XJ7COPAcVSmYWHm4jnDOLS7vE0R7qrG3Ybp2DS3OOrp245qsBY2', 'Reporter', 'Test'),
(6, 'user@actu.news', '[\"ROLE_USER\"]', '$2y$13$wrUnducaVHF3/58IgTf/I.BMS1YmK8F4WFKWINaCAW6KE5rqN2gKK', 'User', 'Test');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_64C19C1989D9B62` (`slug`);

--
-- Index pour la table `messenger_messages`
--
ALTER TABLE `messenger_messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_75EA56E0FB7336F0` (`queue_name`),
  ADD KEY `IDX_75EA56E0E3BD61CE` (`available_at`),
  ADD KEY `IDX_75EA56E016BA31DB` (`delivered_at`);

--
-- Index pour la table `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_5A8A6C8D989D9B62` (`slug`),
  ADD KEY `IDX_5A8A6C8DA76ED395` (`user_id`);

--
-- Index pour la table `post_category`
--
ALTER TABLE `post_category`
  ADD PRIMARY KEY (`post_id`,`category_id`),
  ADD KEY `IDX_B9A190604B89032C` (`post_id`),
  ADD KEY `IDX_B9A1906012469DE2` (`category_id`);

--
-- Index pour la table `tag`
--
ALTER TABLE `tag`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_389B783989D9B62` (`slug`);

--
-- Index pour la table `tag_post`
--
ALTER TABLE `tag_post`
  ADD PRIMARY KEY (`tag_id`,`post_id`),
  ADD KEY `IDX_B485D33BBAD26311` (`tag_id`),
  ADD KEY `IDX_B485D33B4B89032C` (`post_id`);

--
-- Index pour la table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_IDENTIFIER_EMAIL` (`email`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pour la table `messenger_messages`
--
ALTER TABLE `messenger_messages`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `post`
--
ALTER TABLE `post`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT pour la table `tag`
--
ALTER TABLE `tag`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `post`
--
ALTER TABLE `post`
  ADD CONSTRAINT `FK_5A8A6C8DA76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Contraintes pour la table `post_category`
--
ALTER TABLE `post_category`
  ADD CONSTRAINT `FK_B9A1906012469DE2` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_B9A190604B89032C` FOREIGN KEY (`post_id`) REFERENCES `post` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `tag_post`
--
ALTER TABLE `tag_post`
  ADD CONSTRAINT `FK_B485D33B4B89032C` FOREIGN KEY (`post_id`) REFERENCES `post` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_B485D33BBAD26311` FOREIGN KEY (`tag_id`) REFERENCES `tag` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
