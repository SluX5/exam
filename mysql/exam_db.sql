
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";

CREATE TABLE `exam_rds` (
  `id` int(6) UNSIGNED NOT NULL,
  `firstname` varchar(30) NOT NULL,
  `lastname` varchar(30) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `reg_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `exam_rds` (`id`, `firstname`, `lastname`, `email`, `reg_date`) VALUES
(1, 'exam_rds', 'exam_rds', 'spektr98@gmail.com', '2021-05-02 13:00:00');

ALTER TABLE `exam_rds`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `exam_rds`
  MODIFY `id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;
