-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 22-Set-2017 às 05:03
-- Versão do servidor: 10.1.26-MariaDB
-- PHP Version: 7.0.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sistema_noticias`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_06_01_000001_create_oauth_auth_codes_table', 2),
(4, '2016_06_01_000002_create_oauth_access_tokens_table', 2),
(5, '2016_06_01_000003_create_oauth_refresh_tokens_table', 2),
(6, '2016_06_01_000004_create_oauth_clients_table', 2),
(7, '2016_06_01_000005_create_oauth_personal_access_clients_table', 2),
(8, '2017_09_21_114014_create_noticias_table', 3);

-- --------------------------------------------------------

--
-- Estrutura da tabela `noticias`
--

CREATE TABLE `noticias` (
  `id` int(10) UNSIGNED NOT NULL,
  `tituloNoticia` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `descNoticia` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `noticias`
--

INSERT INTO `noticias` (`id`, `tituloNoticia`, `descNoticia`, `created_at`, `updated_at`) VALUES
(4, 'asd gerer gerger', 'ergerg              gergergerg', '2017-09-19 21:31:56', '2017-09-19 21:31:56'),
(6, 'asdasdasd', 'asdasdasdas', '2017-09-19 21:59:57', '2017-09-19 21:59:57'),
(7, 'as', 'erw erwerwerwerwe', '2017-09-19 22:02:09', '2017-09-19 22:02:16'),
(8, 'asdsdasd', 'asdasdasdasd', '2017-09-19 22:05:42', '2017-09-19 22:05:42'),
(9, 'bbbbb', 'bbbbbb', '2017-09-21 15:35:35', '2017-09-21 15:35:45'),
(11, 'aa', 'aaa', '2017-09-22 05:36:32', '2017-09-22 05:36:32');

-- --------------------------------------------------------

--
-- Estrutura da tabela `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `client_id` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('02fa20b56cbc5b1f0b21959753fb17eb386dfb4927d90d827df51a9cb20cb9cb80b42a691565209d', 8, 1, 'MyApp', '[]', 0, '2017-09-21 15:39:48', '2017-09-21 15:39:48', '2018-09-21 12:39:48'),
('053bb4d7b1eb90379968cc03e120e8ac041c743ea701eb3ba6811ecc916c1075901d12acdec921f2', 10, 1, 'MyApp', '[]', 0, '2017-09-21 22:13:02', '2017-09-21 22:13:02', '2018-09-21 19:13:02'),
('0c5051c597d7f02f529fad5f5c2427079ca264863a713e6b0ef756dfecf8d11545ab9b9419242947', 10, 1, 'MyApp', '[]', 0, '2017-09-21 20:08:32', '2017-09-21 20:08:32', '2018-09-21 17:08:32'),
('0ccdb5f664a4353caf24bf3c18c914e713622af41076a66c29f64ffd05d82e00687db3701844c1f8', 10, 1, 'MyApp', '[]', 0, '2017-09-21 20:21:50', '2017-09-21 20:21:50', '2018-09-21 17:21:50'),
('0ef78fa82e5b031e3a1a18cf1ddb399bd28cdae2b7ebef918dc75b9bcec6f64aa6c095af13832b08', 8, 1, 'MyApp', '[]', 0, '2017-09-21 16:00:45', '2017-09-21 16:00:45', '2018-09-21 13:00:45'),
('116956a30dfb34bfd4694fbf78efa784a4bdfdd641c423f5ac6d4bce0aeb86683c15ec80c56484c3', 8, 1, 'MyApp', '[]', 0, '2017-09-21 13:59:23', '2017-09-21 13:59:23', '2018-09-21 10:59:23'),
('13a4d41fb4155631eaeef86ca7c47b4415edffb7e6821515aac2e3f6b916e900cbf87c4d0eb858db', 10, 1, 'MyApp', '[]', 0, '2017-09-21 20:50:04', '2017-09-21 20:50:04', '2018-09-21 17:50:04'),
('141c5867efa6bedb215a03275138a816376d84b9b28fcfcf7a458091af47ff47953ec0f2bb1d38bf', 10, 1, 'MyApp', '[]', 0, '2017-09-21 22:07:58', '2017-09-21 22:07:58', '2018-09-21 19:07:58'),
('168092fbcd15b6779cebead3e94c03b0c07ee9e59694a4e0707ed8f8dd1cb9cfe4a23534171382fc', 2, 1, 'MyApp', '[]', 0, '2017-09-21 06:56:00', '2017-09-21 06:56:00', '2018-09-21 03:56:00'),
('1d1ff953622ec9704a8bd4afb4f5eceb4e9e707fe3f1cc95d0b9bbaee3a7e8617b8c28da9fd48632', 10, 1, 'MyApp', '[]', 0, '2017-09-21 22:35:26', '2017-09-21 22:35:26', '2018-09-21 19:35:26'),
('1dbe764cd57007cec255b6e834bcb70fca57b7125654217fcece6b5b1c1fd6b08f0cf14742be57d7', 10, 1, 'MyApp', '[]', 0, '2017-09-21 21:22:08', '2017-09-21 21:22:08', '2018-09-21 18:22:08'),
('1f2fc55db2442bb5ae119c89d424f54062197406bb330b4d37f9d082d3f1fa4b5b6d93c4e5ff4d77', 10, 1, 'MyApp', '[]', 0, '2017-09-21 20:46:47', '2017-09-21 20:46:47', '2018-09-21 17:46:47'),
('22d2a0be0c6b7d6026ec27258623344597c1e615a0c1259b46c2486e72d1803ad0951e979ffe0692', 10, 1, 'MyApp', '[]', 0, '2017-09-21 19:00:31', '2017-09-21 19:00:31', '2018-09-21 16:00:31'),
('258dfe1e4e9f4b54bd6a44743ebc6a8e39870e43edf25477178793273e8b297b0e92d95e2a8b337a', 10, 1, 'MyApp', '[]', 0, '2017-09-21 22:17:23', '2017-09-21 22:17:23', '2018-09-21 19:17:23'),
('27ff615947324dabefba9683d75e7d7a76db8d244eb8bc8760039c226e1bbaf2dfc1512d4a70af14', 10, 1, 'MyApp', '[]', 0, '2017-09-21 22:08:14', '2017-09-21 22:08:14', '2018-09-21 19:08:14'),
('2c9cc00a1087cd3bd56b4262aa532091897de46045b7b861ee769291ebdd74d4f2ee8e32939e7ed5', 10, 1, 'MyApp', '[]', 0, '2017-09-21 20:07:12', '2017-09-21 20:07:12', '2018-09-21 17:07:12'),
('31159c3c4dd64022dad6eb3d1499e7a47594b4637a9598bacb2ba17c93ebca59850a28b64ab5787f', 10, 1, 'MyApp', '[]', 0, '2017-09-21 20:31:24', '2017-09-21 20:31:24', '2018-09-21 17:31:24'),
('3511e36f94aa58a1046fb215a97b7be051b71f90e5fa644bab87b0328a315605f0b9c7c75a9a4067', 8, 1, 'MyApp', '[]', 0, '2017-09-21 13:51:52', '2017-09-21 13:51:52', '2018-09-21 10:51:52'),
('355b640a704da1d1ef76c22e5cb0d0278d2a7e00260e60e1ffb5b152177c69e8c8debb9b932089e3', 8, 1, 'MyApp', '[]', 0, '2017-09-21 13:49:53', '2017-09-21 13:49:53', '2018-09-21 10:49:53'),
('3727989abd8617004d176fa5b9027ab59aad31969c54e67799aea90060211111b83ccf08906476f7', 10, 1, 'MyApp', '[]', 0, '2017-09-21 18:11:27', '2017-09-21 18:11:27', '2018-09-21 15:11:27'),
('39e9a9e5795b6e88565b4958747e79cfba040235532484ec64f4e433c6cf99ffe804bc18509b33aa', 10, 1, 'MyApp', '[]', 0, '2017-09-21 21:18:49', '2017-09-21 21:18:49', '2018-09-21 18:18:49'),
('3b58b2cc5e71f00ca9671025849fd237412126737162c931abbcd4e0ff4ead89ed9dbc1d9c37e1ab', 10, 1, 'MyApp', '[]', 0, '2017-09-21 20:49:53', '2017-09-21 20:49:53', '2018-09-21 17:49:53'),
('3bef31d54f53f0c152edfc5f4803cf422f45dd615ae55ef520e3f9ca29d9c2723250352a9770e680', 10, 1, 'MyApp', '[]', 0, '2017-09-21 20:07:17', '2017-09-21 20:07:17', '2018-09-21 17:07:17'),
('4475280f4368424e48830d7bd121f8fd687dcffaddb107fa90b59ce3cde4f3d23f23f34a4ef5a711', 10, 1, 'MyApp', '[]', 0, '2017-09-21 20:11:22', '2017-09-21 20:11:22', '2018-09-21 17:11:22'),
('468ab8fa780b8ba73f6a3a53316ffb7a602eed45aab251fad891abf8ed6e371c8aa3d110e3a2e9c6', 5, 1, 'MyApp', '[]', 0, '2017-09-21 13:23:59', '2017-09-21 13:23:59', '2018-09-21 10:23:59'),
('493da411f819cd4cf5a7abee9a0ffdb4da04ef2481e06ee916d046d9b0428e9e9b4df75db38f9063', 10, 1, 'MyApp', '[]', 0, '2017-09-21 20:08:36', '2017-09-21 20:08:36', '2018-09-21 17:08:36'),
('495f26597458d765b3818b7626ab195d99fed1199ee8aff6984f27be6d43a9e8081360be6c5c062f', 10, 1, 'MyApp', '[]', 0, '2017-09-21 19:56:27', '2017-09-21 19:56:27', '2018-09-21 16:56:27'),
('4a326fd4a581547f9bbfbaa22b18876871abc634ea5b33621e8f9f1618c4e102b5e95453cb1f0e5c', 8, 1, 'MyApp', '[]', 0, '2017-09-21 13:52:48', '2017-09-21 13:52:48', '2018-09-21 10:52:48'),
('4be85a07049164e2e9cb6df68c2d3df4d20a8556d1f836b064e33929fad20a5fdc4fb99e8c472881', 10, 1, 'MyApp', '[]', 0, '2017-09-21 21:04:42', '2017-09-21 21:04:42', '2018-09-21 18:04:42'),
('50c4b0971f932cc40e6093fd532b60cb0e72c9184bb805cb066288a2ba23bf1f5f58bfade176d3d2', 8, 1, 'MyApp', '[]', 0, '2017-09-21 13:51:14', '2017-09-21 13:51:14', '2018-09-21 10:51:14'),
('520e0c559624a42161e03809cd824e351ec159a00c6d2ada20a9a0e04687a2a01ef36dc968a5e122', 10, 1, 'MyApp', '[]', 0, '2017-09-21 20:09:18', '2017-09-21 20:09:18', '2018-09-21 17:09:18'),
('578c2e85770373608af5b6d47dbd43d166920f9a22ee4968bca334fbf9e7494b506f1d261e71573e', 10, 1, 'MyApp', '[]', 0, '2017-09-21 20:50:00', '2017-09-21 20:50:00', '2018-09-21 17:50:00'),
('587ab3692cf12bd5b937ae4ab790f6cf040208d366d2649e99a2fcc3f02182d2468af4b8e4711b3e', 8, 1, 'MyApp', '[]', 0, '2017-09-21 13:49:29', '2017-09-21 13:49:29', '2018-09-21 10:49:29'),
('5b1dda076dd5f2265960b9ede33ef476050ee572826886482f4433f16076bb7deb7e336ef95f0064', 10, 1, 'MyApp', '[]', 0, '2017-09-21 20:42:05', '2017-09-21 20:42:05', '2018-09-21 17:42:05'),
('5f2fc775605677a4008d0e513799bbbd629fb56545488bb8b7f59809ca6deecfe530fd86a9806c5d', 8, 1, 'MyApp', '[]', 0, '2017-09-21 13:50:48', '2017-09-21 13:50:48', '2018-09-21 10:50:48'),
('5f708d9a39c402e51868d43c192dde9335edf47dd05b49403996ef14ffad9fadcbb6023900b62bdd', 10, 1, 'MyApp', '[]', 0, '2017-09-21 21:04:53', '2017-09-21 21:04:53', '2018-09-21 18:04:53'),
('653a1bdd3ec51ac30d2d33bb4ec55980fdf6f7181e7769d67df2f2c31d095e8a1f164c4f8bece0df', 10, 1, 'MyApp', '[]', 0, '2017-09-21 20:07:46', '2017-09-21 20:07:46', '2018-09-21 17:07:46'),
('660065e5d42178d9dbd684d6b341a52a6a12dfc1158f9319f63c7d4a55d780999d806e6be851ff0e', 10, 1, 'MyApp', '[]', 0, '2017-09-21 20:07:42', '2017-09-21 20:07:42', '2018-09-21 17:07:42'),
('66c3977b4d8c5424348a38bb6d0abcba075c8ed81928b2bcf9c39257f7fed3431cf17dbb833ca83a', 10, 1, 'MyApp', '[]', 0, '2017-09-21 19:17:06', '2017-09-21 19:17:06', '2018-09-21 16:17:06'),
('67301c356908d2fc7a365c5a378d3c821b11bd642f4a0f4b1788f392af8295252f3be6b9a0abf6dd', 10, 1, 'MyApp', '[]', 0, '2017-09-21 21:05:20', '2017-09-21 21:05:20', '2018-09-21 18:05:20'),
('67e9cd52715737553a55d9dfcd2e875916a3232f787546dc5668636519ede5abd9dff4f11704dd67', 3, 1, 'MyApp', '[]', 0, '2017-09-21 13:15:23', '2017-09-21 13:15:23', '2018-09-21 10:15:23'),
('6814210c91c4cb874d85b2b53d487de4a458f98b2bd985f0ee573e3ec70deff4f5a62e48bbbcadf3', 10, 1, 'MyApp', '[]', 0, '2017-09-21 22:30:44', '2017-09-21 22:30:44', '2018-09-21 19:30:44'),
('6ebd138f76246b8c4155f2aa28abd987072dc8dec21e1413c610fdb1b2281bfda6695dfc3beaa02f', 8, 1, 'MyApp', '[]', 0, '2017-09-21 13:50:15', '2017-09-21 13:50:15', '2018-09-21 10:50:15'),
('7358ea21a4bbe847e4683c9cd2103593ff2a5525327170326ec90d337d9221d1b951a7424eb39c7c', 10, 1, 'MyApp', '[]', 0, '2017-09-21 18:59:26', '2017-09-21 18:59:26', '2018-09-21 15:59:26'),
('787db617a1186e3e2c593270347a2323da0151510969afb115245581ec9d7d589ae9db57bf3886ad', 10, 1, 'MyApp', '[]', 0, '2017-09-21 22:09:14', '2017-09-21 22:09:14', '2018-09-21 19:09:14'),
('7b4b720f2b1789f31d1e5a9cc1fbee3a77f4c06613ae780de3f8ded69d1122718517635bb5e89612', 10, 1, 'MyApp', '[]', 0, '2017-09-21 19:42:57', '2017-09-21 19:42:57', '2018-09-21 16:42:57'),
('7f75cf3cb3a753daa2f0b5cc3bcf12498578f2761cc2ecd3f32f2663b995423927b751561c697125', 10, 1, 'MyApp', '[]', 0, '2017-09-21 20:10:21', '2017-09-21 20:10:21', '2018-09-21 17:10:21'),
('843cad170562435da5ab3437f1ade82de89216e475ebfad0d7ec525a2cda8372cfbbe7428057fecf', 10, 1, 'MyApp', '[]', 0, '2017-09-21 20:07:52', '2017-09-21 20:07:52', '2018-09-21 17:07:52'),
('8745d9d7102055f32e511b9c79c5b6c607788dc4693ee12092185a9f92a257e043b256c8882a6184', 10, 1, 'MyApp', '[]', 0, '2017-09-21 22:36:45', '2017-09-21 22:36:45', '2018-09-21 19:36:45'),
('878d4a31bd1dd3121df35a9eaeae54eb70eea52df0ce29793ce1cfac6b61137be9e3510895b2abca', 10, 1, 'MyApp', '[]', 0, '2017-09-21 22:06:48', '2017-09-21 22:06:48', '2018-09-21 19:06:48'),
('87dadb3dff60a3b3e60a5c4231bee0112dd6bbea91d424463540a84c43c0c2b90d59031f8ab9f17d', 10, 1, 'MyApp', '[]', 0, '2017-09-21 20:30:01', '2017-09-21 20:30:01', '2018-09-21 17:30:01'),
('8984cc554c56aa573dd690e45a0321e082dbc72174dccfef60647cb59a0b90f6f0eec14bf970726f', 6, 1, 'MyApp', '[]', 0, '2017-09-21 13:26:38', '2017-09-21 13:26:38', '2018-09-21 10:26:38'),
('9139ce395c79ae35a310f366f483044163eec540cd7b3e9b40ad879d519a07f167317b79cc8f6291', 10, 1, 'MyApp', '[]', 0, '2017-09-21 17:53:49', '2017-09-21 17:53:49', '2018-09-21 14:53:49'),
('9163b085933819cdaa3640499211e20ac943a2e6b1afa1c6e296d0795212ff6e8857777ec69699af', 8, 1, 'MyApp', '[]', 0, '2017-09-21 15:59:37', '2017-09-21 15:59:37', '2018-09-21 12:59:37'),
('923ab958cb60d0d36cad2b6d5107fa24df05426ecf72d30b92fc48ecd9785931c665930b5deba93c', 8, 1, 'MyApp', '[]', 0, '2017-09-21 15:42:00', '2017-09-21 15:42:00', '2018-09-21 12:42:00'),
('973558c2767f04b989aca02cb2b2ae70b3381380b3a2a9b1f0fd43152a890c2ec5eb65f633b9f438', 8, 1, 'MyApp', '[]', 0, '2017-09-21 15:53:11', '2017-09-21 15:53:11', '2018-09-21 12:53:11'),
('a176627cc98184fe66c2bce4825b011e0f60ee0ea2c2e431ef697b95a73c2d1e7dcb9e431017e6e5', 10, 1, 'MyApp', '[]', 0, '2017-09-21 20:57:45', '2017-09-21 20:57:45', '2018-09-21 17:57:45'),
('a8dd2ceb0e5d85d4b8038bf6dabcbb0d9e6c4f596d6ef63d5a2faf5720c837204406caf43e8795a2', 8, 1, 'MyApp', '[]', 0, '2017-09-21 13:48:49', '2017-09-21 13:48:49', '2018-09-21 10:48:49'),
('ae314762f17a30ee9da72735e229d9b80789da8f3cad7d4826f0e3f4fbb542605a80e4f724a8986c', 10, 1, 'MyApp', '[]', 0, '2017-09-21 22:08:10', '2017-09-21 22:08:10', '2018-09-21 19:08:10'),
('b1cbe0e92eed63d7b1d338bd59c642445c1c052829df6eeecf2785fcfb76b7384c8a3a04833c14b9', 10, 1, 'MyApp', '[]', 0, '2017-09-21 21:33:17', '2017-09-21 21:33:17', '2018-09-21 18:33:17'),
('b3696ac53c8d2efef850e7ce0d9aa2dbcb59590c3f57e7c02a039b7c656f9b2e02ecba77c105d6df', 10, 1, 'MyApp', '[]', 0, '2017-09-21 20:29:48', '2017-09-21 20:29:48', '2018-09-21 17:29:48'),
('b8c5b69e0dd9dfb6828db902da3cdad02e06bdb33d1c08b488da9c7a216395cc68190a3c14448602', 9, 1, 'MyApp', '[]', 0, '2017-09-21 17:43:25', '2017-09-21 17:43:25', '2018-09-21 14:43:25'),
('bad81c07ec0d15ccf5f558f4772bcbb31f2b793b217c315882f4e6f7fbb5815a6b520622182936d0', 1, 1, 'MyApp', '[]', 0, '2017-09-21 06:48:30', '2017-09-21 06:48:30', '2018-09-21 03:48:30'),
('bca6d25e2582648ddd08892be66b970e3932c3b592e879944abbebc418628ee5ac3a5cd5f1f8a8f1', 10, 1, 'MyApp', '[]', 0, '2017-09-21 17:55:42', '2017-09-21 17:55:42', '2018-09-21 14:55:42'),
('c1d3a6eb4af6981b2cf5d684dd3de7e8ca72119d3edccbd498ad082f2f323a3f72ff0099e752ef12', 4, 1, 'MyApp', '[]', 0, '2017-09-21 13:22:41', '2017-09-21 13:22:41', '2018-09-21 10:22:41'),
('c53834f57db887e73353311f93c558747f09c17215edc1558777a965e2b337e9e1a287dfaeef6d83', 8, 1, 'MyApp', '[]', 0, '2017-09-21 15:43:55', '2017-09-21 15:43:55', '2018-09-21 12:43:55'),
('c9819b240b5a856c36b11e4f7ad2f8906c44ad69312d901f20ca2a6f626b756f2970c47f53afa7f8', 1, 1, 'MyApp', '[]', 0, '2017-09-21 06:50:37', '2017-09-21 06:50:37', '2018-09-21 03:50:37'),
('c9eb2487112b8c1893739cc1cb7a64bfe8fbf0e29c0773e476528694e66a3bcb2dd09a3994cffd43', 8, 1, 'MyApp', '[]', 0, '2017-09-21 13:48:09', '2017-09-21 13:48:09', '2018-09-21 10:48:09'),
('caf8b473be8a6ac947a90c99c47b1fe8b459fd9695c53c42a75b3ab39704b7c573d922ab7d95a988', 10, 1, 'MyApp', '[]', 0, '2017-09-21 20:12:36', '2017-09-21 20:12:36', '2018-09-21 17:12:36'),
('cb5fbe5350ae4009d70271dc0c2583405100a26485da144fac08d1b3f3b57c1c334f6b3b0fbf04b1', 10, 1, 'MyApp', '[]', 0, '2017-09-21 20:10:54', '2017-09-21 20:10:54', '2018-09-21 17:10:54'),
('cbd77758561cbc1a467ecf7c39497081fef115741fdb60a47f546016ba0a43c3d0d4057b53300a60', 2, 1, 'MyApp', '[]', 0, '2017-09-21 06:56:55', '2017-09-21 06:56:55', '2018-09-21 03:56:55'),
('cc9c7c9d84c7c588ae1e76e945451978c3e218b976a9bc33f33f19e55f769f098718852a84a51987', 10, 1, 'MyApp', '[]', 0, '2017-09-21 20:08:26', '2017-09-21 20:08:26', '2018-09-21 17:08:26'),
('cdfa97299f94ae90bed70867f4081d8ab95ca3bd36e97fa32a55fc50e58c9713dcd015e5340073bb', 8, 1, 'MyApp', '[]', 0, '2017-09-21 15:49:39', '2017-09-21 15:49:39', '2018-09-21 12:49:39'),
('ce79a2ace641e79fdf0d6829cf8cbe53452e61a3b83a50b2279156348c8d06b25f3bcfeb96c863ea', 10, 1, 'MyApp', '[]', 0, '2017-09-21 19:43:01', '2017-09-21 19:43:01', '2018-09-21 16:43:01'),
('d402e3e35939181e5eaa29cc96ac8923ee55f65776e4482efb858cef169686e547eb6404813b8317', 1, 1, 'MyApp', '[]', 0, '2017-09-21 06:50:14', '2017-09-21 06:50:14', '2018-09-21 03:50:14'),
('d68ad37edb74dfc20068cb7823134b60ccc697ffdd7f13f1156eb7a76cee21da5b98980577ddfa76', 10, 1, 'MyApp', '[]', 0, '2017-09-21 20:07:39', '2017-09-21 20:07:39', '2018-09-21 17:07:39'),
('d9099bd57fd5309e055c180f7671f79277e2fb337e8e5d5fd1662fbc7aff95ca4a01db7858404206', 10, 1, 'MyApp', '[]', 0, '2017-09-21 20:10:06', '2017-09-21 20:10:06', '2018-09-21 17:10:06'),
('da9874dfc946e6329a1679a448bf8a11069085a85570415c36d19755cd3c7ca9b8e494ff52a90310', 10, 1, 'MyApp', '[]', 0, '2017-09-21 22:13:47', '2017-09-21 22:13:47', '2018-09-21 19:13:47'),
('db326530512ea75327eec705c1bb4cb2e497102c5c06bf1eda1ad5c3ccb838bac623487d4f66c758', 10, 1, 'MyApp', '[]', 0, '2017-09-21 21:07:09', '2017-09-21 21:07:09', '2018-09-21 18:07:09'),
('db93995ca5246b3f536462140620355fa9b1460c36d70f5998fc42771920c8eb1623d5d0b0d4cd36', 10, 1, 'MyApp', '[]', 0, '2017-09-21 19:42:02', '2017-09-21 19:42:02', '2018-09-21 16:42:02'),
('dd6f8f621354322814e4a63a4ad6450f0eaa85a5928d114a3bf6cbaa946c737747c2bf72b6607917', 10, 1, 'MyApp', '[]', 0, '2017-09-21 20:46:21', '2017-09-21 20:46:21', '2018-09-21 17:46:21'),
('de8ab83bbe84ce64cf2694517b47938510d63f502aa5133b55830485eb83c471570c174996d70ffb', 10, 1, 'MyApp', '[]', 0, '2017-09-21 20:29:44', '2017-09-21 20:29:44', '2018-09-21 17:29:44'),
('decefe95747a3f8054458c5979b0be33a6ed38d4cd05b3c691958baa8c4ae35bfef5fd3644cc0ada', 8, 1, 'MyApp', '[]', 0, '2017-09-21 13:52:18', '2017-09-21 13:52:18', '2018-09-21 10:52:18'),
('e5e4e3e57812f84cedda45ef04b29e2ac2eb28b43899171e2f1cf5073e4e62b4b29e156f261a8071', 10, 1, 'MyApp', '[]', 0, '2017-09-21 19:43:24', '2017-09-21 19:43:24', '2018-09-21 16:43:24'),
('e9d747ca977f907e0c5da035f3de93b88728afe7da4bca1cb181ffdff91e77ef506677047fe1ffdb', 10, 1, 'MyApp', '[]', 0, '2017-09-21 20:21:50', '2017-09-21 20:21:50', '2018-09-21 17:21:50'),
('eb9d649b208f8767811e3dd02485f805cd68b46b33d01c72916fa37ac424fc423778bd4c959db7ca', 10, 1, 'MyApp', '[]', 0, '2017-09-21 21:20:01', '2017-09-21 21:20:01', '2018-09-21 18:20:01'),
('f6cce065ce8b459e479b0d6c7d96c15c58f346216e10eae5a031b842d7a12a75d995548fb6160534', 10, 1, 'MyApp', '[]', 0, '2017-09-21 20:23:18', '2017-09-21 20:23:18', '2018-09-21 17:23:18'),
('f82ba17dbf19b40731ff6eb7e4a0c5d842e71270f10b13d9b83d29649f6c23795dc14311252ca623', 10, 1, 'MyApp', '[]', 0, '2017-09-21 20:29:58', '2017-09-21 20:29:58', '2018-09-21 17:29:58'),
('fba3335072cd6e0fc456d5782fbfbb58c2024269c6468cccb00762dfd8923c09ff98d6df521421fe', 8, 1, 'MyApp', '[]', 0, '2017-09-21 13:52:35', '2017-09-21 13:52:35', '2018-09-21 10:52:35'),
('fd1afeac1fbff50bfe3c8eab5b542d1210133c4b3667233bf0a2dac702d801e3c6b3b3263b3189b8', 7, 1, 'MyApp', '[]', 0, '2017-09-21 13:27:44', '2017-09-21 13:27:44', '2018-09-21 10:27:44'),
('fd4c3e6d46d5b8e8b60d55b1d6a3f29f93273098bca9a4bb64578e8a14c4ca09ebab676a7dab8cd9', 10, 1, 'MyApp', '[]', 0, '2017-09-21 21:39:28', '2017-09-21 21:39:28', '2018-09-21 18:39:28'),
('fe064e50c3651cdf7f38d3d67d40790223cf04b78c869eb8fb43901d904db75344c611c575227921', 10, 1, 'MyApp', '[]', 0, '2017-09-21 21:17:21', '2017-09-21 21:17:21', '2018-09-21 18:17:21'),
('ff1ccee1e0e6356fde2c78f07ac31e5d41909b7ea15be938af1075ba91d5e113725cc208df8d7fc2', 10, 1, 'MyApp', '[]', 0, '2017-09-21 17:52:38', '2017-09-21 17:52:38', '2018-09-21 14:52:38');

