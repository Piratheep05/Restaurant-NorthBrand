-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 21, 2023 at 02:47 AM
-- Server version: 10.3.16-MariaDB
-- PHP Version: 7.1.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `maher`
--

-- --------------------------------------------------------

--
-- Table structure for table `addcart`
--

CREATE TABLE `addcart` (
  `id` bigint(12) NOT NULL,
  `p_id` bigint(12) NOT NULL,
  `u_id` varchar(50) NOT NULL,
  `price` bigint(12) NOT NULL,
  `qty` bigint(12) NOT NULL,
  `total` bigint(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `addcart`
--

INSERT INTO `addcart` (`id`, `p_id`, `u_id`, `price`, `qty`, `total`) VALUES
(2, 1, 'abcd', 100, 4, 400),
(3, 8, 'abcd', 30, 1, 30),
(4, 2, 'abcd', 100, 3, 300),
(5, 6, 'abcd', 30, 3, 90),
(6, 11, 'admin', 30, 2, 60),
(7, 13, 'Piratheep', 30, 2, 60);

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `adminid` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`adminid`, `password`) VALUES
('admin', 'admin'),
('nilkanth', 'nilkanth');

-- --------------------------------------------------------

--
-- Table structure for table `checkout`
--

CREATE TABLE `checkout` (
  `id` bigint(12) NOT NULL,
  `p_id` bigint(12) NOT NULL,
  `u_id` varchar(50) NOT NULL,
  `name` varchar(100) NOT NULL,
  `mobile` bigint(12) NOT NULL,
  `email` varchar(150) NOT NULL,
  `location` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `checkout`
--

INSERT INTO `checkout` (`id`, `p_id`, `u_id`, `name`, `mobile`, `email`, `location`) VALUES
(1, 1, 'abcd', '', 0, '', ''),
(2, 8, 'abcd', '', 0, '', ''),
(3, 1, 'abcd', '', 0, '', ''),
(4, 8, 'abcd', '', 0, '', ''),
(5, 1, 'abcd', 'nilkanth', 1234567890, 'abcd@yy.com', 'asdjkl asdjk sjdkl slas ask lkasd jasdkl jas'),
(6, 8, 'abcd', 'nilkanth', 1234567890, 'abcd@yy.com', 'asdjkl asdjk sjdkl slas ask lkasd jasdkl jas'),
(7, 1, 'abcd', '', 0, '', ''),
(8, 8, 'abcd', '', 0, '', ''),
(9, 1, 'abcd', '', 0, '', ''),
(10, 8, 'abcd', '', 0, '', ''),
(11, 1, 'abcd', 'jayesh', 20930912, 'abc@yahoo.com', 'a dakjklsakkk Enter your fill address'),
(12, 8, 'abcd', 'jayesh', 20930912, 'abc@yahoo.com', 'a dakjklsakkk Enter your fill address'),
(13, 1, 'abcd', 'mukesh', 1234567890, 'abc@yahoo.com', 'abcd xyz jk'),
(14, 8, 'abcd', 'mukesh', 1234567890, 'abc@yahoo.com', 'abcd xyz jk'),
(15, 1, 'abcd', 'mukesh', 1234567890, 'abc@yahoo.com', 'abcd xyz jk'),
(16, 8, 'abcd', 'mukesh', 1234567890, 'abc@yahoo.com', 'abcd xyz jk'),
(17, 1, 'abcd', '230490239', 1234567890, 'asdl@y.com', 'jaskdl sjdkjasd'),
(18, 8, 'abcd', '230490239', 1234567890, 'asdl@y.com', 'jaskdl sjdkjasd'),
(19, 1, 'abcd', '1234', 1234567890, 'abc@yahoo.com', 'abcd xyz jk'),
(20, 8, 'abcd', '1234', 1234567890, 'abc@yahoo.com', 'abcd xyz jk'),
(21, 1, 'abcd', 'nilkanth', 9987656789, 'abc@y.co', 'asjd'),
(22, 8, 'abcd', 'nilkanth', 9987656789, 'abc@y.co', 'asjd'),
(23, 11, 'admin', 'hello', 8978678909, 'h@yyy.com', 'jas skkslks kslda');

-- --------------------------------------------------------

--
-- Table structure for table `food_cat`
--

CREATE TABLE `food_cat` (
  `id` bigint(12) NOT NULL,
  `catnm` varchar(100) NOT NULL,
  `sub_cat` varchar(120) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `food_cat`
--

INSERT INTO `food_cat` (`id`, `catnm`, `sub_cat`) VALUES
(1, 'indianfoods', 'Maher Special'),
(2, 'indianfoods', 'Ringan Olo'),
(3, 'indianfoods', 'Dahino Olo'),
(4, 'indianfoods', 'Dahi tikhari'),
(5, 'indianfoods', 'Bharela Ringna'),
(6, 'indianfoods', 'Rajwadi Bateta'),
(7, 'indianfoods', 'Masala bhindi'),
(8, 'indianfoods', 'Rajwadi Dhokli'),
(9, 'indianfoods', 'Save Tameta'),
(10, 'indianfoods', 'Mag Masala'),
(11, 'indianfoods', 'Chole Chana Masala'),
(12, 'indianfoods', 'Kaju gathiya'),
(13, 'indianfoods', 'Adadni Dal'),
(14, 'indianfoods', 'Bati'),
(20, 'indianfoods', 'Dal'),
(21, 'indianfoods', 'Salad'),
(22, 'indianfoods', 'Butter Milk'),
(23, 'indianfoods', 'Ghee'),
(24, 'indianfoods', 'Papad'),
(25, 'indianfoods', 'Dal Rice'),
(26, 'indianfoods', 'Kadhi-Khichadi'),
(27, 'indianfoods', 'Vagharela Bhat'),
(28, 'indianfoods', 'Rajwadi Khichadi'),
(29, 'indianfoods', 'Rotli'),
(30, 'indianfoods', 'Ghee Rotli'),
(31, 'indianfoods', 'Rotla'),
(48, 'indianfoods', 'Ghee Rotla'),
(49, 'indianfoods', 'Bhakhari'),
(50, 'indianfoods', 'Ghee Bhakhari'),
(51, 'indianfoods', 'Tava Paratha'),
(52, 'indianfoods', 'Rotlanu Churmu'),
(53, 'indianfoods', 'Bhakhari nu Churmu'),
(54, 'indianfoods', 'Dryfruit Churmu'),
(55, 'indianfoods', 'Vagharelo Rotlo Dry'),
(56, 'indianfoods', 'Vagharelo Rotlo Dahi'),
(57, 'fastfoods', 'Fast foods'),
(61, 'drinks', 'Pepsi');

-- --------------------------------------------------------

--
-- Table structure for table `food_parcel`
--

CREATE TABLE `food_parcel` (
  `id` bigint(12) NOT NULL,
  `name` varchar(100) NOT NULL,
  `mobile` bigint(12) NOT NULL,
  `email` varchar(150) NOT NULL,
  `address` text NOT NULL,
  `food_id` bigint(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `gallery`
--

CREATE TABLE `gallery` (
  `id` bigint(12) NOT NULL,
  `image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gallery`
--

INSERT INTO `gallery` (`id`, `image`) VALUES
(3, 'img/5c7515fc03eded3e20e78a6f_1551177212604.jpg'),
(4, 'img/5e39236bc4b7bc0c2bb659c7_1580802923546.jpg'),
(5, 'img/the-gujarati-thali-served.jpg'),
(6, 'img/the-gujarati-thali-served.jpg'),
(7, 'img/images.jpg'),
(8, 'img/thali.jpg'),
(9, 'img/chines.jpg'),
(10, 'img/abc.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `id` bigint(12) NOT NULL,
  `category` varchar(100) NOT NULL,
  `sub_cat` varchar(120) NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `price` bigint(6) NOT NULL,
  `image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`id`, `category`, `sub_cat`, `title`, `description`, `price`, `image`) VALUES
(4, 'indianfoods', 'Rajwadi Bateta', 'rajwadi bateta nu shak', 'bateta cut and fry in oil make a shak', 40, 'mimg/e7e0aa16c95cca7deae0e222e8794bb5.jpg'),
(5, 'indianfoods', 'Dahi tikhari', 'dahi ni tikhari', 'fry dahi in shak', 50, 'mimg/à¤•à¤¾à¤ à¤¿à¤¯à¤¾à¤µà¤¾à¤¡à¤¼à¥€-à¤¦à¤¹à¥€-à¤¤à¤¿à¤–à¤¾à¤°à¥€-khthiyawadi-dahi-tikhari-recipe-in-hindi-à¤°à¥‡à¤¸à¤¿à¤ªà¥€-à¤®à¥à¤–à¥à¤¯-à¤¤à¤¸à¥à¤µà¥€à¤°.jpg'),
(6, 'indianfoods', 'Masala bhindi', 'masla bhindi nu shak', 'garam masala add in bhindi nu shak', 30, 'mimg/1bhindi.jpg'),
(7, 'indianfoods', 'Rajwadi Dhokli', 'rajwadi dhoki nu shak', 'dhokli fry in oil and fry in dal', 40, 'mimg/hqdefault.jpg'),
(8, 'indianfoods', 'Save Tameta', 'save tameta nu shak', 'save add a in tomato shak and fry', 30, 'mimg/save tameta.jpg'),
(9, 'indianfoods', 'Mag Masala', 'masala mag nu shak', 'masala add im mag shak ', 30, 'mimg/mag masala.jpg'),
(10, 'indianfoods', 'Chole Chana Masala', 'chole chana masala nu shak', 'chana fry in shak with masala', 30, 'mimg/chana-masala-recipe.jpg'),
(11, 'indianfoods', 'Adadni Dal', 'adad ni dal', 'adaa fry in dal with masala', 30, 'mimg/Kathiyawadi_Adal_Dal_.jpg'),
(12, 'indianfoods', 'Bati', 'bati', 'rajsthani bati make by bhak', 30, 'mimg/bati.jpg'),
(13, 'indianfoods', 'Dal', 'dal', 'dal make by tuver and alad', 30, 'mimg/dal-fry-recipe-1.jpg'),
(14, 'indianfoods', 'Salad', 'salad', 'salad make by onion,tomato,beet,racket', 15, 'mimg/best-salad-7.jpg'),
(15, 'indianfoods', 'Butter Milk', 'butter milk', 'butter milk make by dhorvu', 15, 'mimg/Masala-Chaas-Recipe.jpg'),
(16, 'indianfoods', 'Ghee', 'ghee', 'ghee make by makahn', 15, 'mimg/260px-Butterschmalz-3.jpg'),
(17, 'indianfoods', 'Papad', 'papad', 'papad make by adad and khichi', 15, 'mimg/papad.jpg'),
(18, 'indianfoods', 'Rotli', 'rotli', 'rotli make by wheet lot', 20, 'mimg/rotli-2-960x1358.jpg'),
(19, 'indianfoods', 'Ghee Rotli', 'ghwee rotli ', 'ghee add on rotli', 20, 'mimg/desi_ghee_roti-e1542006374654.jpg'),
(20, 'indianfoods', 'Rotla', 'rotla', 'rotla make by bajra and makai lot', 20, 'mimg/rotla_dsc2818-(16)-9-186406.jpg'),
(21, 'indianfoods', 'Bhakhari', 'bhakhari', 'bhakhari make by wheet lot', 20, 'mimg/jowar-bhakri-recipe-main-photo.jpg'),
(22, 'indianfoods', 'Ghee Rotla', 'ghee rotla', 'ghee add in rotla', 20, 'mimg/blogger-image--689930619.jpg'),
(23, 'indianfoods', 'Ghee Bhakhari', '20', 'ghee add on bhakhari', 20, 'mimg/Bhakri_1.jpg'),
(24, 'indianfoods', 'Tava Paratha', 'tava paratha', 'paratha fry in tava', 20, 'mimg/Tawa_Paratha_Recipe-7956.jpg'),
(25, 'indianfoods', 'Rotlanu Churmu', 'rotla nu churmu', 'churmu make by rotla', 20, 'mimg/rotla nu churmu.jpg'),
(26, 'indianfoods', 'Bhakhari nu Churmu', 'bhakhari nu churmu', 'churmu make by bhakhari', 20, 'mimg/churma-step-by-step-recipe.webp'),
(27, 'indianfoods', 'Dryfruit Churmu', 'drufruit churmu', 'dryfruit add in furmu', 20, 'mimg/rotla nu churmu.jpg'),
(28, 'indianfoods', 'Vagharelo Rotlo Dry', 'vagharelo rotlo dry', 'rotlo dry in oil and fry', 20, 'mimg/Vageralo-rotlo-WS.jpg'),
(29, 'indianfoods', 'Vagharelo Rotlo Dahi', 'vagahrelo rotlo dahi', 'dahi fry in rotlo', 20, 'mimg/Vageralo-rotlo-WS.jpg'),
(30, 'indianfoods', 'Dal Rice', 'dal rice', 'rice add in dal', 30, 'mimg/DSC_0870.jpg'),
(31, 'indianfoods', 'Kadhi-Khichadi', '25', 'khichadi add in kadhi', 25, 'mimg/kadhi khichadi.jpg'),
(32, 'indianfoods', 'Vagharela Bhat', 'vagahrela bhat', 'bhat fry in oli ', 25, 'mimg/vagharela-bhaat-6.jpg'),
(33, 'indianfoods', 'Rajwadi Khichadi', 'rajwadi khichadi', 'masala add in khichadi', 25, 'mimg/rajwadi-khichdi-recipe-main-photo.jpg'),
(34, 'indianfoods', 'Dal', 'jaydip', 'nathi', 1, 'mimg/chole bhature.jpg'),
(35, 'fastFoods', '', 'black Chicken Pizza', 'Black Chicken Pizza Srilankan Style ', 3500, 'mimg/black chicken Pizza.png'),
(36, 'fastFoods', '', 'black Chicken Pizza', 'Black Chicken Pizza Srilankan Style ', 3500, 'mimg/black chicken Pizza.png'),
(37, 'drinks', 'Pepsi', 'Pepsi', '250ml', 250, 'mimg/360_F_444930033_90W8uGwARqETLZkiZ33ojQH3P5cZDCL4.webp'),
(38, 'fastfoods', 'Fast foods', 'Pasta', 'Srilanka style Pasta', 800, 'mimg/pasta1.png'),
(39, 'fastfoods', 'Fast foods', 'AvacodaToast', 'Avocado Toast For breads Items', 600, 'mimg/AvacodaToast.png'),
(41, 'fastfoods', 'Fast foods', 'Sushi Burritos', 'Sushi Burritos different colors also there', 750, 'mimg/Sushi Burritos.png'),
(42, 'fastfoods', 'Fast foods', 'Acai Bowls', 'Acai Bowls Srilankan style ', 400, 'mimg/Acai Bowls.png'),
(43, 'fastfoods', 'Fast foods', 'Laksa', 'Laksa out country style', 1200, 'mimg/Laksa.png'),
(45, 'fastfoods', 'Fast foods', 'Burgers', 'srilankan style Burgers', 1350, 'mimg/Burgers.png'),
(46, 'fastfoods', 'Fast foods', 'Fries', 'Fries with source', 650, 'mimg/Fries.png'),
(47, 'drinks', 'Pepsi', 'Coffee', 'different styles Coffees', 450, 'mimg/coffee.png'),
(48, 'drinks', 'Pepsi', 'milktea', ' srilankan style milk Tea', 320, 'mimg/milktea.png'),
(49, 'drinks', 'Pepsi', 'Smoothies', 'different styles smoothies', 630, 'mimg/smoothies.png'),
(50, 'drinks', 'Pepsi', 'water', 'water bottle ', 400, 'mimg/water.png'),
(51, 'drinks', 'Pepsi', 'Veg juice', 'Vegetable juice', 2000, 'mimg/veg juice.png'),
(53, 'drinks', 'Pepsi', 'kombucha', 'srilankan style milk Tea', 680, 'mimg/kombucha.png'),
(54, 'drinks', 'Pepsi', 'milk', 'milk Items', 300, 'mimg/milk.png');

-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

CREATE TABLE `registration` (
  `id` bigint(12) NOT NULL,
  `userid` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `email` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `registration`
--

INSERT INTO `registration` (`id`, `userid`, `password`, `email`) VALUES
(1, 'abcd', 'xyz', 'abc@yahoo.com'),
(2, 'aa', 'bb', 'cc@y.com'),
(3, 'nilkanth', 'nilkanth', 'aaabb@y.com'),
(4, 'abcd', 'ppp', 'abc@yahoo.com'),
(5, 'abcd', 'asdf', 'abc@yahoo.com'),
(6, 'Piratheep', '123456', 'piratheeptheep99@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `review`
--

CREATE TABLE `review` (
  `id` bigint(12) NOT NULL,
  `name` varchar(100) NOT NULL,
  `review` varchar(100) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `review`
--

INSERT INTO `review` (`id`, `name`, `review`, `description`) VALUES
(5, 'Milan vagh', 'Exellent', 'best hotel oh jaffna'),
(6, 'naimish gadhiya', 'Exellent', 'abcdf');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `addcart`
--
ALTER TABLE `addcart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`adminid`);

--
-- Indexes for table `checkout`
--
ALTER TABLE `checkout`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `food_cat`
--
ALTER TABLE `food_cat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gallery`
--
ALTER TABLE `gallery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `registration`
--
ALTER TABLE `registration`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `review`
--
ALTER TABLE `review`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `addcart`
--
ALTER TABLE `addcart`
  MODIFY `id` bigint(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `checkout`
--
ALTER TABLE `checkout`
  MODIFY `id` bigint(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `food_cat`
--
ALTER TABLE `food_cat`
  MODIFY `id` bigint(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT for table `gallery`
--
ALTER TABLE `gallery`
  MODIFY `id` bigint(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `id` bigint(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `registration`
--
ALTER TABLE `registration`
  MODIFY `id` bigint(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `review`
--
ALTER TABLE `review`
  MODIFY `id` bigint(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
