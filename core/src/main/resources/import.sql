CREATE TABLE IF NOT EXISTS ACHIEVEMENT (ID INT PRIMARY KEY, INFO VARCHAR(1023), SHORT_INFO VARCHAR(255), PARENT_ID INT);

INSERT INTO ACHIEVEMENT(ID, INFO, SHORT_INFO, PARENT_ID) VALUES (1, 'info1', 'short info 1', 0);
INSERT INTO ACHIEVEMENT(ID, INFO, SHORT_INFO, PARENT_ID) VALUES (2, 'info2', 'short info 2', 1);
INSERT INTO ACHIEVEMENT(ID, INFO, SHORT_INFO, PARENT_ID) VALUES (3, 'info3', 'short info 3', 2);
INSERT INTO ACHIEVEMENT(ID, INFO, SHORT_INFO, PARENT_ID) VALUES (4, 'info4', 'short info 4', 2);
INSERT INTO ACHIEVEMENT(ID, INFO, SHORT_INFO, PARENT_ID) VALUES (5, 'info5', 'short info 5', 2);
INSERT INTO ACHIEVEMENT(ID, INFO, SHORT_INFO, PARENT_ID) VALUES (6, 'info6', 'short info 6', 0);
INSERT INTO ACHIEVEMENT(ID, INFO, SHORT_INFO, PARENT_ID) VALUES (7, 'info7', 'short info 7', 3);
INSERT INTO ACHIEVEMENT(ID, INFO, SHORT_INFO, PARENT_ID) VALUES (8, 'info8', 'short info 8', 6);
INSERT INTO ACHIEVEMENT(ID, INFO, SHORT_INFO, PARENT_ID) VALUES (9, 'info9', 'short info 9', 6);
INSERT INTO ACHIEVEMENT(ID, INFO, SHORT_INFO, PARENT_ID) VALUES (10, 'info10', 'short info 10', 0);


CREATE TABLE IF NOT EXISTS NODES (ID INT PRIMARY KEY, VALUE TINYINT NOT NULL, LABEL VARCHAR(255), TITLE VARCHAR(255));
INSERT INTO NODES(ID, VALUE, LABEL, TITLE) VALUES(1, 5, 'ORIGIN', 'ORIGIN TITLE THERE');
INSERT INTO NODES(ID, VALUE, LABEL, TITLE) VALUES(2, 1, 'TEXT 1', 'TEXT 1 TITLE THERE');
INSERT INTO NODES(ID, VALUE, LABEL, TITLE) VALUES(3, 1, 'TEXT 2', 'TEXT 2 TITLE THERE');
INSERT INTO NODES(ID, VALUE, LABEL, TITLE) VALUES(4, 1, 'TEXT 3', 'TEXT 3 TITLE THERE');
INSERT INTO NODES(ID, VALUE, LABEL, TITLE) VALUES(5, 1, 'TEXT 4', 'TEXT 4 TITLE THERE');
INSERT INTO NODES(ID, VALUE, LABEL, TITLE) VALUES(6, 1, 'TEXT 5', 'TEXT 5 TITLE THERE');
INSERT INTO NODES(ID, VALUE, LABEL, TITLE) VALUES(7, 1, 'TEXT 6', 'TEXT 6 TITLE THERE');
INSERT INTO NODES(ID, VALUE, LABEL, TITLE) VALUES(8, 1, 'TEXT 7', 'TEXT 7 TITLE THERE');
INSERT INTO NODES(ID, VALUE, LABEL, TITLE) VALUES(9, 1, 'TEXT 8', 'TEXT 8 TITLE THERE');
INSERT INTO NODES(ID, VALUE, LABEL, TITLE) VALUES(10, 1, 'TEXT 9', 'TEXT 9 TITLE THERE');
INSERT INTO NODES(ID, VALUE, LABEL, TITLE) VALUES(11, 1, 'TEXT 10', 'TEXT 10 TITLE THERE');
INSERT INTO NODES(ID, VALUE, LABEL, TITLE) VALUES(12, 1, 'TEXT 11', 'TEXT 11 TITLE THERE');
INSERT INTO NODES(ID, VALUE, LABEL, TITLE) VALUES(13, 1, 'TEXT 12', 'TEXT 12 TITLE THERE');
INSERT INTO NODES(ID, VALUE, LABEL, TITLE) VALUES(14, 1, 'TEXT 13', 'TEXT 13 TITLE THERE');
INSERT INTO NODES(ID, VALUE, LABEL, TITLE) VALUES(15, 1, 'TEXT 14', 'TEXT 14 TITLE THERE');
INSERT INTO NODES(ID, VALUE, LABEL, TITLE) VALUES(16, 1, 'TEXT 15', 'TEXT 15 TITLE THERE');