-- --------------------------------------------------------

--
-- Estrutura da tabela `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', '4oseJdqrTypNOGlzWX6QSH2RYUgi9iPsVyeQ1XyI', 'http://localhost', 1, 0, 0, '2017-09-20 08:06:54', '2017-09-20 08:06:54'),
(2, NULL, 'Laravel Password Grant Client', '53COkMi4AW02hACiRbOz8rb08tekEhMA9Y0YiHWj', 'http://localhost', 0, 1, 0, '2017-09-20 08:06:54', '2017-09-20 08:06:54');

-- --------------------------------------------------------

--
-- Estrutura da tabela `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `client_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2017-09-20 08:06:54', '2017-09-20 08:06:54');

-- --------------------------------------------------------

--
-- Estrutura da tabela `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(8, 'gelson', 'rangelgelsonrodrigo@gmail.com', '123123', NULL, '2017-09-21 13:48:09', '2017-09-21 13:48:09'),
(9, 'rodrigo', 'contato@gmail.com', '$2y$10$1lMH5OwSZSCLtQsSibBgAeMst2RB3gF8Ehw4yqjK1x60ChdtyJ.km', NULL, '2017-09-21 17:43:23', '2017-09-21 17:43:23'),
(10, 'rodrigo', 'rodrigo@gmail.com', '$2y$10$2qWLVw4jbLxAE03j/g0tyuZBoHJPoAZqtR1K7UFqcpsKOFW.Hw3h2', NULL, '2017-09-21 17:52:36', '2017-09-21 17:52:36');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `noticias`
--
ALTER TABLE `noticias`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_personal_access_clients_client_id_index` (`client_id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `noticias`
--
ALTER TABLE `noticias`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
