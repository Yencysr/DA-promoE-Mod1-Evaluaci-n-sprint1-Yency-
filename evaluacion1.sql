-- BBDD Sports Analytics
CREATE SCHEMA Cliente_Sports_Analytics;
CREATE SCHEMA IF NOT EXISTS Cliente_Sports_Analytics;

USE Cliente_Sports_Analytics;

-- Creo la primera tabla Season. Mi cliente quiere que analice solo las fechas desde el
-- 2016 al 2021, lo dejo definido en la segunda columna.

CREATE TABLE IF NOT EXISTS Season(`season_id`INT NOT NULL AUTO_INCREMENT,
								  `season` INT NOT NULL CHECK (`season`>= 2016 AND `season`<= 2021),
                                  PRIMARY KEY(`season_ID`));
                                  
-- Creo la segunda tabla Teams.

CREATE TABLE IF NOT EXISTS Teams (`team_id`INT NOT NULL AUTO_INCREMENT,
								  `team` VARCHAR(45) NOT NULL,
                                  PRIMARY KEY(`team_id`));
                                  
-- Creo la tercera tabla, que será nuestra tabla madre,
-- ya que nos piden que esté conectada con ambas tablas

CREATE TABLE IF NOT EXISTS Stats(`id_stat_team_season` INT NOT NULL AUTO_INCREMENT,
								  `team_id` INT NOT NULL,
                                  `season_id`INT NOT NULL,
                                  `gp`INT NOT NULL,
                                  `w`INT NOT NULL,
                                  `l`INT NOT NULL,
                                  `win_percent`FLOAT NOT NULL,
                                  `minutes`FLOAT NOT NULL,
                                  `pts`FLOAT NOT NULL,
                                  `fgm`FLOAT NOT NULL,
                                  `fga`FLOAT NOT NULL,
                                  `fg_percent`FLOAT NOT NULL,
                                  `three_pm`FLOAT NOT NULL,
                                  `thre_pa`FLOAT NOT NULL,
                                  `three_point_percent`FLOAT NOT NULL,
                                  `ftm` FLOAT NOT NULL,
                                  `fta`FLOAT NOT NULL,
                                  `ft_percent`FLOAT NOT NULL,
                                  `oreb`FLOAT NOT NULL,
                                  `dreb`FLOAT NOT NULL,
                                  `reb`FLOAT NOT NULL,
                                  `ast`FLOAT NOT NULL,
                                  `tov`FLOAT NOT NULL,
                                  `stl`FLOAT NOT NULL,
                                  `blk`FLOAT NOT NULL,
                                  `blka`FLOAT NOT NULL,
                                  `pf`FLOAT NOT NULL,
                                  `pfd`FLOAT NOT NULL,
                                  `plus_minus`FLOAT NOT NULL,
                                  
						          PRIMARY KEY(`id_stat_team_season`),
                                  CONSTRAINT
                                  FOREIGN KEY(`season_id`)
								  REFERENCES `season`(`season_id`)ON DELETE CASCADE ON UPDATE CASCADE
								 );
                                  
                
									