CREATE TABLE IF NOT EXISTS LINKS (ID INT PRIMARY KEY, SOURCE INT, TO INT, VALUE TINYINT NOT NULL, LABEL VARCHAR(255), TITLE VARCHAR(255));
INSERT INTO LINKS(ID, SOURCE, TO, VALUE, LABEL, TITLE) VALUES(1, 0, 1, 9, '1000 BC', '1000 BC');
INSERT INTO LINKS(ID, SOURCE, TO, VALUE, LABEL, TITLE) VALUES(2, 0, 2, 5, '700 BC', '700 BC');
INSERT INTO LINKS(ID, SOURCE, TO, VALUE, LABEL, TITLE) VALUES(3, 1, 2, 8, '700 BC', '700 BC');
INSERT INTO LINKS(ID, SOURCE, TO, VALUE, LABEL, TITLE) VALUES(4, 1, 3, 4, '350 BC', '350 BC');
INSERT INTO LINKS(ID, SOURCE, TO, VALUE, LABEL, TITLE) VALUES(5, 1, 4, 2, '300 BC', '300 BC');
INSERT INTO LINKS(ID, SOURCE, TO, VALUE, LABEL, TITLE) VALUES(6, 3, 4, 6, '300 BC', '300 BC');
INSERT INTO LINKS(ID, SOURCE, TO, VALUE, LABEL, TITLE) VALUES(7, 6, 7, 10, '60 BC', '60 BC');
INSERT INTO LINKS(ID, SOURCE, TO, VALUE, LABEL, TITLE) VALUES(8, 2, 7, 1, '60 BC', '60 BC');
INSERT INTO LINKS(ID, SOURCE, TO, VALUE, LABEL, TITLE) VALUES(9, 3, 9, 5, '0', '0');
INSERT INTO LINKS(ID, SOURCE, TO, VALUE, LABEL, TITLE) VALUES(10, 5, 9, 7, '0', '0');
INSERT INTO LINKS(ID, SOURCE, TO, VALUE, LABEL, TITLE) VALUES(11, 1, 11, 2, '80', '80');
INSERT INTO LINKS(ID, SOURCE, TO, VALUE, LABEL, TITLE) VALUES(12, 6, 11, 8, '80', '80');
INSERT INTO LINKS(ID, SOURCE, TO, VALUE, LABEL, TITLE) VALUES(13, 10, 11, 8, '80', '80');
INSERT INTO LINKS(ID, SOURCE, TO, VALUE, LABEL, TITLE) VALUES(14, 4, 12, 4, '100', '100');
INSERT INTO LINKS(ID, SOURCE, TO, VALUE, LABEL, TITLE) VALUES(15, 7, 12, 9, '100', '100');
INSERT INTO LINKS(ID, SOURCE, TO, VALUE, LABEL, TITLE) VALUES(16, 8, 13, 7, '150', '150');
INSERT INTO LINKS(ID, SOURCE, TO, VALUE, LABEL, TITLE) VALUES(17, 9, 13, 10, '150', '150');
INSERT INTO LINKS(ID, SOURCE, TO, VALUE, LABEL, TITLE) VALUES(18, 5, 14, 4, '200', '200');
INSERT INTO LINKS(ID, SOURCE, TO, VALUE, LABEL, TITLE) VALUES(19, 6, 14, 5, '200', '200');
INSERT INTO LINKS(ID, SOURCE, TO, VALUE, LABEL, TITLE) VALUES(20, 4, 15, 3, '300', '300');
INSERT INTO LINKS(ID, SOURCE, TO, VALUE, LABEL, TITLE) VALUES(21, 7, 15, 8, '300', '300');
INSERT INTO LINKS(ID, SOURCE, TO, VALUE, LABEL, TITLE) VALUES(22, 9, 15, 6, '300', '300');