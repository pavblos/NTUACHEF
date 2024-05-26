INSERT INTO `EpisodeJudge` (`Episode_ID`, `Cook_ID`) VALUES
(1,16),
(1,36),
(1,4),
(2,24),
(2,53),
(2,6),
(3,25),
(3,18),
(3,43),
(4,26),
(4,51),
(4,54),
(5,42),
(5,50),
(5,20),
(6,44),
(6,5),
(6,15),
(7,1),
(7,21),
(7,15),
(8,1),
(8,2),
(8,34),
(9,4),
(9,5),
(9,39),
(10,3),
(10,12),
(10,46);
INSERT INTO `EpisodeCookCuisineRecipe` (`Episode_ID`, `Cook_ID`, `Cuisine_ID`, `Recipe_ID`) VALUES
(1,34,15,15),
(1,42,19,39),
(1,2,13,33),
(1,52,6,6),
(1,38,2,2),
(1,37,8,8),
(1,24,3,3),
(1,3,18,18),
(1,35,20,40),
(1,14,16,36),
(2,14,16,16),
(2,45,6,6),
(2,26,1,41),
(2,38,3,3),
(2,3,11,31),
(2,48,8,8),
(2,20,10,10),
(2,52,18,18),
(2,22,4,24),
(2,56,2,2),
(3,8,20,40),
(3,52,18,18),
(3,20,12,32),
(3,49,15,15),
(3,31,10,10),
(3,17,19,19),
(3,41,5,25),
(3,5,7,27),
(3,35,6,26),
(3,26,3,46),
(4,27,19,39),
(4,10,4,4),
(4,28,13,33),
(4,34,15,35),
(4,46,17,37),
(4,20,12,48),
(4,37,8,28),
(4,5,14,14),
(4,16,16,16),
(4,55,5,5),
(5,18,12,12),
(5,22,17,17),
(5,19,11,31),
(5,6,13,33),
(5,51,16,16),
(5,30,2,50),
(5,37,8,8),
(5,17,20,20),
(5,12,14,14),
(5,2,7,27),
(6,4,5,5),
(6,3,11,11),
(6,8,20,40),
(6,41,6,26),
(6,55,3,43),
(6,23,7,27),
(6,51,16,36),
(6,48,8,8),
(6,43,2,50),
(6,38,4,24),
(7,27,3,46),
(7,56,2,42),
(7,54,14,14),
(7,49,15,35),
(7,52,6,26),
(7,2,12,32),
(7,4,5,5),
(7,38,4,47),
(7,10,17,17),
(7,34,13,33),
(8,12,8,8),
(8,50,16,36),
(8,23,3,43),
(8,36,5,25),
(8,45,6,6),
(8,28,14,34),
(8,35,7,27),
(8,16,17,37),
(8,3,4,4),
(8,41,12,12),
(9,35,13,33),
(9,41,9,29),
(9,55,20,20),
(9,9,17,37),
(9,37,11,31),
(9,20,8,28),
(9,51,16,16),
(9,56,2,42),
(9,26,15,35),
(9,52,1,49),
(10,37,11,11),
(10,49,7,27),
(10,42,15,15),
(10,11,10,10),
(10,2,12,48),
(10,43,2,22),
(10,1,4,44),
(10,52,6,26),
(10,28,1,41),
(10,41,5,5);
INSERT INTO `CookRatings` (`Episode_ID`, `Judge_Cook_ID`, `Episode_Cook_ID`, `Rating`) VALUES
(1,16,34,3),
(1,16,42,4),
(1,16,2,1),
(1,16,52,4),
(1,16,38,2),
(1,16,37,3),
(1,16,24,1),
(1,16,3,2),
(1,16,35,5),
(1,16,14,4),
(1,36,34,2),
(1,36,42,4),
(1,36,2,3),
(1,36,52,1),
(1,36,38,4),
(1,36,37,2),
(1,36,24,2),
(1,36,3,3),
(1,36,35,2),
(1,36,14,3),
(1,4,34,3),
(1,4,42,1),
(1,4,2,3),
(1,4,52,5),
(1,4,38,3),
(1,4,37,1),
(1,4,24,4),
(1,4,3,5),
(1,4,35,4),
(1,4,14,1),
(2,24,14,1),
(2,24,45,2),
(2,24,26,1),
(2,24,38,4),
(2,24,3,3),
(2,24,48,4),
(2,24,20,5),
(2,24,52,3),
(2,24,22,2),
(2,24,56,4),
(2,53,14,3),
(2,53,45,2),
(2,53,26,1),
(2,53,38,2),
(2,53,3,2),
(2,53,48,2),
(2,53,20,3),
(2,53,52,4),
(2,53,22,2),
(2,53,56,3),
(2,6,14,1),
(2,6,45,5),
(2,6,26,4),
(2,6,38,4),
(2,6,3,4),
(2,6,48,5),
(2,6,20,4),
(2,6,52,5),
(2,6,22,3),
(2,6,56,1),
(3,25,8,5),
(3,25,52,3),
(3,25,20,3),
(3,25,49,4),
(3,25,31,3),
(3,25,17,5),
(3,25,41,3),
(3,25,5,4),
(3,25,35,5),
(3,25,26,3),
(3,18,8,4),
(3,18,52,4),
(3,18,20,1),
(3,18,49,2),
(3,18,31,2),
(3,18,17,3),
(3,18,41,3),
(3,18,5,1),
(3,18,35,2),
(3,18,26,3),
(3,43,8,3),
(3,43,52,4),
(3,43,20,4),
(3,43,49,4),
(3,43,31,2),
(3,43,17,1),
(3,43,41,2),
(3,43,5,1),
(3,43,35,2),
(3,43,26,5),
(4,26,27,3),
(4,26,10,4),
(4,26,28,4),
(4,26,34,3),
(4,26,46,4),
(4,26,20,1),
(4,26,37,1),
(4,26,5,5),
(4,26,16,1),
(4,26,55,1),
(4,51,27,2),
(4,51,10,2),
(4,51,28,1),
(4,51,34,1),
(4,51,46,5),
(4,51,20,5),
(4,51,37,1),
(4,51,5,5),
(4,51,16,2),
(4,51,55,2),
(4,54,27,1),
(4,54,10,5),
(4,54,28,3),
(4,54,34,5),
(4,54,46,3),
(4,54,20,2),
(4,54,37,3),
(4,54,5,4),
(4,54,16,1),
(4,54,55,5),
(5,42,18,2),
(5,42,22,4),
(5,42,19,2),
(5,42,6,2),
(5,42,51,5),
(5,42,30,1),
(5,42,37,3),
(5,42,17,4),
(5,42,12,1),
(5,42,2,1),
(5,50,18,5),
(5,50,22,4),
(5,50,19,4),
(5,50,6,4),
(5,50,51,1),
(5,50,30,5),
(5,50,37,1),
(5,50,17,4),
(5,50,12,5),
(5,50,2,3),
(5,20,18,3),
(5,20,22,1),
(5,20,19,3),
(5,20,6,2),
(5,20,51,4),
(5,20,30,4),
(5,20,37,2),
(5,20,17,1),
(5,20,12,3),
(5,20,2,4),
(6,44,4,4),
(6,44,3,5),
(6,44,8,1),
(6,44,41,4),
(6,44,55,2),
(6,44,23,1),
(6,44,51,3),
(6,44,48,1),
(6,44,43,4),
(6,44,38,3),
(6,5,4,4),
(6,5,3,2),
(6,5,8,5),
(6,5,41,4),
(6,5,55,1),
(6,5,23,5),
(6,5,51,3),
(6,5,48,3),
(6,5,43,3),
(6,5,38,3),
(6,15,4,3),
(6,15,3,1),
(6,15,8,4),
(6,15,41,4),
(6,15,55,5),
(6,15,23,2),
(6,15,51,1),
(6,15,48,2),
(6,15,43,3),
(6,15,38,4),
(7,1,27,1),
(7,1,56,2),
(7,1,54,2),
(7,1,49,4),
(7,1,52,1),
(7,1,2,4),
(7,1,4,1),
(7,1,38,1),
(7,1,10,4),
(7,1,34,5),
(7,21,27,5),
(7,21,56,5),
(7,21,54,3),
(7,21,49,4),
(7,21,52,3),
(7,21,2,3),
(7,21,4,5),
(7,21,38,4),
(7,21,10,4),
(7,21,34,4),
(7,15,27,3),
(7,15,56,4),
(7,15,54,3),
(7,15,49,2),
(7,15,52,3),
(7,15,2,5),
(7,15,4,2),
(7,15,38,5),
(7,15,10,5),
(7,15,34,4),
(8,1,12,5),
(8,1,50,4),
(8,1,23,1),
(8,1,36,3),
(8,1,45,3),
(8,1,28,1),
(8,1,35,4),
(8,1,16,1),
(8,1,3,4),
(8,1,41,1),
(8,2,12,5),
(8,2,50,3),
(8,2,23,4),
(8,2,36,1),
(8,2,45,4),
(8,2,28,3),
(8,2,35,1),
(8,2,16,2),
(8,2,3,2),
(8,2,41,1),
(8,34,12,3),
(8,34,50,4),
(8,34,23,4),
(8,34,36,1),
(8,34,45,3),
(8,34,28,4),
(8,34,35,3),
(8,34,16,2),
(8,34,3,2),
(8,34,41,5),
(9,4,35,2),
(9,4,41,1),
(9,4,55,3),
(9,4,9,3),
(9,4,37,5),
(9,4,20,4),
(9,4,51,3),
(9,4,56,3),
(9,4,26,2),
(9,4,52,5),
(9,5,35,2),
(9,5,41,5),
(9,5,55,2),
(9,5,9,4),
(9,5,37,1),
(9,5,20,4),
(9,5,51,5),
(9,5,56,5),
(9,5,26,4),
(9,5,52,2),
(9,39,35,4),
(9,39,41,2),
(9,39,55,2),
(9,39,9,5),
(9,39,37,5),
(9,39,20,5),
(9,39,51,1),
(9,39,56,2),
(9,39,26,5),
(9,39,52,3),
(10,3,37,4),
(10,3,49,5),
(10,3,42,1),
(10,3,11,1),
(10,3,2,5),
(10,3,43,5),
(10,3,1,2),
(10,3,52,3),
(10,3,28,4),
(10,3,41,2),
(10,12,37,1),
(10,12,49,5),
(10,12,42,5),
(10,12,11,1),
(10,12,2,4),
(10,12,43,5),
(10,12,1,3),
(10,12,52,5),
(10,12,28,1),
(10,12,41,1),
(10,46,37,3),
(10,46,49,4),
(10,46,42,3),
(10,46,11,2),
(10,46,2,3),
(10,46,43,2),
(10,46,1,3),
(10,46,52,2),
(10,46,28,2),
(10,46,41,5);
INSERT INTO `EpisodeJudge` (`Episode_ID`, `Cook_ID`) VALUES
(11,54),
(11,20),
(11,14),
(12,24),
(12,41),
(12,15),
(13,56),
(13,27),
(13,13),
(14,33),
(14,13),
(14,45),
(15,1),
(15,45),
(15,15),
(16,34),
(16,36),
(16,55),
(17,53),
(17,37),
(17,47),
(18,41),
(18,29),
(18,38),
(19,10),
(19,52),
(19,30),
(20,26),
(20,12),
(20,14);
INSERT INTO `EpisodeCookCuisineRecipe` (`Episode_ID`, `Cook_ID`, `Cuisine_ID`, `Recipe_ID`) VALUES
(11,51,16,36),
(11,41,5,5),
(11,4,13,33),
(11,28,3,43),
(11,38,2,42),
(11,21,1,49),
(11,8,8,28),
(11,45,6,6),
(11,39,12,48),
(11,53,19,39),
(12,30,4,44),
(12,22,19,39),
(12,17,12,48),
(12,6,18,18),
(12,21,16,36),
(12,27,3,46),
(12,20,15,15),
(12,47,14,34),
(12,7,13,33),
(12,54,20,20),
(13,38,9,9),
(13,47,5,5),
(13,52,1,21),
(13,16,16,16),
(13,19,19,39),
(13,20,15,35),
(13,7,13,33),
(13,6,3,46),
(13,17,20,40),
(13,39,12,48),
(14,8,8,8),
(14,36,9,29),
(14,54,20,20),
(14,32,2,50),
(14,40,15,15),
(14,20,18,18),
(14,19,11,31),
(14,38,4,44),
(14,4,7,27),
(14,9,17,17),
(15,23,7,27),
(15,21,5,45),
(15,32,2,42),
(15,52,1,41),
(15,22,19,19),
(15,19,11,11),
(15,28,18,38),
(15,38,9,9),
(15,6,10,10),
(15,41,6,6),
(16,53,19,39),
(16,48,20,20),
(16,16,14,14),
(16,28,3,3),
(16,49,16,16),
(16,25,15,15),
(16,3,11,31),
(16,11,10,1),
(16,23,13,33),
(16,41,6,6),
(17,27,19,19),
(17,40,15,35),
(17,2,13,13),
(17,52,5,45),
(17,12,8,8),
(17,1,1,49),
(17,15,9,29),
(17,22,4,4),
(17,23,10,30),
(17,10,17,37),
(18,52,18,18),
(18,44,16,36),
(18,6,3,43),
(18,47,5,5),
(18,1,4,47),
(18,17,12,32),
(18,49,7,27),
(18,7,9,9),
(18,21,1,41),
(18,42,15,35),
(19,7,9,9),
(19,6,10,10),
(19,24,18,18),
(19,36,5,45),
(19,19,11,31),
(19,55,16,36),
(19,11,2,22),
(19,2,6,6),
(19,53,19,19),
(19,28,13,33),
(20,37,20,40),
(20,23,10,1),
(20,8,8,8),
(20,16,17,17),
(20,41,12,12),
(20,3,11,11),
(20,5,14,34),
(20,25,15,35),
(20,17,19,19),
(20,2,7,27);
INSERT INTO `CookRatings` (`Episode_ID`, `Judge_Cook_ID`, `Episode_Cook_ID`, `Rating`) VALUES
(11,54,51,1),
(11,54,41,5),
(11,54,4,5),
(11,54,28,4),
(11,54,38,5),
(11,54,21,2),
(11,54,8,2),
(11,54,45,4),
(11,54,39,1),
(11,54,53,3),
(11,20,51,3),
(11,20,41,5),
(11,20,4,1),
(11,20,28,5),
(11,20,38,2),
(11,20,21,3),
(11,20,8,5),
(11,20,45,5),
(11,20,39,1),
(11,20,53,4),
(11,14,51,3),
(11,14,41,2),
(11,14,4,2),
(11,14,28,5),
(11,14,38,4),
(11,14,21,5),
(11,14,8,1),
(11,14,45,2),
(11,14,39,5),
(11,14,53,1),
(12,24,30,1),
(12,24,22,4),
(12,24,17,2),
(12,24,6,3),
(12,24,21,2),
(12,24,27,2),
(12,24,20,3),
(12,24,47,4),
(12,24,7,2),
(12,24,54,4),
(12,41,30,5),
(12,41,22,3),
(12,41,17,5),
(12,41,6,3),
(12,41,21,1),
(12,41,27,2),
(12,41,20,1),
(12,41,47,4),
(12,41,7,3),
(12,41,54,1),
(12,15,30,5),
(12,15,22,3),
(12,15,17,4),
(12,15,6,2),
(12,15,21,2),
(12,15,27,4),
(12,15,20,3),
(12,15,47,1),
(12,15,7,3),
(12,15,54,1),
(13,56,38,1),
(13,56,47,2),
(13,56,52,4),
(13,56,16,2),
(13,56,19,1),
(13,56,20,4),
(13,56,7,1),
(13,56,6,5),
(13,56,17,3),
(13,56,39,1),
(13,27,38,5),
(13,27,47,1),
(13,27,52,3),
(13,27,16,2),
(13,27,19,3),
(13,27,20,3),
(13,27,7,5),
(13,27,6,5),
(13,27,17,3),
(13,27,39,4),
(13,13,38,5),
(13,13,47,2),
(13,13,52,1),
(13,13,16,5),
(13,13,19,2),
(13,13,20,3),
(13,13,7,5),
(13,13,6,4),
(13,13,17,4),
(13,13,39,4),
(14,33,8,1),
(14,33,36,4),
(14,33,54,4),
(14,33,32,4),
(14,33,40,2),
(14,33,20,3),
(14,33,19,3),
(14,33,38,3),
(14,33,4,3),
(14,33,9,1),
(14,13,8,3),
(14,13,36,2),
(14,13,54,1),
(14,13,32,5),
(14,13,40,5),
(14,13,20,2),
(14,13,19,5),
(14,13,38,3),
(14,13,4,3),
(14,13,9,2),
(14,45,8,1),
(14,45,36,5),
(14,45,54,5),
(14,45,32,3),
(14,45,40,2),
(14,45,20,1),
(14,45,19,5),
(14,45,38,2),
(14,45,4,2),
(14,45,9,4),
(15,1,23,4),
(15,1,21,2),
(15,1,32,1),
(15,1,52,5),
(15,1,22,4),
(15,1,19,4),
(15,1,28,5),
(15,1,38,3),
(15,1,6,4),
(15,1,41,1),
(15,45,23,2),
(15,45,21,1),
(15,45,32,3),
(15,45,52,1),
(15,45,22,5),
(15,45,19,3),
(15,45,28,4),
(15,45,38,1),
(15,45,6,5),
(15,45,41,4),
(15,15,23,5),
(15,15,21,4),
(15,15,32,1),
(15,15,52,3),
(15,15,22,1),
(15,15,19,3),
(15,15,28,4),
(15,15,38,5),
(15,15,6,2),
(15,15,41,3),
(16,34,53,5),
(16,34,48,1),
(16,34,16,2),
(16,34,28,4),
(16,34,49,1),
(16,34,25,5),
(16,34,3,1),
(16,34,11,3),
(16,34,23,1),
(16,34,41,5),
(16,36,53,1),
(16,36,48,3),
(16,36,16,3),
(16,36,28,4),
(16,36,49,3),
(16,36,25,3),
(16,36,3,4),
(16,36,11,5),
(16,36,23,3),
(16,36,41,5),
(16,55,53,5),
(16,55,48,5),
(16,55,16,2),
(16,55,28,4),
(16,55,49,3),
(16,55,25,5),
(16,55,3,2),
(16,55,11,1),
(16,55,23,3),
(16,55,41,4),
(17,53,27,5),
(17,53,40,4),
(17,53,2,3),
(17,53,52,5),
(17,53,12,5),
(17,53,1,5),
(17,53,15,2),
(17,53,22,1),
(17,53,23,2),
(17,53,10,4),
(17,37,27,4),
(17,37,40,3),
(17,37,2,4),
(17,37,52,2),
(17,37,12,5),
(17,37,1,5),
(17,37,15,4),
(17,37,22,2),
(17,37,23,4),
(17,37,10,5),
(17,47,27,2),
(17,47,40,5),
(17,47,2,5),
(17,47,52,1),
(17,47,12,4),
(17,47,1,4),
(17,47,15,2),
(17,47,22,3),
(17,47,23,5),
(17,47,10,3),
(18,41,52,5),
(18,41,44,1),
(18,41,6,3),
(18,41,47,4),
(18,41,1,3),
(18,41,17,3),
(18,41,49,4),
(18,41,7,5),
(18,41,21,2),
(18,41,42,1),
(18,29,52,5),
(18,29,44,3),
(18,29,6,1),
(18,29,47,2),
(18,29,1,1),
(18,29,17,5),
(18,29,49,2),
(18,29,7,3),
(18,29,21,3),
(18,29,42,5),
(18,38,52,4),
(18,38,44,5),
(18,38,6,3),
(18,38,47,3),
(18,38,1,1),
(18,38,17,5),
(18,38,49,5),
(18,38,7,5),
(18,38,21,1),
(18,38,42,4),
(19,10,7,2),
(19,10,6,2),
(19,10,24,4),
(19,10,36,3),
(19,10,19,1),
(19,10,55,1),
(19,10,11,4),
(19,10,2,4),
(19,10,53,3),
(19,10,28,5),
(19,52,7,1),
(19,52,6,5),
(19,52,24,2),
(19,52,36,2),
(19,52,19,3),
(19,52,55,5),
(19,52,11,3),
(19,52,2,3),
(19,52,53,3),
(19,52,28,3),
(19,30,7,3),
(19,30,6,2),
(19,30,24,4),
(19,30,36,4),
(19,30,19,4),
(19,30,55,2),
(19,30,11,5),
(19,30,2,3),
(19,30,53,4),
(19,30,28,5),
(20,26,37,5),
(20,26,23,2),
(20,26,8,3),
(20,26,16,3),
(20,26,41,4),
(20,26,3,1),
(20,26,5,2),
(20,26,25,3),
(20,26,17,4),
(20,26,2,5),
(20,12,37,5),
(20,12,23,5),
(20,12,8,3),
(20,12,16,1),
(20,12,41,2),
(20,12,3,3),
(20,12,5,2),
(20,12,25,1),
(20,12,17,5),
(20,12,2,3),
(20,14,37,3),
(20,14,23,1),
(20,14,8,3),
(20,14,16,5),
(20,14,41,3),
(20,14,3,2),
(20,14,5,1),
(20,14,25,5),
(20,14,17,4),
(20,14,2,5);
INSERT INTO `EpisodeJudge` (`Episode_ID`, `Cook_ID`) VALUES
(21,4),
(21,12),
(21,47),
(22,56),
(22,19),
(22,52),
(23,49),
(23,11),
(23,20),
(24,9),
(24,28),
(24,38),
(25,25),
(25,1),
(25,47),
(26,22),
(26,46),
(26,55),
(27,8),
(27,4),
(27,15),
(28,10),
(28,53),
(28,45),
(29,50),
(29,52),
(29,37),
(30,8),
(30,50),
(30,27);
INSERT INTO `EpisodeCookCuisineRecipe` (`Episode_ID`, `Cook_ID`, `Cuisine_ID`, `Recipe_ID`) VALUES
(21,18,6,26),
(21,19,11,11),
(21,2,7,27),
(21,14,1,41),
(21,3,18,18),
(21,30,4,24),
(21,20,8,28),
(21,27,12,12),
(21,49,16,36),
(21,38,9,29),
(22,3,11,31),
(22,35,6,26),
(22,46,17,17),
(22,30,4,44),
(22,8,8,8),
(22,25,3,23),
(22,14,16,16),
(22,29,1,49),
(22,41,12,32),
(22,26,15,35),
(23,42,18,38),
(23,47,14,34),
(23,24,3,46),
(23,41,17,37),
(23,51,16,16),
(23,13,1,49),
(23,23,10,10),
(23,34,5,5),
(23,14,11,11),
(23,45,6,26),
(24,8,8,28),
(24,56,2,2),
(24,20,12,32),
(24,55,3,3),
(24,25,15,15),
(24,24,18,38),
(24,10,10,1),
(24,42,14,14),
(24,32,7,27),
(24,15,5,5),
(25,20,10,30),
(25,15,9,9),
(25,21,1,49),
(25,48,8,28),
(25,50,16,16),
(25,11,2,2),
(25,29,17,37),
(25,2,13,33),
(25,17,20,40),
(25,5,14,34),
(26,45,6,26),
(26,26,15,15),
(26,15,17,37),
(26,28,3,3),
(26,32,2,2),
(26,20,18,18),
(26,34,1,21),
(26,48,8,8),
(26,27,19,39),
(26,38,9,9),
(27,40,15,15),
(27,7,9,29),
(27,12,14,34),
(27,10,17,37),
(27,27,12,48),
(27,19,19,39),
(27,3,18,18),
(27,41,6,26),
(27,23,10,30),
(27,52,5,7),
(28,37,13,33),
(28,13,3,23),
(28,34,5,7),
(28,52,1,41),
(28,19,19,19),
(28,12,8,28),
(28,6,10,30),
(28,4,20,20),
(28,35,7,27),
(28,47,14,34),
(29,26,1,21),
(29,48,20,40),
(29,32,7,27),
(29,45,9,9),
(29,25,3,43),
(29,49,15,35),
(29,38,14,14),
(29,36,5,25),
(29,14,16,16),
(29,22,4,4),
(30,48,20,40),
(30,25,15,35),
(30,32,2,22),
(30,22,17,37),
(30,37,8,8),
(30,3,11,11),
(30,36,9,29),
(30,52,18,18),
(30,13,3,23),
(30,21,16,36);
INSERT INTO `CookRatings` (`Episode_ID`, `Judge_Cook_ID`, `Episode_Cook_ID`, `Rating`) VALUES
(21,4,18,5),
(21,4,19,4),
(21,4,2,1),
(21,4,14,2),
(21,4,3,2),
(21,4,30,1),
(21,4,20,1),
(21,4,27,3),
(21,4,49,1),
(21,4,38,4),
(21,12,18,3),
(21,12,19,4),
(21,12,2,2),
(21,12,14,1),
(21,12,3,1),
(21,12,30,1),
(21,12,20,5),
(21,12,27,1),
(21,12,49,3),
(21,12,38,4),
(21,47,18,1),
(21,47,19,3),
(21,47,2,1),
(21,47,14,3),
(21,47,3,5),
(21,47,30,3),
(21,47,20,5),
(21,47,27,3),
(21,47,49,3),
(21,47,38,1),
(22,56,3,1),
(22,56,35,2),
(22,56,46,3),
(22,56,30,1),
(22,56,8,2),
(22,56,25,5),
(22,56,14,2),
(22,56,29,2),
(22,56,41,3),
(22,56,26,5),
(22,19,3,4),
(22,19,35,4),
(22,19,46,5),
(22,19,30,3),
(22,19,8,3),
(22,19,25,3),
(22,19,14,4),
(22,19,29,2),
(22,19,41,5),
(22,19,26,2),
(22,52,3,1),
(22,52,35,5),
(22,52,46,2),
(22,52,30,2),
(22,52,8,2),
(22,52,25,5),
(22,52,14,1),
(22,52,29,5),
(22,52,41,2),
(22,52,26,5),
(23,49,42,5),
(23,49,47,2),
(23,49,24,2),
(23,49,41,4),
(23,49,51,1),
(23,49,13,5),
(23,49,23,4),
(23,49,34,2),
(23,49,14,3),
(23,49,45,3),
(23,11,42,2),
(23,11,47,3),
(23,11,24,5),
(23,11,41,4),
(23,11,51,1),
(23,11,13,4),
(23,11,23,2),
(23,11,34,4),
(23,11,14,1),
(23,11,45,5),
(23,20,42,3),
(23,20,47,1),
(23,20,24,1),
(23,20,41,5),
(23,20,51,3),
(23,20,13,1),
(23,20,23,3),
(23,20,34,3),
(23,20,14,4),
(23,20,45,1),
(24,9,8,1),
(24,9,56,3),
(24,9,20,4),
(24,9,55,5),
(24,9,25,3),
(24,9,24,2),
(24,9,10,3),
(24,9,42,3),
(24,9,32,3),
(24,9,15,2),
(24,28,8,4),
(24,28,56,4),
(24,28,20,4),
(24,28,55,5),
(24,28,25,2),
(24,28,24,5),
(24,28,10,5),
(24,28,42,2),
(24,28,32,3),
(24,28,15,2),
(24,38,8,3),
(24,38,56,2),
(24,38,20,5),
(24,38,55,3),
(24,38,25,1),
(24,38,24,1),
(24,38,10,3),
(24,38,42,3),
(24,38,32,1),
(24,38,15,4),
(25,25,20,5),
(25,25,15,4),
(25,25,21,1),
(25,25,48,1),
(25,25,50,4),
(25,25,11,5),
(25,25,29,3),
(25,25,2,2),
(25,25,17,2),
(25,25,5,5),
(25,1,20,3),
(25,1,15,2),
(25,1,21,4),
(25,1,48,1),
(25,1,50,1),
(25,1,11,3),
(25,1,29,3),
(25,1,2,4),
(25,1,17,3),
(25,1,5,2),
(25,47,20,5),
(25,47,15,4),
(25,47,21,4),
(25,47,48,3),
(25,47,50,4),
(25,47,11,1),
(25,47,29,1),
(25,47,2,1),
(25,47,17,3),
(25,47,5,3),
(26,22,45,5),
(26,22,26,5),
(26,22,15,1),
(26,22,28,3),
(26,22,32,4),
(26,22,20,2),
(26,22,34,5),
(26,22,48,3),
(26,22,27,3),
(26,22,38,2),
(26,46,45,4),
(26,46,26,1),
(26,46,15,1),
(26,46,28,5),
(26,46,32,5),
(26,46,20,2),
(26,46,34,2),
(26,46,48,2),
(26,46,27,2),
(26,46,38,4),
(26,55,45,2),
(26,55,26,3),
(26,55,15,3),
(26,55,28,1),
(26,55,32,1),
(26,55,20,5),
(26,55,34,3),
(26,55,48,1),
(26,55,27,1),
(26,55,38,4),
(27,8,40,5),
(27,8,7,3),
(27,8,12,4),
(27,8,10,3),
(27,8,27,4),
(27,8,19,3),
(27,8,3,4),
(27,8,41,3),
(27,8,23,1),
(27,8,52,3),
(27,4,40,2),
(27,4,7,3),
(27,4,12,2),
(27,4,10,4),
(27,4,27,1),
(27,4,19,3),
(27,4,3,5),
(27,4,41,5),
(27,4,23,1),
(27,4,52,5),
(27,15,40,1),
(27,15,7,1),
(27,15,12,5),
(27,15,10,3),
(27,15,27,1),
(27,15,19,1),
(27,15,3,1),
(27,15,41,5),
(27,15,23,4),
(27,15,52,2),
(28,10,37,3),
(28,10,13,2),
(28,10,34,2),
(28,10,52,5),
(28,10,19,1),
(28,10,12,5),
(28,10,6,2),
(28,10,4,3),
(28,10,35,2),
(28,10,47,2),
(28,53,37,1),
(28,53,13,2),
(28,53,34,2),
(28,53,52,3),
(28,53,19,3),
(28,53,12,3),
(28,53,6,3),
(28,53,4,5),
(28,53,35,4),
(28,53,47,4),
(28,45,37,4),
(28,45,13,4),
(28,45,34,1),
(28,45,52,2),
(28,45,19,2),
(28,45,12,2),
(28,45,6,5),
(28,45,4,4),
(28,45,35,5),
(28,45,47,1),
(29,50,26,1),
(29,50,48,4),
(29,50,32,4),
(29,50,45,2),
(29,50,25,1),
(29,50,49,2),
(29,50,38,1),
(29,50,36,3),
(29,50,14,1),
(29,50,22,4),
(29,52,26,1),
(29,52,48,4),
(29,52,32,5),
(29,52,45,4),
(29,52,25,4),
(29,52,49,2),
(29,52,38,1),
(29,52,36,5),
(29,52,14,1),
(29,52,22,1),
(29,37,26,3),
(29,37,48,1),
(29,37,32,4),
(29,37,45,1),
(29,37,25,1),
(29,37,49,2),
(29,37,38,5),
(29,37,36,1),
(29,37,14,3),
(29,37,22,3),
(30,8,48,5),
(30,8,25,5),
(30,8,32,3),
(30,8,22,2),
(30,8,37,1),
(30,8,3,4),
(30,8,36,1),
(30,8,52,5),
(30,8,13,2),
(30,8,21,1),
(30,50,48,4),
(30,50,25,1),
(30,50,32,2),
(30,50,22,5),
(30,50,37,3),
(30,50,3,2),
(30,50,36,1),
(30,50,52,4),
(30,50,13,3),
(30,50,21,5),
(30,27,48,5),
(30,27,25,5),
(30,27,32,4),
(30,27,22,4),
(30,27,37,3),
(30,27,3,1),
(30,27,36,3),
(30,27,52,4),
(30,27,13,2),
(30,27,21,3);
INSERT INTO `EpisodeJudge` (`Episode_ID`, `Cook_ID`) VALUES
(31,17),
(31,2),
(31,53),
(32,8),
(32,25),
(32,4),
(33,9),
(33,11),
(33,21),
(34,24),
(34,49),
(34,12),
(35,24),
(35,11),
(35,20),
(36,18),
(36,38),
(36,15),
(37,33),
(37,18),
(37,39),
(38,9),
(38,26),
(38,34),
(39,16),
(39,49),
(39,15),
(40,33),
(40,18),
(40,12);
INSERT INTO `EpisodeCookCuisineRecipe` (`Episode_ID`, `Cook_ID`, `Cuisine_ID`, `Recipe_ID`) VALUES
(31,29,17,37),
(31,42,15,15),
(31,21,1,41),
(31,3,4,47),
(31,55,16,36),
(31,22,19,19),
(31,35,7,27),
(31,37,20,40),
(31,52,14,14),
(31,6,18,38),
(32,20,8,8),
(32,10,17,37),
(32,29,1,49),
(32,18,6,6),
(32,36,9,9),
(32,6,10,30),
(32,54,20,20),
(32,43,2,50),
(32,1,4,47),
(32,26,3,3),
(33,55,16,16),
(33,32,2,2),
(33,18,12,12),
(33,22,19,39),
(33,10,13,13),
(33,36,9,9),
(33,3,11,31),
(33,34,5,45),
(33,17,20,20),
(33,38,14,34),
(34,28,1,41),
(34,38,3,43),
(34,11,2,2),
(34,17,17,17),
(34,48,8,28),
(34,20,10,30),
(34,40,15,15),
(34,5,7,27),
(34,33,6,26),
(34,51,16,36),
(35,25,3,23),
(35,42,19,19),
(35,4,13,13),
(35,10,17,37),
(35,6,10,10),
(35,21,4,44),
(35,49,7,27),
(35,37,11,11),
(35,8,8,8),
(35,44,16,36),
(36,40,15,35),
(36,6,13,33),
(36,55,20,20),
(36,31,10,10),
(36,41,6,26),
(36,14,4,24),
(36,49,7,27),
(36,12,8,28),
(36,27,3,3),
(36,28,18,18),
(37,52,1,21),
(37,45,9,9),
(37,38,4,47),
(37,41,5,25),
(37,2,6,26),
(37,32,2,22),
(37,51,16,36),
(37,12,14,34),
(37,28,13,13),
(37,19,19,19),
(38,42,14,34),
(38,39,12,48),
(38,55,5,5),
(38,19,19,19),
(38,24,18,18),
(38,35,6,26),
(38,20,10,1),
(38,8,20,40),
(38,3,11,31),
(38,6,7,27),
(39,24,3,43),
(39,1,1,41),
(39,21,4,4),
(39,4,7,27),
(39,55,16,16),
(39,53,19,39),
(39,14,11,11),
(39,56,20,40),
(39,47,14,34),
(39,36,5,7),
(40,2,6,6),
(40,24,18,38),
(40,20,8,8),
(40,48,20,20),
(40,43,2,42),
(40,3,12,12),
(40,7,9,9),
(40,10,10,1),
(40,38,3,3),
(40,5,7,27);
INSERT INTO `CookRatings` (`Episode_ID`, `Judge_Cook_ID`, `Episode_Cook_ID`, `Rating`) VALUES
(31,17,29,5),
(31,17,42,5),
(31,17,21,4),
(31,17,3,3),
(31,17,55,4),
(31,17,22,2),
(31,17,35,5),
(31,17,37,5),
(31,17,52,4),
(31,17,6,3),
(31,2,29,5),
(31,2,42,5),
(31,2,21,3),
(31,2,3,2),
(31,2,55,2),
(31,2,22,1),
(31,2,35,3),
(31,2,37,1),
(31,2,52,2),
(31,2,6,2),
(31,53,29,1),
(31,53,42,3),
(31,53,21,5),
(31,53,3,5),
(31,53,55,4),
(31,53,22,3),
(31,53,35,5),
(31,53,37,5),
(31,53,52,4),
(31,53,6,2),
(32,8,20,3),
(32,8,10,1),
(32,8,29,2),
(32,8,18,3),
(32,8,36,4),
(32,8,6,2),
(32,8,54,3),
(32,8,43,5),
(32,8,1,3),
(32,8,26,4),
(32,25,20,5),
(32,25,10,3),
(32,25,29,1),
(32,25,18,4),
(32,25,36,3),
(32,25,6,3),
(32,25,54,4),
(32,25,43,2),
(32,25,1,4),
(32,25,26,3),
(32,4,20,5),
(32,4,10,4),
(32,4,29,2),
(32,4,18,4),
(32,4,36,5),
(32,4,6,1),
(32,4,54,5),
(32,4,43,5),
(32,4,1,2),
(32,4,26,2),
(33,9,55,1),
(33,9,32,2),
(33,9,18,3),
(33,9,22,5),
(33,9,10,2),
(33,9,36,5),
(33,9,3,2),
(33,9,34,5),
(33,9,17,3),
(33,9,38,3),
(33,11,55,3),
(33,11,32,3),
(33,11,18,4),
(33,11,22,4),
(33,11,10,4),
(33,11,36,1),
(33,11,3,1),
(33,11,34,1),
(33,11,17,5),
(33,11,38,1),
(33,21,55,1),
(33,21,32,5),
(33,21,18,1),
(33,21,22,4),
(33,21,10,5),
(33,21,36,3),
(33,21,3,3),
(33,21,34,2),
(33,21,17,1),
(33,21,38,4),
(34,24,28,5),
(34,24,38,4),
(34,24,11,1),
(34,24,17,3),
(34,24,48,4),
(34,24,20,4),
(34,24,40,5),
(34,24,5,3),
(34,24,33,3),
(34,24,51,3),
(34,49,28,3),
(34,49,38,3),
(34,49,11,1),
(34,49,17,1),
(34,49,48,2),
(34,49,20,5),
(34,49,40,4),
(34,49,5,4),
(34,49,33,2),
(34,49,51,5),
(34,12,28,1),
(34,12,38,3),
(34,12,11,2),
(34,12,17,2),
(34,12,48,2),
(34,12,20,1),
(34,12,40,4),
(34,12,5,4),
(34,12,33,2),
(34,12,51,2),
(35,24,25,1),
(35,24,42,2),
(35,24,4,3),
(35,24,10,3),
(35,24,6,2),
(35,24,21,5),
(35,24,49,2),
(35,24,37,3),
(35,24,8,3),
(35,24,44,2),
(35,11,25,4),
(35,11,42,2),
(35,11,4,1),
(35,11,10,1),
(35,11,6,4),
(35,11,21,1),
(35,11,49,3),
(35,11,37,4),
(35,11,8,1),
(35,11,44,2),
(35,20,25,3),
(35,20,42,5),
(35,20,4,3),
(35,20,10,3),
(35,20,6,4),
(35,20,21,2),
(35,20,49,2),
(35,20,37,5),
(35,20,8,1),
(35,20,44,2),
(36,18,40,1),
(36,18,6,1),
(36,18,55,4),
(36,18,31,1),
(36,18,41,5),
(36,18,14,4),
(36,18,49,2),
(36,18,12,1),
(36,18,27,1),
(36,18,28,4),
(36,38,40,2),
(36,38,6,3),
(36,38,55,4),
(36,38,31,3),
(36,38,41,3),
(36,38,14,1),
(36,38,49,2),
(36,38,12,2),
(36,38,27,3),
(36,38,28,4),
(36,15,40,3),
(36,15,6,2),
(36,15,55,2),
(36,15,31,1),
(36,15,41,1),
(36,15,14,3),
(36,15,49,1),
(36,15,12,1),
(36,15,27,1),
(36,15,28,5),
(37,33,52,1),
(37,33,45,2),
(37,33,38,4),
(37,33,41,4),
(37,33,2,4),
(37,33,32,1),
(37,33,51,2),
(37,33,12,3),
(37,33,28,4),
(37,33,19,5),
(37,18,52,4),
(37,18,45,4),
(37,18,38,1),
(37,18,41,3),
(37,18,2,2),
(37,18,32,3),
(37,18,51,4),
(37,18,12,5),
(37,18,28,2),
(37,18,19,3),
(37,39,52,2),
(37,39,45,2),
(37,39,38,2),
(37,39,41,3),
(37,39,2,3),
(37,39,32,5),
(37,39,51,2),
(37,39,12,2),
(37,39,28,5),
(37,39,19,3),
(38,9,42,5),
(38,9,39,1),
(38,9,55,1),
(38,9,19,4),
(38,9,24,5),
(38,9,35,4),
(38,9,20,5),
(38,9,8,3),
(38,9,3,3),
(38,9,6,1),
(38,26,42,2),
(38,26,39,4),
(38,26,55,2),
(38,26,19,3),
(38,26,24,3),
(38,26,35,5),
(38,26,20,3),
(38,26,8,2),
(38,26,3,2),
(38,26,6,1),
(38,34,42,5),
(38,34,39,4),
(38,34,55,4),
(38,34,19,2),
(38,34,24,3),
(38,34,35,3),
(38,34,20,4),
(38,34,8,2),
(38,34,3,1),
(38,34,6,3),
(39,16,24,4),
(39,16,1,5),
(39,16,21,1),
(39,16,4,1),
(39,16,55,5),
(39,16,53,2),
(39,16,14,3),
(39,16,56,1),
(39,16,47,2),
(39,16,36,4),
(39,49,24,1),
(39,49,1,3),
(39,49,21,1),
(39,49,4,1),
(39,49,55,2),
(39,49,53,1),
(39,49,14,1),
(39,49,56,4),
(39,49,47,1),
(39,49,36,2),
(39,15,24,2),
(39,15,1,1),
(39,15,21,3),
(39,15,4,5),
(39,15,55,2),
(39,15,53,1),
(39,15,14,3),
(39,15,56,3),
(39,15,47,3),
(39,15,36,3),
(40,33,2,1),
(40,33,24,4),
(40,33,20,2),
(40,33,48,4),
(40,33,43,4),
(40,33,3,3),
(40,33,7,3),
(40,33,10,3),
(40,33,38,4),
(40,33,5,2),
(40,18,2,2),
(40,18,24,5),
(40,18,20,2),
(40,18,48,3),
(40,18,43,1),
(40,18,3,1),
(40,18,7,1),
(40,18,10,2),
(40,18,38,1),
(40,18,5,5),
(40,12,2,3),
(40,12,24,1),
(40,12,20,2),
(40,12,48,3),
(40,12,43,5),
(40,12,3,4),
(40,12,7,3),
(40,12,10,2),
(40,12,38,1),
(40,12,5,3);
INSERT INTO `EpisodeJudge` (`Episode_ID`, `Cook_ID`) VALUES
(41,18),
(41,36),
(41,44),
(42,40),
(42,48),
(42,5),
(43,32),
(43,31),
(43,55),
(44,16),
(44,33),
(44,18),
(45,50),
(45,37),
(45,7),
(46,8),
(46,17),
(46,51),
(47,40),
(47,29),
(47,31),
(48,16),
(48,18),
(48,30),
(49,16),
(49,1),
(49,56),
(50,33),
(50,19),
(50,31);
INSERT INTO `EpisodeCookCuisineRecipe` (`Episode_ID`, `Cook_ID`, `Cuisine_ID`, `Recipe_ID`) VALUES
(41,14,11,11),
(41,28,18,38),
(41,29,17,37),
(41,7,9,9),
(41,52,1,21),
(41,24,20,20),
(41,38,4,24),
(41,41,6,26),
(41,17,12,48),
(41,6,10,30),
(42,23,10,1),
(42,18,4,24),
(42,45,6,26),
(42,29,1,21),
(42,26,15,15),
(42,42,18,18),
(42,8,20,40),
(42,46,17,37),
(42,52,5,5),
(42,28,3,46),
(43,11,10,30),
(43,20,8,28),
(43,54,14,14),
(43,50,16,16),
(43,17,19,39),
(43,2,7,27),
(43,34,5,45),
(43,51,15,15),
(43,38,3,3),
(43,19,11,11),
(44,27,12,48),
(44,28,1,41),
(44,8,8,28),
(44,43,2,2),
(44,46,17,17),
(44,26,15,15),
(44,4,20,40),
(44,7,9,9),
(44,19,11,31),
(44,41,6,26),
(45,17,17,17),
(45,1,1,21),
(45,41,5,25),
(45,3,11,31),
(45,21,16,16),
(45,10,13,33),
(45,6,18,38),
(45,39,12,32),
(45,8,8,28),
(45,42,19,39),
(46,45,9,29),
(46,18,12,32),
(46,34,5,45),
(46,21,1,49),
(46,13,3,43),
(46,11,10,1),
(46,10,20,20),
(46,42,15,35),
(46,38,4,44),
(46,16,17,17),
(47,45,16,36),
(47,25,15,35),
(47,15,5,45),
(47,54,14,34),
(47,36,9,29),
(47,4,20,40),
(47,38,4,24),
(47,12,8,8),
(47,2,13,13),
(47,27,3,3),
(48,12,14,34),
(48,24,18,18),
(48,6,7,27),
(48,3,11,31),
(48,26,15,35),
(48,38,2,2),
(48,15,9,9),
(48,33,6,6),
(48,28,1,49),
(48,37,20,40),
(49,24,3,46),
(49,42,19,39),
(49,11,10,10),
(49,39,12,32),
(49,20,18,18),
(49,47,14,34),
(49,6,7,27),
(49,55,16,16),
(49,48,8,8),
(49,15,5,5),
(50,37,20,40),
(50,10,10,10),
(50,27,19,19),
(50,6,7,27),
(50,2,6,26),
(50,14,1,21),
(50,3,11,31),
(50,12,8,8),
(50,41,9,9),
(50,38,2,2);
INSERT INTO `CookRatings` (`Episode_ID`, `Judge_Cook_ID`, `Episode_Cook_ID`, `Rating`) VALUES
(41,18,14,4),
(41,18,28,5),
(41,18,29,4),
(41,18,7,3),
(41,18,52,3),
(41,18,24,2),
(41,18,38,3),
(41,18,41,3),
(41,18,17,5),
(41,18,6,5),
(41,36,14,3),
(41,36,28,3),
(41,36,29,2),
(41,36,7,1),
(41,36,52,4),
(41,36,24,2),
(41,36,38,5),
(41,36,41,3),
(41,36,17,4),
(41,36,6,1),
(41,44,14,3),
(41,44,28,2),
(41,44,29,4),
(41,44,7,4),
(41,44,52,4),
(41,44,24,5),
(41,44,38,1),
(41,44,41,1),
(41,44,17,2),
(41,44,6,1),
(42,40,23,1),
(42,40,18,2),
(42,40,45,4),
(42,40,29,5),
(42,40,26,2),
(42,40,42,2),
(42,40,8,2),
(42,40,46,3),
(42,40,52,1),
(42,40,28,4),
(42,48,23,4),
(42,48,18,2),
(42,48,45,5),
(42,48,29,3),
(42,48,26,2),
(42,48,42,3),
(42,48,8,3),
(42,48,46,1),
(42,48,52,3),
(42,48,28,1),
(42,5,23,1),
(42,5,18,1),
(42,5,45,4),
(42,5,29,5),
(42,5,26,5),
(42,5,42,5),
(42,5,8,5),
(42,5,46,3),
(42,5,52,5),
(42,5,28,5),
(43,32,11,2),
(43,32,20,2),
(43,32,54,4),
(43,32,50,3),
(43,32,17,1),
(43,32,2,2),
(43,32,34,1),
(43,32,51,5),
(43,32,38,5),
(43,32,19,4),
(43,31,11,2),
(43,31,20,1),
(43,31,54,2),
(43,31,50,1),
(43,31,17,2),
(43,31,2,4),
(43,31,34,5),
(43,31,51,5),
(43,31,38,1),
(43,31,19,5),
(43,55,11,5),
(43,55,20,3),
(43,55,54,4),
(43,55,50,2),
(43,55,17,4),
(43,55,2,1),
(43,55,34,5),
(43,55,51,5),
(43,55,38,4),
(43,55,19,2),
(44,16,27,4),
(44,16,28,5),
(44,16,8,2),
(44,16,43,1),
(44,16,46,2),
(44,16,26,1),
(44,16,4,5),
(44,16,7,4),
(44,16,19,2),
(44,16,41,3),
(44,33,27,2),
(44,33,28,2),
(44,33,8,1),
(44,33,43,1),
(44,33,46,2),
(44,33,26,3),
(44,33,4,1),
(44,33,7,2),
(44,33,19,5),
(44,33,41,1),
(44,18,27,3),
(44,18,28,5),
(44,18,8,4),
(44,18,43,5),
(44,18,46,1),
(44,18,26,5),
(44,18,4,2),
(44,18,7,5),
(44,18,19,4),
(44,18,41,4),
(45,50,17,4),
(45,50,1,2),
(45,50,41,4),
(45,50,3,3),
(45,50,21,1),
(45,50,10,4),
(45,50,6,3),
(45,50,39,5),
(45,50,8,3),
(45,50,42,4),
(45,37,17,4),
(45,37,1,4),
(45,37,41,1),
(45,37,3,1),
(45,37,21,5),
(45,37,10,5),
(45,37,6,4),
(45,37,39,3),
(45,37,8,1),
(45,37,42,1),
(45,7,17,5),
(45,7,1,5),
(45,7,41,5),
(45,7,3,5),
(45,7,21,2),
(45,7,10,2),
(45,7,6,3),
(45,7,39,1),
(45,7,8,3),
(45,7,42,4),
(46,8,45,5),
(46,8,18,2),
(46,8,34,5),
(46,8,21,4),
(46,8,13,1),
(46,8,11,1),
(46,8,10,5),
(46,8,42,5),
(46,8,38,4),
(46,8,16,2),
(46,17,45,3),
(46,17,18,1),
(46,17,34,3),
(46,17,21,1),
(46,17,13,3),
(46,17,11,5),
(46,17,10,5),
(46,17,42,4),
(46,17,38,5),
(46,17,16,4),
(46,51,45,3),
(46,51,18,1),
(46,51,34,1),
(46,51,21,4),
(46,51,13,4),
(46,51,11,2),
(46,51,10,5),
(46,51,42,1),
(46,51,38,5),
(46,51,16,2),
(47,40,45,2),
(47,40,25,3),
(47,40,15,4),
(47,40,54,2),
(47,40,36,5),
(47,40,4,3),
(47,40,38,3),
(47,40,12,3),
(47,40,2,2),
(47,40,27,4),
(47,29,45,2),
(47,29,25,5),
(47,29,15,3),
(47,29,54,1),
(47,29,36,3),
(47,29,4,2),
(47,29,38,3),
(47,29,12,2),
(47,29,2,5),
(47,29,27,4),
(47,31,45,5),
(47,31,25,5),
(47,31,15,4),
(47,31,54,5),
(47,31,36,5),
(47,31,4,2),
(47,31,38,2),
(47,31,12,2),
(47,31,2,1),
(47,31,27,4),
(48,16,12,4),
(48,16,24,5),
(48,16,6,3),
(48,16,3,2),
(48,16,26,1),
(48,16,38,4),
(48,16,15,2),
(48,16,33,1),
(48,16,28,4),
(48,16,37,3),
(48,18,12,1),
(48,18,24,4),
(48,18,6,3),
(48,18,3,3),
(48,18,26,2),
(48,18,38,4),
(48,18,15,2),
(48,18,33,5),
(48,18,28,1),
(48,18,37,1),
(48,30,12,5),
(48,30,24,1),
(48,30,6,5),
(48,30,3,1),
(48,30,26,4),
(48,30,38,2),
(48,30,15,2),
(48,30,33,3),
(48,30,28,2),
(48,30,37,1),
(49,16,24,1),
(49,16,42,2),
(49,16,11,2),
(49,16,39,4),
(49,16,20,2),
(49,16,47,4),
(49,16,6,4),
(49,16,55,2),
(49,16,48,2),
(49,16,15,4),
(49,1,24,3),
(49,1,42,2),
(49,1,11,4),
(49,1,39,3),
(49,1,20,1),
(49,1,47,5),
(49,1,6,4),
(49,1,55,4),
(49,1,48,5),
(49,1,15,4),
(49,56,24,3),
(49,56,42,2),
(49,56,11,4),
(49,56,39,2),
(49,56,20,3),
(49,56,47,1),
(49,56,6,2),
(49,56,55,1),
(49,56,48,5),
(49,56,15,4),
(50,33,37,4),
(50,33,10,1),
(50,33,27,1),
(50,33,6,2),
(50,33,2,1),
(50,33,14,2),
(50,33,3,2),
(50,33,12,4),
(50,33,41,5),
(50,33,38,3),
(50,19,37,1),
(50,19,10,3),
(50,19,27,5),
(50,19,6,4),
(50,19,2,3),
(50,19,14,3),
(50,19,3,2),
(50,19,12,2),
(50,19,41,1),
(50,19,38,3),
(50,31,37,3),
(50,31,10,5),
(50,31,27,4),
(50,31,6,2),
(50,31,2,3),
(50,31,14,1),
(50,31,3,4),
(50,31,12,5),
(50,31,41,5),
(50,31,38,1);