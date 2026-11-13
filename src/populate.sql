-- WBMC Phase 4 Team 22 approved V2-derived population.
-- Load after schema.sql into the selected fresh database.
-- Generated from WBMC_Historical_Database_v2.xlsx by src/import_v2b.py.
-- Quarantined ambiguous identities and placement markers are intentionally excluded.
SET NAMES utf8mb4;
USE wbmc_db;

INSERT INTO VENUE (venue_id, venue_name, street, city, region, postal_code, country, capacity) VALUES
    (1, NULL, NULL, 'Höfen/Enz', NULL, NULL, 'Germany', NULL),
    (2, NULL, NULL, 'Pforzheim', NULL, NULL, 'Germany', NULL),
    (3, NULL, NULL, 'Trondheim', NULL, NULL, 'Norway', NULL),
    (4, NULL, NULL, 'Ystad', NULL, NULL, 'Sweden', NULL),
    (5, NULL, NULL, 'Schömberg', NULL, NULL, 'Germany', NULL),
    (6, NULL, NULL, 'Carson City', 'Nevada', NULL, 'USA', NULL),
    (7, NULL, NULL, 'Berlin', NULL, NULL, 'Germany', NULL),
    (8, NULL, NULL, 'Brighton', NULL, NULL, 'England', NULL),
    (9, NULL, NULL, 'Anchorage', 'Alaska', NULL, 'USA', NULL),
    (10, NULL, NULL, 'Leinfelden-Echterdingen', NULL, NULL, 'Germany', NULL),
    (11, NULL, NULL, 'Leogang', NULL, NULL, 'Austria', NULL),
    (12, NULL, NULL, 'Austin', 'Texas', NULL, 'USA', NULL),
    (13, NULL, NULL, 'Antwerp', NULL, NULL, 'Belgium', NULL),
    (14, NULL, NULL, 'Auckland', NULL, NULL, 'New Zealand', NULL),
    (15, NULL, NULL, 'Burghausen', NULL, NULL, 'Germany', NULL),
    (16, NULL, NULL, 'Pittsburgh', 'Pennsylvania', NULL, 'USA', NULL),
    (17, NULL, NULL, 'Blackpool', NULL, NULL, 'England', NULL),
    (18, NULL, NULL, 'Spokane', 'Washington', NULL, 'USA', NULL);


INSERT INTO CHAMPIONSHIP (championship_year, status, start_date, end_date, cancellation_reason, website_url) VALUES
    (1990, 'Held', NULL, NULL, NULL, NULL),
    (1995, 'Held', NULL, NULL, NULL, NULL),
    (1997, 'Held', NULL, NULL, NULL, NULL),
    (1999, 'Held', NULL, NULL, NULL, 'https://www.worldbeardchampionships.com/results/1999-wbmc-ystad-results'),
    (2001, 'Held', NULL, NULL, NULL, 'https://www.worldbeardchampionships.com/results/2001-wbmc-schömberg-results'),
    (2003, 'Held', '2003-11-01', '2003-11-01', NULL, 'https://www.worldbeardchampionships.com/results/2003-wbmc-carson-city-results'),
    (2005, 'Held', '2005-10-01', '2005-10-01', NULL, 'https://www.worldbeardchampionships.com/results/2005-wbmc-berlin-results'),
    (2007, 'Held', NULL, NULL, NULL, 'https://www.worldbeardchampionships.com/results/2007-wbmc-brighton-results'),
    (2009, 'Held', '2009-05-23', '2009-05-23', NULL, 'https://www.worldbeardchampionships.com/results/2009-wbmc-anchorage-results'),
    (2011, 'Held', '2011-05-15', '2011-05-15', NULL, 'https://www.worldbeardchampionships.com/results/2011-wbmc-trondheim-results'),
    (2013, 'Held', '2013-11-02', '2013-11-02', NULL, 'https://www.worldbeardchampionships.com/results/2013-wbmc-l-e-results'),
    (2015, 'Held', '2015-10-03', '2015-10-03', NULL, 'https://www.worldbeardchampionships.com/results/2015-wbmc-leogang-results'),
    (2017, 'Held', '2017-09-01', '2017-09-03', NULL, NULL),
    (2019, 'Held', '2019-05-17', '2019-05-19', NULL, NULL),
    (2021, 'Cancelled', NULL, NULL, 'Cancelled due to COVID-19; no competition results', NULL),
    (2023, 'Held', '2023-06-09', '2023-06-11', NULL, 'https://www.worldbeardchampionships.com/results/2023-wbmc-burghausen-results'),
    (2025, 'Held', '2025-07-03', '2025-07-05', NULL, NULL),
    (2027, 'Scheduled', '2027-08-13', '2027-08-16', NULL, NULL),
    (2029, 'Scheduled', NULL, NULL, NULL, NULL);

INSERT INTO CATEGORY (category_id, category_name, rule_version, bracket, styling_aids, is_freestyle, min_age, max_age, description) VALUES
    (1, 'Full Beard Freestyle', 'V2-import-1999', 'Full Beard', 'None', 1, NULL, NULL, NULL),
    (2, 'Full Beard Natural', 'V2-import-1999', 'Full Beard', 'None', 0, NULL, NULL, NULL),
    (3, 'Full Beard Styled Moustache', 'V2-import-1999', 'Full Beard', 'None', 0, NULL, NULL, NULL),
    (4, 'English Moustache', 'V2-import-1999', 'Moustache', 'None', 0, NULL, NULL, NULL),
    (5, 'Freestyle Moustache', 'V2-import-1999', 'Moustache', 'None', 1, NULL, NULL, NULL),
    (6, 'Hungarian Moustache', 'V2-import-1999', 'Moustache', 'None', 0, NULL, NULL, NULL),
    (7, 'Imperial Partial Beard', 'V2-import-1999', 'Partial Beard', 'None', 0, NULL, NULL, NULL),
    (8, 'Musketeer', 'V2-import-1999', 'Partial Beard', 'None', 0, NULL, NULL, NULL),
    (9, 'Partial Beard Freestyle', 'V2-import-1999', 'Partial Beard', 'None', 1, NULL, NULL, NULL),
    (10, 'Freestyle', 'V2-import-2001', 'Full Beard', 'None', 1, NULL, NULL, NULL),
    (11, 'Garibaldi', 'V2-import-2001', 'Full Beard', 'None', 0, NULL, NULL, NULL),
    (12, 'Natural Full Beard', 'V2-import-2001', 'Full Beard', 'None', 0, NULL, NULL, NULL),
    (13, 'Natural Full Beard With Styled Moustache', 'V2-import-2001', 'Full Beard', 'None', 0, NULL, NULL, NULL),
    (14, 'Verdi', 'V2-import-2001', 'Full Beard', 'None', 0, NULL, NULL, NULL),
    (15, 'Dali Moustache', 'V2-import-2001', 'Moustache', 'None', 0, NULL, NULL, NULL),
    (16, 'English Moustache', 'V2-import-2001', 'Moustache', 'None', 0, NULL, NULL, NULL),
    (17, 'Freestyle Moustache', 'V2-import-2001', 'Moustache', 'None', 1, NULL, NULL, NULL),
    (18, 'Hungarian Moustache', 'V2-import-2001', 'Moustache', 'None', 0, NULL, NULL, NULL),
    (19, 'Imperial Moustache', 'V2-import-2001', 'Moustache', 'None', 0, NULL, NULL, NULL),
    (20, 'Natural Moustache', 'V2-import-2001', 'Moustache', 'None', 0, NULL, NULL, NULL),
    (21, 'Fu Manchu', 'V2-import-2001', 'Partial Beard', 'None', 0, NULL, NULL, NULL),
    (22, 'Imperial Partial Beard', 'V2-import-2001', 'Partial Beard', 'None', 0, NULL, NULL, NULL),
    (23, 'Musketeer', 'V2-import-2001', 'Partial Beard', 'None', 0, NULL, NULL, NULL),
    (24, 'Natural Goatee', 'V2-import-2001', 'Partial Beard', 'None', 0, NULL, NULL, NULL),
    (25, 'Partial Beard Freestyle', 'V2-import-2001', 'Partial Beard', 'None', 1, NULL, NULL, NULL),
    (26, 'Sideburns / Muttonchops', 'V2-import-2001', 'Partial Beard', 'None', 0, NULL, NULL, NULL),
    (27, 'Freestyle', 'V2-import-2003', 'Full Beard', 'None', 1, NULL, NULL, NULL),
    (28, 'Garibaldi', 'V2-import-2003', 'Full Beard', 'None', 0, NULL, NULL, NULL),
    (29, 'Natural Full Beard', 'V2-import-2003', 'Full Beard', 'None', 0, NULL, NULL, NULL),
    (30, 'Natural Full Beard With Styled Moustache', 'V2-import-2003', 'Full Beard', 'None', 0, NULL, NULL, NULL),
    (31, 'Verdi', 'V2-import-2003', 'Full Beard', 'None', 0, NULL, NULL, NULL),
    (32, 'Dali Moustache', 'V2-import-2003', 'Moustache', 'None', 0, NULL, NULL, NULL),
    (33, 'English Moustache', 'V2-import-2003', 'Moustache', 'None', 0, NULL, NULL, NULL),
    (34, 'Freestyle Moustache', 'V2-import-2003', 'Moustache', 'None', 1, NULL, NULL, NULL),
    (35, 'Handlebar Moustache', 'V2-import-2003', 'Moustache', 'None', 0, NULL, NULL, NULL),
    (36, 'Hungarian / Wild West', 'V2-import-2003', 'Moustache', 'None', 0, NULL, NULL, NULL),
    (37, 'Imperial Moustache', 'V2-import-2003', 'Moustache', 'None', 0, NULL, NULL, NULL),
    (38, 'Natural Moustache', 'V2-import-2003', 'Moustache', 'None', 0, NULL, NULL, NULL),
    (39, 'Freestyle Partial Beard', 'V2-import-2003', 'Partial Beard', 'None', 1, NULL, NULL, NULL),
    (40, 'Fu Manchu', 'V2-import-2003', 'Partial Beard', 'None', 0, NULL, NULL, NULL),
    (41, 'Musketeer', 'V2-import-2003', 'Partial Beard', 'None', 0, NULL, NULL, NULL),
    (42, 'Natural Goatee', 'V2-import-2003', 'Partial Beard', 'None', 0, NULL, NULL, NULL),
    (43, 'Sideburns', 'V2-import-2003', 'Partial Beard', 'None', 0, NULL, NULL, NULL),
    (44, 'Full Beard Freestyle', 'V2-import-2005', 'Full Beard', 'None', 1, NULL, NULL, NULL),
    (45, 'Full Beard Styled Moustache', 'V2-import-2005', 'Full Beard', 'None', 0, NULL, NULL, NULL),
    (46, 'Garibaldi', 'V2-import-2005', 'Full Beard', 'None', 0, NULL, NULL, NULL),
    (47, 'Natural Full Beard', 'V2-import-2005', 'Full Beard', 'None', 0, NULL, NULL, NULL),
    (48, 'Verdi', 'V2-import-2005', 'Full Beard', 'None', 0, NULL, NULL, NULL),
    (49, 'Dali Moustache', 'V2-import-2005', 'Moustache', 'None', 0, NULL, NULL, NULL),
    (50, 'English Moustache', 'V2-import-2005', 'Moustache', 'None', 0, NULL, NULL, NULL),
    (51, 'Freestyle Moustache', 'V2-import-2005', 'Moustache', 'None', 1, NULL, NULL, NULL),
    (52, 'Handlebar Moustache', 'V2-import-2005', 'Moustache', 'None', 0, NULL, NULL, NULL),
    (53, 'Hungarian Moustache', 'V2-import-2005', 'Moustache', 'None', 0, NULL, NULL, NULL),
    (54, 'Natural Moustache', 'V2-import-2005', 'Moustache', 'None', 0, NULL, NULL, NULL),
    (55, 'Fu Manchu', 'V2-import-2005', 'Partial Beard', 'None', 0, NULL, NULL, NULL),
    (56, 'Imperial Partial Beard', 'V2-import-2005', 'Partial Beard', 'None', 0, NULL, NULL, NULL),
    (57, 'Musketeer', 'V2-import-2005', 'Partial Beard', 'None', 0, NULL, NULL, NULL),
    (58, 'Natural Goatee', 'V2-import-2005', 'Partial Beard', 'None', 0, NULL, NULL, NULL),
    (59, 'Partial Beard Freestyle', 'V2-import-2005', 'Partial Beard', 'None', 1, NULL, NULL, NULL),
    (60, 'Sideburns', 'V2-import-2005', 'Partial Beard', 'None', 0, NULL, NULL, NULL),
    (61, 'Full Beard Freestyle', 'V2-import-2007', 'Full Beard', 'None', 1, NULL, NULL, NULL),
    (62, 'Garibaldi', 'V2-import-2007', 'Full Beard', 'None', 0, NULL, NULL, NULL),
    (63, 'Natural Full Beard', 'V2-import-2007', 'Full Beard', 'None', 0, NULL, NULL, NULL),
    (64, 'Natural Full Beard With Styled Moustache', 'V2-import-2007', 'Full Beard', 'None', 0, NULL, NULL, NULL),
    (65, 'Verdi', 'V2-import-2007', 'Full Beard', 'None', 0, NULL, NULL, NULL),
    (66, 'Dali Moustache', 'V2-import-2007', 'Moustache', 'None', 0, NULL, NULL, NULL),
    (67, 'English Moustache', 'V2-import-2007', 'Moustache', 'None', 0, NULL, NULL, NULL),
    (68, 'Hungarian Moustache', 'V2-import-2007', 'Moustache', 'None', 0, NULL, NULL, NULL),
    (69, 'Imperial Moustache', 'V2-import-2007', 'Moustache', 'None', 0, NULL, NULL, NULL),
    (70, 'Moustache Freestyle', 'V2-import-2007', 'Moustache', 'None', 1, NULL, NULL, NULL),
    (71, 'Natural Moustache', 'V2-import-2007', 'Moustache', 'None', 0, NULL, NULL, NULL),
    (72, 'Chinese', 'V2-import-2007', 'Partial Beard', 'None', 0, NULL, NULL, NULL),
    (73, 'Imperial Partial Beard', 'V2-import-2007', 'Partial Beard', 'None', 0, NULL, NULL, NULL),
    (74, 'Musketeer', 'V2-import-2007', 'Partial Beard', 'None', 0, NULL, NULL, NULL),
    (75, 'Natural Goatee', 'V2-import-2007', 'Partial Beard', 'None', 0, NULL, NULL, NULL),
    (76, 'Partial Beard Freestyle', 'V2-import-2007', 'Partial Beard', 'None', 1, NULL, NULL, NULL),
    (77, 'Sideburns', 'V2-import-2007', 'Partial Beard', 'None', 0, NULL, NULL, NULL),
    (78, 'Full Beard Freestyle', 'V2-import-2009', 'Full Beard', 'None', 1, NULL, NULL, NULL),
    (79, 'Garibaldi', 'V2-import-2009', 'Full Beard', 'None', 0, NULL, NULL, NULL),
    (80, 'Natural Full Beard', 'V2-import-2009', 'Full Beard', 'None', 0, NULL, NULL, NULL),
    (81, 'Natural Full Beard With Styled Moustache', 'V2-import-2009', 'Full Beard', 'None', 0, NULL, NULL, NULL),
    (82, 'Verdi', 'V2-import-2009', 'Full Beard', 'None', 0, NULL, NULL, NULL),
    (83, 'Dali Moustache', 'V2-import-2009', 'Moustache', 'None', 0, NULL, NULL, NULL),
    (84, 'English Moustache', 'V2-import-2009', 'Moustache', 'None', 0, NULL, NULL, NULL),
    (85, 'Freestyle Moustache', 'V2-import-2009', 'Moustache', 'None', 1, NULL, NULL, NULL),
    (86, 'Hungarian / Wild West', 'V2-import-2009', 'Moustache', 'None', 0, NULL, NULL, NULL),
    (87, 'Imperial Moustache', 'V2-import-2009', 'Moustache', 'None', 0, NULL, NULL, NULL),
    (88, 'Natural Moustache', 'V2-import-2009', 'Moustache', 'None', 0, NULL, NULL, NULL),
    (89, 'Alaskan Whaler', 'V2-import-2009', 'Partial Beard', 'None', 0, NULL, NULL, NULL),
    (90, 'Fu Manchu', 'V2-import-2009', 'Partial Beard', 'None', 0, NULL, NULL, NULL),
    (91, 'Imperial Partial Beard', 'V2-import-2009', 'Partial Beard', 'None', 0, NULL, NULL, NULL),
    (92, 'Musketeer', 'V2-import-2009', 'Partial Beard', 'None', 0, NULL, NULL, NULL),
    (93, 'Natural Goatee', 'V2-import-2009', 'Partial Beard', 'None', 0, NULL, NULL, NULL),
    (94, 'Partial Beard Freestyle', 'V2-import-2009', 'Partial Beard', 'None', 1, NULL, NULL, NULL),
    (95, 'Sideburns / Muttonchops', 'V2-import-2009', 'Partial Beard', 'None', 0, NULL, NULL, NULL),
    (96, 'Full Beard Freestyle', 'V2-import-2011', 'Full Beard', 'None', 1, NULL, NULL, NULL),
    (97, 'Full Beard Natural', 'V2-import-2011', 'Full Beard', 'None', 0, NULL, NULL, NULL),
    (98, 'Full Beard Styled Moustache', 'V2-import-2011', 'Full Beard', 'None', 0, NULL, NULL, NULL),
    (99, 'Garibaldi', 'V2-import-2011', 'Full Beard', 'None', 0, NULL, NULL, NULL),
    (100, 'Verdi', 'V2-import-2011', 'Full Beard', 'None', 0, NULL, NULL, NULL),
    (101, 'Dali Moustache', 'V2-import-2011', 'Moustache', 'None', 0, NULL, NULL, NULL),
    (102, 'English Moustache', 'V2-import-2011', 'Moustache', 'None', 0, NULL, NULL, NULL),
    (103, 'Freestyle Moustache', 'V2-import-2011', 'Moustache', 'None', 1, NULL, NULL, NULL),
    (104, 'Hungarian Moustache', 'V2-import-2011', 'Moustache', 'None', 0, NULL, NULL, NULL),
    (105, 'Imperial Moustache', 'V2-import-2011', 'Moustache', 'None', 0, NULL, NULL, NULL),
    (106, 'Natural Moustache', 'V2-import-2011', 'Moustache', 'None', 0, NULL, NULL, NULL),
    (107, 'Fu Manchu', 'V2-import-2011', 'Partial Beard', 'None', 0, NULL, NULL, NULL),
    (108, 'Imperial Partial Beard', 'V2-import-2011', 'Partial Beard', 'None', 0, NULL, NULL, NULL),
    (109, 'Musketeer', 'V2-import-2011', 'Partial Beard', 'None', 0, NULL, NULL, NULL),
    (110, 'Natural', 'V2-import-2011', 'Partial Beard', 'None', 0, NULL, NULL, NULL),
    (111, 'Partial Beard Freestyle', 'V2-import-2011', 'Partial Beard', 'None', 1, NULL, NULL, NULL),
    (112, 'Sideburns Freestyle', 'V2-import-2011', 'Partial Beard', 'None', 1, NULL, NULL, NULL),
    (113, 'Full Beard Freestyle', 'V2-import-2013', 'Full Beard', 'None', 1, NULL, NULL, NULL),
    (114, 'Full Beard Natural', 'V2-import-2013', 'Full Beard', 'None', 0, NULL, NULL, NULL),
    (115, 'Full Beard Styled Moustache', 'V2-import-2013', 'Full Beard', 'None', 0, NULL, NULL, NULL),
    (116, 'Garibaldi', 'V2-import-2013', 'Full Beard', 'None', 0, NULL, NULL, NULL),
    (117, 'Trendbeard', 'V2-import-2013', 'Full Beard', 'None', 0, NULL, NULL, NULL),
    (118, 'Verdi', 'V2-import-2013', 'Full Beard', 'None', 0, NULL, NULL, NULL),
    (119, 'Dali Moustache', 'V2-import-2013', 'Moustache', 'None', 0, NULL, NULL, NULL),
    (120, 'English Moustache', 'V2-import-2013', 'Moustache', 'None', 0, NULL, NULL, NULL),
    (121, 'Freestyle Moustache', 'V2-import-2013', 'Moustache', 'None', 1, NULL, NULL, NULL),
    (122, 'Hungarian Moustache', 'V2-import-2013', 'Moustache', 'None', 0, NULL, NULL, NULL),
    (123, 'Imperial Moustache', 'V2-import-2013', 'Moustache', 'None', 0, NULL, NULL, NULL),
    (124, 'Natural Moustache', 'V2-import-2013', 'Moustache', 'None', 0, NULL, NULL, NULL),
    (125, 'Fu Manchu', 'V2-import-2013', 'Partial Beard', 'None', 0, NULL, NULL, NULL),
    (126, 'Imperial Partial Beard', 'V2-import-2013', 'Partial Beard', 'None', 0, NULL, NULL, NULL),
    (127, 'Musketeer', 'V2-import-2013', 'Partial Beard', 'None', 0, NULL, NULL, NULL),
    (128, 'Natural Partial Beard', 'V2-import-2013', 'Partial Beard', 'None', 0, NULL, NULL, NULL),
    (129, 'Partial Beard Freestyle', 'V2-import-2013', 'Partial Beard', 'None', 1, NULL, NULL, NULL),
    (130, 'Sideburns Freestyle', 'V2-import-2013', 'Partial Beard', 'None', 1, NULL, NULL, NULL),
    (131, 'Full Beard Freestyle', 'V2-import-2015', 'Full Beard', 'None', 1, NULL, NULL, NULL),
    (132, 'Full Beard Natural', 'V2-import-2015', 'Full Beard', 'None', 0, NULL, NULL, NULL),
    (133, 'Full Beard Styled Moustache', 'V2-import-2015', 'Full Beard', 'None', 0, NULL, NULL, NULL),
    (134, 'Garibaldi', 'V2-import-2015', 'Full Beard', 'None', 0, NULL, NULL, NULL),
    (135, 'Trendbeard', 'V2-import-2015', 'Full Beard', 'None', 0, NULL, NULL, NULL),
    (136, 'Verdi', 'V2-import-2015', 'Full Beard', 'None', 0, NULL, NULL, NULL),
    (137, 'Dali Moustache', 'V2-import-2015', 'Moustache', 'None', 0, NULL, NULL, NULL),
    (138, 'English Moustache', 'V2-import-2015', 'Moustache', 'None', 0, NULL, NULL, NULL),
    (139, 'Freestyle Moustache', 'V2-import-2015', 'Moustache', 'None', 1, NULL, NULL, NULL),
    (140, 'Hungarian Moustache', 'V2-import-2015', 'Moustache', 'None', 0, NULL, NULL, NULL),
    (141, 'Imperial Moustache', 'V2-import-2015', 'Moustache', 'None', 0, NULL, NULL, NULL),
    (142, 'Natural Moustache', 'V2-import-2015', 'Moustache', 'None', 0, NULL, NULL, NULL),
    (143, 'Fu Manchu', 'V2-import-2015', 'Partial Beard', 'None', 0, NULL, NULL, NULL),
    (144, 'Imperial Partial Beard', 'V2-import-2015', 'Partial Beard', 'None', 0, NULL, NULL, NULL),
    (145, 'Musketeer', 'V2-import-2015', 'Partial Beard', 'None', 0, NULL, NULL, NULL),
    (146, 'Natural Goatee', 'V2-import-2015', 'Partial Beard', 'None', 0, NULL, NULL, NULL),
    (147, 'Partial Beard Freestyle', 'V2-import-2015', 'Partial Beard', 'None', 1, NULL, NULL, NULL),
    (148, 'Sideburns Freestyle', 'V2-import-2015', 'Partial Beard', 'None', 1, NULL, NULL, NULL),
    (149, 'Creative Beard', 'V2-import-2017', 'Craft', 'None', 0, NULL, NULL, NULL),
    (150, 'Creative Moustache', 'V2-import-2017', 'Craft', 'None', 0, NULL, NULL, NULL),
    (151, 'Realistic Beard', 'V2-import-2017', 'Craft', 'None', 0, NULL, NULL, NULL),
    (152, 'Realistic Moustache', 'V2-import-2017', 'Craft', 'None', 0, NULL, NULL, NULL),
    (153, 'Full Beard 0.1 - 15CM', 'V2-import-2017', 'Full Beard', 'None', 0, NULL, NULL, NULL),
    (154, 'Full Beard 15.1 - 30CM', 'V2-import-2017', 'Full Beard', 'None', 0, NULL, NULL, NULL),
    (155, 'Full Beard 30.1 - 45CM', 'V2-import-2017', 'Full Beard', 'None', 0, NULL, NULL, NULL),
    (156, 'Full Beard 43.1 - 60CM', 'V2-import-2017', 'Full Beard', 'None', 0, NULL, NULL, NULL),
    (157, 'Full Beard Freestyle', 'V2-import-2017', 'Full Beard', 'None', 1, NULL, NULL, NULL),
    (158, 'Garibaldi', 'V2-import-2017', 'Full Beard', 'None', 0, NULL, NULL, NULL),
    (159, 'Natural Full Beard With Styled Moustache', 'V2-import-2017', 'Full Beard', 'None', 0, NULL, NULL, NULL),
    (160, 'Verdi', 'V2-import-2017', 'Full Beard', 'None', 0, NULL, NULL, NULL),
    (161, 'Dali Moustache', 'V2-import-2017', 'Moustache', 'None', 0, NULL, NULL, NULL),
    (162, 'English Moustache', 'V2-import-2017', 'Moustache', 'None', 0, NULL, NULL, NULL),
    (163, 'Freestyle Moustache', 'V2-import-2017', 'Moustache', 'None', 1, NULL, NULL, NULL),
    (164, 'Hungarian Moustache', 'V2-import-2017', 'Moustache', 'None', 0, NULL, NULL, NULL),
    (165, 'Imperial Moustache', 'V2-import-2017', 'Moustache', 'None', 0, NULL, NULL, NULL),
    (166, 'Natural Moustache', 'V2-import-2017', 'Moustache', 'None', 0, NULL, NULL, NULL),
    (167, 'Alaskan Whaler', 'V2-import-2017', 'Partial Beard', 'None', 0, NULL, NULL, NULL),
    (168, 'Cheekbeard (Backenbart) Freestyle', 'V2-import-2017', 'Partial Beard', 'None', 1, NULL, NULL, NULL),
    (169, 'Freestyle Partial Beard', 'V2-import-2017', 'Partial Beard', 'None', 1, NULL, NULL, NULL),
    (170, 'Fu Manchu', 'V2-import-2017', 'Partial Beard', 'None', 0, NULL, NULL, NULL),
    (171, 'Imperial Partial Beard', 'V2-import-2017', 'Partial Beard', 'None', 0, NULL, NULL, NULL),
    (172, 'Musketeer', 'V2-import-2017', 'Partial Beard', 'None', 0, NULL, NULL, NULL),
    (173, 'Natural Goatee', 'V2-import-2017', 'Partial Beard', 'None', 0, NULL, NULL, NULL),
    (174, 'Sideburns Freestyle', 'V2-import-2017', 'Partial Beard', 'None', 1, NULL, NULL, NULL),
    (175, 'Sideburns Natural', 'V2-import-2017', 'Partial Beard', 'None', 0, NULL, NULL, NULL),
    (176, 'Creative Beard', 'V2-import-2019', 'Craft', 'None', 0, NULL, NULL, NULL),
    (177, 'Creative Moustache', 'V2-import-2019', 'Craft', 'None', 0, NULL, NULL, NULL),
    (178, 'Realistic Beard', 'V2-import-2019', 'Craft', 'None', 0, NULL, NULL, NULL),
    (179, 'Realistic Moustache', 'V2-import-2019', 'Craft', 'None', 0, NULL, NULL, NULL),
    (180, 'Full Beard Freestyle', 'V2-import-2019', 'Full Beard', 'None', 1, NULL, NULL, NULL),
    (181, 'Garibaldi', 'V2-import-2019', 'Full Beard', 'None', 0, NULL, NULL, NULL),
    (182, 'Natural Full Beard Max 30 CM', 'V2-import-2019', 'Full Beard', 'None', 0, NULL, NULL, NULL),
    (183, 'Natural Full Beard More Than 30 CM', 'V2-import-2019', 'Full Beard', 'None', 0, NULL, NULL, NULL),
    (184, 'Natural Full Beard With Styled Moustache', 'V2-import-2019', 'Full Beard', 'None', 0, NULL, NULL, NULL),
    (185, 'Verdi', 'V2-import-2019', 'Full Beard', 'None', 0, NULL, NULL, NULL),
    (186, 'Dali Moustache', 'V2-import-2019', 'Moustache', 'None', 0, NULL, NULL, NULL),
    (187, 'English Moustache', 'V2-import-2019', 'Moustache', 'None', 0, NULL, NULL, NULL),
    (188, 'Hungarian Moustache', 'V2-import-2019', 'Moustache', 'None', 0, NULL, NULL, NULL),
    (189, 'Imperial Moustache', 'V2-import-2019', 'Moustache', 'None', 0, NULL, NULL, NULL),
    (190, 'Moustache Freestyle', 'V2-import-2019', 'Moustache', 'None', 1, NULL, NULL, NULL),
    (191, 'Natural Moustache', 'V2-import-2019', 'Moustache', 'None', 0, NULL, NULL, NULL),
    (192, 'Alaskan Whaler', 'V2-import-2019', 'Partial Beard', 'None', 0, NULL, NULL, NULL),
    (193, 'Chinese (Fu Manchu)', 'V2-import-2019', 'Partial Beard', 'None', 0, NULL, NULL, NULL),
    (194, 'Imperial Partial Beard', 'V2-import-2019', 'Partial Beard', 'None', 0, NULL, NULL, NULL),
    (195, 'Musketeer', 'V2-import-2019', 'Partial Beard', 'None', 0, NULL, NULL, NULL),
    (196, 'Natural Goatee', 'V2-import-2019', 'Partial Beard', 'None', 0, NULL, NULL, NULL),
    (197, 'Partial Beard Freestyle', 'V2-import-2019', 'Partial Beard', 'None', 1, NULL, NULL, NULL),
    (198, 'Sideburns Natural', 'V2-import-2019', 'Partial Beard', 'None', 0, NULL, NULL, NULL),
    (199, 'Realistic Moustache', 'V2-import-2023', 'Craft', 'None', 0, NULL, NULL, NULL),
    (200, 'Natural Full Beard under 30cm', 'V2-import-2023', 'Full Beard', 'None', 0, NULL, NULL, NULL),
    (201, 'Imperial Moustache', 'V2-import-2023', 'Moustache', 'None', 0, NULL, NULL, NULL),
    (202, 'Freestyle Cheekbeard', 'V2-import-2023', 'Partial Beard', 'None', 1, NULL, NULL, NULL),
    (203, 'Musketeer', 'V2-import-2023', 'Partial Beard', 'None', 0, NULL, NULL, NULL),
    (204, 'Sideburns Freestyle', 'V2-import-2023', 'Partial Beard', 'None', 1, NULL, NULL, NULL),
    (205, 'Craft Creative Beard', 'V2-import-2025', 'Craft', 'None', 0, NULL, NULL, NULL),
    (206, 'Craft Creative Moustache', 'V2-import-2025', 'Craft', 'None', 0, NULL, NULL, NULL),
    (207, 'Craft Realistic Freestyle Beard', 'V2-import-2025', 'Craft', 'None', 1, NULL, NULL, NULL),
    (208, 'Craft Realistic Full Beard', 'V2-import-2025', 'Craft', 'None', 0, NULL, NULL, NULL),
    (209, 'Craft Realistic Moustache', 'V2-import-2025', 'Craft', 'None', 0, NULL, NULL, NULL),
    (210, 'Craft Realistic Partial Beard', 'V2-import-2025', 'Craft', 'None', 0, NULL, NULL, NULL),
    (211, 'Business Beard', 'V2-import-2025', 'Full Beard', 'None', 0, NULL, NULL, NULL),
    (212, 'Full Beard Barber Style', 'V2-import-2025', 'Full Beard', 'None', 0, NULL, NULL, NULL),
    (213, 'Full Beard Freestyle', 'V2-import-2025', 'Full Beard', 'None', 1, NULL, NULL, NULL),
    (214, 'Full Beard Natural 10 - 20 cm', 'V2-import-2025', 'Full Beard', 'None', 0, NULL, NULL, NULL),
    (215, 'Full Beard Natural 20 - 30 cm', 'V2-import-2025', 'Full Beard', 'None', 0, NULL, NULL, NULL),
    (216, 'Full Beard Natural 30 - 45 cm', 'V2-import-2025', 'Full Beard', 'None', 0, NULL, NULL, NULL),
    (217, 'Full Beard Natural 45 - 60 cm', 'V2-import-2025', 'Full Beard', 'None', 0, NULL, NULL, NULL),
    (218, 'Full Beard Natural Over 60 Years', 'V2-import-2025', 'Full Beard', 'None', 0, NULL, NULL, NULL),
    (219, 'Full Beard Natural Over 60 cm', 'V2-import-2025', 'Full Beard', 'None', 0, NULL, NULL, NULL),
    (220, 'Full Beard Natural Under 10 cm', 'V2-import-2025', 'Full Beard', 'None', 0, NULL, NULL, NULL),
    (221, 'Full Beard Styled Moustache Over 15 cm', 'V2-import-2025', 'Full Beard', 'None', 0, NULL, NULL, NULL),
    (222, 'Full Beard Styled Moustache Under 15 cm', 'V2-import-2025', 'Full Beard', 'None', 0, NULL, NULL, NULL),
    (223, 'Garibaldi', 'V2-import-2025', 'Full Beard', 'None', 0, NULL, NULL, NULL),
    (224, 'Verdi', 'V2-import-2025', 'Full Beard', 'None', 0, NULL, NULL, NULL),
    (225, 'Dali Moustache', 'V2-import-2025', 'Moustache', 'None', 0, NULL, NULL, NULL),
    (226, 'English Moustache', 'V2-import-2025', 'Moustache', 'None', 0, NULL, NULL, NULL),
    (227, 'Freestyle Moustache', 'V2-import-2025', 'Moustache', 'None', 1, NULL, NULL, NULL),
    (228, 'Hungarian Moustache', 'V2-import-2025', 'Moustache', 'None', 0, NULL, NULL, NULL),
    (229, 'Imperial Moustache', 'V2-import-2025', 'Moustache', 'None', 0, NULL, NULL, NULL),
    (230, 'Natural Moustache', 'V2-import-2025', 'Moustache', 'None', 0, NULL, NULL, NULL),
    (231, 'Alaskan Whaler', 'V2-import-2025', 'Partial Beard', 'None', 0, NULL, NULL, NULL),
    (232, 'Cheekbeard Freestyle', 'V2-import-2025', 'Partial Beard', 'None', 1, NULL, NULL, NULL),
    (233, 'Fu Manchu', 'V2-import-2025', 'Partial Beard', 'None', 0, NULL, NULL, NULL),
    (234, 'Goatee Freestyle', 'V2-import-2025', 'Partial Beard', 'None', 1, NULL, NULL, NULL),
    (235, 'Imperial Partial Beard', 'V2-import-2025', 'Partial Beard', 'None', 0, NULL, NULL, NULL),
    (236, 'Musketeer', 'V2-import-2025', 'Partial Beard', 'None', 0, NULL, NULL, NULL),
    (237, 'Natural Goatee Over 20 cm', 'V2-import-2025', 'Partial Beard', 'None', 0, NULL, NULL, NULL),
    (238, 'Natural Goatee Under 20 cm', 'V2-import-2025', 'Partial Beard', 'None', 0, NULL, NULL, NULL),
    (239, 'Partial Beard Freestyle', 'V2-import-2025', 'Partial Beard', 'None', 1, NULL, NULL, NULL),
    (240, 'Sideburns Freestyle', 'V2-import-2025', 'Partial Beard', 'None', 1, NULL, NULL, NULL),
    (241, 'Sideburns Natural', 'V2-import-2025', 'Partial Beard', 'None', 0, NULL, NULL, NULL);

INSERT INTO MOUSTACHE_CATEGORY (category_id) VALUES
    (4),
    (5),
    (6),
    (15),
    (16),
    (17),
    (18),
    (19),
    (20),
    (32),
    (33),
    (34),
    (35),
    (36),
    (37),
    (38),
    (49),
    (50),
    (51),
    (52),
    (53),
    (54),
    (66),
    (67),
    (68),
    (69),
    (70),
    (71),
    (83),
    (84),
    (85),
    (86),
    (87),
    (88),
    (101),
    (102),
    (103),
    (104),
    (105),
    (106),
    (119),
    (120),
    (121),
    (122),
    (123),
    (124),
    (137),
    (138),
    (139),
    (140),
    (141),
    (142),
    (161),
    (162),
    (163),
    (164),
    (165),
    (166),
    (186),
    (187),
    (188),
    (189),
    (190),
    (191),
    (201),
    (225),
    (226),
    (227),
    (228),
    (229),
    (230);

INSERT INTO PARTIAL_BEARD_CATEGORY (category_id) VALUES
    (7),
    (8),
    (9),
    (21),
    (22),
    (23),
    (24),
    (25),
    (26),
    (39),
    (40),
    (41),
    (42),
    (43),
    (55),
    (56),
    (57),
    (58),
    (59),
    (60),
    (72),
    (73),
    (74),
    (75),
    (76),
    (77),
    (89),
    (90),
    (91),
    (92),
    (93),
    (94),
    (95),
    (107),
    (108),
    (109),
    (110),
    (111),
    (112),
    (125),
    (126),
    (127),
    (128),
    (129),
    (130),
    (143),
    (144),
    (145),
    (146),
    (147),
    (148),
    (167),
    (168),
    (169),
    (170),
    (171),
    (172),
    (173),
    (174),
    (175),
    (192),
    (193),
    (194),
    (195),
    (196),
    (197),
    (198),
    (202),
    (203),
    (204),
    (231),
    (232),
    (233),
    (234),
    (235),
    (236),
    (237),
    (238),
    (239),
    (240),
    (241);

INSERT INTO FULL_BEARD_CATEGORY (category_id) VALUES
    (1),
    (2),
    (3),
    (10),
    (11),
    (12),
    (13),
    (14),
    (27),
    (28),
    (29),
    (30),
    (31),
    (44),
    (45),
    (46),
    (47),
    (48),
    (61),
    (62),
    (63),
    (64),
    (65),
    (78),
    (79),
    (80),
    (81),
    (82),
    (96),
    (97),
    (98),
    (99),
    (100),
    (113),
    (114),
    (115),
    (116),
    (117),
    (118),
    (131),
    (132),
    (133),
    (134),
    (135),
    (136),
    (153),
    (154),
    (155),
    (156),
    (157),
    (158),
    (159),
    (160),
    (180),
    (181),
    (182),
    (183),
    (184),
    (185),
    (200),
    (211),
    (212),
    (213),
    (214),
    (215),
    (216),
    (217),
    (218),
    (219),
    (220),
    (221),
    (222),
    (223),
    (224);

INSERT INTO CRAFT_CATEGORY (category_id) VALUES
    (149),
    (150),
    (151),
    (152),
    (176),
    (177),
    (178),
    (179),
    (199),
    (205),
    (206),
    (207),
    (208),
    (209),
    (210);

INSERT INTO CONTEST (championship_year, contest_no, category_id, scheduled_date, registration_status, result_status) VALUES
    (1999, 1, 1, NULL, NULL, 'Published'),
    (1999, 2, 2, NULL, NULL, 'Published'),
    (1999, 3, 3, NULL, NULL, 'Published'),
    (1999, 4, 4, NULL, NULL, 'Published'),
    (1999, 5, 5, NULL, NULL, 'Published'),
    (1999, 6, 6, NULL, NULL, 'Published'),
    (1999, 7, 7, NULL, NULL, 'Published'),
    (1999, 8, 8, NULL, NULL, 'Published'),
    (1999, 9, 9, NULL, NULL, 'Published'),
    (2001, 1, 10, NULL, NULL, 'Published'),
    (2001, 2, 11, NULL, NULL, 'Published'),
    (2001, 3, 12, NULL, NULL, 'Published'),
    (2001, 4, 13, NULL, NULL, 'Published'),
    (2001, 5, 14, NULL, NULL, 'Published'),
    (2001, 6, 15, NULL, NULL, 'Published'),
    (2001, 7, 16, NULL, NULL, 'Published'),
    (2001, 8, 17, NULL, NULL, 'Published'),
    (2001, 9, 18, NULL, NULL, 'Published'),
    (2001, 10, 19, NULL, NULL, 'Published'),
    (2001, 11, 20, NULL, NULL, 'Published'),
    (2001, 12, 21, NULL, NULL, 'Published'),
    (2001, 13, 22, NULL, NULL, 'Published'),
    (2001, 14, 23, NULL, NULL, 'Published'),
    (2001, 15, 24, NULL, NULL, 'Published'),
    (2001, 16, 25, NULL, NULL, 'Published'),
    (2001, 17, 26, NULL, NULL, 'Published'),
    (2003, 1, 27, NULL, NULL, 'Published'),
    (2003, 2, 28, NULL, NULL, 'Published'),
    (2003, 3, 29, NULL, NULL, 'Published'),
    (2003, 4, 30, NULL, NULL, 'Published'),
    (2003, 5, 31, NULL, NULL, 'Published'),
    (2003, 6, 32, NULL, NULL, 'Published'),
    (2003, 7, 33, NULL, NULL, 'Published'),
    (2003, 8, 34, NULL, NULL, 'Published'),
    (2003, 9, 35, NULL, NULL, 'Published'),
    (2003, 10, 36, NULL, NULL, 'Published'),
    (2003, 11, 37, NULL, NULL, 'Published'),
    (2003, 12, 38, NULL, NULL, 'Published'),
    (2003, 13, 39, NULL, NULL, 'Published'),
    (2003, 14, 40, NULL, NULL, 'Published'),
    (2003, 15, 41, NULL, NULL, 'Published'),
    (2003, 16, 42, NULL, NULL, 'Published'),
    (2003, 17, 43, NULL, NULL, 'Published'),
    (2005, 1, 44, NULL, NULL, 'Published'),
    (2005, 2, 45, NULL, NULL, 'Published'),
    (2005, 3, 46, NULL, NULL, 'Published'),
    (2005, 4, 47, NULL, NULL, 'Published'),
    (2005, 5, 48, NULL, NULL, 'Published'),
    (2005, 6, 49, NULL, NULL, 'Published'),
    (2005, 7, 50, NULL, NULL, 'Published'),
    (2005, 8, 51, NULL, NULL, 'Published'),
    (2005, 9, 52, NULL, NULL, 'Published'),
    (2005, 10, 53, NULL, NULL, 'Published'),
    (2005, 11, 54, NULL, NULL, 'Published'),
    (2005, 12, 55, NULL, NULL, 'Published'),
    (2005, 13, 56, NULL, NULL, 'Published'),
    (2005, 14, 57, NULL, NULL, 'Published'),
    (2005, 15, 58, NULL, NULL, 'Published'),
    (2005, 16, 59, NULL, NULL, 'Published'),
    (2005, 17, 60, NULL, NULL, 'Published'),
    (2007, 1, 61, NULL, NULL, 'Published'),
    (2007, 2, 62, NULL, NULL, 'Published'),
    (2007, 3, 63, NULL, NULL, 'Published'),
    (2007, 4, 64, NULL, NULL, 'Published'),
    (2007, 5, 65, NULL, NULL, 'Published'),
    (2007, 6, 66, NULL, NULL, 'Published'),
    (2007, 7, 67, NULL, NULL, 'Published'),
    (2007, 8, 68, NULL, NULL, 'Published'),
    (2007, 9, 69, NULL, NULL, 'Published'),
    (2007, 10, 70, NULL, NULL, 'Published'),
    (2007, 11, 71, NULL, NULL, 'Published'),
    (2007, 12, 72, NULL, NULL, 'Published'),
    (2007, 13, 73, NULL, NULL, 'Published'),
    (2007, 14, 74, NULL, NULL, 'Published'),
    (2007, 15, 75, NULL, NULL, 'Published'),
    (2007, 16, 76, NULL, NULL, 'Published'),
    (2007, 17, 77, NULL, NULL, 'Published'),
    (2009, 1, 78, NULL, NULL, 'Published'),
    (2009, 2, 79, NULL, NULL, 'Published'),
    (2009, 3, 80, NULL, NULL, 'Published'),
    (2009, 4, 81, NULL, NULL, 'Published'),
    (2009, 5, 82, NULL, NULL, 'Published'),
    (2009, 6, 83, NULL, NULL, 'Published'),
    (2009, 7, 84, NULL, NULL, 'Published'),
    (2009, 8, 85, NULL, NULL, 'Published'),
    (2009, 9, 86, NULL, NULL, 'Published'),
    (2009, 10, 87, NULL, NULL, 'Published'),
    (2009, 11, 88, NULL, NULL, 'Published'),
    (2009, 12, 89, NULL, NULL, 'Published'),
    (2009, 13, 90, NULL, NULL, 'Published'),
    (2009, 14, 91, NULL, NULL, 'Published'),
    (2009, 15, 92, NULL, NULL, 'Published'),
    (2009, 16, 93, NULL, NULL, 'Published'),
    (2009, 17, 94, NULL, NULL, 'Published'),
    (2009, 18, 95, NULL, NULL, 'Published'),
    (2011, 1, 96, NULL, NULL, 'Published'),
    (2011, 2, 97, NULL, NULL, 'Published'),
    (2011, 3, 98, NULL, NULL, 'Published'),
    (2011, 4, 99, NULL, NULL, 'Published'),
    (2011, 5, 100, NULL, NULL, 'Published'),
    (2011, 6, 101, NULL, NULL, 'Published'),
    (2011, 7, 102, NULL, NULL, 'Published'),
    (2011, 8, 103, NULL, NULL, 'Published'),
    (2011, 9, 104, NULL, NULL, 'Published'),
    (2011, 10, 105, NULL, NULL, 'Published'),
    (2011, 11, 106, NULL, NULL, 'Published'),
    (2011, 12, 107, NULL, NULL, 'Published'),
    (2011, 13, 108, NULL, NULL, 'Published'),
    (2011, 14, 109, NULL, NULL, 'Published'),
    (2011, 15, 110, NULL, NULL, 'Published'),
    (2011, 16, 111, NULL, NULL, 'Published'),
    (2011, 17, 112, NULL, NULL, 'Published'),
    (2013, 1, 113, NULL, NULL, 'Published'),
    (2013, 2, 114, NULL, NULL, 'Published'),
    (2013, 3, 115, NULL, NULL, 'Published'),
    (2013, 4, 116, NULL, NULL, 'Published'),
    (2013, 5, 117, NULL, NULL, 'Published'),
    (2013, 6, 118, NULL, NULL, 'Published'),
    (2013, 7, 119, NULL, NULL, 'Published'),
    (2013, 8, 120, NULL, NULL, 'Published'),
    (2013, 9, 121, NULL, NULL, 'Published'),
    (2013, 10, 122, NULL, NULL, 'Published'),
    (2013, 11, 123, NULL, NULL, 'Published'),
    (2013, 12, 124, NULL, NULL, 'Published'),
    (2013, 13, 125, NULL, NULL, 'Published'),
    (2013, 14, 126, NULL, NULL, 'Published'),
    (2013, 15, 127, NULL, NULL, 'Published'),
    (2013, 16, 128, NULL, NULL, 'Published'),
    (2013, 17, 129, NULL, NULL, 'Published'),
    (2013, 18, 130, NULL, NULL, 'Published'),
    (2015, 1, 131, NULL, NULL, 'Published'),
    (2015, 2, 132, NULL, NULL, 'Published'),
    (2015, 3, 133, NULL, NULL, 'Published'),
    (2015, 4, 134, NULL, NULL, 'Published'),
    (2015, 5, 135, NULL, NULL, 'Published'),
    (2015, 6, 136, NULL, NULL, 'Published'),
    (2015, 7, 137, NULL, NULL, 'Published'),
    (2015, 8, 138, NULL, NULL, 'Published'),
    (2015, 9, 139, NULL, NULL, 'Published'),
    (2015, 10, 140, NULL, NULL, 'Published'),
    (2015, 11, 141, NULL, NULL, 'Published'),
    (2015, 12, 142, NULL, NULL, 'Published'),
    (2015, 13, 143, NULL, NULL, 'Published'),
    (2015, 14, 144, NULL, NULL, 'Published'),
    (2015, 15, 145, NULL, NULL, 'Published'),
    (2015, 16, 146, NULL, NULL, 'Published'),
    (2015, 17, 147, NULL, NULL, 'Published'),
    (2015, 18, 148, NULL, NULL, 'Published'),
    (2017, 1, 149, NULL, NULL, 'Published'),
    (2017, 2, 150, NULL, NULL, 'Published'),
    (2017, 3, 151, NULL, NULL, 'Published'),
    (2017, 4, 152, NULL, NULL, 'Published'),
    (2017, 5, 153, NULL, NULL, 'Published'),
    (2017, 6, 154, NULL, NULL, 'Published'),
    (2017, 7, 155, NULL, NULL, 'Published'),
    (2017, 8, 156, NULL, NULL, 'Published'),
    (2017, 9, 157, NULL, NULL, 'Published'),
    (2017, 10, 158, NULL, NULL, 'Published'),
    (2017, 11, 159, NULL, NULL, 'Published'),
    (2017, 12, 160, NULL, NULL, 'Published'),
    (2017, 13, 161, NULL, NULL, 'Published'),
    (2017, 14, 162, NULL, NULL, 'Published'),
    (2017, 15, 163, NULL, NULL, 'Published'),
    (2017, 16, 164, NULL, NULL, 'Published'),
    (2017, 17, 165, NULL, NULL, 'Published'),
    (2017, 18, 166, NULL, NULL, 'Published'),
    (2017, 19, 167, NULL, NULL, 'Published'),
    (2017, 20, 168, NULL, NULL, 'Published'),
    (2017, 21, 169, NULL, NULL, 'Published'),
    (2017, 22, 170, NULL, NULL, 'Published'),
    (2017, 23, 171, NULL, NULL, 'Published'),
    (2017, 24, 172, NULL, NULL, 'Published'),
    (2017, 25, 173, NULL, NULL, 'Published'),
    (2017, 26, 174, NULL, NULL, 'Published'),
    (2017, 27, 175, NULL, NULL, 'Published'),
    (2019, 1, 176, NULL, NULL, 'Published'),
    (2019, 2, 177, NULL, NULL, 'Published'),
    (2019, 3, 178, NULL, NULL, 'Published'),
    (2019, 4, 179, NULL, NULL, 'Published'),
    (2019, 5, 180, NULL, NULL, 'Published'),
    (2019, 6, 181, NULL, NULL, 'Published'),
    (2019, 7, 182, NULL, NULL, 'Published'),
    (2019, 8, 183, NULL, NULL, 'Published'),
    (2019, 9, 184, NULL, NULL, 'Published'),
    (2019, 10, 185, NULL, NULL, 'Published'),
    (2019, 11, 186, NULL, NULL, 'Published'),
    (2019, 12, 187, NULL, NULL, 'Published'),
    (2019, 13, 188, NULL, NULL, 'Published'),
    (2019, 14, 189, NULL, NULL, 'Published'),
    (2019, 15, 190, NULL, NULL, 'Published'),
    (2019, 16, 191, NULL, NULL, 'Published'),
    (2019, 17, 192, NULL, NULL, 'Published'),
    (2019, 18, 193, NULL, NULL, 'Published'),
    (2019, 19, 194, NULL, NULL, 'Published'),
    (2019, 20, 195, NULL, NULL, 'Published'),
    (2019, 21, 196, NULL, NULL, 'Published'),
    (2019, 22, 197, NULL, NULL, 'Published'),
    (2019, 23, 198, NULL, NULL, 'Published'),
    (2023, 1, 199, NULL, NULL, 'Published'),
    (2023, 2, 200, NULL, NULL, 'Published'),
    (2023, 3, 201, NULL, NULL, 'Published'),
    (2023, 4, 202, NULL, NULL, 'Published'),
    (2023, 5, 203, NULL, NULL, 'Published'),
    (2023, 6, 204, NULL, NULL, 'Published'),
    (2025, 1, 205, NULL, NULL, 'Published'),
    (2025, 2, 206, NULL, NULL, 'Published'),
    (2025, 3, 207, NULL, NULL, 'Published'),
    (2025, 4, 208, NULL, NULL, 'Published'),
    (2025, 5, 209, NULL, NULL, 'Published'),
    (2025, 6, 210, NULL, NULL, 'Published'),
    (2025, 7, 211, NULL, NULL, 'Published'),
    (2025, 8, 212, NULL, NULL, 'Published'),
    (2025, 9, 213, NULL, NULL, 'Published'),
    (2025, 10, 214, NULL, NULL, 'Published'),
    (2025, 11, 215, NULL, NULL, 'Published'),
    (2025, 12, 216, NULL, NULL, 'Published'),
    (2025, 13, 217, NULL, NULL, 'Published'),
    (2025, 14, 218, NULL, NULL, 'Published'),
    (2025, 15, 219, NULL, NULL, 'Published'),
    (2025, 16, 220, NULL, NULL, 'Published'),
    (2025, 17, 221, NULL, NULL, 'Published'),
    (2025, 18, 222, NULL, NULL, 'Published'),
    (2025, 19, 223, NULL, NULL, 'Published'),
    (2025, 20, 224, NULL, NULL, 'Published'),
    (2025, 21, 225, NULL, NULL, 'Published'),
    (2025, 22, 226, NULL, NULL, 'Published'),
    (2025, 23, 227, NULL, NULL, 'Published'),
    (2025, 24, 228, NULL, NULL, 'Published'),
    (2025, 25, 229, NULL, NULL, 'Published'),
    (2025, 26, 230, NULL, NULL, 'Published'),
    (2025, 27, 231, NULL, NULL, 'Published'),
    (2025, 28, 232, NULL, NULL, 'Published'),
    (2025, 29, 233, NULL, NULL, 'Published'),
    (2025, 30, 234, NULL, NULL, 'Published'),
    (2025, 31, 235, NULL, NULL, 'Published'),
    (2025, 32, 236, NULL, NULL, 'Published'),
    (2025, 33, 237, NULL, NULL, 'Published'),
    (2025, 34, 238, NULL, NULL, 'Published'),
    (2025, 35, 239, NULL, NULL, 'Published'),
    (2025, 36, 240, NULL, NULL, 'Published'),
    (2025, 37, 241, NULL, NULL, 'Published');

-- Open contests for the scheduled 2027 edition, so the website can register new entries
-- in the live database without touching published history.
-- They reuse four existing 2025 category rows (no new categories are invented).
-- Put this AFTER the CONTEST insert in populate.sql.
INSERT INTO CONTEST (championship_year, contest_no, category_id, scheduled_date, registration_status, result_status) VALUES
    (2027, 1, 230, NULL, 'Open', 'Pending'),   -- Natural Moustache
    (2027, 2, 229, NULL, 'Open', 'Pending'),   -- Imperial Moustache
    (2027, 3, 213, NULL, 'Open', 'Pending'),   -- Full Beard Freestyle
    (2027, 4, 205, NULL, 'Open', 'Pending');   -- Craft Creative Beard

INSERT INTO COMPETITOR (competitor_id, email, first_name, middle_name, last_name, birth_date) VALUES
    (1, NULL, 'Elmar', NULL, 'Weisser', NULL),
    (2, NULL, 'Hans-Peter', NULL, 'Weis', NULL),
    (3, NULL, 'Gerhardt', NULL, 'Knapp', NULL),
    (4, NULL, 'Rooty', NULL, 'Lundvall', NULL),
    (5, NULL, 'Jack', NULL, 'Passion', NULL),
    (6, NULL, 'Alois', NULL, 'Plettl', NULL),
    (7, NULL, 'Burke', NULL, 'Kenny', NULL),
    (8, NULL, 'Albert', NULL, 'Schmidt', NULL),
    (9, NULL, 'Bernd', NULL, 'Kopiak', NULL),
    (10, NULL, 'Fritz', NULL, 'Sendlhofer', NULL),
    (11, NULL, 'Doug', NULL, 'Renfro', NULL),
    (12, NULL, 'Devin', NULL, 'Cara', NULL),
    (13, NULL, 'Karl', NULL, 'Roos', NULL),
    (14, NULL, 'John', NULL, 'Myatt', NULL),
    (15, NULL, 'Travis', NULL, 'Nance', NULL),
    (16, NULL, 'Juhana', NULL, 'Helmenkalastaja', NULL),
    (17, NULL, 'Max', NULL, 'Pankow', NULL),
    (18, NULL, 'Jeff', NULL, 'Well', NULL),
    (19, NULL, 'Tony', NULL, 'Wiess', NULL),
    (20, NULL, 'Jeffrey', NULL, 'Moustache', NULL),
    (21, NULL, 'Jake', NULL, 'Snake', NULL),
    (22, NULL, 'Keith', NULL, 'Haubrich', NULL),
    (23, NULL, 'Jan', 'Haakon', 'Bekkavik', NULL),
    (24, NULL, 'Evan', NULL, 'Gillespie', NULL),
    (25, NULL, 'Bruce', NULL, 'Roe', NULL),
    (26, NULL, 'Per-Dagfinn', NULL, 'Pettersen', NULL),
    (27, NULL, 'Tore', NULL, 'Moan', NULL),
    (28, NULL, 'Giovanni', NULL, 'Dominice', NULL),
    (29, NULL, 'Benjamin', NULL, 'Juergens', NULL),
    (30, NULL, 'Eugen', NULL, 'Hipp', NULL),
    (31, NULL, 'Schneider', NULL, NULL, NULL),
    (32, NULL, 'Andreas', NULL, 'Rellfelt', NULL),
    (33, NULL, 'Bo', NULL, 'Jonsson', NULL),
    (34, NULL, 'Lutz', NULL, 'Giese', NULL),
    (35, NULL, 'Ted', NULL, 'Sedman', NULL),
    (36, NULL, 'Bob', NULL, 'Gengler', NULL),
    (37, NULL, 'Karl-Heinz', NULL, 'Hille', NULL),
    (38, NULL, 'Terje', NULL, 'Aaberg', NULL),
    (39, NULL, 'Ronnie', NULL, 'Coosemans', NULL),
    (40, NULL, 'Juergen', NULL, 'Draheim', NULL),
    (41, NULL, 'Frazier', NULL, 'Coppin', NULL),
    (42, NULL, 'Joerg', NULL, 'Biland', NULL),
    (43, NULL, 'Dusan', NULL, 'Lalos', NULL),
    (44, NULL, 'Wolfgang', NULL, 'Servay', NULL),
    (45, NULL, 'Piero', NULL, 'Mastrorosa', NULL),
    (46, NULL, 'Dieter', NULL, 'Besuch', NULL),
    (47, NULL, 'Franz', NULL, 'Mitterhauser', NULL),
    (48, NULL, 'Paul', NULL, 'Kallenborn', NULL),
    (49, NULL, 'Bill', NULL, 'Mitchell', NULL),
    (50, NULL, 'Roger', NULL, 'Eriksen', NULL),
    (51, NULL, 'Juergen', NULL, 'Burkhardt', NULL),
    (52, NULL, 'Aarne', NULL, 'Bielefeldt', NULL),
    (53, NULL, 'Elmar', NULL, 'Weißer', NULL),
    (54, NULL, 'Hans-Peter', NULL, 'Weis', NULL),
    (55, NULL, 'Jeff', NULL, 'Langum', NULL),
    (56, NULL, 'Bryan', NULL, 'Nelson', NULL),
    (57, NULL, 'Johann', NULL, 'Schönauer', NULL),
    (58, NULL, 'Burke', NULL, 'Kenny', NULL),
    (59, NULL, 'Albert', NULL, 'Schmid', NULL),
    (60, NULL, 'Wilhelm', '(Willi)', 'Preuß', NULL),
    (61, NULL, 'Franz', NULL, 'Pill', NULL),
    (62, NULL, 'Hans', NULL, 'Gassner', NULL),
    (63, NULL, 'Fritz', NULL, 'Sendlhofer', NULL),
    (64, NULL, 'Ricardo', NULL, 'Hakan', NULL),
    (65, NULL, 'Jonas', NULL, 'Weißer', NULL),
    (66, NULL, 'Lino', NULL, 'Gentile', NULL),
    (67, NULL, 'Willi', NULL, 'Segalotto', NULL),
    (68, NULL, 'Jeffrey', NULL, 'Moustache', NULL),
    (69, NULL, 'Karl', NULL, 'Roos', NULL),
    (70, NULL, 'Josef', NULL, 'Zeiler', NULL),
    (71, NULL, 'Joachim', NULL, 'Ott', NULL),
    (72, NULL, 'Manfred', NULL, 'Müller', NULL),
    (73, NULL, 'Patrick', NULL, 'Fette', NULL),
    (74, NULL, 'Jochen', NULL, 'Kälber', NULL),
    (75, NULL, 'Klaus', NULL, 'Schissler', NULL),
    (76, NULL, 'Daniel', NULL, 'Lawlor', NULL),
    (77, NULL, 'Günter', NULL, 'Krause', NULL),
    (78, NULL, 'Keith', NULL, 'Haubrich', NULL),
    (79, NULL, 'Zsolt', NULL, 'Járomi', NULL),
    (80, NULL, 'István', NULL, 'Szentpétery', NULL),
    (81, NULL, 'Rainer', NULL, 'Frech', NULL),
    (82, NULL, 'Eugen', NULL, 'Hipp', NULL),
    (83, NULL, 'Benjamin', NULL, 'Juergens', NULL),
    (84, NULL, 'Peter', NULL, 'Laube', NULL),
    (85, NULL, 'Wolfgang', NULL, 'Schneider', NULL),
    (86, NULL, 'Arne', 'Georg', 'Jacobsen', NULL),
    (87, NULL, 'Rainer', NULL, 'Preussner', NULL),
    (88, NULL, 'Sean', NULL, 'Raiger', NULL),
    (89, NULL, 'Lutz', NULL, 'Giese', NULL),
    (90, NULL, 'Ted', NULL, 'Sedman', NULL),
    (91, NULL, 'Karl-Heinz', NULL, 'Hille', NULL),
    (92, NULL, 'Michael', NULL, 'Johnson', NULL),
    (93, NULL, 'Anthony', NULL, 'Fontes', NULL),
    (94, NULL, 'Erwin', NULL, 'Butsch', NULL),
    (95, NULL, 'Al', NULL, 'Underwood', NULL),
    (96, NULL, 'Taylor', NULL, 'Welden', NULL),
    (97, NULL, 'Bernhard', NULL, 'Greller', NULL),
    (98, NULL, 'Hans', NULL, 'Unverricht', NULL),
    (99, NULL, 'Johnathan', NULL, 'Howle', NULL),
    (100, NULL, 'Willi', NULL, 'Chevalier', NULL),
    (101, NULL, 'Norbert', NULL, 'Topf', NULL),
    (102, NULL, 'Wolfgang', NULL, 'Reuswich', NULL),
    (103, NULL, 'Dieter', NULL, 'Besuch', NULL),
    (104, NULL, 'Hervé', NULL, 'Diebolt', NULL),
    (105, NULL, 'Wilhelm', NULL, 'Erz', NULL),
    (106, NULL, 'Armin', NULL, 'Knapp', NULL),
    (107, NULL, 'Jeffrey', NULL, 'Benglian', NULL),
    (108, NULL, 'Aarne', NULL, 'Bielefeldt', NULL),
    (109, NULL, 'Madison', NULL, 'Rowley', NULL),
    (110, NULL, 'Daniel', NULL, 'Erber', NULL),
    (111, NULL, 'Jeff', NULL, 'Langum', NULL),
    (112, NULL, 'Hans', NULL, 'Gassner', NULL),
    (113, NULL, 'Ben', NULL, 'Whitney', NULL),
    (114, NULL, 'Josh', NULL, 'Black', NULL),
    (115, NULL, 'Fritz', NULL, 'Sendlhofer', NULL),
    (116, NULL, 'Martin', NULL, 'Millauer', NULL),
    (117, NULL, 'Franz', NULL, 'Pill', NULL),
    (118, NULL, 'Michael', NULL, 'Keller', NULL),
    (119, NULL, 'Michael', NULL, 'Hofer', NULL),
    (120, NULL, 'Matthew', NULL, 'Evans', NULL),
    (121, NULL, 'Madreiter', NULL, 'Anton', NULL),
    (122, NULL, 'Stöckl', NULL, 'Gerhard', NULL),
    (123, NULL, 'Roos', NULL, 'Karl', NULL),
    (124, NULL, 'Johnny', NULL, 'King', NULL),
    (125, NULL, 'Max-Klaus', NULL, 'Pankow', NULL),
    (126, NULL, 'Max', NULL, 'Pölzl', NULL),
    (127, NULL, 'Patrick', NULL, 'Fette', NULL),
    (128, NULL, 'Bernd', NULL, 'Hildebrandt', NULL),
    (129, NULL, 'Frank', NULL, 'Himmelreich', NULL),
    (130, NULL, 'Daniel', NULL, 'Lawlor', NULL),
    (131, NULL, 'Günter', NULL, 'Krause', NULL),
    (132, NULL, 'Franz', NULL, 'Schottenhammer', NULL),
    (133, NULL, 'Járomi', NULL, 'Zsolt', NULL),
    (134, NULL, 'Istvan', NULL, 'Szentpetery', NULL),
    (135, NULL, 'Bruce', NULL, 'Roe', NULL),
    (136, NULL, 'Jackie', 'Lynn', 'Ellison', NULL),
    (137, NULL, 'Eugen', NULL, 'Hipp', NULL),
    (138, NULL, 'Benjamin', NULL, 'Juergens', NULL),
    (139, NULL, 'Wolfgang', NULL, 'Schneider', NULL),
    (140, NULL, 'Christian', NULL, 'Stöckl', NULL),
    (141, NULL, 'Imre', NULL, 'Fejer', NULL),
    (142, NULL, 'Patrick', NULL, 'Langley', NULL),
    (143, NULL, 'Sean', NULL, 'Raiger', NULL),
    (144, NULL, 'Lutz', NULL, 'Giese', NULL),
    (145, NULL, 'Gilles', NULL, 'Pollinien', NULL),
    (146, NULL, 'Karl-Heinz', NULL, 'Hille', NULL),
    (147, NULL, 'Haim', NULL, 'Hoffman', NULL),
    (148, NULL, 'Jeffrey', NULL, 'Beard', NULL),
    (149, NULL, 'Jürg', NULL, 'Biland', NULL),
    (150, NULL, 'James', NULL, 'McMahon', NULL),
    (151, NULL, 'Wolfgang', NULL, 'Servay', NULL),
    (152, NULL, 'Patrick', NULL, 'Dawson', NULL),
    (153, NULL, 'Bernhard', NULL, 'Greller', NULL),
    (154, NULL, 'Norbert', NULL, 'Topf', NULL),
    (155, NULL, 'Wolfgang', NULL, 'Führs', NULL),
    (156, NULL, 'Marian', NULL, 'Vidakovic', NULL),
    (157, NULL, 'Dieter', NULL, 'Besuch', NULL),
    (158, NULL, 'Franz', NULL, 'Mitterhauser', NULL),
    (159, NULL, 'Hervé', NULL, 'Diebolt', NULL),
    (160, NULL, 'Alice', NULL, 'Jelley', NULL),
    (161, NULL, 'Julie', NULL, 'Martin', NULL),
    (162, NULL, 'Suzanne', NULL, 'Cunningham', NULL),
    (163, NULL, 'Amy', NULL, 'Roberts', NULL),
    (164, NULL, 'Donna', NULL, 'Coles', NULL),
    (165, NULL, 'Olympia', NULL, 'Nelson', NULL),
    (166, NULL, 'Courtney', NULL, 'Minchey', NULL),
    (167, NULL, 'Dena', NULL, 'Greenwalt', NULL),
    (168, NULL, 'Lauren', NULL, 'Henneke', NULL),
    (169, NULL, 'Angela', NULL, 'Webb', NULL),
    (170, NULL, 'Angela', NULL, 'Alba-Dirico', NULL),
    (171, NULL, 'Jodi', NULL, 'Roweine', NULL),
    (172, NULL, 'Neil', NULL, 'Friedman', NULL),
    (173, NULL, 'Jon', NULL, 'Mayorga', NULL),
    (174, NULL, 'Eric', NULL, 'Simpson', NULL),
    (175, NULL, 'Robert', NULL, 'Gallagher', NULL),
    (176, NULL, 'Sean', NULL, 'Logie', NULL),
    (177, NULL, 'Andrew', NULL, 'Kloss', NULL),
    (178, NULL, 'Jay', NULL, 'Cole', NULL),
    (179, NULL, 'Douglas', NULL, 'Middleton', NULL),
    (180, NULL, 'Stuart', NULL, 'Eggers', NULL),
    (181, NULL, 'Michael', NULL, 'Wollin', NULL),
    (182, NULL, 'Madison', NULL, 'Rowley', NULL),
    (183, NULL, 'Jeff', NULL, 'Langum', NULL),
    (184, NULL, 'Jason', NULL, 'Kiley', NULL),
    (185, NULL, 'Isaiah', NULL, 'Webb', NULL),
    (186, NULL, 'Aarne', NULL, 'Bielefeldt', NULL),
    (187, NULL, 'Franz', NULL, 'Pill', NULL),
    (188, NULL, 'Jordan', NULL, 'Gazy', NULL),
    (189, NULL, 'Scott', NULL, 'Hrubes', NULL),
    (190, NULL, 'Scott', NULL, 'Metts', NULL),
    (191, NULL, 'Owen', NULL, 'Hicks', NULL),
    (192, NULL, 'Lee', NULL, 'Andrews', NULL),
    (193, NULL, 'Karl', NULL, 'Roos', NULL),
    (194, NULL, 'Willi', NULL, 'Segalotto', NULL),
    (195, NULL, 'Peter', NULL, 'Laube', NULL),
    (196, NULL, 'Asa', NULL, 'Harvey', NULL),
    (197, NULL, 'Nathan', NULL, 'Wilson', NULL),
    (198, NULL, 'Ilkka', NULL, 'Parviainen', NULL),
    (199, NULL, 'Josef', NULL, 'Zeiler', NULL),
    (200, NULL, 'Patrick', NULL, 'Fette', NULL),
    (201, NULL, 'Edward', NULL, 'Kimmerling', NULL),
    (202, NULL, 'Paul', NULL, 'Slosar', NULL),
    (203, NULL, 'Daniel', NULL, 'Lawlor', NULL),
    (204, NULL, 'Michael', NULL, 'Edens', NULL),
    (205, NULL, 'Jeffrey', NULL, 'Moustache', NULL),
    (206, NULL, 'Tyson', NULL, 'Burlile', NULL),
    (207, NULL, 'Karoly', NULL, 'Csanki', NULL),
    (208, NULL, 'Jackie', NULL, 'Ellison', NULL),
    (209, NULL, 'Jeffrey', NULL, 'Bittner', NULL),
    (210, NULL, 'Alexey', NULL, 'Kozlov', NULL),
    (211, NULL, 'Wolfgang', NULL, 'Schneider', NULL),
    (212, NULL, 'Snidely', NULL, 'Wildstache', NULL),
    (213, NULL, 'Rolf', NULL, 'Huber', NULL),
    (214, NULL, 'Pete', NULL, 'Kerns', NULL),
    (215, NULL, 'Ryan', NULL, 'Sheibley', NULL),
    (216, NULL, 'Marc', NULL, 'McShane', NULL),
    (217, NULL, 'Michael', NULL, 'Johnson', NULL),
    (218, NULL, 'Jurgen', NULL, 'Burkhardt', NULL),
    (219, NULL, 'Coosenans', NULL, 'Ronny', NULL),
    (220, NULL, 'Norbert', NULL, 'Topf', NULL),
    (221, NULL, 'Todd', NULL, 'Owen', NULL),
    (222, NULL, 'Jeff', NULL, 'Carta', NULL),
    (223, NULL, 'Sean', NULL, 'Raiger', NULL),
    (224, NULL, 'Patrick', NULL, 'Langley', NULL),
    (225, NULL, 'Lutz', NULL, 'Giese', NULL),
    (226, NULL, 'Gilles', NULL, 'Polinien', NULL),
    (227, NULL, 'Haim', NULL, 'Hoffmann', NULL),
    (228, NULL, 'Chris', NULL, 'McInnis', NULL),
    (229, NULL, 'Erwin', NULL, 'Butsch', NULL),
    (230, NULL, 'Jurg', NULL, 'Biland', NULL),
    (231, NULL, 'Whisker', NULL, 'Will', NULL),
    (232, NULL, 'Aaron', NULL, 'Johnston', NULL),
    (233, NULL, 'Patrick', NULL, 'Dawson', NULL),
    (234, NULL, 'Nate', NULL, 'Johnson', NULL),
    (235, NULL, 'Steffen', NULL, 'Rasile', NULL),
    (236, NULL, 'Cody', NULL, 'Hall', NULL),
    (237, NULL, 'Michael', NULL, 'Wallage', NULL),
    (238, NULL, 'Patrick', NULL, 'Quinn', NULL),
    (239, NULL, 'Steve', NULL, 'Casper', NULL),
    (240, NULL, 'Joshua', NULL, 'Jackson', NULL),
    (241, NULL, 'Neal', NULL, 'Eckrich', NULL),
    (242, NULL, 'Brendan', NULL, 'Kelly', NULL),
    (243, NULL, 'Manfred', NULL, 'Müller', NULL),
    (244, NULL, 'Philip', NULL, 'Patton', NULL),
    (245, NULL, 'Troy', NULL, 'Headrick', NULL),
    (246, NULL, 'Patrick', NULL, 'Fette', NULL),
    (247, NULL, 'Eduardo', NULL, 'Fae', NULL),
    (248, NULL, 'Nicholas', NULL, 'Sorrenson', NULL),
    (249, NULL, 'John', NULL, 'DiCrosta', NULL),
    (250, NULL, 'Joshua', NULL, 'Quinney', NULL),
    (251, NULL, 'Nicholas', NULL, 'Godena', NULL),
    (252, NULL, 'Robert', NULL, 'Baker', NULL),
    (253, NULL, 'Kevin', NULL, 'Doll', NULL),
    (254, NULL, 'Tim', NULL, 'Adamosky', NULL),
    (255, NULL, 'Hunter', NULL, 'Kelly', NULL),
    (256, NULL, 'Lucio', NULL, 'Battista', NULL),
    (257, NULL, 'Terry', NULL, 'Farley', NULL),
    (258, NULL, 'David', NULL, 'Benson', NULL),
    (259, NULL, 'Kevin', NULL, 'Sargent', NULL),
    (260, NULL, 'Eddie', NULL, 'Kimmerling', NULL),
    (261, NULL, 'Al', NULL, 'Underwood', NULL),
    (262, NULL, 'Erwin', NULL, 'Butsch', NULL),
    (263, NULL, 'Patrick', NULL, 'Quinn', NULL),
    (264, NULL, 'Jason', NULL, 'Trimble', NULL),
    (265, NULL, 'Tim', NULL, 'Seeger', NULL),
    (266, NULL, 'Shannon', NULL, 'Clinkenbeard', NULL),
    (267, NULL, 'Corey', NULL, 'Giehl', NULL),
    (268, NULL, 'Steve', NULL, 'Pletcher', NULL),
    (269, NULL, 'Haim', NULL, 'Hoffmann', NULL),
    (270, NULL, 'Mehmet', NULL, 'Mete', NULL),
    (271, NULL, 'Ty', NULL, 'Lehman', NULL),
    (272, NULL, 'Daniel', NULL, 'Lawlor', NULL),
    (273, NULL, 'Norbert', NULL, 'Topf', NULL),
    (274, NULL, 'Anthony', NULL, 'Carty', NULL),
    (275, NULL, 'Andreas', NULL, 'Pelowski', NULL),
    (276, NULL, 'Sean', NULL, 'McConaghy', NULL),
    (277, NULL, 'Frank', NULL, 'Robert', NULL),
    (278, NULL, 'Jürgen', NULL, 'Burkhardt', NULL),
    (279, NULL, 'Keith', NULL, 'Haubrich', NULL),
    (280, NULL, 'Jason', NULL, 'Schafer', NULL),
    (281, NULL, 'John', NULL, 'Stevenson', NULL),
    (282, NULL, 'Jac', NULL, 'Chandross', NULL),
    (283, NULL, 'Paul', NULL, 'Tu', NULL),
    (284, NULL, 'Adam', NULL, 'Smalley', NULL),
    (285, NULL, 'John', NULL, 'Tarpley', NULL),
    (286, NULL, 'Jake', NULL, 'Darlington', NULL),
    (287, NULL, 'Radoslaw', NULL, 'Jobski', NULL),
    (288, NULL, 'Graydon', NULL, 'Crawford', NULL),
    (289, NULL, 'Adam', NULL, 'Walker', NULL),
    (290, NULL, 'Brian', NULL, 'Allen', NULL),
    (291, NULL, 'Kenneth', NULL, 'Kiesnoski', NULL),
    (292, NULL, 'Christopher', NULL, 'Wright', NULL),
    (293, NULL, 'Bill', NULL, 'Budusky', NULL),
    (294, NULL, 'Jason', NULL, 'Sparks', NULL),
    (295, NULL, 'Scott', NULL, 'Handte', NULL),
    (296, NULL, 'Adam', NULL, 'Bruck', NULL),
    (297, NULL, 'Owen', NULL, 'Hicks', NULL),
    (298, NULL, 'Robert', NULL, 'Rainey', NULL),
    (299, NULL, 'Trevor', NULL, 'Mustafa', NULL),
    (300, NULL, 'Reuben', NULL, 'Darlington', NULL),
    (301, NULL, 'Brian', NULL, 'Eva', NULL),
    (302, NULL, 'Chris', NULL, 'Gardner', NULL),
    (303, NULL, 'John', NULL, 'Fabula', NULL),
    (304, NULL, 'Sean', NULL, 'Logie', NULL),
    (305, NULL, 'Lewis', NULL, 'Aylmer', NULL),
    (306, NULL, 'Wilfredo', NULL, 'Martinez', NULL),
    (307, NULL, 'Jason', NULL, 'Heien', NULL),
    (308, NULL, 'Mark', NULL, 'Byrnes', NULL),
    (309, NULL, 'Brock', NULL, 'Messner', NULL),
    (310, NULL, 'Israel', NULL, 'Barclay', NULL),
    (311, NULL, 'Gary', NULL, 'Warren', NULL),
    (312, NULL, 'Gerry', NULL, 'Spiller', NULL),
    (313, NULL, 'Travis', NULL, 'Castleman', NULL),
    (314, NULL, 'Robert', NULL, 'Beaudry', NULL),
    (315, NULL, 'Shawn', NULL, 'Duff', NULL),
    (316, NULL, 'Mitchell', NULL, 'Stryker', NULL),
    (317, NULL, 'Charley', NULL, 'Goble', NULL),
    (318, NULL, 'Dennis', NULL, 'Dawson', NULL),
    (319, NULL, 'Raymond', NULL, 'Lee', NULL),
    (320, NULL, 'Joseph', NULL, 'Farrell', NULL),
    (321, NULL, 'Paul', NULL, 'Kennedy', NULL),
    (322, NULL, 'John', NULL, 'Banks', NULL),
    (323, NULL, 'Müge', NULL, 'Mete', NULL),
    (324, NULL, 'Jodi', NULL, 'Roweine', NULL),
    (325, NULL, 'Kathleen', NULL, 'Culler', NULL),
    (326, NULL, 'Cynthia', NULL, 'Orten', NULL),
    (327, NULL, 'Deanna', NULL, 'Archer', NULL),
    (328, NULL, 'Melissa', NULL, 'Fette', NULL),
    (329, NULL, 'Kelly', NULL, 'Spiller', NULL),
    (330, NULL, 'Holly', NULL, 'Hurrelmeyer', NULL),
    (331, NULL, 'Fiona', NULL, 'Ghiorso-reader', NULL),
    (332, NULL, 'Natali', NULL, 'Johnston', NULL),
    (333, NULL, 'Alexia', NULL, 'Hall', NULL),
    (334, NULL, 'Crystal', NULL, 'Davis', NULL),
    (335, NULL, 'Cassie', NULL, 'Morgan', NULL),
    (336, NULL, 'Tisha', NULL, 'Clinkenbeard', NULL),
    (337, NULL, 'Kristin', NULL, 'Wagner', NULL),
    (338, NULL, 'Sommer', NULL, 'Hibbler', NULL),
    (339, NULL, 'Emily', NULL, 'Diver', NULL),
    (340, NULL, 'Lutz', NULL, 'Giese', NULL),
    (341, NULL, 'Detlef-Ulrich', NULL, 'Steinhöfel', NULL),
    (342, NULL, 'Jahn', NULL, 'Nilsson', NULL),
    (343, NULL, 'Günter', NULL, 'Rosin', NULL),
    (344, NULL, 'Bruce', NULL, 'Roe', NULL),
    (345, NULL, 'Magnus', NULL, 'Karlsson', NULL),
    (346, NULL, 'Frank', NULL, 'Werthwein', NULL),
    (347, NULL, 'Bernd', 'Mc', 'Elm', NULL),
    (348, NULL, 'Ted', NULL, 'Sedman', NULL),
    (349, NULL, 'Jürgen', NULL, 'Draheim', NULL),
    (350, NULL, 'Reinhard', NULL, 'Bürker', NULL),
    (351, NULL, 'Antonio', NULL, 'Natali', NULL),
    (352, NULL, 'Karl-Heinz', NULL, 'Hille', NULL),
    (353, NULL, 'Jürgen', NULL, 'Burkhardt', NULL),
    (354, NULL, 'Otto', NULL, 'Schmid', NULL),
    (355, NULL, 'Dietmar', NULL, 'Stohr', NULL),
    (356, NULL, 'Stefan', NULL, 'Grölz', NULL),
    (357, NULL, 'Kurt', NULL, 'Bazzocco', NULL),
    (358, NULL, 'Franz', NULL, 'Pill', NULL),
    (359, NULL, 'Paul', NULL, 'Boschert', NULL),
    (360, NULL, 'Udo', NULL, 'Blass', NULL),
    (361, NULL, 'Markus', NULL, 'Bross', NULL),
    (362, NULL, 'Manfred', NULL, 'Hirchke', NULL),
    (363, NULL, 'Willi', NULL, 'Segalotto', NULL),
    (364, NULL, 'Heinz', NULL, 'Wirth', NULL),
    (365, NULL, 'Karl-Heinz', NULL, 'Stengel', NULL),
    (366, NULL, 'Bruno', NULL, 'Panza', NULL),
    (367, NULL, 'Vlado', NULL, 'Livaja', NULL),
    (368, NULL, 'Rolf', NULL, 'Zobel', NULL),
    (369, NULL, 'Wolfgang', NULL, 'Schneider', NULL),
    (370, NULL, 'Joachim', NULL, 'Schlenker', NULL),
    (371, NULL, 'Joachim', NULL, 'Fritz', NULL),
    (372, NULL, 'Claus', NULL, 'Packhaeuser', NULL),
    (373, NULL, 'Arno', NULL, 'Dierkes', NULL),
    (374, NULL, 'Lutz', NULL, 'Giese', NULL),
    (375, NULL, 'Tony', NULL, 'Papay', NULL),
    (376, NULL, 'Günter', NULL, 'Rosin', NULL),
    (377, NULL, 'Bruce', NULL, 'Roe', NULL),
    (378, NULL, 'Norbert', NULL, 'Wilczek', NULL),
    (379, NULL, 'Josef', NULL, 'Auchter', NULL),
    (380, NULL, 'Reiner', NULL, 'Maute', NULL),
    (381, NULL, 'Jürgen', NULL, 'Windolf', NULL),
    (382, NULL, 'Willi', NULL, 'Steidle', NULL),
    (383, NULL, 'Alfred', NULL, 'Baumgarten', NULL),
    (384, NULL, 'Klaus-Dieter', NULL, 'Löscher', NULL),
    (385, NULL, 'Willi', NULL, 'Chevalier', NULL),
    (386, NULL, 'Gerhard', NULL, 'Knapp', NULL),
    (387, NULL, 'Ernst', NULL, 'Krause', NULL),
    (388, NULL, 'Jürgen', NULL, 'Günther', NULL),
    (389, NULL, 'Klaus', NULL, 'Weindl', NULL),
    (390, NULL, 'Umberto', NULL, 'Sortino', NULL),
    (391, NULL, 'Jürgen', NULL, 'Burkhardt', NULL),
    (392, NULL, 'Franz', NULL, 'Mitterhauser', NULL),
    (393, NULL, 'Stefan', NULL, 'Bartel', NULL),
    (394, NULL, 'Reinhard', NULL, 'Bürker', NULL),
    (395, NULL, 'Lothar', NULL, 'Kuhn', NULL),
    (396, NULL, 'Antonio', NULL, 'Natali', NULL),
    (397, NULL, 'Rudolf', NULL, 'Wilczek', NULL),
    (398, NULL, 'Gerhard', NULL, 'Müller', NULL),
    (399, NULL, 'Hans', NULL, 'Unverricht', NULL),
    (400, NULL, 'Alf', NULL, 'Jarrold', NULL),
    (401, NULL, 'Uwe', NULL, 'Wankmüller', NULL),
    (402, NULL, 'Bruno', NULL, 'Panza', NULL),
    (403, NULL, 'Durmus', NULL, 'Sensoy', NULL),
    (404, NULL, 'Willi', NULL, 'Segalotto', NULL),
    (405, NULL, 'Artur', NULL, 'Kopka', NULL),
    (406, NULL, 'Paul', NULL, 'Boschert', NULL),
    (407, NULL, 'Reinhold', NULL, 'Maierhofer', NULL),
    (408, NULL, 'Alois', NULL, 'Plettl', NULL),
    (409, NULL, 'Hans', NULL, 'Horst', NULL),
    (410, NULL, 'Hans-Peter', NULL, 'Weis', NULL),
    (411, NULL, 'Roland', NULL, 'Dirlewanger', NULL),
    (412, NULL, 'Elmar', NULL, 'Weisser', NULL),
    (413, NULL, 'Amin', NULL, 'Knapp', NULL),
    (414, NULL, 'Dieter', NULL, 'Theis', NULL),
    (415, NULL, 'Cosimo', NULL, 'Lepore', NULL),
    (416, NULL, 'Arne', 'G.', 'Jacobsen', NULL),
    (417, NULL, 'Bram', NULL, 'Rosenfeld', NULL),
    (418, NULL, 'Jeff', NULL, 'Well', NULL),
    (419, NULL, 'André', NULL, 'Nathusius', NULL),
    (420, NULL, 'Martin', NULL, 'Trendle', NULL),
    (421, NULL, 'Tony', NULL, 'Papai', NULL),
    (422, NULL, 'Ferdinand', NULL, 'Romankiewicz', NULL),
    (423, NULL, 'Lutz', NULL, 'Giese', NULL),
    (424, NULL, 'Gary', NULL, 'Hagen', NULL),
    (425, NULL, 'Maury', NULL, 'Apfel', NULL),
    (426, NULL, 'Herbert', NULL, 'Braunschmid', NULL),
    (427, NULL, 'Günter', NULL, 'Rosin', NULL),
    (428, NULL, 'Josef', NULL, 'Ibach', NULL),
    (429, NULL, 'Bruce', NULL, 'Roe', NULL),
    (430, NULL, 'Karl-Heinz', NULL, 'Hille', NULL),
    (431, NULL, 'Franz', NULL, 'Mitterhauser', NULL),
    (432, NULL, 'Jürgen', NULL, 'Burkhardt', NULL),
    (433, NULL, 'Günter', NULL, 'Krauss', NULL),
    (434, NULL, 'Lars', 'Olav', 'Brå', NULL),
    (435, NULL, 'Arwed', NULL, 'Leichsenring', NULL),
    (436, NULL, 'Ted', NULL, 'Sedman', NULL),
    (437, NULL, 'Paul', NULL, 'Miller', NULL),
    (438, NULL, 'Detlef', NULL, 'Steinhöfel', NULL),
    (439, NULL, 'Gary', NULL, 'Johnson', NULL),
    (440, NULL, 'Jürgen', NULL, 'Draheim', NULL),
    (441, NULL, 'Reinhard', NULL, 'Bürker', NULL),
    (442, NULL, 'Alf', NULL, 'Jarrold', NULL),
    (443, NULL, 'Uwe', NULL, 'Wankmüller', NULL),
    (444, NULL, 'Bruno', NULL, 'Panza', NULL),
    (445, NULL, 'Vor', NULL, 'Siland', NULL),
    (446, NULL, 'Markus', NULL, 'Bross', NULL),
    (447, NULL, 'Willi', NULL, 'Segalotto', NULL),
    (448, NULL, 'Peter', NULL, 'Diehm', NULL),
    (449, NULL, 'Gerhard', NULL, 'Schmidbauer', NULL),
    (450, NULL, 'Franz-Peter', NULL, 'Pill', NULL),
    (451, NULL, 'Fritz', NULL, 'Sendlhofer', NULL),
    (452, NULL, 'David', NULL, 'Traver', NULL),
    (453, NULL, 'Alois', NULL, 'Plettl', NULL),
    (454, NULL, 'Karl-Heinz', NULL, 'Rein', NULL),
    (455, NULL, 'Bruce', NULL, 'Hagen', NULL),
    (456, NULL, 'Wilhelm', NULL, 'Preuss', NULL),
    (457, NULL, 'Hans', NULL, 'Gassner', NULL),
    (458, NULL, 'Elmar', NULL, 'Weisser', NULL),
    (459, NULL, 'Heinz', NULL, 'Christofel', NULL),
    (460, NULL, 'Wolfgang', NULL, 'Schneider', NULL),
    (461, NULL, 'Vlado', NULL, 'Livaija', NULL),
    (462, NULL, 'Michele', NULL, 'Lisco', NULL),
    (463, NULL, 'Max', 'Klaus', 'Pankow', NULL),
    (464, NULL, 'Joachim', NULL, 'Ott', NULL),
    (465, NULL, 'Jeff', NULL, 'Well', NULL),
    (466, NULL, 'Stephen', NULL, 'Parsons', NULL),
    (467, NULL, 'André', NULL, 'Hecht', NULL),
    (468, NULL, 'Jochen', NULL, 'Kälber', NULL),
    (469, NULL, 'Karl-Heinz', NULL, 'Schell', NULL),
    (470, NULL, 'Thomas', NULL, 'Wözr', NULL),
    (471, NULL, 'Eugen', NULL, 'Hipp', NULL),
    (472, NULL, 'Rainer', NULL, 'Frech', NULL),
    (473, NULL, 'Günter', NULL, 'Rosin', NULL),
    (474, NULL, 'Bruce', NULL, 'Roe', NULL),
    (475, NULL, 'Willi', NULL, 'Feldmann', NULL),
    (476, NULL, 'Thomas', NULL, 'Wagner', NULL),
    (477, NULL, 'Günther', NULL, 'Krauss', NULL),
    (478, NULL, 'Wolfgang', NULL, 'Servay', NULL),
    (479, NULL, 'Rudolf', NULL, 'Haag', NULL),
    (480, NULL, 'Hans', NULL, 'Unverricht', NULL),
    (481, NULL, 'Ted', NULL, 'Sedman', NULL),
    (482, NULL, 'Josef', NULL, 'Nerb', NULL),
    (483, NULL, 'Detlef', NULL, 'Steinhöfel', NULL),
    (484, NULL, 'Jürgen', NULL, 'Draheim', NULL),
    (485, NULL, 'Reinhard', NULL, 'Bürker', NULL),
    (486, NULL, 'Edgar', NULL, 'König', NULL),
    (487, NULL, 'Karl-Heinz', NULL, 'Hille', NULL),
    (488, NULL, 'Bernhard', NULL, 'Meyer', NULL),
    (489, NULL, 'Toot', NULL, 'Joslin', NULL),
    (490, NULL, 'Bruno', NULL, 'Panza', NULL),
    (491, NULL, 'Uwe', NULL, 'Wankmüller', NULL),
    (492, NULL, 'Willi', NULL, 'Chevalier', NULL),
    (493, NULL, 'Manfred', NULL, 'Richter', NULL),
    (494, NULL, 'Vittorio', NULL, 'Lupoli', NULL),
    (495, NULL, 'Willi', NULL, 'Segalotto', NULL),
    (496, NULL, 'Cebo', NULL, 'Hayrudin', NULL),
    (497, NULL, 'Karl', NULL, 'Roos', NULL),
    (498, NULL, 'Alois', NULL, 'Plettl', NULL),
    (499, NULL, 'Geny', NULL, 'Schumacher', NULL),
    (500, NULL, 'Jack', NULL, 'Passion', NULL),
    (501, NULL, 'Elmar', NULL, 'Weisser', NULL),
    (502, NULL, 'Thomas', NULL, 'Rosslau', NULL),
    (503, NULL, 'Giuseppe', NULL, 'Gianfratte', NULL),
    (504, NULL, 'Paul', NULL, 'Lewis', NULL),
    (505, NULL, 'Mikael', NULL, 'Strauss', NULL),
    (506, NULL, 'Kev', NULL, 'Rogers', NULL),
    (507, NULL, 'Georg', NULL, 'Lutz', NULL),
    (508, NULL, 'George', 'Haskins', 'III', NULL),
    (509, NULL, 'Lutz', NULL, 'Giese', NULL),
    (510, NULL, 'Max', NULL, 'Pankor', NULL),
    (511, NULL, 'Joachim', NULL, 'Ott', NULL),
    (512, NULL, 'Jeff', NULL, 'Well', NULL),
    (513, NULL, 'Alexander', NULL, 'Antebi', NULL),
    (514, NULL, 'Eugen', NULL, 'Hipp', NULL),
    (515, NULL, 'Guy', NULL, 'Heathcote', NULL),
    (516, NULL, 'Gunter', NULL, 'Rosin', NULL),
    (517, NULL, 'Rocco', NULL, 'Bentivolio', NULL),
    (518, NULL, 'Bruce', NULL, 'Roe', NULL),
    (519, NULL, 'Keith', 'J.', 'Haubrich', NULL),
    (520, NULL, 'Anthony', NULL, 'Skyrme', NULL),
    (521, NULL, 'Gunther', NULL, 'Krauss', NULL),
    (522, NULL, 'Marty', NULL, 'Gerhinger', NULL),
    (523, NULL, 'Pablo', NULL, 'Hagan', NULL),
    (524, NULL, 'Alessandro', NULL, 'Sicco', NULL),
    (525, NULL, 'Ted', NULL, 'Sedman', NULL),
    (526, NULL, 'Frazer', NULL, 'Coppin', NULL),
    (527, NULL, 'Jürgen', NULL, 'Draheim', NULL),
    (528, NULL, 'Robert', NULL, 'Ward', NULL),
    (529, NULL, 'Karl-Heinz', NULL, 'Hille', NULL),
    (530, NULL, 'Udo', NULL, 'Fritzgoje', NULL),
    (531, NULL, 'Otto', NULL, 'Schmid', NULL),
    (532, NULL, 'Jürgen', NULL, 'Burkhardt', NULL),
    (533, NULL, 'Franz', NULL, 'Mitterhauser', NULL),
    (534, NULL, 'Dieter', NULL, 'Besuch', NULL),
    (535, NULL, 'Willi', NULL, 'Chevalier', NULL),
    (536, NULL, 'Jürgen', NULL, 'Reinl', NULL),
    (537, NULL, 'Jürg', NULL, 'Biland', NULL),
    (538, NULL, 'Durmus', NULL, 'Sensoy', NULL),
    (539, NULL, 'Hayrudin', NULL, 'Cebo', NULL),
    (540, NULL, 'Willi', NULL, 'Segalotto', NULL),
    (541, NULL, 'Franz-Peter', NULL, 'Pill', NULL),
    (542, NULL, 'Jack', NULL, 'Passion', NULL),
    (543, NULL, 'Gunnar', NULL, 'Rosenquist', NULL),
    (544, NULL, 'Richard', NULL, 'Newman', NULL),
    (545, NULL, 'Burke', NULL, 'Kenny', NULL),
    (546, NULL, 'Siegfried', NULL, 'Jezierny', NULL),
    (547, NULL, 'David', NULL, 'Traver', NULL),
    (548, NULL, 'Elmar', NULL, 'Weisser', NULL),
    (549, NULL, 'Hans', NULL, 'Gassner', NULL),
    (550, NULL, 'Gerhard', NULL, 'Knapp', NULL),
    (551, NULL, 'Kees', NULL, 'Lek', NULL),
    (552, NULL, 'Keith', NULL, 'Jefferson', NULL),
    (553, NULL, 'Ben', NULL, 'Davidson', NULL),
    (554, NULL, 'Tony', NULL, 'Papai', NULL),
    (555, NULL, 'Max', 'Klaus', 'Pankow', NULL),
    (556, NULL, 'Robert', NULL, 'Starnes', NULL),
    (557, NULL, 'Lutz', NULL, 'Giese', NULL),
    (558, NULL, 'George', NULL, 'Haskins', NULL),
    (559, NULL, 'Sam', NULL, 'Holcombe', NULL),
    (560, NULL, 'Nicholas', NULL, 'Dighiera', NULL),
    (561, NULL, 'Guenter', NULL, 'Rosin', NULL),
    (562, NULL, 'Josef', NULL, 'Ibach', NULL),
    (563, NULL, 'Benjamin', NULL, 'Juergens', NULL),
    (564, NULL, 'Patrick', NULL, 'Melcher', NULL),
    (565, NULL, 'Alex', NULL, 'Antebi', NULL),
    (566, NULL, 'Keith', NULL, 'Haubrich', NULL),
    (567, NULL, 'Devon', NULL, 'Holcombe', NULL),
    (568, NULL, 'Luk', NULL, 'Vanderbeuren', NULL),
    (569, NULL, 'Jerem', NULL, 'Feltman', NULL),
    (570, NULL, 'Aaron', NULL, 'Suring', NULL),
    (571, NULL, 'Shawn', NULL, 'Campbell', NULL),
    (572, NULL, 'Ted', NULL, 'Sedman', NULL),
    (573, NULL, 'Detleff', NULL, 'Steinhoefel', NULL),
    (574, NULL, 'Karl-Heinz', NULL, 'Hille', NULL),
    (575, NULL, 'Udo', NULL, 'Fritzsche', NULL),
    (576, NULL, 'Mark', NULL, 'Voermans', NULL),
    (577, NULL, 'Juergen', NULL, 'Draheim', NULL),
    (578, NULL, 'Frazer', NULL, 'Coppin', NULL),
    (579, NULL, 'Reinhard', NULL, 'Burker', NULL),
    (580, NULL, 'Paul', NULL, 'Beisser', NULL),
    (581, NULL, 'Breman', NULL, 'Grove', NULL),
    (582, NULL, 'Wolfgang', NULL, 'Servay', NULL),
    (583, NULL, 'Toot', NULL, 'Joslin', NULL),
    (584, NULL, 'Bruno', NULL, 'Panza', NULL),
    (585, NULL, 'Bill', NULL, 'Mitchell', NULL),
    (586, NULL, 'Stuart', NULL, 'Wilf', NULL),
    (587, NULL, 'Roland', NULL, 'van Den Bremt', NULL),
    (588, NULL, 'John', NULL, 'Plummer', NULL),
    (589, NULL, 'Karl', NULL, 'Roos', NULL),
    (590, NULL, 'Markus', NULL, 'Bross', NULL),
    (591, NULL, 'David', NULL, 'Casswell', NULL),
    (592, NULL, 'Douglas', NULL, 'Renfro', NULL),
    (593, NULL, 'Norman', NULL, 'Pendergraft', NULL),
    (594, NULL, 'John', NULL, 'Price', NULL),
    (595, NULL, 'Jack', NULL, 'Passion', NULL),
    (596, NULL, 'Rooty', NULL, 'Lundvall', NULL),
    (597, NULL, 'Alois', NULL, 'Plettl', NULL),
    (598, NULL, 'Bernd', NULL, 'Popiak', NULL),
    (599, NULL, 'Bob', NULL, 'Gengler', NULL),
    (600, NULL, 'Kyle', NULL, 'McNair', NULL),
    (601, NULL, 'David', NULL, 'Traver', NULL),
    (602, NULL, 'Gerhard', NULL, 'Knapp', NULL),
    (603, NULL, 'Hans-Peter', NULL, 'Weis', NULL),
    (604, NULL, 'Franz-Peter', NULL, 'Pill', NULL),
    (605, NULL, 'Karl-Heinz', NULL, 'Rein', NULL),
    (606, NULL, 'Werner', NULL, 'Willms', NULL),
    (607, NULL, 'Dieter', NULL, 'Gugel', NULL),
    (608, NULL, 'Gerhard', NULL, 'Mueller', NULL),
    (609, NULL, 'Jürg', NULL, 'Biland', NULL),
    (610, NULL, 'Harry', NULL, 'Balzer', NULL),
    (611, NULL, 'Fritz', NULL, 'Sendlhofer', NULL),
    (612, NULL, 'Frank', NULL, 'Madera', NULL),
    (613, NULL, 'Dieter', NULL, 'Wiezorek', NULL),
    (614, NULL, 'Albert', NULL, 'Schmid', NULL),
    (615, NULL, 'Paul', NULL, 'Tu', NULL),
    (616, NULL, 'Wilbur', NULL, 'Bogan', NULL),
    (617, NULL, 'John', NULL, 'Prentice', NULL),
    (618, NULL, 'Willi', NULL, 'Segalotto', NULL),
    (619, NULL, 'Eric', NULL, 'Simpson', NULL),
    (620, NULL, 'Curt', NULL, 'Poulton', NULL),
    (621, NULL, 'Philipp', NULL, 'Béning', NULL),
    (622, NULL, 'Aldric', NULL, 'Galhaut', NULL),
    (623, NULL, 'Mark', NULL, 'Bradley', NULL),
    (624, NULL, 'Manuel', NULL, 'Fischer', NULL),
    (625, NULL, 'Thomas', NULL, 'Ince', NULL),
    (626, NULL, 'Alessandro', NULL, 'Hendrickx', NULL),
    (627, NULL, 'Jordan', 'Josef', 'Levy', NULL),
    (628, NULL, 'Drew', NULL, 'McNaughton', NULL),
    (629, NULL, 'Stefan', NULL, 'Hofmeister', NULL),
    (630, NULL, 'Tony', NULL, 'Dunne', NULL),
    (631, NULL, 'Denis', NULL, 'LaGarde', NULL),
    (632, NULL, 'Stephen', NULL, 'Lebb', NULL),
    (633, NULL, 'Lars', NULL, 'Lefeber', NULL),
    (634, NULL, 'Kai', NULL, 'Derksen', NULL),
    (635, NULL, 'Kenny', NULL, 'Wagemans', NULL),
    (636, NULL, 'Steven', NULL, 'Brack', NULL),
    (637, NULL, 'David', NULL, 'Decastian', NULL),
    (638, NULL, 'Frank', NULL, 'Madera', NULL),
    (639, NULL, 'Jozef', NULL, 'Bear', NULL),
    (640, NULL, 'Christopher', NULL, 'Potts', NULL),
    (641, NULL, 'Andreas', NULL, 'Autenrieth', NULL),
    (642, NULL, 'Rudi', NULL, 'Boda', NULL),
    (643, NULL, 'Rico', NULL, 'Sieveuling', NULL),
    (644, NULL, 'Brian', NULL, 'Mahan', NULL),
    (645, NULL, 'Wade', NULL, 'Smith', NULL),
    (646, NULL, 'Graham', NULL, 'Smith', NULL),
    (647, NULL, 'Paul', NULL, 'Groeneveld', NULL),
    (648, NULL, 'Raby', NULL, 'Malki', NULL),
    (649, NULL, 'John', NULL, 'Thompson', NULL),
    (650, NULL, 'Jiirgen-Erst', NULL, 'Erwerle', NULL),
    (651, NULL, 'Cornelio', 'Bravo', 'Ill', NULL),
    (652, NULL, 'Kai', NULL, 'Dambach', NULL),
    (653, NULL, 'Dave', NULL, 'Jobling', NULL),
    (654, NULL, 'Brian', NULL, 'Eva', NULL),
    (655, NULL, 'Tim', NULL, 'Ehlebracht', NULL),
    (656, NULL, 'David', NULL, 'Ragone', NULL),
    (657, NULL, 'Mirko', NULL, 'Milenkovic', NULL),
    (658, NULL, 'Kirk', NULL, 'Williams', NULL),
    (659, NULL, 'Blake', NULL, 'Meyer', NULL),
    (660, NULL, 'Erich', NULL, 'Paul', NULL),
    (661, NULL, 'Ludwig', NULL, 'Valenta', NULL),
    (662, NULL, 'Karl', NULL, 'Leaning', NULL),
    (663, NULL, 'Adam', NULL, 'Rowe', NULL),
    (664, NULL, 'Antoine', NULL, 'Bochkoltz', NULL),
    (665, NULL, 'Xander', NULL, 'Berbé', NULL),
    (666, NULL, 'Wayne', NULL, 'Harris', NULL),
    (667, NULL, 'Jeroen', NULL, 'Pieters', NULL),
    (668, NULL, 'Herr', NULL, 'Dobner', NULL),
    (669, NULL, 'Anreu', 'Ribas', 'Masabeu', NULL),
    (670, NULL, 'Patrick', NULL, 'Bovel', NULL),
    (671, NULL, 'Vidart', NULL, 'Yoan', NULL),
    (672, NULL, 'James', 'Robbins', 'III', NULL),
    (673, NULL, 'Ben', NULL, 'Schofield', NULL),
    (674, NULL, 'Gerold', 'Geiger', '_', NULL),
    (675, NULL, 'Joshua', NULL, 'Smith', NULL),
    (676, NULL, 'Lance', NULL, 'Wooton', NULL),
    (677, NULL, 'Colin', 'Mc', 'Ardle', NULL),
    (678, NULL, 'Hal', NULL, 'Metzler', NULL),
    (679, NULL, 'Nick', NULL, 'Snell', NULL),
    (680, NULL, 'Diego', NULL, 'Bazoli', NULL),
    (681, NULL, 'Jonas', NULL, 'Bergkvist', NULL),
    (682, NULL, 'kim', 'Lovenskjold', 'Elm', NULL),
    (683, NULL, 'Nicolas', NULL, 'Godet', NULL),
    (684, NULL, 'Scott', NULL, 'Hrubes', NULL),
    (685, NULL, 'Viktor', 'Erik', 'Jensen', NULL),
    (686, NULL, 'Willi', NULL, 'PreuB', NULL),
    (687, NULL, 'Bryan', NULL, 'Nelson', NULL),
    (688, NULL, 'Jacob', NULL, 'Saylor', NULL),
    (689, NULL, 'Michael', NULL, 'Huff', NULL),
    (690, NULL, 'Ed', NULL, 'Hammett', NULL),
    (691, NULL, 'Michael', NULL, 'Legge', NULL),
    (692, NULL, 'Peter', NULL, 'Moisan', NULL),
    (693, NULL, 'Alois', NULL, 'Pett!', NULL),
    (694, NULL, 'Luca', NULL, 'Zandomeneghi', NULL),
    (695, NULL, 'Roman', NULL, 'Arthaber', NULL),
    (696, NULL, 'Christophe', NULL, 'Michelet', NULL),
    (697, NULL, 'Joseph', NULL, 'Hugill', NULL),
    (698, NULL, 'Adam', NULL, 'Blombergs', NULL),
    (699, NULL, 'Mitch', NULL, 'Conway', NULL),
    (700, NULL, 'Adam', NULL, 'Frearson', NULL),
    (701, NULL, 'Nils', 'Kare', 'Fugelsnes', NULL),
    (702, NULL, 'Andrei', NULL, 'Markin', NULL),
    (703, NULL, 'Alex', NULL, 'Holt', NULL),
    (704, NULL, 'Jason', NULL, 'Young', NULL),
    (705, NULL, 'Tomer', NULL, 'Gol', NULL),
    (706, NULL, 'Maxwell', NULL, 'Newton', NULL),
    (707, NULL, 'Taylor', NULL, 'Welden', NULL),
    (708, NULL, 'Daniel', NULL, 'Erber', NULL),
    (709, NULL, 'Craig', NULL, 'Keough', NULL),
    (710, NULL, 'Loic', NULL, 'Papillon', NULL),
    (711, NULL, 'Hubert', NULL, 'Sulzmann', NULL),
    (712, NULL, 'Ben', NULL, 'Samuels', NULL),
    (713, NULL, 'Shane', NULL, 'Hazelgrave', NULL),
    (714, NULL, 'Gilad', NULL, 'Levy', NULL),
    (715, NULL, 'Marty', NULL, 'Yudizky', NULL),
    (716, NULL, 'Justin', 'T.', 'Suarez', NULL),
    (717, NULL, 'Tom', NULL, 'Dierckx', NULL),
    (718, NULL, 'Alberto', NULL, 'Bresciani', NULL),
    (719, NULL, 'Derek', NULL, 'Cuneo', NULL),
    (720, NULL, 'Ben', NULL, 'Kohn', NULL),
    (721, NULL, 'Greg', NULL, 'Schoenwolf', NULL),
    (722, NULL, 'Wouter', NULL, 'Holwerda', NULL),
    (723, NULL, 'Gerhard', NULL, 'Bauer', NULL),
    (724, NULL, 'Joseph', NULL, 'Farrell', NULL),
    (725, NULL, 'Giinther', NULL, 'Fuchs', NULL),
    (726, NULL, 'Brendan', NULL, 'Johnson', NULL),
    (727, NULL, 'Jan', NULL, 'Dawidowski', NULL),
    (728, NULL, 'Ivan', 'Della', 'Morte', NULL),
    (729, NULL, 'Armin', NULL, 'Knapp', NULL),
    (730, NULL, 'Cedrick', NULL, 'Malloire', NULL),
    (731, NULL, 'Paul', NULL, 'Goad', NULL),
    (732, NULL, 'Helmut', NULL, 'Huck', NULL),
    (733, NULL, 'Craig', NULL, 'Gibson', NULL),
    (734, NULL, 'Drew', NULL, 'Muncaster', NULL),
    (735, NULL, 'Georg', NULL, 'Liltz', NULL),
    (736, NULL, 'Ryan', NULL, 'Pike', NULL),
    (737, NULL, 'Rainer', NULL, 'Preussner', NULL),
    (738, NULL, 'Nicolas', NULL, 'Levy', NULL),
    (739, NULL, 'Stijn', NULL, 'Cuylaerts', NULL),
    (740, NULL, 'Richard', NULL, 'Becker', NULL),
    (741, NULL, 'Neal', NULL, 'Eckrich', NULL),
    (742, NULL, 'Kees', NULL, 'Lek', NULL),
    (743, NULL, 'Otto', 'van', 'Lynden', NULL),
    (744, NULL, 'Josef', NULL, 'Smimaul', NULL),
    (745, NULL, 'Kevin', NULL, 'Vela', NULL),
    (746, NULL, 'Anton', NULL, 'Wyss', NULL),
    (747, NULL, 'Allan', NULL, 'Robinson', NULL),
    (748, NULL, 'Benjamin', NULL, 'Gardner', NULL),
    (749, NULL, 'Frans', NULL, 'Haaren', NULL),
    (750, NULL, 'Asmish', NULL, 'Damar', NULL),
    (751, NULL, 'Michael', NULL, 'Sowerby', NULL),
    (752, NULL, 'Didier', NULL, 'Corpataux', NULL),
    (753, NULL, 'Gandhi', NULL, 'Jones', NULL),
    (754, NULL, 'Timothy', NULL, 'Crawford', NULL),
    (755, NULL, 'Diego', 'Enrico', 'Barbolini', NULL),
    (756, NULL, 'Paul', NULL, 'Roof', NULL),
    (757, NULL, 'Benjamin', NULL, 'Juergens', NULL),
    (758, NULL, 'Josef', NULL, 'bach', NULL),
    (759, NULL, 'Mathue', NULL, 'Comien', NULL),
    (760, NULL, 'Ferenc', 'Ja''nos', 'Solyom', NULL),
    (761, NULL, 'Herman', NULL, 'Scherpereel', NULL),
    (762, NULL, 'Lars', 'Olav', 'Braa', NULL),
    (763, NULL, 'Joshua', NULL, 'Schroeder', NULL),
    (764, NULL, 'Sarah', NULL, 'Schoenwolf', NULL),
    (765, NULL, 'Susan', NULL, 'Spencer', NULL),
    (766, NULL, 'Kat', NULL, 'Crawford', NULL),
    (767, NULL, 'Müge', NULL, 'Mete', NULL),
    (768, NULL, 'Melissa', NULL, 'Fette', NULL),
    (769, NULL, 'Angela', NULL, 'Alba-Dirico', NULL),
    (770, NULL, 'Alice', NULL, 'Jelley', NULL),
    (771, NULL, 'Azlyn', NULL, 'Gutierrez', NULL),
    (772, NULL, 'Tisha', NULL, 'Clinkenbeard', NULL),
    (773, NULL, 'Christine', 'A.', 'Hackman', NULL),
    (774, NULL, 'Alexia', NULL, 'Hall', NULL),
    (775, NULL, 'Karina', NULL, 'Benish', NULL),
    (776, NULL, 'Aaron', NULL, 'Johnston', NULL),
    (777, NULL, 'Chad', NULL, 'Roberts', NULL),
    (778, NULL, 'Andreas', NULL, 'Walenta', NULL),
    (779, NULL, 'Antony', '''Tony''', 'DiRico', NULL),
    (780, NULL, 'Nicolas', NULL, 'Garsault', NULL),
    (781, NULL, 'Mare', NULL, 'Van der Veken', NULL),
    (782, NULL, 'André', NULL, 'Jonkers', NULL),
    (783, NULL, 'Peter', NULL, 'Princen', NULL),
    (784, NULL, 'Peter', NULL, 'Laube', NULL),
    (785, NULL, 'Jean-Pierre', NULL, 'Xausa', NULL),
    (786, NULL, 'Roger', NULL, 'Gagg', NULL),
    (787, NULL, 'David', NULL, 'Mathys', NULL),
    (788, NULL, 'Serdal', NULL, 'Kurt', NULL),
    (789, NULL, 'Klaus', NULL, 'Stahl', NULL),
    (790, NULL, 'Mare', NULL, 'Bracke', NULL),
    (791, NULL, 'Francis', NULL, 'Merckx', NULL),
    (792, NULL, 'Yann', NULL, 'Marchal', NULL),
    (793, NULL, 'Wozciech', NULL, 'Kruzel', NULL),
    (794, NULL, 'Stephen', NULL, 'Casper', NULL),
    (795, NULL, 'Charles', NULL, 'Sterling', NULL),
    (796, NULL, 'Mat', NULL, 'Evans', NULL),
    (797, NULL, 'Jonathan', NULL, 'Patken', NULL),
    (798, NULL, 'Diebolt', NULL, 'Herve', NULL),
    (799, NULL, 'James', NULL, 'McMahon', NULL),
    (800, NULL, 'Andreas', NULL, 'Pelowski', NULL),
    (801, NULL, 'Daniel', NULL, 'Riedle', NULL),
    (802, NULL, 'Matt', NULL, 'Wall', NULL),
    (803, NULL, 'Franz', NULL, 'Mitterhauser', NULL),
    (804, NULL, 'Siegfried', NULL, 'Skarysz', NULL),
    (805, NULL, 'Ronny', NULL, 'Coosemans', NULL),
    (806, NULL, 'Walter', 'Van', 'Doosselaere', NULL),
    (807, NULL, 'Kailash', NULL, 'Nau', NULL),
    (808, NULL, 'Jean-Pierre', NULL, 'Homblé', NULL),
    (809, NULL, 'Martin', NULL, 'Bogaert', NULL),
    (810, NULL, 'Alessandro', NULL, 'Sicco', NULL),
    (811, NULL, 'John', 'De', 'Jong', NULL),
    (812, NULL, 'John', NULL, 'Dixon', NULL),
    (813, NULL, 'Sebastien', NULL, 'Guglielmetti', NULL),
    (814, NULL, 'Rylan', NULL, 'Stolar', NULL),
    (815, NULL, 'Gerrit', 'den', 'Haan', NULL),
    (816, NULL, 'Tessa', NULL, 'Bischoff', NULL),
    (817, NULL, 'Jesse', NULL, 'Betts', NULL),
    (818, NULL, 'Miranda', NULL, 'Brown', NULL),
    (819, NULL, 'Lizard', NULL, 'Jimenez', NULL),
    (820, NULL, 'Sunni', NULL, 'Rossi', NULL),
    (821, NULL, 'Melissa', NULL, 'Laroue', NULL),
    (822, NULL, 'Andrea', NULL, 'Nelson', NULL),
    (823, NULL, 'Adrianne', NULL, 'Burlile', NULL),
    (824, NULL, 'Kathryn', NULL, 'Porter', NULL),
    (825, NULL, 'Tracy', NULL, 'Sheriff', NULL),
    (826, NULL, 'Natali', NULL, 'Johnston', NULL),
    (827, NULL, 'Amber', NULL, 'Moore', NULL),
    (828, NULL, 'Christine', NULL, 'Hackman', NULL),
    (829, NULL, 'Emily', NULL, 'Eufinger', NULL),
    (830, NULL, 'Holly', NULL, 'Hurrelmeyer', NULL),
    (831, NULL, 'Katie', NULL, 'Quinn', NULL),
    (832, NULL, 'Brooke', NULL, 'Sealand', NULL),
    (833, NULL, 'Brigette', 'Tanya', 'Hudson', NULL),
    (834, NULL, 'Melissa', NULL, 'Fulkerson', NULL),
    (835, NULL, 'Peggy', NULL, 'Crawford', NULL),
    (836, NULL, 'Rita', NULL, 'Bielefeldt', NULL),
    (837, NULL, 'Cherie', NULL, 'Ross', NULL),
    (838, NULL, 'kristin', NULL, 'Wagner', NULL),
    (839, NULL, 'Stefanie', NULL, 'Rittner', NULL),
    (840, NULL, 'Margo', NULL, 'Sharp', NULL),
    (841, NULL, 'Crystal', NULL, 'Davis', NULL),
    (842, NULL, 'Amanda', NULL, 'Edens', NULL),
    (843, NULL, 'Ember', NULL, 'Boland', NULL),
    (844, NULL, 'Calla', NULL, 'Gonzalez', NULL),
    (845, NULL, 'Jodi', NULL, 'Mitnick', NULL),
    (846, NULL, 'Megan', NULL, 'Johnson', NULL),
    (847, NULL, 'Laura', NULL, 'Eggers:', NULL),
    (848, NULL, 'Lillian', NULL, 'White', NULL),
    (849, NULL, 'Ashley', NULL, 'Drake', NULL),
    (850, NULL, 'Monica', NULL, 'Wasser', NULL),
    (851, NULL, 'Brit', NULL, 'Wright', NULL),
    (852, NULL, 'Alanna', NULL, 'Robinson', NULL),
    (853, NULL, 'Serena', NULL, 'Underwood', NULL),
    (854, NULL, 'Ashley', NULL, 'Wyatt', NULL),
    (855, NULL, 'Bonnie', NULL, 'Crawford', NULL),
    (856, NULL, 'Kerri', 'St', 'Aubin', NULL),
    (857, NULL, 'Sarah', NULL, 'Coles', NULL),
    (858, NULL, 'Aaron', NULL, 'Rustad', NULL),
    (859, NULL, 'Gina', NULL, 'Stanley', NULL),
    (860, NULL, 'Jonathan', NULL, 'Ries', NULL),
    (861, NULL, 'Stephen', NULL, 'Condon', NULL),
    (862, NULL, 'David', NULL, 'Applewhite', NULL),
    (863, NULL, 'John', NULL, 'Raleigh', NULL),
    (864, NULL, 'Devon', NULL, 'Grandbois', NULL),
    (865, NULL, 'Paul', NULL, 'Tu', NULL),
    (866, NULL, 'Chef', 'Mikel', 'Lawrence', NULL),
    (867, NULL, 'FKN', 'GUIDO', 'Cappello', NULL),
    (868, NULL, 'Sean', NULL, 'Conrad', NULL),
    (869, NULL, 'Michael', NULL, 'Baughman', NULL),
    (870, NULL, 'Steven', NULL, 'Hutto', NULL),
    (871, NULL, 'Steve', NULL, 'Fox', NULL),
    (872, NULL, 'James', NULL, 'Allen', NULL),
    (873, NULL, 'Richard', NULL, 'Hallett', NULL),
    (874, NULL, 'Daniel', NULL, 'Garcia-Gil', NULL),
    (875, NULL, 'Greg', NULL, 'Hughes', NULL),
    (876, NULL, 'Colt', NULL, 'Delorge', NULL),
    (877, NULL, 'Walter', NULL, 'Scott', NULL),
    (878, NULL, 'Jon', 'Baldur', 'Bogason', NULL),
    (879, NULL, 'Brandon', NULL, 'Toohey', NULL),
    (880, NULL, 'Kyle', NULL, 'Newman', NULL),
    (881, NULL, 'Luke', NULL, 'Jones', NULL),
    (882, NULL, 'Alok', NULL, 'Choudhary', NULL),
    (883, NULL, 'Alan', 'Van', 'Dyke', NULL),
    (884, NULL, 'Travis', NULL, 'Nance', NULL),
    (885, NULL, 'Jay', NULL, 'Libras', NULL),
    (886, NULL, 'Garrett', NULL, 'Resler', NULL),
    (887, NULL, 'Sheldon', NULL, 'Brown', NULL),
    (888, NULL, 'Taylor', NULL, 'Dillman', NULL),
    (889, NULL, 'Brian', NULL, 'Roy', NULL),
    (890, NULL, 'Jake', NULL, 'Darlington', NULL),
    (891, NULL, 'Don', NULL, 'Darnell', NULL),
    (892, NULL, 'Stefan', NULL, 'Gensbichler', NULL),
    (893, NULL, 'Marc', NULL, 'Blanchette', NULL),
    (894, NULL, 'Victor', NULL, 'Randle', NULL),
    (895, NULL, 'Jason', NULL, 'DeFoe', NULL),
    (896, NULL, 'Andrew', NULL, 'Longtine', NULL),
    (897, NULL, 'John', NULL, 'Lair', NULL),
    (898, NULL, 'Dennis', NULL, 'Morgan', NULL),
    (899, NULL, 'Jonathan', NULL, 'Krutsinger', NULL),
    (900, NULL, 'James', NULL, 'Bricker', NULL),
    (901, NULL, 'Jeff', NULL, 'Vidourek', NULL),
    (902, NULL, 'Jose', NULL, 'Guzman', NULL),
    (903, NULL, 'Andreas', NULL, 'Autenrieth', NULL),
    (904, NULL, 'Paul', NULL, 'Kennedy', NULL),
    (905, NULL, 'Christopher', NULL, 'Puckett', NULL),
    (906, NULL, 'Breeze', NULL, 'Rendon', NULL),
    (907, NULL, 'Ted', NULL, 'Werner', NULL),
    (908, NULL, 'Jared', NULL, 'Pendergraft', NULL),
    (909, NULL, 'Brayden', NULL, 'Dorney', NULL),
    (910, NULL, 'Jeffrey', NULL, 'Bain', NULL),
    (911, NULL, 'David', NULL, 'Johnson', NULL),
    (912, NULL, 'George', NULL, 'Martinez', NULL),
    (913, NULL, 'Derik', NULL, 'Austin', NULL),
    (914, NULL, 'James', NULL, 'Dykes', NULL),
    (915, NULL, 'Hurvey', NULL, 'Haskins', NULL),
    (916, NULL, 'David', NULL, 'Dorney', NULL),
    (917, NULL, 'William', NULL, 'Wakeman', NULL),
    (918, NULL, 'Dan', NULL, 'Stone', NULL),
    (919, NULL, 'Travis', NULL, 'Wood', NULL),
    (920, NULL, 'Drew', NULL, 'White', NULL),
    (921, NULL, 'David', NULL, 'Adams', NULL),
    (922, NULL, 'Joe', 'Ben', 'Clark', NULL),
    (923, NULL, 'Ellis', NULL, 'Herrera', NULL),
    (924, NULL, 'Grizzly', 'Stonewall', 'Jackson', NULL),
    (925, NULL, 'Devon', NULL, 'Holcombe', NULL),
    (926, NULL, 'Ygnacio', NULL, 'Cervio', NULL),
    (927, NULL, 'Ryan', NULL, 'Hardon', NULL),
    (928, NULL, 'Keegan', NULL, 'Ferrari', NULL),
    (929, NULL, 'Mike', NULL, 'Wilson', NULL),
    (930, NULL, 'Jim', NULL, 'Jones', NULL),
    (931, NULL, 'Joshua', NULL, 'Davenport', NULL),
    (932, NULL, 'Eric', NULL, 'Stordal', NULL),
    (933, NULL, 'Cory', NULL, 'Maxson', NULL),
    (934, NULL, 'Justin', NULL, 'Muse', NULL),
    (935, NULL, 'Collin', NULL, 'Hooper', NULL),
    (936, NULL, 'Matt', NULL, 'Johansen', NULL),
    (937, NULL, 'Markus', NULL, 'Bross', NULL),
    (938, NULL, 'Nick', NULL, 'Maxfield', NULL),
    (939, NULL, 'Daniel', NULL, 'Cunningham', NULL),
    (940, NULL, 'Justin', NULL, 'Suarez', NULL),
    (941, NULL, 'John', NULL, 'Keinanen', NULL),
    (942, NULL, 'Craig', NULL, 'Keough', NULL),
    (943, NULL, 'Keith', NULL, 'Hauger', NULL),
    (944, NULL, 'Aaron', NULL, 'Pankow', NULL),
    (945, NULL, 'Michael', NULL, 'Teague', NULL),
    (946, NULL, 'Andrew', NULL, 'Zepeda', NULL),
    (947, NULL, 'Sean', NULL, 'Clark', NULL),
    (948, NULL, 'Jake', 'Van', 'Rijn', NULL),
    (949, NULL, 'Jarrett', NULL, 'Penter', NULL),
    (950, NULL, 'Bert', NULL, 'Martin', NULL),
    (951, NULL, 'Anthony', NULL, 'Springall', NULL),
    (952, NULL, 'Robert', 'James', 'Heath', NULL),
    (953, NULL, 'Kiel', NULL, 'Buckland', NULL),
    (954, NULL, 'Xander', NULL, 'Ortiz', NULL),
    (955, NULL, 'Patrick', NULL, 'Ray', NULL),
    (956, NULL, 'Maxx', NULL, 'Gerard', NULL),
    (957, NULL, 'Brett', NULL, 'Trevino', NULL),
    (958, NULL, 'Jeremiah', NULL, 'Cross', NULL),
    (959, NULL, 'Alan', NULL, 'Josephson', NULL),
    (960, NULL, 'Arron', NULL, 'Dykes', NULL),
    (961, NULL, 'Carlos', NULL, 'Yoder', NULL),
    (962, NULL, 'Jorge', NULL, 'Montes', NULL),
    (963, NULL, 'William', NULL, 'McCormick', NULL),
    (964, NULL, 'Doug', NULL, 'Lindsay', NULL),
    (965, NULL, 'Lance', NULL, 'Walker', NULL),
    (966, NULL, 'Stephen', NULL, 'Dearing', NULL),
    (967, NULL, 'Dustin', NULL, 'Kile', NULL),
    (968, NULL, 'Brandon', NULL, 'Waltz', NULL),
    (969, NULL, 'Jacob', NULL, 'Saylor', NULL),
    (970, NULL, 'Jason', NULL, 'Gilly', NULL),
    (971, NULL, 'John', NULL, 'Renes', NULL),
    (972, NULL, 'Luis', NULL, 'Castro', NULL),
    (973, NULL, 'Anatole', NULL, 'lvanow', NULL),
    (974, NULL, 'Bradley', NULL, 'Harrison', NULL),
    (975, NULL, 'Joe', NULL, 'Garrett', NULL),
    (976, NULL, 'Ryan', NULL, 'Lammey', NULL),
    (977, NULL, 'Jamey', NULL, 'Daugherty', NULL),
    (978, NULL, 'Geoffrey', NULL, 'Graham', NULL),
    (979, NULL, 'Lamar', NULL, 'Molina', NULL),
    (980, NULL, 'Keith', NULL, 'Vidourek', NULL),
    (981, NULL, 'Rex', NULL, 'Tully', NULL),
    (982, NULL, 'Jim', NULL, 'Anderson', NULL),
    (983, NULL, 'Kelly', NULL, 'Jennings', NULL),
    (984, NULL, 'Jeff', NULL, 'Craig', NULL),
    (985, NULL, 'M', 'Wilbur', 'Bogan', NULL),
    (986, NULL, 'Randy', NULL, 'White', NULL),
    (987, NULL, 'Matt', NULL, 'Barlow', NULL),
    (988, NULL, 'Jimmy', NULL, 'Munro', NULL),
    (989, NULL, 'James', 'Robbins', 'III', NULL),
    (990, NULL, 'Kyle', NULL, 'Waller', NULL),
    (991, NULL, 'Jason', NULL, 'sparks', NULL),
    (992, NULL, 'Joe', NULL, 'Huff', NULL),
    (993, NULL, 'James', NULL, 'Shepherd', NULL),
    (994, NULL, 'Bryan', 'Herbert', 'Easter', NULL),
    (995, NULL, 'Erik', NULL, 'Kegelmann', NULL),
    (996, NULL, 'Matthew', NULL, 'Herron', NULL),
    (997, NULL, 'Doug', NULL, 'Brown', NULL),
    (998, NULL, 'Christopher', NULL, 'Ashworth', NULL),
    (999, NULL, 'Brent', NULL, 'Reeves', NULL),
    (1000, NULL, 'Matt', NULL, 'Caanen', NULL),
    (1001, NULL, 'Trey', NULL, 'Hawkins', NULL),
    (1002, NULL, 'Brandon', NULL, 'Cover', NULL),
    (1003, NULL, 'Jimmy', NULL, 'Niggles', NULL),
    (1004, NULL, 'Rose', NULL, 'Geil', NULL),
    (1005, NULL, 'Kevin', NULL, 'Becker', NULL),
    (1006, NULL, 'John', NULL, 'Silvaggio', NULL),
    (1007, NULL, 'Douglas', NULL, 'Renfro', NULL),
    (1008, NULL, 'Justin', NULL, 'Roseberry', NULL),
    (1009, NULL, 'Gerry', NULL, 'Spiller', NULL),
    (1010, NULL, 'Brian', NULL, 'Fortney', NULL),
    (1011, NULL, 'Jason', NULL, 'Lunt', NULL),
    (1012, NULL, 'Bob', NULL, 'Gengler', NULL),
    (1013, NULL, 'Terry', NULL, 'Sagona', NULL),
    (1014, NULL, 'Theo', NULL, 'Buchinskas', NULL),
    (1015, NULL, 'Bryan', NULL, 'Elwell', NULL),
    (1016, NULL, 'Jonah', NULL, 'Hickson:', NULL),
    (1017, NULL, 'William', NULL, 'Brown', NULL),
    (1018, NULL, 'Jeff', NULL, 'Guerrero', NULL),
    (1019, NULL, 'Walter', NULL, 'Cnare', NULL),
    (1020, NULL, 'Albert', NULL, 'Padilla', NULL),
    (1021, NULL, 'Jared', NULL, 'Wellman', NULL),
    (1022, NULL, 'Chris', NULL, 'Sullivan', NULL),
    (1023, NULL, 'Tylor', NULL, 'Grady', NULL),
    (1024, NULL, 'Jimmy', NULL, 'Mitchell', NULL),
    (1025, NULL, 'Thomas', NULL, 'Boughton', NULL),
    (1026, NULL, 'Christophet', NULL, 'Hagens', NULL),
    (1027, NULL, 'Kris', NULL, 'McPherson', NULL),
    (1028, NULL, 'Watts', NULL, 'Barden', NULL),
    (1029, NULL, 'Jason', NULL, 'Schafer', NULL),
    (1030, NULL, 'Christopher', NULL, 'Ross', NULL),
    (1031, NULL, 'Richard', NULL, 'Glassford', NULL),
    (1032, NULL, 'Andrew', NULL, 'Ferguson', NULL),
    (1033, NULL, 'Ben', NULL, 'McCoy', NULL),
    (1034, NULL, 'Jason', NULL, 'Wert', NULL),
    (1035, NULL, 'Brian', NULL, 'Eva', NULL),
    (1036, NULL, 'Chiranjivi', NULL, 'GC', NULL),
    (1037, NULL, 'Todd', NULL, 'Dupler', NULL),
    (1038, NULL, 'Gordon', NULL, 'Peterson', NULL),
    (1039, NULL, 'Michael', NULL, 'Linsky', NULL),
    (1040, NULL, 'Jeremy', NULL, 'Ediger', NULL),
    (1041, NULL, 'Ryan', NULL, 'Manske', NULL),
    (1042, NULL, 'Stan', NULL, 'Mathes', NULL),
    (1043, NULL, 'Alex', NULL, 'Keating', NULL),
    (1044, NULL, 'Clinton', NULL, 'Henneke', NULL),
    (1045, NULL, 'Ed', NULL, 'Hammett', NULL),
    (1046, NULL, 'Thad', NULL, 'Rich', NULL),
    (1047, NULL, 'Joshua', NULL, 'Vance', NULL),
    (1048, NULL, 'Gregor', NULL, 'Shepherd', NULL),
    (1049, NULL, 'Manuel', NULL, 'Flores', NULL),
    (1050, NULL, 'Christoffer', NULL, 'Meijer', NULL),
    (1051, NULL, 'Cornelio', NULL, 'Bravo', NULL),
    (1052, NULL, 'Kevin', NULL, 'Glenn', NULL),
    (1053, NULL, 'Tom', NULL, 'Shute', NULL),
    (1054, NULL, 'Sebastien', NULL, 'Lacroix', NULL),
    (1055, NULL, 'Brad', NULL, 'Wells', NULL),
    (1056, NULL, 'Joe', NULL, 'Reagan', NULL),
    (1057, NULL, 'Phil', NULL, 'Olsen', NULL),
    (1058, NULL, 'Graham', NULL, 'Hirst', NULL),
    (1059, NULL, 'John', NULL, 'Dixon', NULL),
    (1060, NULL, 'Lance', NULL, 'Adams', NULL),
    (1061, NULL, 'Jeffrey', NULL, 'Berg', NULL),
    (1062, NULL, 'Thomas', NULL, 'Bill', NULL),
    (1063, NULL, 'Nelson', NULL, 'Ball', NULL),
    (1064, NULL, 'Jared', NULL, 'Batten', NULL),
    (1065, NULL, 'Dorian', 'Sebastian', 'Gillmeister', NULL),
    (1066, NULL, 'Jeff', NULL, 'Richter', NULL),
    (1067, NULL, 'Tima', NULL, 'Grapp', NULL),
    (1068, NULL, 'Steve', NULL, 'Brack', NULL),
    (1069, NULL, 'Greg', NULL, 'Midkiff', NULL),
    (1070, NULL, 'Wayne', NULL, 'Garrett', NULL),
    (1071, NULL, 'Jacob', NULL, 'Flowers', NULL),
    (1072, NULL, 'Chris', NULL, 'Obenhaus', NULL),
    (1073, NULL, 'Rodney', NULL, 'Smith', NULL),
    (1074, NULL, 'Kevin', NULL, 'Vargas', NULL),
    (1075, NULL, 'Graeme', NULL, 'Drewett', NULL),
    (1076, NULL, 'John', NULL, 'Viachos', NULL),
    (1077, NULL, 'Crash', NULL, 'Campbell', NULL),
    (1078, NULL, 'Erich', NULL, 'Paul', NULL),
    (1079, NULL, 'Mical', NULL, 'Crase', NULL),
    (1080, NULL, 'Arik', NULL, 'Anderson', NULL),
    (1081, NULL, 'Adam', NULL, 'Wolf', NULL),
    (1082, NULL, 'Jeremy', NULL, 'Kiser', NULL),
    (1083, NULL, 'Jesse', NULL, 'Winn', NULL),
    (1084, NULL, 'David', NULL, 'Manry', NULL),
    (1085, NULL, 'Jeremy', NULL, 'Young', NULL),
    (1086, NULL, 'Peter', NULL, 'Jensen', NULL),
    (1087, NULL, 'Robin', NULL, 'Bone', NULL),
    (1088, NULL, 'Andrew', NULL, 'Summers', NULL),
    (1089, NULL, 'Joel', NULL, 'Schroeder', NULL),
    (1090, NULL, 'Curtis', NULL, 'Hoskins', NULL),
    (1091, NULL, 'Dustin', NULL, 'Robertson', NULL),
    (1092, NULL, 'Reid', NULL, 'Harrison', NULL),
    (1093, NULL, 'Simon', NULL, 'Rudnick', NULL),
    (1094, NULL, 'Nicolas', NULL, 'Flint', NULL),
    (1095, NULL, 'Denys', NULL, 'Lemire', NULL),
    (1096, NULL, 'Anthony', NULL, 'Davidson', NULL),
    (1097, NULL, 'Ryan', NULL, 'Firth', NULL),
    (1098, NULL, 'Geoff', NULL, 'Haffner', NULL),
    (1099, NULL, 'Kris', NULL, 'Billington', NULL),
    (1100, NULL, 'Martin', 'McCallister,', 'II', NULL),
    (1101, NULL, 'Marshall', NULL, 'Conover', NULL),
    (1102, NULL, 'Roger', NULL, 'Myers', NULL),
    (1103, NULL, 'Andrew', NULL, 'Diehl', NULL),
    (1104, NULL, 'Benjamin', NULL, 'Ballard', NULL),
    (1105, NULL, 'Joseph', NULL, 'Farrell', NULL),
    (1106, NULL, 'Clair', NULL, 'Jones', NULL),
    (1107, NULL, 'William', NULL, 'Walker', NULL),
    (1108, NULL, 'Emil', NULL, 'Wells', NULL),
    (1109, NULL, 'Nathaniel', NULL, 'Bacon', NULL),
    (1110, NULL, 'Darrell', NULL, 'Crawford', NULL),
    (1111, NULL, 'Rodney', NULL, 'Yerkes', NULL),
    (1112, NULL, 'Twister', NULL, 'Asturi', NULL),
    (1113, NULL, 'Jordan', NULL, 'Shaffer', NULL),
    (1114, NULL, 'Roderick', NULL, 'Litchford', NULL),
    (1115, NULL, 'Adam', NULL, 'Bruck', NULL),
    (1116, NULL, 'Chad', NULL, 'Taylor', NULL),
    (1117, NULL, 'Mike', NULL, 'Norton', NULL),
    (1118, NULL, 'Adam', NULL, 'Gooden', NULL),
    (1119, NULL, 'Robert', NULL, 'Crawford', NULL),
    (1120, NULL, 'Stephen', NULL, 'Anderson', NULL),
    (1121, NULL, 'Skyler', NULL, 'Moore', NULL),
    (1122, NULL, 'Chuck', NULL, 'Sterling', NULL),
    (1123, NULL, 'Jonathan', NULL, 'Kotinek', NULL),
    (1124, NULL, 'Brian', NULL, 'Schroeder', NULL),
    (1125, NULL, 'Alan', NULL, 'Apel', NULL),
    (1126, NULL, 'Eric', NULL, 'Towler', NULL),
    (1127, NULL, 'Stephen', NULL, 'Smith', NULL),
    (1128, NULL, 'Edwin', NULL, 'Stremel', NULL),
    (1129, NULL, 'Joseph', NULL, 'Kehl', NULL),
    (1130, NULL, 'Cody', NULL, 'Young', NULL),
    (1131, NULL, 'Donald', 'Keith', 'Montgomery', NULL),
    (1132, NULL, 'Lance', NULL, 'Wooton', NULL),
    (1133, NULL, 'Matt', NULL, 'Bartolotti', NULL),
    (1134, NULL, 'Josh', NULL, 'Black', NULL),
    (1135, NULL, 'Colin', 'Mc', 'Ardle', NULL),
    (1136, NULL, 'Ricky', NULL, 'Cox', NULL),
    (1137, NULL, 'Paul', NULL, 'Cook', NULL),
    (1138, NULL, 'Matt', NULL, 'Lee', NULL),
    (1139, NULL, 'Matt', NULL, 'Gatica', NULL),
    (1140, NULL, 'Justin', NULL, 'Mitchell', NULL),
    (1141, NULL, 'Shane', NULL, 'Sheriff', NULL),
    (1142, NULL, 'Dwight', NULL, 'Thompson', NULL),
    (1143, NULL, 'Serguey', NULL, 'Chumin', NULL),
    (1144, NULL, 'Cory', NULL, 'Kohimeyer', NULL),
    (1145, NULL, 'Viktor', 'Erik', 'Jensen', NULL),
    (1146, NULL, 'Joe', NULL, 'Mills', NULL),
    (1147, NULL, 'Lewis', NULL, 'Snyder', NULL),
    (1148, NULL, 'John', NULL, 'Stanley', NULL),
    (1149, NULL, 'Rob', NULL, 'Peterson', NULL),
    (1150, NULL, 'Samuel', NULL, 'Wakelin', NULL),
    (1151, NULL, 'Jonis', NULL, 'Birkes', NULL),
    (1152, NULL, 'John', NULL, 'Berkenkopf', NULL),
    (1153, NULL, 'Joshua', NULL, 'Aguinaldo', NULL),
    (1154, NULL, 'Thomas', NULL, 'Casper', NULL),
    (1155, NULL, 'Hal', NULL, 'Metzler', NULL),
    (1156, NULL, 'Matt', NULL, 'Bischoff', NULL),
    (1157, NULL, 'Marguerite', NULL, 'Stensrud', NULL),
    (1158, NULL, 'Adam', NULL, 'Gazda', NULL),
    (1159, NULL, 'Greg', NULL, 'Schoenwolf', NULL),
    (1160, NULL, 'Johnathan', NULL, 'Wakefield', NULL),
    (1161, NULL, 'Chad', NULL, 'Roberts', NULL),
    (1162, NULL, 'Jon-Alex', NULL, 'Bailey', NULL),
    (1163, NULL, 'Jimmy', NULL, 'Fox', NULL),
    (1164, NULL, 'Matthew', NULL, 'McGregor', NULL),
    (1165, NULL, 'Robert', NULL, 'Hollerman', NULL),
    (1166, NULL, 'Dan', NULL, 'Cruikshank', NULL),
    (1167, NULL, 'Jamin', NULL, 'O''Malley', NULL),
    (1168, NULL, 'Garey', NULL, 'Faulkner', NULL),
    (1169, NULL, 'John', NULL, 'Banks:', NULL),
    (1170, NULL, 'Robert', NULL, 'Schieber', NULL),
    (1171, NULL, 'Dennis', NULL, 'Mescall', NULL),
    (1172, NULL, 'Bryce', NULL, 'Royal', NULL),
    (1173, NULL, 'Trevor', NULL, 'White', NULL),
    (1174, NULL, 'Adam', NULL, 'Jordan', NULL),
    (1175, NULL, 'Brian', NULL, 'Quein', NULL),
    (1176, NULL, 'Collin', NULL, 'DeNoya', NULL),
    (1177, NULL, 'Wilfried', NULL, 'Jezierny', NULL),
    (1178, NULL, 'Regev', NULL, 'Nystrom', NULL),
    (1179, NULL, 'llya', NULL, 'Glebov', NULL),
    (1180, NULL, 'Greg', NULL, 'Dheel', NULL),
    (1181, NULL, 'Michael', NULL, 'Keller', NULL),
    (1182, NULL, 'Karl-Heinz', NULL, 'Tonat', NULL),
    (1183, NULL, 'Alan', NULL, 'Fielder', NULL),
    (1184, NULL, 'Paul', NULL, 'Goad', NULL),
    (1185, NULL, 'Jared', NULL, 'Koedyker', NULL),
    (1186, NULL, 'Daniel', NULL, 'Hauerland', NULL),
    (1187, NULL, 'Ben', NULL, 'Samuels', NULL),
    (1188, NULL, 'Clayton', NULL, 'Jackson', NULL),
    (1189, NULL, 'Kody', NULL, 'Stuart', NULL),
    (1190, NULL, 'Dereck', NULL, 'White', NULL),
    (1191, NULL, 'Patrick', NULL, 'Shields', NULL),
    (1192, NULL, 'Noah', NULL, 'Polk', NULL),
    (1193, NULL, 'Richard', NULL, 'Wehbe', NULL),
    (1194, NULL, 'Greg', NULL, 'Saylor', NULL),
    (1195, NULL, 'Thomas', NULL, 'Balentine', NULL),
    (1196, NULL, 'John', NULL, 'Jurgens', NULL),
    (1197, NULL, 'Neal', NULL, 'Eckrich', NULL),
    (1198, NULL, 'Samuel', NULL, 'Byus', NULL),
    (1199, NULL, 'Eric', NULL, 'Kneffler', NULL),
    (1200, NULL, 'James', NULL, 'Fulkerson', NULL),
    (1201, NULL, 'Barry', NULL, 'Gerstenberg', NULL),
    (1202, NULL, 'Nelson', NULL, 'Kottke', NULL),
    (1203, NULL, 'Gary', NULL, 'Crawford', NULL),
    (1204, NULL, 'Rod', NULL, 'Littlewood', NULL),
    (1205, NULL, 'Don', NULL, 'Hejny', NULL),
    (1206, NULL, 'Marcos', NULL, 'Roybal', NULL),
    (1207, NULL, 'Claus', NULL, 'Ziebarth', NULL),
    (1208, NULL, 'Greg', NULL, 'Rittner', NULL),
    (1209, NULL, 'Chad', NULL, 'Nikoncyk', NULL),
    (1210, NULL, 'Quinton', NULL, 'Crocker', NULL),
    (1211, NULL, 'Oscar', NULL, 'Bruck', NULL),
    (1212, NULL, 'Justin', NULL, 'Milan', NULL),
    (1213, NULL, 'Lucio', NULL, 'Battista', NULL),
    (1214, NULL, 'Jake', NULL, 'Craig', NULL),
    (1215, NULL, 'Alfred', NULL, 'Nash', NULL),
    (1216, NULL, 'Ryan', NULL, 'Goetsch', NULL),
    (1217, NULL, 'Keith', NULL, 'Brown', NULL),
    (1218, NULL, 'Anton', NULL, 'Wyss', NULL),
    (1219, NULL, 'William', 'van', 'Allen', NULL),
    (1220, NULL, 'Ricardo', NULL, 'Ruiz', NULL),
    (1221, NULL, 'lan', NULL, 'Stetler', NULL),
    (1222, NULL, 'Scott', NULL, 'Crowe', NULL),
    (1223, NULL, 'Daniel', NULL, 'Grant', NULL),
    (1224, NULL, 'Carlos', NULL, 'Bennett', NULL),
    (1225, NULL, 'Nathan', NULL, 'Weinstein', NULL),
    (1226, NULL, 'Bjorn', NULL, 'Bogen', NULL),
    (1227, NULL, 'Ron', NULL, 'Spittka', NULL),
    (1228, NULL, 'John', NULL, 'Burdett', NULL),
    (1229, NULL, 'Joshua', NULL, 'Quinney', NULL),
    (1230, NULL, 'Jason', NULL, 'Yarina', NULL),
    (1231, NULL, 'Benjamin', NULL, 'Juergens', NULL),
    (1232, NULL, 'Chad', NULL, 'Waggoner', NULL),
    (1233, NULL, 'Aureliano', NULL, 'Perez', NULL),
    (1234, NULL, 'Justus', NULL, 'Hughes:', NULL),
    (1235, NULL, 'Heinz-Jiirgen', NULL, 'Blenk', NULL),
    (1236, NULL, 'Howie', NULL, 'Kinderman', NULL),
    (1237, NULL, 'Eric', NULL, 'Hovland', NULL),
    (1238, NULL, 'Eric', NULL, 'Choat', NULL),
    (1239, NULL, 'Ryan', NULL, 'Darr', NULL),
    (1240, NULL, 'William', NULL, 'Nichols', NULL),
    (1241, NULL, 'Timothy', NULL, 'Crawford', NULL),
    (1242, NULL, 'William', NULL, 'Petersen', NULL),
    (1243, NULL, 'Daniel', NULL, 'Kloos', NULL),
    (1244, NULL, 'Josef', NULL, 'Ibach', NULL),
    (1245, NULL, 'Chad', NULL, 'Holgerson', NULL),
    (1246, NULL, 'Samuel', NULL, 'Holcombe', NULL),
    (1247, NULL, 'Andrew', NULL, 'Huston', NULL),
    (1248, NULL, 'Brenton', NULL, 'Steinmann', NULL),
    (1249, NULL, 'Todd', NULL, 'Werner', NULL),
    (1250, NULL, 'Talon', NULL, 'Bowyer', NULL),
    (1251, NULL, 'David', NULL, 'Vega', NULL),
    (1252, NULL, 'Lars', 'Olav', 'Braa', NULL),
    (1253, NULL, 'Joshua', NULL, 'Schroeder', NULL),
    (1254, NULL, 'Caleb', NULL, 'Kuntz', NULL),
    (1255, NULL, 'Andrew', NULL, 'Cole', NULL),
    (1256, NULL, 'Daniel', 'Folino', 'Gallo', NULL),
    (1257, NULL, 'Russell', 'Bennett', 'Jr', NULL),
    (1258, NULL, 'Al', NULL, 'Underwood', NULL),
    (1259, NULL, 'Jeffery', NULL, 'Sailer', NULL),
    (1260, NULL, 'Gandhi', NULL, 'Jones', NULL),
    (1261, NULL, 'Ronnie', NULL, 'Vermeulen', NULL),
    (1262, NULL, 'Lawrence', NULL, 'Ingerly', NULL),
    (1263, NULL, 'Johnny', NULL, 'Rodriguez', NULL),
    (1264, NULL, 'Dylan', NULL, 'Powell', NULL),
    (1265, NULL, 'Nickolas', NULL, 'Albergettii', NULL),
    (1266, NULL, 'Ralleigh', 'Grandberry', 'III', NULL),
    (1267, NULL, 'Steven', NULL, 'Kolnes', NULL),
    (1268, NULL, 'Christopher', NULL, 'Tinney', NULL),
    (1269, NULL, 'Michael', 'A', 'McNeese', NULL),
    (1270, NULL, 'Guy', NULL, 'Fawkes', NULL),
    (1271, NULL, 'Zach', NULL, 'Shell', NULL),
    (1272, NULL, 'Taz', NULL, 'Gonzales', NULL),
    (1273, NULL, 'Anthony', NULL, 'Fontes', NULL),
    (1274, NULL, 'Mehmet', NULL, 'Mete', NULL),
    (1275, NULL, 'Luc', NULL, 'Dierckx', NULL),
    (1276, NULL, 'Matt', NULL, 'Warrens', NULL),
    (1277, NULL, 'Justin', NULL, 'Brown', NULL),
    (1278, NULL, 'Jeff', NULL, 'Turner', NULL),
    (1279, NULL, 'Adam', NULL, 'Falandys', NULL),
    (1280, NULL, 'Shannon', NULL, 'Clinkenbeard', NULL),
    (1281, NULL, 'David', NULL, 'Geers', NULL),
    (1282, NULL, 'Michael', NULL, 'Toohey', NULL),
    (1283, NULL, 'Robert', NULL, 'Mevec', NULL),
    (1284, NULL, 'Eric', NULL, 'Walsh', NULL),
    (1285, NULL, 'John', NULL, 'Viar', NULL),
    (1286, NULL, 'Josh', NULL, 'Kimm', NULL),
    (1287, NULL, 'Josh', NULL, 'Mills', NULL),
    (1288, NULL, 'Brian', NULL, 'Hall', NULL),
    (1289, NULL, 'Brian', NULL, 'Coyne', NULL),
    (1290, NULL, 'James', NULL, 'Bunning', NULL),
    (1291, NULL, 'Scott', NULL, 'Luthi', NULL),
    (1292, NULL, 'Richard', NULL, 'Evans-Lacey', NULL),
    (1293, NULL, 'Geir', NULL, 'Hogas', NULL),
    (1294, NULL, 'Jonathan', NULL, 'Nayman', NULL),
    (1295, NULL, 'Jeremy', NULL, 'Wilder', NULL),
    (1296, NULL, 'Mark', NULL, 'Beneda', NULL),
    (1297, NULL, 'Cory', NULL, 'Olswold', NULL),
    (1298, NULL, 'Eric', NULL, 'Cummings', NULL),
    (1299, NULL, 'Stewart', NULL, 'Eastman', NULL),
    (1300, NULL, 'The', NULL, 'Cub', NULL),
    (1301, NULL, 'Hakon', NULL, 'Amodt', NULL),
    (1302, NULL, 'Stephen', NULL, 'Hunt', NULL),
    (1303, NULL, 'Travis', NULL, 'Oliver', NULL),
    (1304, NULL, 'Carter', NULL, 'Cox', NULL),
    (1305, NULL, 'Scott', NULL, 'Wagner', NULL),
    (1306, NULL, 'Alan', NULL, 'Israel', NULL),
    (1307, NULL, 'Mac', NULL, 'MacDonald', NULL),
    (1308, NULL, 'Randall', NULL, 'Thomas', NULL),
    (1309, NULL, 'Scott', NULL, 'Miller', NULL),
    (1310, NULL, 'Andy', NULL, 'Teague', NULL),
    (1311, NULL, 'Sean', NULL, 'Spangler', NULL),
    (1312, NULL, 'Paul', NULL, 'Roof', NULL),
    (1313, NULL, 'Joseph', NULL, 'Gladski', NULL),
    (1314, NULL, 'Chris', NULL, 'Stewart', NULL),
    (1315, NULL, 'Christopher', NULL, 'Hinkley', NULL),
    (1316, NULL, 'David', NULL, 'Willis', NULL),
    (1317, NULL, 'Andrew', NULL, 'Mattson', NULL),
    (1318, NULL, 'Paul', NULL, 'Bradshaw', NULL),
    (1319, NULL, 'Michael', NULL, 'Jordan', NULL),
    (1320, NULL, 'Phil', NULL, 'Cummins', NULL),
    (1321, NULL, 'Eric', NULL, 'Adams', NULL),
    (1322, NULL, 'Edward', NULL, 'Rose', NULL),
    (1323, NULL, 'Omar', NULL, 'Shifrin', NULL),
    (1324, NULL, 'Paul', NULL, 'Beisser', NULL),
    (1325, NULL, 'Darin', NULL, 'Wike', NULL),
    (1326, NULL, 'Blaine', NULL, 'Reeves', NULL),
    (1327, NULL, 'David', NULL, 'Maclure', NULL),
    (1328, NULL, 'Andrew', NULL, 'Miller', NULL),
    (1329, NULL, 'Rosendo', NULL, 'Martinez', NULL),
    (1330, NULL, 'Drew', NULL, 'Chrisner', NULL),
    (1331, NULL, 'Ludo', 'Van', 'Hove', NULL),
    (1332, NULL, 'Dels', NULL, 'Franzoes', NULL),
    (1333, NULL, 'Pol', NULL, 'Moons', NULL),
    (1334, NULL, 'Andreas', NULL, 'Ade', NULL),
    (1335, NULL, 'Scott', NULL, 'Lakeram', NULL),
    (1336, NULL, 'James', NULL, 'McMahon', NULL),
    (1337, NULL, 'Douglas', NULL, 'Cameron', NULL),
    (1338, NULL, 'Charles', NULL, 'Abadam', NULL),
    (1339, NULL, 'Anthony', NULL, 'Carty', NULL),
    (1340, NULL, 'Nick', NULL, 'Adams', NULL),
    (1341, NULL, 'Wolfgang', NULL, 'Reuswich', NULL),
    (1342, NULL, 'Sheldon', NULL, 'Schwartz', NULL),
    (1343, NULL, 'Bert', NULL, 'Mayer', NULL),
    (1344, NULL, 'Alessandro', NULL, 'Sicco', NULL),
    (1345, NULL, 'Ray', NULL, 'Peif', NULL),
    (1346, NULL, 'Eric', NULL, 'Langlois', NULL),
    (1347, NULL, 'Randall', NULL, 'Gay', NULL),
    (1348, NULL, 'Joshua', NULL, 'Druin', NULL),
    (1349, NULL, 'Bradley', NULL, 'Brannan', NULL),
    (1350, NULL, 'Princen', NULL, 'Peter', NULL),
    (1351, NULL, 'Jim', NULL, 'Sughrue', NULL),
    (1352, NULL, 'Steve', NULL, 'Erickson', NULL),
    (1353, NULL, 'Jason', NULL, 'Ferguson', NULL),
    (1354, NULL, 'Max', NULL, 'Smith', NULL),
    (1355, NULL, 'Rylan', NULL, 'Stolar', NULL),
    (1356, NULL, 'Wolfgang', NULL, 'Schneider', NULL),
    (1357, NULL, 'Matyas', NULL, 'Kiss', NULL),
    (1358, NULL, 'Rolf', NULL, 'Huber', NULL),
    (1359, NULL, 'Patrick', NULL, 'Fette', NULL),
    (1360, NULL, 'Berd', NULL, 'Hidebrandt', NULL),
    (1361, NULL, 'Shawn', NULL, 'Fore', NULL),
    (1362, NULL, 'Russell', NULL, 'Bristow', NULL),
    (1363, NULL, 'Nathan', NULL, 'Wilson', NULL),
    (1364, NULL, 'Max', NULL, 'Pankow', NULL),
    (1365, NULL, 'Eugen', NULL, 'Hipp', NULL),
    (1366, NULL, 'Frank', NULL, 'Wiegand', NULL),
    (1367, NULL, 'Jackie', 'Lynn', 'Ellison', NULL),
    (1368, NULL, 'Zsolt', NULL, 'Jaromi', NULL),
    (1369, NULL, 'Bruce', NULL, 'Roe', NULL),
    (1370, NULL, 'Lucio', NULL, 'Battista', NULL),
    (1371, NULL, 'Jeffrey', NULL, 'Moustache', NULL),
    (1372, NULL, 'Eddy', NULL, 'Vanderschueren', NULL),
    (1373, NULL, 'Wolfgang', NULL, 'Servay', NULL),
    (1374, NULL, 'Patrick', NULL, 'Dawson', NULL),
    (1375, NULL, 'Hans', NULL, 'Unverricht', NULL),
    (1376, NULL, 'Lutz', NULL, 'Giese', NULL),
    (1377, NULL, 'Patrick', NULL, 'Langley', NULL),
    (1378, NULL, 'David', NULL, 'Benson', NULL),
    (1379, NULL, 'Jürg', NULL, 'Biland', NULL),
    (1380, NULL, 'Andrew', NULL, 'Parry', NULL),
    (1381, NULL, 'Gilles', NULL, 'Polinien', NULL),
    (1382, NULL, 'Luc', NULL, 'Dierckx', NULL),
    (1383, NULL, 'Haim', NULL, 'Hoffmann', NULL),
    (1384, NULL, 'Michael', NULL, 'Wallage', NULL),
    (1385, NULL, 'Paul', NULL, 'Card', NULL),
    (1386, NULL, 'Patrick', NULL, 'Quinn', NULL),
    (1387, NULL, 'Luke', NULL, 'Sumpter', NULL),
    (1388, NULL, 'Jason', NULL, 'Hall', NULL),
    (1389, NULL, 'Robert', NULL, 'Mevec', NULL),
    (1390, NULL, 'Dieter', NULL, 'Besuch', NULL),
    (1391, NULL, 'Anthony', NULL, 'Carty', NULL),
    (1392, NULL, 'Norbert', NULL, 'Topf', NULL),
    (1393, NULL, 'Guillaume', NULL, 'Renouf', NULL),
    (1394, NULL, 'Karl', NULL, 'Roos', NULL),
    (1395, NULL, 'Yohann', NULL, 'Catton', NULL),
    (1396, NULL, 'Franz', NULL, 'Pill', NULL),
    (1397, NULL, 'Anton', NULL, 'Reimann', NULL),
    (1398, NULL, 'Denis', NULL, 'Zen', NULL),
    (1399, NULL, 'Anatole', NULL, 'lvanow', NULL),
    (1400, NULL, 'Bjorn', NULL, 'Verheyden', NULL),
    (1401, NULL, 'R.', 'Cole', 'Meneghetti', NULL),
    (1402, NULL, 'Fabrizio', NULL, 'Bottos', NULL),
    (1403, NULL, 'Luke', NULL, 'Tottle', NULL),
    (1404, NULL, 'Madison', NULL, 'Rowley', NULL),
    (1405, NULL, 'Andrew', NULL, 'Kloss', NULL),
    (1406, NULL, 'Lee', NULL, 'Andrews', NULL),
    (1407, NULL, 'Tibor', NULL, 'Vona', NULL),
    (1408, NULL, 'Hans-Peter', NULL, 'Weis', NULL),
    (1409, NULL, 'Aare', NULL, 'Bielefeldt', NULL),
    (1410, NULL, 'Garey', NULL, 'Faulkner', NULL),
    (1411, NULL, 'Muege', NULL, 'Mete', NULL),
    (1412, NULL, 'Kathleen', NULL, NULL, NULL),
    (1413, NULL, 'Daisy', NULL, 'Lane', NULL),
    (1414, NULL, 'Natalie', NULL, 'Stevenson', NULL),
    (1415, NULL, 'Tisha', 'Clinkenbeard', 'Schulenburg', NULL),
    (1416, NULL, 'Christina', NULL, 'Fetko', NULL),
    (1417, NULL, 'Suzie', NULL, 'Sims-Fletcher', NULL),
    (1418, NULL, 'Jordon', NULL, 'House', NULL),
    (1419, NULL, 'Apol', NULL, 'Nelson', NULL),
    (1420, NULL, 'Christi', NULL, 'Strycker', NULL),
    (1421, NULL, 'Erin', NULL, 'Neiper', NULL),
    (1422, NULL, 'Rebecca', NULL, 'Dodge', NULL),
    (1423, NULL, 'Gordon', NULL, 'Glover', NULL),
    (1424, NULL, 'Lamar', NULL, 'Molina', NULL),
    (1425, NULL, 'Ryan', NULL, 'Koscianski', NULL),
    (1426, NULL, 'Austin', NULL, 'Patrick', NULL),
    (1427, NULL, 'Daniele', NULL, 'Perillo', NULL),
    (1428, NULL, 'Dennis', NULL, 'Gregory', NULL),
    (1429, NULL, 'Ed', NULL, 'Davis', NULL),
    (1430, NULL, 'David', NULL, 'Ray', NULL),
    (1431, NULL, 'Scott', NULL, 'Crowe', NULL),
    (1432, NULL, 'Oscar', NULL, 'Bruck', NULL),
    (1433, NULL, 'Don', NULL, 'Darnell', NULL),
    (1434, NULL, 'Lars', NULL, 'Lefeber', NULL),
    (1435, NULL, 'Josh', 'Beard', 'Majestic', NULL),
    (1436, NULL, 'Jason', NULL, 'DeFoe', NULL),
    (1437, NULL, 'Brian', NULL, 'Karn', NULL),
    (1438, NULL, 'Drew', NULL, 'McNaughton', NULL),
    (1439, NULL, 'Jeremy', NULL, 'Drenner', NULL),
    (1440, NULL, 'Wilfredo', NULL, NULL, NULL),
    (1441, NULL, 'Joshua', NULL, NULL, NULL),
    (1442, NULL, 'Legend', NULL, 'Already', NULL),
    (1443, NULL, 'John', NULL, 'Linkous', NULL),
    (1444, NULL, 'Jason', NULL, 'Gynp', NULL),
    (1445, NULL, 'José', NULL, 'Rodriguez', NULL),
    (1446, NULL, 'Shubham', NULL, NULL, NULL),
    (1447, NULL, 'Swaroop', NULL, 'Pujari', NULL),
    (1448, NULL, 'Andrew', NULL, 'Orten', NULL),
    (1449, NULL, 'Justus', NULL, 'Hughes', NULL),
    (1450, NULL, 'KD', NULL, 'Singh', NULL),
    (1451, NULL, 'Justin', NULL, 'Hunt', NULL),
    (1452, NULL, 'Anton', NULL, 'Reimann', NULL),
    (1453, NULL, 'Cornelio', NULL, 'Bravo', NULL),
    (1454, NULL, 'Ian', NULL, 'Ward', NULL),
    (1455, NULL, 'Alfred', NULL, 'Nash', NULL),
    (1456, NULL, 'Kyle', NULL, 'Waller', NULL),
    (1457, NULL, 'Timothy', NULL, 'Bush', NULL),
    (1458, NULL, 'Nicholas', NULL, 'Maier', NULL),
    (1459, NULL, 'Joe', NULL, 'Gill', NULL),
    (1460, NULL, 'Dale', NULL, 'Smith', NULL),
    (1461, NULL, 'Nicholas', NULL, 'Mott', NULL),
    (1462, NULL, 'Justin', NULL, 'Denham', NULL),
    (1463, NULL, 'Dan', 'Tarben', 'S', NULL),
    (1464, NULL, 'Mason', NULL, 'Strycker', NULL),
    (1465, NULL, 'Joshua', NULL, 'Tolen', NULL),
    (1466, NULL, 'Jon', NULL, 'Stinger', NULL),
    (1467, NULL, 'Matt', NULL, 'Chizmar', NULL),
    (1468, NULL, 'Shawn', NULL, 'Hepler', NULL),
    (1469, NULL, 'Travis', NULL, 'Straub', NULL),
    (1470, NULL, 'Duston', NULL, 'Sieglaff', NULL),
    (1471, NULL, 'Michael', NULL, 'David', NULL),
    (1472, NULL, 'Reuben', NULL, NULL, NULL),
    (1473, NULL, 'Cory', 'Grizz', 'Stovall', NULL),
    (1474, NULL, 'Robert', NULL, 'Gallagher', NULL),
    (1475, NULL, 'Brandon', NULL, 'Barnes', NULL),
    (1476, NULL, 'Steve', NULL, 'Garcia', NULL),
    (1477, NULL, 'David', NULL, 'Couch', NULL),
    (1478, NULL, 'Justin', NULL, 'Casey', NULL),
    (1479, NULL, 'Jeff', NULL, 'Oslund', NULL),
    (1480, NULL, 'Raven', NULL, 'Pierce', NULL),
    (1481, NULL, 'George', NULL, 'Wells', NULL),
    (1482, NULL, 'Timothy', NULL, 'Paul', NULL),
    (1483, NULL, 'Christopher', NULL, 'Fetko', NULL),
    (1484, NULL, 'Jason', NULL, 'Cline', NULL),
    (1485, NULL, 'Michael', NULL, 'Brewer', NULL),
    (1486, NULL, 'Brian', NULL, NULL, NULL),
    (1487, NULL, 'Michael', NULL, 'Slosar', NULL),
    (1488, NULL, 'Jeremy', NULL, 'Wise', NULL),
    (1489, NULL, 'Ed', NULL, 'Haake', NULL),
    (1490, NULL, 'Aaron', NULL, 'Gomes', NULL),
    (1491, NULL, 'Matt', NULL, 'Sherwood', NULL),
    (1492, NULL, 'John', NULL, 'Laughlin', NULL),
    (1493, NULL, 'Bryan', NULL, 'Banfield', NULL),
    (1494, NULL, 'George', NULL, 'Scifers', NULL),
    (1495, NULL, 'Jared', NULL, 'Hardy', NULL),
    (1496, NULL, 'Steven', NULL, 'Wallace', NULL),
    (1497, NULL, 'Lorand', NULL, 'Jelenyi', NULL),
    (1498, NULL, 'Darrin', NULL, 'Wingard', NULL),
    (1499, NULL, 'Bryan', NULL, 'Elwell', NULL),
    (1500, NULL, 'Jerry', NULL, 'Usery', NULL),
    (1501, NULL, 'Jeff', NULL, 'Hudson', NULL),
    (1502, NULL, 'Jimmy', NULL, 'Grose', NULL),
    (1503, NULL, 'Hal', NULL, 'Metzler', NULL),
    (1504, NULL, 'Christopher', NULL, 'Strickland', NULL),
    (1505, NULL, 'Kim', NULL, 'Haley', NULL),
    (1506, NULL, 'Don', NULL, 'Marotta', NULL),
    (1507, NULL, 'Jarrod', NULL, 'Porter', NULL),
    (1508, NULL, 'Wilfried', NULL, 'Jezierny', NULL),
    (1509, NULL, 'John', NULL, 'Faherty', NULL),
    (1510, NULL, 'Bill', NULL, 'Steubing', NULL),
    (1511, NULL, 'Darrell', NULL, 'Crawford', NULL),
    (1512, NULL, 'David', NULL, 'Karnegas', NULL),
    (1513, NULL, 'Mike', NULL, 'Mowery', NULL),
    (1514, NULL, 'Les', NULL, 'Gooch', NULL),
    (1515, NULL, 'Brad', NULL, 'Glaser', NULL),
    (1516, NULL, 'Jay', NULL, 'Shaffer', NULL),
    (1517, NULL, 'Bob', NULL, 'Welch', NULL),
    (1518, NULL, 'Robert', NULL, 'Hollerman', NULL),
    (1519, NULL, 'Garey', NULL, 'Faulkner', NULL),
    (1520, NULL, 'Johnathan', NULL, 'Wakefield', NULL),
    (1521, NULL, 'Bruno', NULL, 'Barbato', NULL),
    (1522, NULL, 'Narinderjeet', NULL, 'Singh', NULL),
    (1523, NULL, 'Marcus', NULL, 'Boykin', NULL),
    (1524, NULL, 'Shawn', NULL, 'Morgan', NULL),
    (1525, NULL, 'Pops', NULL, 'Harris', NULL),
    (1526, NULL, 'Levi', NULL, 'Harris', NULL),
    (1527, NULL, 'Akira', NULL, 'Fujimori', NULL),
    (1528, NULL, 'Joseph', NULL, 'Mills', NULL),
    (1529, NULL, 'Rolf', NULL, 'Huber', NULL),
    (1530, NULL, 'Dean', NULL, 'Smith', NULL),
    (1531, NULL, 'Patrick', NULL, 'Shields', NULL),
    (1532, NULL, 'Richard', NULL, 'Becker', NULL),
    (1533, NULL, 'Darin', NULL, 'Potts', NULL),
    (1534, NULL, 'Eric', NULL, 'Zetto', NULL),
    (1535, NULL, 'John', NULL, 'Oldfield', NULL),
    (1536, NULL, 'Nicco', NULL, 'Colzi', NULL),
    (1537, NULL, 'Andrew', NULL, 'Longtine', NULL),
    (1538, NULL, 'Matthew', NULL, 'Sherrod', NULL),
    (1539, NULL, 'Ian', NULL, 'Stetler', NULL),
    (1540, NULL, 'Russell', NULL, NULL, NULL),
    (1541, NULL, 'Matthew', NULL, 'Travis', NULL),
    (1542, NULL, 'Brad', NULL, 'Petrinec', NULL),
    (1543, NULL, 'Nathan', NULL, 'Wilson', NULL),
    (1544, NULL, 'Keith', NULL, 'Brown', NULL),
    (1545, NULL, 'Shaun', NULL, 'Smith', NULL),
    (1546, NULL, 'Nicholas', NULL, 'Sorrenson', NULL),
    (1547, NULL, 'Paul', NULL, 'Slosar', NULL),
    (1548, NULL, 'Daniel', NULL, 'Cohen', NULL),
    (1549, NULL, 'John', NULL, 'Miller', NULL),
    (1550, NULL, 'Alexander', NULL, 'Marshall', NULL),
    (1551, NULL, 'Anton', NULL, 'Wyss', NULL),
    (1552, NULL, 'Jeremy', NULL, NULL, NULL),
    (1553, NULL, 'Robert', NULL, 'Youther', NULL),
    (1554, NULL, 'Richard', NULL, 'Seibel', NULL),
    (1555, NULL, 'Dario', NULL, 'Marsili', NULL),
    (1556, NULL, 'William', NULL, 'Dorney', NULL),
    (1557, NULL, 'Heinz-Jürgen', NULL, NULL, NULL),
    (1558, NULL, 'Benjamin', NULL, NULL, NULL),
    (1559, NULL, 'Eli', NULL, 'Earnest', NULL),
    (1560, NULL, 'Tim', NULL, 'Adamosky', NULL),
    (1561, NULL, 'Tyson', NULL, 'Burlile', NULL),
    (1562, NULL, 'Mathew', NULL, 'O''Connor', NULL),
    (1563, NULL, 'Jesse', NULL, 'Travis', NULL),
    (1564, NULL, 'Patrick', NULL, 'Martin', NULL),
    (1565, NULL, 'Richard', 'Lanning', 'Madisonville', NULL),
    (1566, NULL, 'Daniel', NULL, 'Kloos', NULL),
    (1567, NULL, 'Brian', NULL, 'Donnelly', NULL),
    (1568, NULL, 'David', NULL, 'Strickland', NULL),
    (1569, NULL, 'Joseph', NULL, 'Strong', NULL),
    (1570, NULL, 'Eric', NULL, 'Hulbert', NULL),
    (1571, NULL, 'Rostyslav', NULL, NULL, NULL),
    (1572, NULL, 'Eddie', NULL, NULL, NULL),
    (1573, NULL, 'Jacob', NULL, 'Ames', NULL),
    (1574, NULL, 'Jürg', NULL, 'Biland', NULL),
    (1575, NULL, 'Mehmet', NULL, 'Memo', NULL),
    (1576, NULL, 'Joe', NULL, 'Barone', NULL),
    (1577, NULL, 'Karver', NULL, 'Whitmell', NULL),
    (1578, NULL, 'Zach', 'Da', 'Costa', NULL),
    (1579, NULL, 'Edwin', 'Kibo', 'Gowatski', NULL),
    (1580, NULL, 'Shawn', NULL, 'Glander', NULL),
    (1581, NULL, 'Joshua', 'McAlister', 'Waynesboro', NULL),
    (1582, NULL, 'Jerry', NULL, 'Karn', NULL),
    (1583, NULL, 'John', NULL, 'Fox', NULL),
    (1584, NULL, 'Mark', NULL, 'Lape', NULL),
    (1585, NULL, 'John', NULL, 'Abraham', NULL),
    (1586, NULL, 'Justin', NULL, 'Williams', NULL),
    (1587, NULL, 'Jeff', NULL, 'Raye', NULL),
    (1588, NULL, 'Chad', NULL, 'Roberts', NULL),
    (1589, NULL, 'Robert', NULL, 'Reynolds', NULL),
    (1590, NULL, 'Jon', NULL, 'Linville', NULL),
    (1591, NULL, 'Shannon', NULL, NULL, NULL),
    (1592, NULL, 'Corey', 'Ghost', 'Giehl', NULL),
    (1593, NULL, 'Chuck', NULL, 'Reeves', NULL),
    (1594, NULL, 'Todd', NULL, 'Dupler', NULL),
    (1595, NULL, 'Robert', NULL, 'Mevec', NULL),
    (1596, NULL, 'Chris', NULL, 'Elder', NULL),
    (1597, NULL, 'Jason', NULL, 'Sewell', NULL),
    (1598, NULL, 'Jordan', NULL, 'Cook', NULL),
    (1599, NULL, 'Nathanial', NULL, 'Beil', NULL),
    (1600, NULL, 'Shooter', NULL, 'Johnson', NULL),
    (1601, NULL, 'Seth', NULL, 'DeSabato', NULL),
    (1602, NULL, 'Josh', NULL, 'Mills', NULL),
    (1603, NULL, 'Jordan', NULL, 'Shaffer', NULL),
    (1604, NULL, 'Christopher', NULL, 'Rozier', NULL),
    (1605, NULL, 'Brian', NULL, 'Hall', NULL),
    (1606, NULL, 'Allen', NULL, 'Eckert', NULL),
    (1607, NULL, 'Doug', NULL, 'Cameron', NULL),
    (1608, NULL, 'Jesse', NULL, 'Woods', NULL),
    (1609, NULL, 'Luke', NULL, 'Woods', NULL),
    (1610, NULL, 'Andreas', NULL, 'Pelowski', NULL),
    (1611, NULL, 'Jürgen', NULL, NULL, NULL),
    (1612, NULL, 'Kristian', NULL, 'Graham', NULL),
    (1613, NULL, 'John', NULL, 'Fortunato', NULL),
    (1614, NULL, 'Jürgen', NULL, 'Burkhardt', NULL),
    (1615, NULL, 'Marc', NULL, 'Bereiter', NULL),
    (1616, NULL, 'Erwin', NULL, 'Butsch', NULL),
    (1617, NULL, 'Norbert', NULL, 'Topf', NULL),
    (1618, NULL, 'Anita', NULL, 'Hildebrandt', NULL),
    (1619, NULL, 'Eugen', NULL, 'Hipp', NULL);;

INSERT INTO ENTRY (championship_year, contest_no, entry_no, competitor_id, hometown_city, hometown_region, hometown_country, published_total_score, final_rank, freestyle_theme, is_withdrawn) VALUES
    (2011, 1, 1, 1, NULL, NULL, NULL, NULL, 1, NULL, 0),
    (2011, 1, 2, 2, NULL, NULL, NULL, NULL, 2, NULL, 0),
    (2011, 1, 3, 3, NULL, NULL, NULL, NULL, 3, NULL, 0),
    (2011, 2, 1, 4, NULL, NULL, NULL, NULL, 1, NULL, 0),
    (2011, 2, 2, 5, NULL, NULL, NULL, NULL, 2, NULL, 0),
    (2011, 2, 3, 6, NULL, NULL, NULL, NULL, 3, NULL, 0),
    (2011, 3, 1, 7, NULL, NULL, NULL, NULL, 1, NULL, 0),
    (2011, 3, 2, 8, NULL, NULL, NULL, NULL, 2, NULL, 0),
    (2011, 3, 3, 9, NULL, NULL, NULL, NULL, 3, NULL, 0),
    (2011, 4, 1, 10, NULL, NULL, NULL, NULL, 1, NULL, 0),
    (2011, 4, 2, 11, NULL, NULL, NULL, NULL, 2, NULL, 0),
    (2011, 4, 3, 12, NULL, NULL, NULL, NULL, 3, NULL, 0),
    (2011, 5, 1, 13, NULL, NULL, NULL, NULL, 1, NULL, 0),
    (2011, 5, 2, 14, NULL, NULL, NULL, NULL, 2, NULL, 0),
    (2011, 5, 3, 15, NULL, NULL, NULL, NULL, 3, NULL, 0),
    (2011, 6, 1, 16, NULL, NULL, NULL, NULL, 1, NULL, 0),
    (2011, 6, 2, 17, NULL, NULL, NULL, NULL, 2, NULL, 0),
    (2011, 6, 3, 18, NULL, NULL, NULL, NULL, 3, NULL, 0),
    (2011, 7, 1, 19, NULL, NULL, NULL, NULL, 1, NULL, 0),
    (2011, 7, 2, 20, NULL, NULL, NULL, NULL, 2, NULL, 0),
    (2011, 7, 3, 21, NULL, NULL, NULL, NULL, 3, NULL, 0),
    (2011, 8, 1, 22, NULL, NULL, NULL, NULL, 1, NULL, 0),
    (2011, 8, 2, 23, NULL, NULL, NULL, NULL, 2, NULL, 0),
    (2011, 8, 3, 24, NULL, NULL, NULL, NULL, 3, NULL, 0),
    (2011, 9, 1, 25, NULL, NULL, NULL, NULL, 1, NULL, 0),
    (2011, 9, 2, 26, NULL, NULL, NULL, NULL, 2, NULL, 0),
    (2011, 9, 3, 27, NULL, NULL, NULL, NULL, 3, NULL, 0),
    (2011, 10, 1, 28, NULL, NULL, NULL, NULL, 1, NULL, 0),
    (2011, 10, 2, 29, NULL, NULL, NULL, NULL, 2, NULL, 0),
    (2011, 10, 3, 30, NULL, NULL, NULL, NULL, 3, NULL, 0),
    (2011, 11, 1, 31, NULL, NULL, NULL, NULL, 1, NULL, 0),
    (2011, 11, 2, 32, NULL, NULL, NULL, NULL, 2, NULL, 0),
    (2011, 11, 3, 33, NULL, NULL, NULL, NULL, 3, NULL, 0),
    (2011, 12, 1, 34, NULL, NULL, NULL, NULL, 1, NULL, 0),
    (2011, 12, 2, 35, NULL, NULL, NULL, NULL, 2, NULL, 0),
    (2011, 12, 3, 36, NULL, NULL, NULL, NULL, 3, NULL, 0),
    (2011, 13, 1, 37, NULL, NULL, NULL, NULL, 1, NULL, 0),
    (2011, 13, 2, 38, NULL, NULL, NULL, NULL, 2, NULL, 0),
    (2011, 13, 3, 39, NULL, NULL, NULL, NULL, 3, NULL, 0),
    (2011, 14, 1, 40, NULL, NULL, NULL, NULL, 1, NULL, 0),
    (2011, 14, 2, 41, NULL, NULL, NULL, NULL, 2, NULL, 0),
    (2011, 14, 3, 42, NULL, NULL, NULL, NULL, 3, NULL, 0),
    (2011, 15, 1, 43, NULL, NULL, NULL, NULL, 1, NULL, 0),
    (2011, 15, 2, 44, NULL, NULL, NULL, NULL, 2, NULL, 0),
    (2011, 15, 3, 45, NULL, NULL, NULL, NULL, 3, NULL, 0),
    (2011, 16, 1, 46, NULL, NULL, NULL, NULL, 1, NULL, 0),
    (2011, 16, 2, 47, NULL, NULL, NULL, NULL, 2, NULL, 0),
    (2011, 16, 3, 48, NULL, NULL, NULL, NULL, 3, NULL, 0),
    (2011, 17, 1, 49, NULL, NULL, NULL, NULL, 1, NULL, 0),
    (2011, 17, 2, 50, NULL, NULL, NULL, NULL, 2, NULL, 0),
    (2011, 17, 3, 51, NULL, NULL, NULL, NULL, 3, NULL, 0),
    (2013, 1, 1, 52, NULL, NULL, NULL, '46', 1, NULL, 0),
    (2013, 1, 2, 53, NULL, NULL, NULL, '45.5', 2, NULL, 0),
    (2013, 1, 3, 54, NULL, NULL, NULL, '45', 3, NULL, 0),
    (2013, 2, 1, 55, NULL, NULL, NULL, '49', 1, NULL, 0),
    (2013, 2, 2, 56, NULL, NULL, NULL, '45.5', 2, NULL, 0),
    (2013, 2, 3, 57, NULL, NULL, NULL, '44', 3, NULL, 0),
    (2013, 3, 1, 58, NULL, NULL, NULL, '48', 1, NULL, 0),
    (2013, 3, 2, 59, NULL, NULL, NULL, '46.5', 2, NULL, 0),
    (2013, 3, 3, 60, NULL, NULL, NULL, '43.5', 3, NULL, 0),
    (2013, 4, 1, 61, NULL, NULL, NULL, '48', 1, NULL, 0),
    (2013, 4, 2, 62, NULL, NULL, NULL, '45', 2, NULL, 0),
    (2013, 4, 3, 63, NULL, NULL, NULL, '43.5', 3, NULL, 0),
    (2013, 5, 1, 64, NULL, NULL, NULL, '49', 1, NULL, 0),
    (2013, 5, 2, 65, NULL, NULL, NULL, '47.5', 2, NULL, 0),
    (2013, 5, 3, 66, NULL, NULL, NULL, '44', 3, NULL, 0),
    (2013, 6, 1, 67, NULL, NULL, NULL, '47.5', 1, NULL, 0),
    (2013, 6, 2, 68, NULL, NULL, NULL, '46.5', 2, NULL, 0),
    (2013, 6, 3, 69, NULL, NULL, NULL, '46', 3, NULL, 0),
    (2013, 7, 1, 70, NULL, NULL, NULL, '45.5', 1, NULL, 0),
    (2013, 7, 2, 71, NULL, NULL, NULL, '44', 2, NULL, 0),
    (2013, 7, 3, 72, NULL, NULL, NULL, '43.5', 3, NULL, 0),
    (2013, 8, 1, 73, NULL, NULL, NULL, '50', 1, NULL, 0),
    (2013, 8, 2, 74, NULL, NULL, NULL, '45.5', 2, NULL, 0),
    (2013, 8, 3, 75, NULL, NULL, NULL, '42.5', 3, NULL, 0),
    (2013, 9, 1, 76, NULL, NULL, NULL, '47.5', 1, NULL, 0),
    (2013, 9, 2, 77, NULL, NULL, NULL, '45.5', 2, NULL, 0),
    (2013, 9, 3, 78, NULL, NULL, NULL, '45', 3, NULL, 0),
    (2013, 10, 1, 79, NULL, NULL, NULL, '46.5', 1, NULL, 0),
    (2013, 10, 2, 80, NULL, NULL, NULL, '46', 2, NULL, 0),
    (2013, 10, 3, 81, NULL, NULL, NULL, '45.5', 3, NULL, 0),
    (2013, 11, 1, 82, NULL, NULL, NULL, '46.5', 1, NULL, 0),
    (2013, 11, 2, 83, NULL, NULL, NULL, '44', 2, NULL, 0),
    (2013, 11, 3, 84, NULL, NULL, NULL, '43', 3, NULL, 0),
    (2013, 12, 1, 85, NULL, NULL, NULL, '48', 1, NULL, 0),
    (2013, 12, 2, 86, NULL, NULL, NULL, '44.5', 2, NULL, 0),
    (2013, 12, 3, 87, NULL, NULL, NULL, '43', 3, NULL, 0),
    (2013, 13, 1, 88, NULL, NULL, NULL, '49', 1, NULL, 0),
    (2013, 13, 2, 89, NULL, NULL, NULL, '47', 2, NULL, 0),
    (2013, 13, 3, 90, NULL, NULL, NULL, '46', 3, NULL, 0),
    (2013, 14, 1, 91, NULL, NULL, NULL, '49', 1, NULL, 0),
    (2013, 14, 2, 92, NULL, NULL, NULL, '48.5', 2, NULL, 0),
    (2013, 14, 3, 93, NULL, NULL, NULL, '44', 3, NULL, 0),
    (2013, 15, 1, 94, NULL, NULL, NULL, '45.5', 1, NULL, 0),
    (2013, 15, 2, 95, NULL, NULL, NULL, '44', 2, NULL, 0),
    (2013, 15, 3, 96, NULL, NULL, NULL, '43', 3, NULL, 0),
    (2013, 16, 1, 97, NULL, NULL, NULL, '47', 1, NULL, 0),
    (2013, 16, 2, 98, NULL, NULL, NULL, '44', 2, NULL, 0),
    (2013, 16, 3, 99, NULL, NULL, NULL, '43', 3, NULL, 0),
    (2013, 17, 1, 100, NULL, NULL, NULL, '50', 1, NULL, 0),
    (2013, 17, 2, 101, NULL, NULL, NULL, '45.5', 2, NULL, 0),
    (2013, 17, 3, 102, NULL, NULL, NULL, '44', 3, NULL, 0),
    (2013, 18, 1, 103, NULL, NULL, NULL, '48.5', 1, NULL, 0),
    (2013, 18, 2, 104, NULL, NULL, NULL, '47.5', 2, NULL, 0),
    (2013, 18, 3, 105, NULL, NULL, NULL, '43.5', 3, NULL, 0),
    (2015, 1, 1, 106, NULL, NULL, NULL, '46', 1, NULL, 0),
    (2015, 1, 2, 107, NULL, NULL, NULL, '43', 2, NULL, 0),
    (2015, 1, 3, 108, NULL, NULL, NULL, '43', 3, NULL, 0),
    (2015, 2, 1, 109, NULL, NULL, NULL, '50', 1, NULL, 0),
    (2015, 2, 2, 110, NULL, NULL, NULL, '43', 2, NULL, 0),
    (2015, 2, 3, 111, NULL, NULL, NULL, '43', 3, NULL, 0),
    (2015, 3, 1, 112, NULL, NULL, NULL, '50', 1, NULL, 0),
    (2015, 3, 2, 113, NULL, NULL, NULL, '47', 2, NULL, 0),
    (2015, 3, 3, 114, NULL, NULL, NULL, '44.5', 3, NULL, 0),
    (2015, 4, 1, 115, NULL, NULL, NULL, '48.5', 1, NULL, 0),
    (2015, 4, 2, 116, NULL, NULL, NULL, '47', 2, NULL, 0),
    (2015, 4, 3, 117, NULL, NULL, NULL, '44', 3, NULL, 0),
    (2015, 5, 1, 118, NULL, NULL, NULL, '48', 1, NULL, 0),
    (2015, 5, 2, 119, NULL, NULL, NULL, '47.5', 2, NULL, 0),
    (2015, 5, 3, 120, NULL, NULL, NULL, '46.5', 3, NULL, 0),
    (2015, 6, 1, 121, NULL, NULL, NULL, '46.5', 1, NULL, 0),
    (2015, 6, 2, 122, NULL, NULL, NULL, '45', 2, NULL, 0),
    (2015, 6, 3, 123, NULL, NULL, NULL, '44.5', 3, NULL, 0),
    (2015, 7, 1, 124, NULL, NULL, NULL, '46', 1, NULL, 0),
    (2015, 7, 2, 125, NULL, NULL, NULL, '43', 2, NULL, 0),
    (2015, 7, 3, 126, NULL, NULL, NULL, '43', 3, NULL, 0),
    (2015, 8, 1, 127, NULL, NULL, NULL, '49', 1, NULL, 0),
    (2015, 8, 2, 128, NULL, NULL, NULL, '45.5', 2, NULL, 0),
    (2015, 8, 3, 129, NULL, NULL, NULL, '43.5', 3, NULL, 0),
    (2015, 9, 1, 130, NULL, NULL, NULL, '49', 1, NULL, 0),
    (2015, 9, 2, 131, NULL, NULL, NULL, '48', 2, NULL, 0),
    (2015, 9, 3, 132, NULL, NULL, NULL, '45', 3, NULL, 0),
    (2015, 10, 1, 133, NULL, NULL, NULL, '49', 1, NULL, 0),
    (2015, 10, 2, 134, NULL, NULL, NULL, '46.5', 2, NULL, 0),
    (2015, 10, 3, 135, NULL, NULL, NULL, '43', 3, NULL, 0),
    (2015, 11, 1, 136, NULL, NULL, NULL, '49', 1, NULL, 0),
    (2015, 11, 2, 137, NULL, NULL, NULL, '46.5', 2, NULL, 0),
    (2015, 11, 3, 138, NULL, NULL, NULL, '46', 3, NULL, 0),
    (2015, 12, 1, 139, NULL, NULL, NULL, '48', 1, NULL, 0),
    (2015, 12, 2, 140, NULL, NULL, NULL, '44.5', 2, NULL, 0),
    (2015, 12, 3, 141, NULL, NULL, NULL, '41.5', 3, NULL, 0),
    (2015, 13, 1, 142, NULL, NULL, NULL, '48.5', 1, NULL, 0),
    (2015, 13, 2, 143, NULL, NULL, NULL, '48', 2, NULL, 0),
    (2015, 13, 3, 144, NULL, NULL, NULL, '46', 3, NULL, 0),
    (2015, 14, 1, 145, NULL, NULL, NULL, '48.5', 1, NULL, 0),
    (2015, 14, 2, 146, NULL, NULL, NULL, '46.5', 2, NULL, 0),
    (2015, 14, 3, 147, NULL, NULL, NULL, '43', 3, NULL, 0),
    (2015, 15, 1, 148, NULL, NULL, NULL, '46', 1, NULL, 0),
    (2015, 15, 2, 149, NULL, NULL, NULL, '44', 2, NULL, 0),
    (2015, 15, 3, 150, NULL, NULL, NULL, '43.5', 3, NULL, 0),
    (2015, 16, 1, 151, NULL, NULL, NULL, '46', 1, NULL, 0),
    (2015, 16, 2, 152, NULL, NULL, NULL, '45.5', 2, NULL, 0),
    (2015, 16, 3, 153, NULL, NULL, NULL, '43.5', 3, NULL, 0),
    (2015, 17, 1, 154, NULL, NULL, NULL, '50', 1, NULL, 0),
    (2015, 17, 2, 155, NULL, NULL, NULL, '44.5', 2, NULL, 0),
    (2015, 17, 3, 156, NULL, NULL, NULL, '44', 3, NULL, 0),
    (2015, 18, 1, 157, NULL, NULL, NULL, '48.5', 1, NULL, 0),
    (2015, 18, 2, 158, NULL, NULL, NULL, '47', 2, NULL, 0),
    (2015, 18, 3, 159, NULL, NULL, NULL, '43', 3, NULL, 0),
    (2017, 1, 1, 160, NULL, NULL, NULL, '48.8', 1, NULL, 0),
    (2017, 1, 2, 161, NULL, NULL, NULL, '48.5', 2, NULL, 0),
    (2017, 1, 3, 162, NULL, NULL, NULL, '48.2', 3, NULL, 0),
    (2017, 2, 1, 163, NULL, NULL, NULL, '49.7', 1, NULL, 0),
    (2017, 2, 2, 164, NULL, NULL, NULL, '48.5', 2, NULL, 0),
    (2017, 2, 3, 165, NULL, NULL, NULL, '48.4', 3, NULL, 0),
    (2017, 3, 1, 166, NULL, NULL, NULL, '49.5', 1, NULL, 0),
    (2017, 3, 2, 167, NULL, NULL, NULL, '48.9', 2, NULL, 0),
    (2017, 3, 3, 168, NULL, NULL, NULL, '46.8', 3, NULL, 0),
    (2017, 4, 1, 169, NULL, NULL, NULL, '49.9', 1, NULL, 0),
    (2017, 4, 2, 170, NULL, NULL, NULL, '48.1', 2, NULL, 0),
    (2017, 4, 3, 171, NULL, NULL, NULL, '46.5', 3, NULL, 0),
    (2017, 5, 1, 172, NULL, NULL, NULL, '48.4', 1, NULL, 0),
    (2017, 5, 2, 173, NULL, NULL, NULL, '48.1', 2, NULL, 0),
    (2017, 5, 3, 174, NULL, NULL, NULL, '47.5', 3, NULL, 0),
    (2017, 6, 1, 175, NULL, NULL, NULL, '49.1', 1, NULL, 0),
    (2017, 6, 2, 176, NULL, NULL, NULL, '48.9', 2, NULL, 0),
    (2017, 6, 3, 177, NULL, NULL, NULL, '48.7', 3, NULL, 0),
    (2017, 7, 1, 178, NULL, NULL, NULL, '49.2', 1, NULL, 0),
    (2017, 7, 2, 179, NULL, NULL, NULL, '48.9', 2, NULL, 0),
    (2017, 7, 3, 180, NULL, NULL, NULL, '48.5', 3, NULL, 0),
    (2017, 8, 1, 181, NULL, NULL, NULL, '49.5', 1, NULL, 0),
    (2017, 8, 2, 182, NULL, NULL, NULL, '49.1', 2, NULL, 0),
    (2017, 8, 3, 183, NULL, NULL, NULL, '48.6', 3, NULL, 0),
    (2017, 9, 1, 184, NULL, NULL, NULL, '49.4', 1, NULL, 0),
    (2017, 9, 2, 185, NULL, NULL, NULL, '49.3', 2, NULL, 0),
    (2017, 9, 3, 186, NULL, NULL, NULL, '49', 3, NULL, 0),
    (2017, 10, 1, 187, NULL, NULL, NULL, '50', 1, NULL, 0),
    (2017, 10, 2, 188, NULL, NULL, NULL, '48.7', 2, NULL, 0),
    (2017, 10, 3, 189, NULL, NULL, NULL, '48.3', 3, NULL, 0),
    (2017, 11, 1, 190, NULL, NULL, NULL, '49.3', 1, NULL, 0),
    (2017, 11, 2, 191, NULL, NULL, NULL, '49', 2, NULL, 0),
    (2017, 11, 3, 192, NULL, NULL, NULL, '48.8', 3, NULL, 0),
    (2017, 12, 1, 193, NULL, NULL, NULL, '49.4', 1, NULL, 0),
    (2017, 12, 2, 194, NULL, NULL, NULL, '49.3', 2, NULL, 0),
    (2017, 12, 3, 195, NULL, NULL, NULL, '48.1', 3, NULL, 0),
    (2017, 13, 1, 196, NULL, NULL, NULL, '45', 1, NULL, 0),
    (2017, 13, 2, 197, NULL, NULL, NULL, '48.3', 1, NULL, 0),
    (2017, 13, 3, 198, NULL, NULL, NULL, '47.5', 2, NULL, 0),
    (2017, 13, 4, 199, NULL, NULL, NULL, '47.4', 3, NULL, 0),
    (2017, 14, 1, 200, NULL, NULL, NULL, '49.4', 1, NULL, 0),
    (2017, 14, 2, 201, NULL, NULL, NULL, '49.3', 2, NULL, 0),
    (2017, 14, 3, 202, NULL, NULL, NULL, '47.5', 3, NULL, 0),
    (2017, 15, 1, 203, NULL, NULL, NULL, '49.2', 1, NULL, 0),
    (2017, 15, 2, 204, NULL, NULL, NULL, '49.1', 2, NULL, 0),
    (2017, 16, 1, 205, NULL, NULL, NULL, '48.9', 1, NULL, 0),
    (2017, 16, 2, 206, NULL, NULL, NULL, '48.6', 2, NULL, 0),
    (2017, 16, 3, 207, NULL, NULL, NULL, '48.4', 3, NULL, 0),
    (2017, 17, 1, 208, NULL, NULL, NULL, '50', 1, NULL, 0),
    (2017, 17, 2, 209, NULL, NULL, NULL, '49.1', 2, NULL, 0),
    (2017, 17, 3, 210, NULL, NULL, NULL, '47.7', 3, NULL, 0),
    (2017, 18, 1, 211, NULL, NULL, NULL, '49.8', 1, NULL, 0),
    (2017, 18, 2, 212, NULL, NULL, NULL, '48.2', 2, NULL, 0),
    (2017, 18, 3, 213, NULL, NULL, NULL, '48.1', 3, NULL, 0),
    (2017, 19, 1, 214, NULL, NULL, NULL, '49.5', 1, NULL, 0),
    (2017, 19, 2, 215, NULL, NULL, NULL, '48.8', 2, NULL, 0),
    (2017, 19, 3, 216, NULL, NULL, NULL, '48.6', 3, NULL, 0),
    (2017, 20, 1, 217, NULL, NULL, NULL, '49.8', 1, NULL, 0),
    (2017, 20, 2, 218, NULL, NULL, NULL, '49.6', 2, NULL, 0),
    (2017, 20, 3, 219, NULL, NULL, NULL, '48.7', 3, NULL, 0),
    (2017, 21, 1, 220, NULL, NULL, NULL, '49.9', 1, NULL, 0),
    (2017, 21, 2, 221, NULL, NULL, NULL, '46.8', 1, NULL, 0),
    (2017, 21, 3, 222, NULL, NULL, NULL, '48.5', 2, NULL, 0),
    (2017, 22, 1, 223, NULL, NULL, NULL, '49.9', 1, NULL, 0),
    (2017, 22, 2, 224, NULL, NULL, NULL, '49.5', 2, NULL, 0),
    (2017, 22, 3, 225, NULL, NULL, NULL, '49', 3, NULL, 0),
    (2017, 23, 1, 226, NULL, NULL, NULL, '50', 1, NULL, 0),
    (2017, 23, 2, 227, NULL, NULL, NULL, '49.3', 2, NULL, 0),
    (2017, 23, 3, 228, NULL, NULL, NULL, '48.9', 3, NULL, 0),
    (2017, 24, 1, 229, NULL, NULL, NULL, '49.6', 1, NULL, 0),
    (2017, 24, 2, 230, NULL, NULL, NULL, '48.6', 2, NULL, 0),
    (2017, 24, 3, 231, NULL, NULL, NULL, '47.9', 3, NULL, 0),
    (2017, 25, 1, 232, NULL, NULL, NULL, '49.8', 1, NULL, 0),
    (2017, 25, 2, 233, NULL, NULL, NULL, '49.7', 2, NULL, 0),
    (2017, 26, 1, 234, NULL, NULL, NULL, '50', 1, NULL, 0),
    (2017, 26, 2, 235, NULL, NULL, NULL, '49.3', 2, NULL, 0),
    (2017, 26, 3, 236, NULL, NULL, NULL, '49.2', 3, NULL, 0),
    (2017, 27, 1, 237, NULL, NULL, NULL, '49.3', 1, NULL, 0),
    (2017, 27, 2, 238, NULL, NULL, NULL, '49.2', 2, NULL, 0),
    (2017, 27, 3, 239, NULL, NULL, NULL, '48.9', 3, NULL, 0),
    (2025, 26, 1, 240, NULL, NULL, NULL, '46.5', 1, NULL, 0),
    (2025, 26, 2, 241, NULL, NULL, NULL, '45', 2, NULL, 0),
    (2025, 26, 3, 242, NULL, NULL, NULL, '42.5', 3, NULL, 0),
    (2025, 21, 1, 243, NULL, NULL, NULL, '49', 1, NULL, 0),
    (2025, 21, 2, 244, NULL, NULL, NULL, '45', 2, NULL, 0),
    (2025, 21, 3, 245, NULL, NULL, NULL, '42.5', 3, NULL, 0),
    (2025, 22, 1, 246, NULL, NULL, NULL, '49.5', 1, NULL, 0),
    (2025, 22, 2, 247, NULL, NULL, NULL, '46', 2, NULL, 0),
    (2025, 22, 3, 248, NULL, NULL, NULL, '45', 3, NULL, 0),
    (2025, 25, 1, 249, NULL, NULL, NULL, '49', 1, NULL, 0),
    (2025, 25, 2, 250, NULL, NULL, NULL, '44', 2, NULL, 0),
    (2025, 25, 3, 251, NULL, NULL, NULL, '43.5', 3, NULL, 0),
    (2025, 24, 1, 252, NULL, NULL, NULL, '49', 1, NULL, 0),
    (2025, 24, 2, 253, NULL, NULL, NULL, '47', 2, NULL, 0),
    (2025, 24, 3, 254, NULL, NULL, NULL, '42.5', 3, NULL, 0),
    (2025, 23, 1, 255, NULL, NULL, NULL, '49', 1, NULL, 0),
    (2025, 23, 2, 256, NULL, NULL, NULL, '48.5', 2, NULL, 0),
    (2025, 23, 3, 257, NULL, NULL, NULL, '44.5', 3, NULL, 0),
    (2025, 29, 1, 258, NULL, NULL, NULL, '50', 1, NULL, 0),
    (2025, 29, 2, 259, NULL, NULL, NULL, '47.5', 2, NULL, 0),
    (2025, 32, 1, 260, NULL, NULL, NULL, '49', 1, NULL, 0),
    (2025, 32, 2, 261, NULL, NULL, NULL, '47', 2, NULL, 0),
    (2025, 32, 3, 262, NULL, NULL, NULL, '45', 3, NULL, 0),
    (2025, 37, 1, 263, NULL, NULL, NULL, '49.5', 1, NULL, 0),
    (2025, 37, 2, 264, NULL, NULL, NULL, '47', 2, NULL, 0),
    (2025, 37, 3, 265, NULL, NULL, NULL, '44.5', 3, NULL, 0),
    (2025, 27, 1, 266, NULL, NULL, NULL, '49', 1, NULL, 0),
    (2025, 27, 2, 267, NULL, NULL, NULL, '47', 2, NULL, 0),
    (2025, 27, 3, 268, NULL, NULL, NULL, '42', 3, NULL, 0),
    (2025, 31, 1, 269, NULL, NULL, NULL, '50', 1, NULL, 0),
    (2025, 31, 2, 270, NULL, NULL, NULL, '47.5', 2, NULL, 0),
    (2025, 31, 3, 271, NULL, NULL, NULL, '45', 3, NULL, 0),
    (2025, 30, 1, 272, NULL, NULL, NULL, '47.5', 1, NULL, 0),
    (2025, 30, 2, 273, NULL, NULL, NULL, '46.5', 2, NULL, 0),
    (2025, 30, 3, 274, NULL, NULL, NULL, '46', 3, NULL, 0),
    (2025, 28, 1, 275, NULL, NULL, NULL, '50', 1, NULL, 0),
    (2025, 28, 2, 276, NULL, NULL, NULL, '46.5', 2, NULL, 0),
    (2025, 28, 3, 277, NULL, NULL, NULL, '46', 3, NULL, 0),
    (2025, 36, 1, 278, NULL, NULL, NULL, '50', 1, NULL, 0),
    (2025, 36, 2, 279, NULL, NULL, NULL, '47.5', 2, NULL, 0),
    (2025, 35, 1, 280, NULL, NULL, NULL, '50', 1, NULL, 0),
    (2025, 35, 2, 281, NULL, NULL, NULL, '46.5', 2, NULL, 0),
    (2025, 35, 3, 282, NULL, NULL, NULL, '44.5', 3, NULL, 0),
    (2025, 20, 1, 283, NULL, NULL, NULL, '47', 1, NULL, 0),
    (2025, 20, 2, 284, NULL, NULL, NULL, '44', 2, NULL, 0),
    (2025, 20, 3, 285, NULL, NULL, NULL, '43.5', 3, NULL, 0),
    (2025, 19, 1, 286, NULL, NULL, NULL, '46', 2, NULL, 0),
    (2025, 19, 2, 287, NULL, NULL, NULL, '42.5', 3, NULL, 0),
    (2025, 7, 1, 288, NULL, NULL, NULL, '49.5', 1, NULL, 0),
    (2025, 7, 2, 289, NULL, NULL, NULL, '47.5', 2, NULL, 0),
    (2025, 7, 3, 290, NULL, NULL, NULL, '45', 3, NULL, 0),
    (2025, 8, 1, 291, NULL, NULL, NULL, '45', 1, NULL, 0),
    (2025, 8, 2, 292, NULL, NULL, NULL, '44.5', 2, NULL, 0),
    (2025, 8, 3, 293, NULL, NULL, NULL, '43', 3, NULL, 0),
    (2025, 16, 1, 294, NULL, NULL, NULL, '46', 1, NULL, 0),
    (2025, 16, 2, 295, NULL, NULL, NULL, '44', 2, NULL, 0),
    (2025, 10, 1, 296, NULL, NULL, NULL, '50', 1, NULL, 0),
    (2025, 10, 2, 297, NULL, NULL, NULL, '46.5', 2, NULL, 0),
    (2025, 10, 3, 298, NULL, NULL, NULL, '44.5', 3, NULL, 0),
    (2025, 11, 1, 299, NULL, NULL, NULL, '49', 1, NULL, 0),
    (2025, 11, 2, 300, NULL, NULL, NULL, '47', 2, NULL, 0),
    (2025, 11, 3, 301, NULL, NULL, NULL, '43', 3, NULL, 0),
    (2025, 12, 1, 302, NULL, NULL, NULL, '49.5', 1, NULL, 0),
    (2025, 12, 2, 303, NULL, NULL, NULL, '46.5', 2, NULL, 0),
    (2025, 12, 3, 304, NULL, NULL, NULL, '42', 3, NULL, 0),
    (2025, 18, 1, 305, NULL, NULL, NULL, '48', 1, NULL, 0),
    (2025, 18, 2, 306, NULL, NULL, NULL, '47.5', 2, NULL, 0),
    (2025, 18, 3, 307, NULL, NULL, NULL, '43.5', 3, NULL, 0),
    (2025, 17, 1, 308, NULL, NULL, NULL, '49', 1, NULL, 0),
    (2025, 17, 2, 309, NULL, NULL, NULL, '48.5', 2, NULL, 0),
    (2025, 17, 3, 310, NULL, NULL, NULL, '44', 3, NULL, 0),
    (2025, 13, 1, 311, NULL, NULL, NULL, '46', 1, NULL, 0),
    (2025, 13, 2, 312, NULL, NULL, NULL, '45.5', 2, NULL, 0),
    (2025, 13, 3, 313, NULL, NULL, NULL, '44', 3, NULL, 0),
    (2025, 15, 1, 314, NULL, NULL, NULL, '46.5', 1, NULL, 0),
    (2025, 15, 2, 315, NULL, NULL, NULL, '46', 2, NULL, 0),
    (2025, 15, 3, 316, NULL, NULL, NULL, '45.5', 3, NULL, 0),
    (2025, 14, 1, 317, NULL, NULL, NULL, '50', 1, NULL, 0),
    (2025, 14, 2, 318, NULL, NULL, NULL, '45', 2, NULL, 0),
    (2025, 14, 3, 319, NULL, NULL, NULL, '42.5', 3, NULL, 0),
    (2025, 9, 1, 320, NULL, NULL, NULL, '49', 1, NULL, 0),
    (2025, 9, 2, 321, NULL, NULL, NULL, '45', 2, NULL, 0),
    (2025, 9, 3, 322, NULL, NULL, NULL, '43', 3, NULL, 0),
    (2025, 5, 1, 323, NULL, NULL, NULL, '49.5', 1, NULL, 0),
    (2025, 5, 2, 324, NULL, NULL, NULL, '46.5', 2, NULL, 0),
    (2025, 5, 3, 325, NULL, NULL, NULL, '43.5', 3, NULL, 0),
    (2025, 6, 1, 326, NULL, NULL, NULL, '49.5', 1, NULL, 0),
    (2025, 6, 2, 327, NULL, NULL, NULL, '46.5', 2, NULL, 0),
    (2025, 6, 3, 328, NULL, NULL, NULL, '43.5', 3, NULL, 0),
    (2025, 4, 1, 329, NULL, NULL, NULL, '49', 1, NULL, 0),
    (2025, 4, 2, 330, NULL, NULL, NULL, '48.5', 2, NULL, 0),
    (2025, 4, 3, 331, NULL, NULL, NULL, '45', 3, NULL, 0),
    (2025, 3, 1, 332, NULL, NULL, NULL, '50', 1, NULL, 0),
    (2025, 3, 2, 333, NULL, NULL, NULL, '47.5', 2, NULL, 0),
    (2025, 2, 1, 334, NULL, NULL, NULL, '49.5', 1, NULL, 0),
    (2025, 2, 2, 335, NULL, NULL, NULL, '47.5', 2, NULL, 0),
    (2025, 2, 3, 336, NULL, NULL, NULL, '45.5', 3, NULL, 0),
    (2025, 1, 1, 337, NULL, NULL, NULL, '49', 1, NULL, 0),
    (2025, 1, 2, 338, NULL, NULL, NULL, '48.5', 2, NULL, 0),
    (2025, 1, 3, 339, NULL, NULL, NULL, '43.5', 3, NULL, 0),
    (1999, 4, 1, 340, NULL, NULL, NULL, NULL, 1, NULL, 0),
    (1999, 4, 2, 341, NULL, NULL, NULL, NULL, 2, NULL, 0),
    (1999, 4, 3, 342, NULL, NULL, NULL, NULL, 3, NULL, 0),
    (1999, 6, 1, 343, NULL, NULL, NULL, NULL, 1, NULL, 0),
    (1999, 6, 2, 344, NULL, NULL, NULL, NULL, 2, NULL, 0),
    (1999, 6, 3, 345, NULL, NULL, NULL, NULL, 3, NULL, 0),
    (1999, 5, 1, 346, NULL, NULL, NULL, NULL, 1, NULL, 0),
    (1999, 5, 2, 347, NULL, NULL, NULL, NULL, 2, NULL, 0),
    (1999, 5, 3, 348, NULL, NULL, NULL, NULL, 3, NULL, 0),
    (1999, 8, 1, 349, NULL, NULL, NULL, NULL, 1, NULL, 0),
    (1999, 8, 2, 350, NULL, NULL, NULL, NULL, 2, NULL, 0),
    (1999, 8, 3, 351, NULL, NULL, NULL, NULL, 3, NULL, 0),
    (1999, 7, 1, 352, NULL, NULL, NULL, NULL, 1, NULL, 0),
    (1999, 7, 2, 353, NULL, NULL, NULL, NULL, 2, NULL, 0),
    (1999, 7, 3, 354, NULL, NULL, NULL, NULL, 3, NULL, 0),
    (1999, 9, 1, 355, NULL, NULL, NULL, NULL, 1, NULL, 0),
    (1999, 9, 2, 356, NULL, NULL, NULL, NULL, 2, NULL, 0),
    (1999, 9, 3, 357, NULL, NULL, NULL, NULL, 3, NULL, 0),
    (1999, 2, 1, 358, NULL, NULL, NULL, NULL, 1, NULL, 0),
    (1999, 2, 2, 359, NULL, NULL, NULL, NULL, 2, NULL, 0),
    (1999, 2, 3, 360, NULL, NULL, NULL, NULL, 3, NULL, 0),
    (1999, 3, 1, 361, NULL, NULL, NULL, NULL, 1, NULL, 0),
    (1999, 3, 2, 362, NULL, NULL, NULL, NULL, 2, NULL, 0),
    (1999, 3, 3, 363, NULL, NULL, NULL, NULL, 3, NULL, 0),
    (1999, 1, 1, 364, NULL, NULL, NULL, NULL, 1, NULL, 0),
    (1999, 1, 2, 365, NULL, NULL, NULL, NULL, 2, NULL, 0),
    (1999, 1, 3, 366, NULL, NULL, NULL, NULL, 3, NULL, 0),
    (2001, 11, 1, 367, NULL, NULL, NULL, '48.5', 1, NULL, 0),
    (2001, 11, 2, 368, NULL, NULL, NULL, '45.5', 2, NULL, 0),
    (2001, 11, 3, 369, NULL, NULL, NULL, '45', 3, NULL, 0),
    (2001, 6, 1, 370, NULL, NULL, NULL, '46.5', 1, NULL, 0),
    (2001, 6, 2, 371, NULL, NULL, NULL, '46', 2, NULL, 0),
    (2001, 6, 3, 372, NULL, NULL, NULL, '46', 3, NULL, 0),
    (2001, 7, 1, 373, NULL, NULL, NULL, '48', 1, NULL, 0),
    (2001, 7, 2, 374, NULL, NULL, NULL, '46', 2, NULL, 0),
    (2001, 7, 3, 375, NULL, NULL, NULL, '45', 3, NULL, 0),
    (2001, 9, 1, 376, NULL, NULL, NULL, '50', 1, NULL, 0),
    (2001, 9, 2, 377, NULL, NULL, NULL, '45', 2, NULL, 0),
    (2001, 9, 3, 378, NULL, NULL, NULL, '44.8', 3, NULL, 0),
    (2001, 10, 1, 379, NULL, NULL, NULL, '47.5', 1, NULL, 0),
    (2001, 10, 2, 380, NULL, NULL, NULL, '46.5', 2, NULL, 0),
    (2001, 10, 3, 381, NULL, NULL, NULL, '44.5', 3, NULL, 0),
    (2001, 8, 1, 382, NULL, NULL, NULL, '50', 1, NULL, 0),
    (2001, 8, 2, 383, NULL, NULL, NULL, '47.5', 2, NULL, 0),
    (2001, 8, 3, 384, NULL, NULL, NULL, '44', 3, NULL, 0),
    (2001, 16, 1, 385, NULL, NULL, NULL, '48.5', 1, NULL, 0),
    (2001, 16, 2, 386, NULL, NULL, NULL, '45', 2, NULL, 0),
    (2001, 16, 3, 387, NULL, NULL, NULL, '45', 3, NULL, 0),
    (2001, 12, 1, 388, NULL, NULL, NULL, '49', 1, NULL, 0),
    (2001, 12, 2, 389, NULL, NULL, NULL, '48.5', 2, NULL, 0),
    (2001, 12, 3, 390, NULL, NULL, NULL, '45', 3, NULL, 0),
    (2001, 13, 1, 391, NULL, NULL, NULL, '45.5', 1, NULL, 0),
    (2001, 13, 2, 392, NULL, NULL, NULL, '45.5', 2, NULL, 0),
    (2001, 13, 3, 393, NULL, NULL, NULL, '44', 3, NULL, 0),
    (2001, 14, 1, 394, NULL, NULL, NULL, '48', 1, NULL, 0),
    (2001, 14, 2, 395, NULL, NULL, NULL, '45.5', 2, NULL, 0),
    (2001, 14, 3, 396, NULL, NULL, NULL, '44.5', 3, NULL, 0),
    (2001, 15, 1, 397, NULL, NULL, NULL, '48.5', 1, NULL, 0),
    (2001, 15, 2, 398, NULL, NULL, NULL, '47.5', 2, NULL, 0),
    (2001, 15, 3, 399, NULL, NULL, NULL, '46', 3, NULL, 0),
    (2001, 17, 1, 400, NULL, NULL, NULL, '48.5', 1, NULL, 0),
    (2001, 17, 2, 401, NULL, NULL, NULL, NULL, 2, NULL, 0),
    (2001, 17, 3, 402, NULL, NULL, NULL, NULL, 3, NULL, 0),
    (2001, 5, 1, 403, NULL, NULL, NULL, '48', 1, NULL, 0),
    (2001, 5, 2, 404, NULL, NULL, NULL, '46.5', 2, NULL, 0),
    (2001, 5, 3, 405, NULL, NULL, NULL, '46', 3, NULL, 0),
    (2001, 3, 1, 406, NULL, NULL, NULL, '46', 1, NULL, 0),
    (2001, 3, 2, 407, NULL, NULL, NULL, '44.5', 2, NULL, 0),
    (2001, 3, 3, 408, NULL, NULL, NULL, '44', 3, NULL, 0),
    (2001, 4, 1, 409, NULL, NULL, NULL, '47', 1, NULL, 0),
    (2001, 4, 2, 410, NULL, NULL, NULL, '46.5', 2, NULL, 0),
    (2001, 4, 3, 411, NULL, NULL, NULL, '44', 3, NULL, 0),
    (2001, 1, 1, 412, NULL, NULL, NULL, '49', 1, NULL, 0),
    (2001, 1, 2, 413, NULL, NULL, NULL, NULL, 2, NULL, 0),
    (2001, 1, 3, 414, NULL, NULL, NULL, '43.5', 3, NULL, 0),
    (2003, 12, 1, 415, NULL, NULL, NULL, NULL, 1, NULL, 0),
    (2003, 12, 2, 416, NULL, NULL, NULL, NULL, 2, NULL, 0),
    (2003, 12, 3, 417, NULL, NULL, NULL, NULL, 3, NULL, 0),
    (2003, 6, 1, 418, NULL, NULL, NULL, NULL, 1, NULL, 0),
    (2003, 6, 2, 419, NULL, NULL, NULL, NULL, 2, NULL, 0),
    (2003, 6, 3, 420, NULL, NULL, NULL, NULL, 3, NULL, 0),
    (2003, 7, 1, 421, NULL, NULL, NULL, NULL, 1, NULL, 0),
    (2003, 7, 2, 422, NULL, NULL, NULL, NULL, 2, NULL, 0),
    (2003, 7, 3, 423, NULL, NULL, NULL, NULL, 3, NULL, 0),
    (2003, 9, 1, 424, NULL, NULL, NULL, NULL, 1, NULL, 0),
    (2003, 9, 2, 425, NULL, NULL, NULL, NULL, 2, NULL, 0),
    (2003, 9, 3, 426, NULL, NULL, NULL, NULL, 3, NULL, 0),
    (2003, 10, 1, 427, NULL, NULL, NULL, NULL, 1, NULL, 0),
    (2003, 10, 2, 428, NULL, NULL, NULL, NULL, 2, NULL, 0),
    (2003, 10, 3, 429, NULL, NULL, NULL, NULL, 3, NULL, 0),
    (2003, 11, 1, 430, NULL, NULL, NULL, NULL, 1, NULL, 0),
    (2003, 11, 2, 431, NULL, NULL, NULL, NULL, 2, NULL, 0),
    (2003, 11, 3, 432, NULL, NULL, NULL, NULL, 3, NULL, 0),
    (2003, 8, 1, 433, NULL, NULL, NULL, NULL, 1, NULL, 0),
    (2003, 8, 2, 434, NULL, NULL, NULL, NULL, 2, NULL, 0),
    (2003, 8, 3, 435, NULL, NULL, NULL, NULL, 3, NULL, 0),
    (2003, 14, 1, 436, NULL, NULL, NULL, NULL, 1, NULL, 0),
    (2003, 14, 2, 437, NULL, NULL, NULL, NULL, 2, NULL, 0),
    (2003, 14, 3, 438, NULL, NULL, NULL, NULL, 3, NULL, 0),
    (2003, 15, 1, 439, NULL, NULL, NULL, NULL, 1, NULL, 0),
    (2003, 15, 2, 440, NULL, NULL, NULL, NULL, 2, NULL, 0),
    (2003, 15, 3, 441, NULL, NULL, NULL, NULL, 3, NULL, 0),
    (2003, 17, 1, 442, NULL, NULL, NULL, NULL, 1, NULL, 0),
    (2003, 17, 2, 443, NULL, NULL, NULL, NULL, 2, NULL, 0),
    (2003, 17, 3, 444, NULL, NULL, NULL, NULL, 3, NULL, 0),
    (2003, 13, 1, 445, NULL, NULL, NULL, NULL, 1, NULL, 0),
    (2003, 5, 1, 446, NULL, NULL, NULL, NULL, 1, NULL, 0),
    (2003, 5, 2, 447, NULL, NULL, NULL, NULL, 2, NULL, 0),
    (2003, 5, 3, 448, NULL, NULL, NULL, NULL, 3, NULL, 0),
    (2003, 2, 1, 449, NULL, NULL, NULL, NULL, 1, NULL, 0),
    (2003, 2, 2, 450, NULL, NULL, NULL, NULL, 2, NULL, 0),
    (2003, 2, 3, 451, NULL, NULL, NULL, NULL, 3, NULL, 0),
    (2003, 3, 1, 452, NULL, NULL, NULL, NULL, 1, NULL, 0),
    (2003, 3, 2, 453, NULL, NULL, NULL, NULL, 2, NULL, 0),
    (2003, 4, 1, 454, NULL, NULL, NULL, NULL, 1, NULL, 0),
    (2003, 4, 2, 455, NULL, NULL, NULL, NULL, 2, NULL, 0),
    (2003, 4, 3, 456, NULL, NULL, NULL, NULL, 3, NULL, 0),
    (2003, 1, 1, 457, NULL, NULL, NULL, NULL, 1, NULL, 0),
    (2003, 1, 2, 458, NULL, NULL, NULL, NULL, 2, NULL, 0),
    (2003, 1, 3, 459, NULL, NULL, NULL, NULL, 3, NULL, 0),
    (2005, 11, 1, 460, NULL, NULL, NULL, '48.5', 1, NULL, 0),
    (2005, 11, 2, 461, NULL, NULL, NULL, '46', 2, NULL, 0),
    (2005, 11, 3, 462, NULL, NULL, NULL, '43', 3, NULL, 0),
    (2005, 6, 1, 463, NULL, NULL, NULL, '47.5', 1, NULL, 0),
    (2005, 6, 2, 464, NULL, NULL, NULL, '47', 2, NULL, 0),
    (2005, 6, 3, 465, NULL, NULL, NULL, '46', 3, NULL, 0),
    (2005, 7, 1, 466, NULL, NULL, NULL, '47.5', 1, NULL, 0),
    (2005, 7, 2, 467, NULL, NULL, NULL, '46.5', 2, NULL, 0),
    (2005, 7, 3, 468, NULL, NULL, NULL, '46', 3, NULL, 0),
    (2005, 9, 1, 469, NULL, NULL, NULL, '47.5', 1, NULL, 0),
    (2005, 9, 2, 470, NULL, NULL, NULL, '46.5', 2, NULL, 0),
    (2005, 9, 3, 471, NULL, NULL, NULL, '44.5', 3, NULL, 0),
    (2005, 10, 1, 472, NULL, NULL, NULL, '47.5', 1, NULL, 0),
    (2005, 10, 2, 473, NULL, NULL, NULL, '47.5', 2, NULL, 0),
    (2005, 10, 3, 474, NULL, NULL, NULL, '46', 3, NULL, 0),
    (2005, 8, 1, 475, NULL, NULL, NULL, '48.5', 1, NULL, 0),
    (2005, 8, 2, 476, NULL, NULL, NULL, '47', 2, NULL, 0),
    (2005, 8, 3, 477, NULL, NULL, NULL, '43', 3, NULL, 0),
    (2005, 15, 1, 478, NULL, NULL, NULL, '48', 1, NULL, 0),
    (2005, 15, 2, 479, NULL, NULL, NULL, NULL, 2, NULL, 0),
    (2005, 15, 3, 480, NULL, NULL, NULL, '44.5', 3, NULL, 0),
    (2005, 12, 1, 481, NULL, NULL, NULL, '49', 1, NULL, 0),
    (2005, 12, 2, 482, NULL, NULL, NULL, '48', 2, NULL, 0),
    (2005, 12, 3, 483, NULL, NULL, NULL, '46', 3, NULL, 0),
    (2005, 14, 1, 484, NULL, NULL, NULL, '48', 1, NULL, 0),
    (2005, 14, 2, 485, NULL, NULL, NULL, '44.5', 2, NULL, 0),
    (2005, 14, 3, 486, NULL, NULL, NULL, '43.5', 3, NULL, 0),
    (2005, 13, 1, 487, NULL, NULL, NULL, '49', 1, NULL, 0),
    (2005, 13, 2, 488, NULL, NULL, NULL, NULL, 2, NULL, 0),
    (2005, 17, 1, 489, NULL, NULL, NULL, '49.5', 1, NULL, 0),
    (2005, 17, 2, 490, NULL, NULL, NULL, '48.5', 2, NULL, 0),
    (2005, 17, 3, 491, NULL, NULL, NULL, '45.5', 3, NULL, 0),
    (2005, 16, 1, 492, NULL, NULL, NULL, '46', 1, NULL, 0),
    (2005, 16, 2, 493, NULL, NULL, NULL, '45', 2, NULL, 0),
    (2005, 16, 3, 494, NULL, NULL, NULL, '44', 3, NULL, 0),
    (2005, 5, 1, 495, NULL, NULL, NULL, '49', 1, NULL, 0),
    (2005, 5, 2, 496, NULL, NULL, NULL, '45.5', 2, NULL, 0),
    (2005, 5, 3, 497, NULL, NULL, NULL, '44', 3, NULL, 0),
    (2005, 4, 1, 498, NULL, NULL, NULL, '46.6', 1, NULL, 0),
    (2005, 4, 2, 499, NULL, NULL, NULL, '45.5', 2, NULL, 0),
    (2005, 4, 3, 500, NULL, NULL, NULL, '44.5', 3, NULL, 0),
    (2005, 1, 1, 501, NULL, NULL, NULL, '49.5', 1, NULL, 0),
    (2005, 1, 2, 502, NULL, NULL, NULL, '45.5', 2, NULL, 0),
    (2005, 1, 3, 503, NULL, NULL, NULL, '45.5', 3, NULL, 0),
    (2007, 11, 1, 504, NULL, NULL, NULL, NULL, 1, NULL, 0),
    (2007, 11, 2, 505, NULL, NULL, NULL, NULL, 2, NULL, 0),
    (2007, 11, 3, 506, NULL, NULL, NULL, NULL, 3, NULL, 0),
    (2007, 7, 1, 507, NULL, NULL, NULL, NULL, 1, NULL, 0),
    (2007, 7, 2, 508, NULL, NULL, NULL, NULL, 2, NULL, 0),
    (2007, 7, 3, 509, NULL, NULL, NULL, NULL, 3, NULL, 0),
    (2007, 6, 1, 510, NULL, NULL, NULL, NULL, 1, NULL, 0),
    (2007, 6, 2, 511, NULL, NULL, NULL, NULL, 2, NULL, 0),
    (2007, 6, 3, 512, NULL, NULL, NULL, NULL, 3, NULL, 0),
    (2007, 9, 1, 513, NULL, NULL, NULL, NULL, 1, NULL, 0),
    (2007, 9, 2, 514, NULL, NULL, NULL, NULL, 2, NULL, 0),
    (2007, 9, 3, 515, NULL, NULL, NULL, NULL, 3, NULL, 0),
    (2007, 8, 1, 516, NULL, NULL, NULL, NULL, 1, NULL, 0),
    (2007, 8, 2, 517, NULL, NULL, NULL, NULL, 2, NULL, 0),
    (2007, 8, 3, 518, NULL, NULL, NULL, NULL, 3, NULL, 0),
    (2007, 10, 1, 519, NULL, NULL, NULL, NULL, 1, NULL, 0),
    (2007, 10, 2, 520, NULL, NULL, NULL, NULL, 2, NULL, 0),
    (2007, 10, 3, 521, NULL, NULL, NULL, NULL, 3, NULL, 0),
    (2007, 15, 1, 522, NULL, NULL, NULL, NULL, 1, NULL, 0),
    (2007, 15, 2, 523, NULL, NULL, NULL, NULL, 2, NULL, 0),
    (2007, 15, 3, 524, NULL, NULL, NULL, NULL, 3, NULL, 0),
    (2007, 12, 1, 525, NULL, NULL, NULL, NULL, 1, NULL, 0),
    (2007, 14, 1, 526, NULL, NULL, NULL, NULL, 1, NULL, 0),
    (2007, 14, 2, 527, NULL, NULL, NULL, NULL, 2, NULL, 0),
    (2007, 14, 3, 528, NULL, NULL, NULL, NULL, 3, NULL, 0),
    (2007, 13, 1, 529, NULL, NULL, NULL, NULL, 1, NULL, 0),
    (2007, 13, 2, 530, NULL, NULL, NULL, NULL, 2, NULL, 0),
    (2007, 13, 3, 531, NULL, NULL, NULL, NULL, 3, NULL, 0),
    (2007, 17, 1, 532, NULL, NULL, NULL, NULL, 1, NULL, 0),
    (2007, 17, 2, 533, NULL, NULL, NULL, NULL, 2, NULL, 0),
    (2007, 17, 3, 534, NULL, NULL, NULL, NULL, 3, NULL, 0),
    (2007, 16, 1, 535, NULL, NULL, NULL, NULL, 1, NULL, 0),
    (2007, 16, 2, 536, NULL, NULL, NULL, NULL, 2, NULL, 0),
    (2007, 16, 3, 537, NULL, NULL, NULL, NULL, 3, NULL, 0),
    (2007, 5, 1, 538, NULL, NULL, NULL, NULL, 1, NULL, 0),
    (2007, 5, 2, 539, NULL, NULL, NULL, NULL, 2, NULL, 0),
    (2007, 5, 3, 540, NULL, NULL, NULL, NULL, 3, NULL, 0),
    (2007, 2, 1, 541, NULL, NULL, NULL, NULL, 1, NULL, 0),
    (2007, 3, 1, 542, NULL, NULL, NULL, NULL, 1, NULL, 0),
    (2007, 3, 2, 543, NULL, NULL, NULL, NULL, 2, NULL, 0),
    (2007, 3, 3, 544, NULL, NULL, NULL, NULL, 3, NULL, 0),
    (2007, 4, 1, 545, NULL, NULL, NULL, NULL, 1, NULL, 0),
    (2007, 4, 2, 546, NULL, NULL, NULL, NULL, 2, NULL, 0),
    (2007, 4, 3, 547, NULL, NULL, NULL, NULL, 3, NULL, 0),
    (2007, 1, 1, 548, NULL, NULL, NULL, NULL, 1, NULL, 0),
    (2007, 1, 2, 549, NULL, NULL, NULL, NULL, 2, NULL, 0),
    (2007, 1, 3, 550, NULL, NULL, NULL, NULL, 3, NULL, 0),
    (2009, 11, 1, 551, NULL, NULL, NULL, NULL, 1, NULL, 0),
    (2009, 11, 2, 552, NULL, NULL, NULL, NULL, 2, NULL, 0),
    (2009, 11, 3, 553, NULL, NULL, NULL, NULL, 3, NULL, 0),
    (2009, 6, 1, 554, NULL, NULL, NULL, NULL, 1, NULL, 0),
    (2009, 6, 2, 555, NULL, NULL, NULL, NULL, 2, NULL, 0),
    (2009, 6, 3, 556, NULL, NULL, NULL, NULL, 3, NULL, 0),
    (2009, 7, 1, 557, NULL, NULL, NULL, NULL, 1, NULL, 0),
    (2009, 7, 2, 558, NULL, NULL, NULL, NULL, 2, NULL, 0),
    (2009, 7, 3, 559, NULL, NULL, NULL, NULL, 3, NULL, 0),
    (2009, 9, 1, 560, NULL, NULL, NULL, NULL, 1, NULL, 0),
    (2009, 9, 2, 561, NULL, NULL, NULL, NULL, 2, NULL, 0),
    (2009, 9, 3, 562, NULL, NULL, NULL, NULL, 3, NULL, 0),
    (2009, 10, 1, 563, NULL, NULL, NULL, NULL, 1, NULL, 0),
    (2009, 10, 2, 564, NULL, NULL, NULL, NULL, 2, NULL, 0),
    (2009, 10, 3, 565, NULL, NULL, NULL, NULL, 3, NULL, 0),
    (2009, 8, 1, 566, NULL, NULL, NULL, NULL, 1, NULL, 0),
    (2009, 8, 2, 567, NULL, NULL, NULL, NULL, 2, NULL, 0),
    (2009, 8, 3, 568, NULL, NULL, NULL, NULL, 3, NULL, 0),
    (2009, 12, 1, 569, NULL, NULL, NULL, NULL, 1, NULL, 0),
    (2009, 12, 2, 570, NULL, NULL, NULL, NULL, 2, NULL, 0),
    (2009, 12, 3, 571, NULL, NULL, NULL, NULL, 3, NULL, 0),
    (2009, 13, 1, 572, NULL, NULL, NULL, NULL, 1, NULL, 0),
    (2009, 13, 2, 573, NULL, NULL, NULL, NULL, 2, NULL, 0),
    (2009, 14, 1, 574, NULL, NULL, NULL, NULL, 1, NULL, 0),
    (2009, 14, 2, 575, NULL, NULL, NULL, NULL, 2, NULL, 0),
    (2009, 14, 3, 576, NULL, NULL, NULL, NULL, 3, NULL, 0),
    (2009, 15, 1, 577, NULL, NULL, NULL, NULL, 1, NULL, 0),
    (2009, 15, 2, 578, NULL, NULL, NULL, NULL, 2, NULL, 0),
    (2009, 15, 3, 579, NULL, NULL, NULL, NULL, 3, NULL, 0),
    (2009, 16, 1, 580, NULL, NULL, NULL, NULL, 1, NULL, 0),
    (2009, 16, 2, 581, NULL, NULL, NULL, NULL, 2, NULL, 0),
    (2009, 16, 3, 582, NULL, NULL, NULL, NULL, 3, NULL, 0),
    (2009, 18, 1, 583, NULL, NULL, NULL, NULL, 1, NULL, 0),
    (2009, 18, 2, 584, NULL, NULL, NULL, NULL, 2, NULL, 0),
    (2009, 18, 3, 585, NULL, NULL, NULL, NULL, 3, NULL, 0),
    (2009, 17, 1, 586, NULL, NULL, NULL, NULL, 1, NULL, 0),
    (2009, 17, 2, 587, NULL, NULL, NULL, NULL, 2, NULL, 0),
    (2009, 17, 3, 588, NULL, NULL, NULL, NULL, 3, NULL, 0),
    (2009, 5, 1, 589, NULL, NULL, NULL, NULL, 1, NULL, 0),
    (2009, 5, 2, 590, NULL, NULL, NULL, NULL, 2, NULL, 0),
    (2009, 5, 3, 591, NULL, NULL, NULL, NULL, 3, NULL, 0),
    (2009, 2, 1, 592, NULL, NULL, NULL, NULL, 1, NULL, 0),
    (2009, 2, 2, 593, NULL, NULL, NULL, NULL, 2, NULL, 0),
    (2009, 2, 3, 594, NULL, NULL, NULL, NULL, 3, NULL, 0),
    (2009, 3, 1, 595, NULL, NULL, NULL, NULL, 1, NULL, 0),
    (2009, 3, 2, 596, NULL, NULL, NULL, NULL, 2, NULL, 0),
    (2009, 3, 3, 597, NULL, NULL, NULL, NULL, 3, NULL, 0),
    (2009, 4, 1, 598, NULL, NULL, NULL, NULL, 1, NULL, 0),
    (2009, 4, 2, 599, NULL, NULL, NULL, NULL, 2, NULL, 0),
    (2009, 4, 3, 600, NULL, NULL, NULL, NULL, 3, NULL, 0),
    (2009, 1, 1, 601, NULL, NULL, NULL, NULL, 1, NULL, 0),
    (2009, 1, 2, 602, NULL, NULL, NULL, NULL, 2, NULL, 0),
    (2009, 1, 3, 603, NULL, NULL, NULL, NULL, 3, NULL, 0),
    (2001, 2, 1, 604, NULL, NULL, NULL, '48.5', 1, NULL, 0),
    (2001, 2, 2, 605, NULL, NULL, NULL, '48.5', 2, NULL, 0),
    (2001, 2, 3, 606, NULL, NULL, NULL, '45', 3, NULL, 0),
    (2003, 16, 1, 607, NULL, NULL, NULL, NULL, 1, NULL, 0),
    (2003, 16, 2, 608, NULL, NULL, NULL, NULL, 1, NULL, 0),
    (2003, 13, 2, 609, NULL, NULL, NULL, NULL, 1, NULL, 0),
    (2005, 3, 1, 610, NULL, NULL, NULL, '45.5', 1, NULL, 0),
    (2005, 3, 2, 611, NULL, NULL, NULL, '45.5', 1, NULL, 0),
    (2005, 3, 3, 612, NULL, NULL, NULL, '45', 3, NULL, 0),
    (2005, 2, 1, 613, NULL, NULL, NULL, '47', 1, NULL, 0),
    (2005, 2, 2, 614, NULL, NULL, NULL, '45', 3, NULL, 0),
    (2019, 10, 1, 615, NULL, NULL, NULL, '41.5', 4, NULL, 0),
    (2019, 10, 2, 616, NULL, NULL, NULL, '39.5', 6, NULL, 0),
    (2019, 10, 3, 617, NULL, NULL, NULL, '39.5', 6, NULL, 0),
    (2019, 10, 4, 618, NULL, NULL, NULL, '39', 7, NULL, 0),
    (2019, 10, 5, 619, NULL, NULL, NULL, '38', 9, NULL, 0),
    (2019, 10, 6, 620, NULL, NULL, NULL, '38', 9, NULL, 0),
    (2019, 10, 7, 621, NULL, NULL, NULL, '37', 10, NULL, 0),
    (2019, 10, 8, 622, NULL, NULL, NULL, '37', 10, NULL, 0),
    (2019, 10, 9, 623, NULL, NULL, NULL, '37', 10, NULL, 0),
    (2019, 10, 10, 624, NULL, NULL, NULL, '37', 10, NULL, 0),
    (2019, 10, 11, 625, NULL, NULL, NULL, '35.5', 12, NULL, 0),
    (2019, 10, 12, 626, NULL, NULL, NULL, '34', 14, NULL, 0),
    (2019, 10, 13, 627, NULL, NULL, NULL, '29', 16, NULL, 0),
    (2019, 6, 1, 628, NULL, NULL, NULL, '40', 4, NULL, 0),
    (2019, 6, 2, 629, NULL, NULL, NULL, '40', 4, NULL, 0),
    (2019, 6, 3, 630, NULL, NULL, NULL, '39', 6, NULL, 0),
    (2019, 6, 4, 631, NULL, NULL, NULL, '39', 6, NULL, 0),
    (2019, 6, 5, 632, NULL, NULL, NULL, '38', 7, NULL, 0),
    (2019, 6, 6, 633, NULL, NULL, NULL, '38', 7, NULL, 0),
    (2019, 6, 7, 634, NULL, NULL, NULL, '38', 7, NULL, 0),
    (2019, 6, 8, 635, NULL, NULL, NULL, '36', 9, NULL, 0),
    (2019, 6, 9, 636, NULL, NULL, NULL, '36', 9, NULL, 0),
    (2019, 6, 10, 637, NULL, NULL, NULL, '36', 9, NULL, 0),
    (2019, 6, 11, 638, NULL, NULL, NULL, '35.5', 10, NULL, 0),
    (2019, 6, 12, 639, NULL, NULL, NULL, '34.5', 12, NULL, 0),
    (2019, 6, 13, 640, NULL, NULL, NULL, '33.5', 13, NULL, 0),
    (2019, 6, 14, 641, NULL, NULL, NULL, '32', 14, NULL, 0),
    (2019, 6, 15, 642, NULL, NULL, NULL, '32', 14, NULL, 0),
    (2019, 6, 16, 643, NULL, NULL, NULL, '31', 18, NULL, 0),
    (2019, 7, 1, 644, NULL, NULL, NULL, '40.5', 4, NULL, 0),
    (2019, 7, 2, 645, NULL, NULL, NULL, '40.5', 4, NULL, 0),
    (2019, 7, 3, 646, NULL, NULL, NULL, '40.5', 4, NULL, 0),
    (2019, 7, 4, 647, NULL, NULL, NULL, '40.5', 4, NULL, 0),
    (2019, 7, 5, 648, NULL, NULL, NULL, '39.5', 6, NULL, 0),
    (2019, 7, 6, 649, NULL, NULL, NULL, '39', 7, NULL, 0),
    (2019, 7, 7, 650, NULL, NULL, NULL, '39', 7, NULL, 0),
    (2019, 7, 8, 651, NULL, NULL, NULL, '39', 7, NULL, 0),
    (2019, 7, 9, 652, NULL, NULL, NULL, '39', 7, NULL, 0),
    (2019, 7, 10, 653, NULL, NULL, NULL, '39', 7, NULL, 0),
    (2019, 7, 11, 654, NULL, NULL, NULL, '38', 9, NULL, 0),
    (2019, 7, 12, 655, NULL, NULL, NULL, '38', 9, NULL, 0),
    (2019, 7, 13, 656, NULL, NULL, NULL, '38', 9, NULL, 0),
    (2019, 7, 14, 657, NULL, NULL, NULL, '37.5', 10, NULL, 0),
    (2019, 7, 15, 658, NULL, NULL, NULL, '37.5', 10, NULL, 0),
    (2019, 7, 16, 659, NULL, NULL, NULL, '37', 11, NULL, 0),
    (2019, 7, 17, 660, NULL, NULL, NULL, '37', 11, NULL, 0),
    (2019, 7, 18, 661, NULL, NULL, NULL, '36.5', 12, NULL, 0),
    (2019, 7, 19, 662, NULL, NULL, NULL, '36', 13, NULL, 0),
    (2019, 7, 20, 663, NULL, NULL, NULL, '36', 13, NULL, 0),
    (2019, 7, 21, 664, NULL, NULL, NULL, '36', 13, NULL, 0),
    (2019, 7, 22, 665, NULL, NULL, NULL, '35', 14, NULL, 0),
    (2019, 7, 23, 666, NULL, NULL, NULL, '35', 14, NULL, 0),
    (2019, 7, 24, 667, NULL, NULL, NULL, '35', 14, NULL, 0),
    (2019, 7, 25, 668, NULL, NULL, NULL, '35', 14, NULL, 0),
    (2019, 7, 26, 669, NULL, NULL, NULL, '34.5', 15, NULL, 0),
    (2019, 7, 27, 670, NULL, NULL, NULL, '34', 16, NULL, 0),
    (2019, 7, 28, 671, NULL, NULL, NULL, '33.5', 17, NULL, 0),
    (2019, 7, 29, 672, NULL, NULL, NULL, '33', 18, NULL, 0),
    (2019, 7, 30, 673, NULL, NULL, NULL, '32.5', 19, NULL, 0),
    (2019, 7, 31, 674, NULL, NULL, NULL, '31', 21, NULL, 0),
    (2019, 7, 32, 675, NULL, NULL, NULL, '31', 21, NULL, 0),
    (2019, 8, 1, 676, NULL, NULL, NULL, NULL, 4, NULL, 0),
    (2019, 8, 2, 677, NULL, NULL, NULL, NULL, 4, NULL, 0),
    (2019, 8, 3, 678, NULL, NULL, NULL, NULL, 4, NULL, 0),
    (2019, 8, 4, 679, NULL, NULL, NULL, '40', 6, NULL, 0),
    (2019, 8, 5, 680, NULL, NULL, NULL, '40', 6, NULL, 0),
    (2019, 8, 6, 681, NULL, NULL, NULL, '40', 6, NULL, 0),
    (2019, 8, 7, 682, NULL, NULL, NULL, '40', 6, NULL, 0),
    (2019, 8, 8, 683, NULL, NULL, NULL, '40', 6, NULL, 0),
    (2019, 8, 9, 684, NULL, NULL, NULL, '40', 6, NULL, 0),
    (2019, 8, 10, 685, NULL, NULL, NULL, '40', 6, NULL, 0),
    (2019, 8, 11, 686, NULL, NULL, NULL, '40', 6, NULL, 0),
    (2019, 8, 12, 687, NULL, NULL, NULL, '40', 6, NULL, 0),
    (2019, 8, 13, 688, NULL, NULL, NULL, '40', 6, NULL, 0),
    (2019, 8, 14, 689, NULL, NULL, NULL, '40', 6, NULL, 0),
    (2019, 8, 15, 690, NULL, NULL, NULL, '40', 6, NULL, 0),
    (2019, 8, 16, 691, NULL, NULL, NULL, '39', 7, NULL, 0),
    (2019, 8, 17, 692, NULL, NULL, NULL, '39', 7, NULL, 0),
    (2019, 8, 18, 693, NULL, NULL, NULL, '39', 7, NULL, 0),
    (2019, 8, 19, 694, NULL, NULL, NULL, '39', 7, NULL, 0),
    (2019, 8, 20, 695, NULL, NULL, NULL, '39', 7, NULL, 0),
    (2019, 8, 21, 696, NULL, NULL, NULL, '37', 9, NULL, 0),
    (2019, 8, 22, 697, NULL, NULL, NULL, '37', 9, NULL, 0),
    (2019, 8, 23, 698, NULL, NULL, NULL, '37', 9, NULL, 0),
    (2019, 8, 24, 699, NULL, NULL, NULL, '37', 9, NULL, 0),
    (2019, 8, 25, 700, NULL, NULL, NULL, '37', 9, NULL, 0),
    (2019, 8, 26, 701, NULL, NULL, NULL, '36', 10, NULL, 0),
    (2019, 8, 27, 702, NULL, NULL, NULL, '36', 10, NULL, 0),
    (2019, 8, 28, 703, NULL, NULL, NULL, '36', 10, NULL, 0),
    (2019, 8, 29, 704, NULL, NULL, NULL, '35', 11, NULL, 0),
    (2019, 8, 30, 705, NULL, NULL, NULL, '34.5', 12, NULL, 0),
    (2019, 9, 1, 706, NULL, NULL, NULL, '40.5', 4, NULL, 0),
    (2019, 9, 2, 707, NULL, NULL, NULL, '40.5', 4, NULL, 0),
    (2019, 9, 3, 708, NULL, NULL, NULL, '40.5', 4, NULL, 0),
    (2019, 9, 4, 709, NULL, NULL, NULL, '39', 6, NULL, 0),
    (2019, 9, 5, 710, NULL, NULL, NULL, '38', 7, NULL, 0),
    (2019, 9, 6, 711, NULL, NULL, NULL, '38', 7, NULL, 0),
    (2019, 9, 7, 712, NULL, NULL, NULL, '38', 7, NULL, 0),
    (2019, 9, 8, 713, NULL, NULL, NULL, '37', 9, NULL, 0),
    (2019, 9, 9, 714, NULL, NULL, NULL, '37', 9, NULL, 0),
    (2019, 9, 10, 715, NULL, NULL, NULL, '37', 9, NULL, 0),
    (2019, 9, 11, 716, NULL, NULL, NULL, '37', 9, NULL, 0),
    (2019, 9, 12, 717, NULL, NULL, NULL, '37', 9, NULL, 0),
    (2019, 9, 13, 718, NULL, NULL, NULL, '35.5', 10, NULL, 0),
    (2019, 9, 14, 719, NULL, NULL, NULL, '35', 11, NULL, 0),
    (2019, 9, 15, 720, NULL, NULL, NULL, '32', 12, NULL, 0),
    (2019, 5, 1, 721, NULL, NULL, NULL, '42.5', 4, NULL, 0),
    (2019, 5, 2, 722, NULL, NULL, NULL, '42.5', 4, NULL, 0),
    (2019, 5, 3, 723, NULL, NULL, NULL, '42.5', 4, NULL, 0),
    (2019, 5, 4, 724, NULL, NULL, NULL, '39.5', 6, NULL, 0),
    (2019, 5, 5, 725, NULL, NULL, NULL, '39.5', 6, NULL, 0),
    (2019, 5, 6, 726, NULL, NULL, NULL, '39', 7, NULL, 0),
    (2019, 5, 7, 727, NULL, NULL, NULL, '39', 7, NULL, 0),
    (2019, 5, 8, 728, NULL, NULL, NULL, '39', 7, NULL, 0),
    (2019, 5, 9, 729, NULL, NULL, NULL, '37', 9, NULL, 0),
    (2019, 5, 10, 730, NULL, NULL, NULL, '37', 9, NULL, 0),
    (2019, 5, 11, 731, NULL, NULL, NULL, '36', 10, NULL, 0),
    (2019, 5, 12, 732, NULL, NULL, NULL, '36', 10, NULL, 0),
    (2019, 5, 13, 733, NULL, NULL, NULL, '36', 10, NULL, 0),
    (2019, 5, 14, 734, NULL, NULL, NULL, '34', 11, NULL, 0),
    (2019, 16, 1, 735, NULL, NULL, NULL, '37', 6, NULL, 0),
    (2019, 16, 2, 736, NULL, NULL, NULL, '37', 6, NULL, 0),
    (2019, 16, 3, 737, NULL, NULL, NULL, '37', 6, NULL, 0),
    (2019, 16, 4, 738, NULL, NULL, NULL, '37', 6, NULL, 0),
    (2019, 16, 5, 739, NULL, NULL, NULL, '36', 7, NULL, 0),
    (2019, 16, 6, 740, NULL, NULL, NULL, '36', 7, NULL, 0),
    (2019, 16, 7, 741, NULL, NULL, NULL, '33', 9, NULL, 0),
    (2019, 16, 8, 742, NULL, NULL, NULL, '33', 9, NULL, 0),
    (2019, 16, 9, 743, NULL, NULL, NULL, '28', 10, NULL, 0),
    (2019, 12, 1, 744, NULL, NULL, NULL, '39', 6, NULL, 0),
    (2019, 12, 2, 745, NULL, NULL, NULL, '38', 7, NULL, 0),
    (2019, 12, 3, 746, NULL, NULL, NULL, '38', 7, NULL, 0),
    (2019, 12, 4, 747, NULL, NULL, NULL, '38', 7, NULL, 0),
    (2019, 12, 5, 748, NULL, NULL, NULL, '35', 9, NULL, 0),
    (2019, 12, 6, 749, NULL, NULL, NULL, '24', 10, NULL, 0),
    (2019, 11, 1, 750, NULL, NULL, NULL, '39', 6, NULL, 0),
    (2019, 11, 2, 751, NULL, NULL, NULL, '33', 9, NULL, 0),
    (2019, 14, 1, 752, NULL, NULL, NULL, '40', 6, NULL, 0),
    (2019, 14, 2, 753, NULL, NULL, NULL, '39', 7, NULL, 0),
    (2019, 14, 3, 754, NULL, NULL, NULL, '35', 9, NULL, 0),
    (2019, 14, 4, 755, NULL, NULL, NULL, '34', 10, NULL, 0),
    (2019, 14, 5, 756, NULL, NULL, NULL, '31', 12, NULL, 0),
    (2019, 14, 6, 757, NULL, NULL, NULL, '27', 13, NULL, 0),
    (2019, 13, 1, 758, NULL, NULL, NULL, '36', 6, NULL, 0),
    (2019, 13, 2, 759, NULL, NULL, NULL, '34', 7, NULL, 0),
    (2019, 13, 3, 760, NULL, NULL, NULL, '32', 9, NULL, 0),
    (2019, 13, 4, 761, NULL, NULL, NULL, '30', 10, NULL, 0),
    (2019, 15, 1, 762, NULL, NULL, NULL, '37', 4, NULL, 0),
    (2019, 15, 2, 763, NULL, NULL, NULL, '35', 6, NULL, 0),
    (2019, 2, 1, 764, NULL, NULL, NULL, NULL, 1, NULL, 0),
    (2019, 2, 2, 765, NULL, NULL, NULL, NULL, 2, NULL, 0),
    (2019, 2, 3, 766, NULL, NULL, NULL, NULL, 3, NULL, 0),
    (2019, 4, 1, 767, NULL, NULL, NULL, NULL, 1, NULL, 0),
    (2019, 4, 2, 768, NULL, NULL, NULL, NULL, 2, NULL, 0),
    (2019, 4, 3, 769, NULL, NULL, NULL, NULL, 3, NULL, 0),
    (2019, 1, 1, 770, NULL, NULL, NULL, NULL, 1, NULL, 0),
    (2019, 1, 2, 771, NULL, NULL, NULL, NULL, 2, NULL, 0),
    (2019, 1, 3, 772, NULL, NULL, NULL, NULL, 3, NULL, 0),
    (2019, 3, 1, 773, NULL, NULL, NULL, NULL, 1, NULL, 0),
    (2019, 3, 2, 774, NULL, NULL, NULL, NULL, 2, NULL, 0),
    (2019, 3, 3, 775, NULL, NULL, NULL, NULL, 3, NULL, 0),
    (2019, 21, 1, 776, NULL, NULL, NULL, '38', 6, NULL, 0),
    (2019, 21, 2, 777, NULL, NULL, NULL, '38', 6, NULL, 0),
    (2019, 21, 3, 778, NULL, NULL, NULL, '38', 6, NULL, 0),
    (2019, 21, 4, 779, NULL, NULL, NULL, '38', 6, NULL, 0),
    (2019, 21, 5, 780, NULL, NULL, NULL, '36', 7, NULL, 0),
    (2019, 21, 6, 781, NULL, NULL, NULL, '36', 7, NULL, 0),
    (2019, 21, 7, 782, NULL, NULL, NULL, '30', 10, NULL, 0),
    (2019, 20, 1, 783, NULL, NULL, NULL, '40', 4, NULL, 0),
    (2019, 20, 2, 784, NULL, NULL, NULL, '37', 6, NULL, 0),
    (2019, 20, 3, 785, NULL, NULL, NULL, '37', 6, NULL, 0),
    (2019, 20, 4, 786, NULL, NULL, NULL, '37', 6, NULL, 0),
    (2019, 20, 5, 787, NULL, NULL, NULL, '37', 6, NULL, 0),
    (2019, 20, 6, 788, NULL, NULL, NULL, '35', 7, NULL, 0),
    (2019, 20, 7, 789, NULL, NULL, NULL, '35', 7, NULL, 0),
    (2019, 20, 8, 790, NULL, NULL, NULL, '32', 9, NULL, 0),
    (2019, 20, 9, 791, NULL, NULL, NULL, '31', 10, NULL, 0),
    (2019, 23, 1, 792, NULL, NULL, NULL, '42', 6, NULL, 0),
    (2019, 23, 2, 793, NULL, NULL, NULL, NULL, 7, NULL, 0),
    (2019, 23, 3, 794, NULL, NULL, NULL, '37', 9, NULL, 0),
    (2019, 17, 1, 795, NULL, NULL, NULL, '40', 4, NULL, 0),
    (2019, 17, 2, 796, NULL, NULL, NULL, '37', 6, NULL, 0),
    (2019, 17, 3, 797, NULL, NULL, NULL, '35', 7, NULL, 0),
    (2019, 22, 1, 798, NULL, NULL, NULL, '40', 6, NULL, 0),
    (2019, 22, 2, 799, NULL, NULL, NULL, '40', 6, NULL, 0),
    (2019, 22, 3, 800, NULL, NULL, NULL, '40', 6, NULL, 0),
    (2019, 22, 4, 801, NULL, NULL, NULL, '40', 6, NULL, 0),
    (2019, 22, 5, 802, NULL, NULL, NULL, '40', 6, NULL, 0),
    (2019, 22, 6, 803, NULL, NULL, NULL, '39', 7, NULL, 0),
    (2019, 22, 7, 804, NULL, NULL, NULL, '39', 7, NULL, 0),
    (2019, 22, 8, 805, NULL, NULL, NULL, '39', 7, NULL, 0),
    (2019, 22, 9, 806, NULL, NULL, NULL, '39', 7, NULL, 0),
    (2019, 22, 10, 807, NULL, NULL, NULL, '39', 7, NULL, 0),
    (2019, 22, 11, 808, NULL, NULL, NULL, '39', 7, NULL, 0),
    (2019, 22, 12, 809, NULL, NULL, NULL, '38', 9, NULL, 0),
    (2019, 22, 13, 810, NULL, NULL, NULL, '37', 10, NULL, 0),
    (2019, 22, 14, 811, NULL, NULL, NULL, '36', 11, NULL, 0),
    (2019, 22, 15, 812, NULL, NULL, NULL, '35', 12, NULL, 0),
    (2019, 22, 16, 813, NULL, NULL, NULL, '35', 12, NULL, 0),
    (2019, 22, 17, 814, NULL, NULL, NULL, '31', 14, NULL, 0),
    (2019, 22, 18, 815, NULL, NULL, NULL, '31', 14, NULL, 0),
    (2017, 4, 4, 816, NULL, NULL, NULL, '45.8', 4, NULL, 0),
    (2017, 4, 5, 817, NULL, NULL, NULL, '42', 5, NULL, 0),
    (2017, 4, 6, 818, NULL, NULL, NULL, '41.5', 6, NULL, 0),
    (2017, 4, 7, 819, NULL, NULL, NULL, '40.1', 7, NULL, 0),
    (2017, 4, 8, 820, NULL, NULL, NULL, '37.2', 8, NULL, 0),
    (2017, 2, 4, 821, NULL, NULL, NULL, '47.1', 4, NULL, 0),
    (2017, 2, 5, 822, NULL, NULL, NULL, '47', 5, NULL, 0),
    (2017, 2, 6, 823, NULL, NULL, NULL, '44.3', 6, NULL, 0),
    (2017, 3, 4, 824, NULL, NULL, NULL, '46.7', 4, NULL, 0),
    (2017, 3, 5, 825, NULL, NULL, NULL, '46.3', 5, NULL, 0),
    (2017, 3, 6, 826, NULL, NULL, NULL, '46.2', 6, NULL, 0),
    (2017, 3, 7, 827, NULL, NULL, NULL, '46.1', 7, NULL, 0),
    (2017, 3, 8, 828, NULL, NULL, NULL, '46', 8, NULL, 0),
    (2017, 3, 9, 829, NULL, NULL, NULL, '45.7', 9, NULL, 0),
    (2017, 3, 10, 830, NULL, NULL, NULL, '45', 10, NULL, 0),
    (2017, 3, 11, 831, NULL, NULL, NULL, '44.7', 12, NULL, 0),
    (2017, 3, 12, 832, NULL, NULL, NULL, '44.3', 13, NULL, 0),
    (2017, 3, 13, 833, NULL, NULL, NULL, '43.7', 14, NULL, 0),
    (2017, 3, 14, 834, NULL, NULL, NULL, '42.6', 15, NULL, 0),
    (2017, 3, 15, 835, NULL, NULL, NULL, '41.9', 16, NULL, 0),
    (2017, 3, 16, 836, NULL, NULL, NULL, '41.6', 17, NULL, 0),
    (2017, 3, 17, 837, NULL, NULL, NULL, '40.6', 18, NULL, 0),
    (2017, 1, 4, 838, NULL, NULL, NULL, NULL, 4, NULL, 0),
    (2017, 1, 5, 839, NULL, NULL, NULL, NULL, 5, NULL, 0),
    (2017, 1, 6, 840, NULL, NULL, NULL, '47.3', 6, NULL, 0),
    (2017, 1, 7, 841, NULL, NULL, NULL, '46.4', 7, NULL, 0),
    (2017, 1, 8, 842, NULL, NULL, NULL, '46.3', 8, NULL, 0),
    (2017, 1, 9, 843, NULL, NULL, NULL, '46.2', 9, NULL, 0),
    (2017, 1, 10, 844, NULL, NULL, NULL, '45.9', 10, NULL, 0),
    (2017, 1, 11, 845, NULL, NULL, NULL, '45.6', 11, NULL, 0),
    (2017, 1, 12, 846, NULL, NULL, NULL, '45.1', 12, NULL, 0),
    (2017, 1, 13, 847, NULL, NULL, NULL, '44.5', 13, NULL, 0),
    (2017, 1, 14, 848, NULL, NULL, NULL, '44.4', 14, NULL, 0),
    (2017, 1, 15, 849, NULL, NULL, NULL, '44.3', 15, NULL, 0),
    (2017, 1, 16, 850, NULL, NULL, NULL, '43.8', 16, NULL, 0),
    (2017, 1, 17, 851, NULL, NULL, NULL, '43.6', 17, NULL, 0),
    (2017, 1, 18, 852, NULL, NULL, NULL, '43.3', 18, NULL, 0),
    (2017, 1, 19, 853, NULL, NULL, NULL, '42.8', 19, NULL, 0),
    (2017, 1, 20, 854, NULL, NULL, NULL, '42', 20, NULL, 0),
    (2017, 1, 21, 855, NULL, NULL, NULL, NULL, 21, NULL, 0),
    (2017, 1, 22, 856, NULL, NULL, NULL, NULL, 22, NULL, 0),
    (2017, 1, 23, 857, NULL, NULL, NULL, '40.3', 23, NULL, 0),
    (2017, 1, 24, 858, NULL, NULL, NULL, '34.1', 24, NULL, 0),
    (2017, 1, 25, 859, NULL, NULL, NULL, '33.7', 25, NULL, 0),
    (2017, 12, 4, 860, NULL, NULL, NULL, NULL, 4, NULL, 0),
    (2017, 12, 5, 861, NULL, NULL, NULL, NULL, 5, NULL, 0),
    (2017, 12, 6, 862, NULL, NULL, NULL, '46.8', 6, NULL, 0),
    (2017, 12, 7, 863, NULL, NULL, NULL, '46.5', 8, NULL, 0),
    (2017, 12, 8, 864, NULL, NULL, NULL, '46.5', 8, NULL, 0),
    (2017, 12, 9, 865, NULL, NULL, NULL, '46.3', 10, NULL, 0),
    (2017, 12, 10, 866, NULL, NULL, NULL, '46', 11, NULL, 0),
    (2017, 12, 11, 867, NULL, NULL, NULL, '45.9', 12, NULL, 0),
    (2017, 12, 12, 868, NULL, NULL, NULL, '45.8', 13, NULL, 0),
    (2017, 12, 13, 869, NULL, NULL, NULL, '44.9', 14, NULL, 0),
    (2017, 12, 14, 870, NULL, NULL, NULL, '44.8', 15, NULL, 0),
    (2017, 12, 15, 871, NULL, NULL, NULL, '44.7', 16, NULL, 0),
    (2017, 12, 16, 872, NULL, NULL, NULL, '44.2', 17, NULL, 0),
    (2017, 12, 17, 873, NULL, NULL, NULL, '44.2', 17, NULL, 0),
    (2017, 12, 18, 874, NULL, NULL, NULL, '44', 19, NULL, 0),
    (2017, 12, 19, 875, NULL, NULL, NULL, '43.8', 20, NULL, 0),
    (2017, 12, 20, 876, NULL, NULL, NULL, '43.8', 20, NULL, 0),
    (2017, 12, 21, 877, NULL, NULL, NULL, '42', 22, NULL, 0),
    (2017, 12, 22, 878, NULL, NULL, NULL, '41.3', 23, NULL, 0),
    (2017, 12, 23, 879, NULL, NULL, NULL, '41.2', 24, NULL, 0),
    (2017, 12, 24, 880, NULL, NULL, NULL, '40.9', 25, NULL, 0),
    (2017, 12, 25, 881, NULL, NULL, NULL, '40.5', 26, NULL, 0),
    (2017, 12, 26, 882, NULL, NULL, NULL, '40.2', 27, NULL, 0),
    (2017, 12, 27, 883, NULL, NULL, NULL, '39', 28, NULL, 0),
    (2017, 12, 28, 884, NULL, NULL, NULL, '39', 28, NULL, 0),
    (2017, 12, 29, 885, NULL, NULL, NULL, '38.6', 30, NULL, 0),
    (2017, 12, 30, 886, NULL, NULL, NULL, '38.5', 31, NULL, 0),
    (2017, 12, 31, 887, NULL, NULL, NULL, '38', 32, NULL, 0),
    (2017, 12, 32, 888, NULL, NULL, NULL, '37', 33, NULL, 0),
    (2017, 10, 4, 889, NULL, NULL, NULL, '48.1', 4, NULL, 0),
    (2017, 10, 5, 890, NULL, NULL, NULL, NULL, 6, NULL, 0),
    (2017, 10, 6, 891, NULL, NULL, NULL, '47.1', 7, NULL, 0),
    (2017, 10, 7, 892, NULL, NULL, NULL, '47', 8, NULL, 0),
    (2017, 10, 8, 893, NULL, NULL, NULL, '47', 8, NULL, 0),
    (2017, 10, 9, 894, NULL, NULL, NULL, '46.8', 10, NULL, 0),
    (2017, 10, 10, 895, NULL, NULL, NULL, '46.1', 12, NULL, 0),
    (2017, 10, 11, 896, NULL, NULL, NULL, '45.7', 13, NULL, 0),
    (2017, 10, 12, 897, NULL, NULL, NULL, '45.6', 14, NULL, 0),
    (2017, 10, 13, 898, NULL, NULL, NULL, '45.5', 15, NULL, 0),
    (2017, 10, 14, 899, NULL, NULL, NULL, '45.3', 16, NULL, 0),
    (2017, 10, 15, 900, NULL, NULL, NULL, '44.7', 17, NULL, 0),
    (2017, 10, 16, 901, NULL, NULL, NULL, '44', 18, NULL, 0),
    (2017, 10, 17, 902, NULL, NULL, NULL, '43.9', 19, NULL, 0),
    (2017, 10, 18, 903, NULL, NULL, NULL, '43.8', 20, NULL, 0),
    (2017, 10, 19, 904, NULL, NULL, NULL, '43.7', 21, NULL, 0),
    (2017, 10, 20, 905, NULL, NULL, NULL, '43.4', 22, NULL, 0),
    (2017, 10, 21, 906, NULL, NULL, NULL, '43.3', 23, NULL, 0),
    (2017, 10, 22, 907, NULL, NULL, NULL, '42.6', 24, NULL, 0),
    (2017, 10, 23, 908, NULL, NULL, NULL, '42.3', 25, NULL, 0),
    (2017, 10, 24, 909, NULL, NULL, NULL, '41.8', 26, NULL, 0),
    (2017, 10, 25, 910, NULL, NULL, NULL, NULL, 27, NULL, 0),
    (2017, 10, 26, 911, NULL, NULL, NULL, '41.5', 28, NULL, 0),
    (2017, 10, 27, 912, NULL, NULL, NULL, '41', 29, NULL, 0),
    (2017, 10, 28, 913, NULL, NULL, NULL, '41', 30, NULL, 0),
    (2017, 10, 29, 914, NULL, NULL, NULL, '41', 30, NULL, 0),
    (2017, 10, 30, 915, NULL, NULL, NULL, '40.8', 32, NULL, 0),
    (2017, 10, 31, 916, NULL, NULL, NULL, '40.7', 33, NULL, 0),
    (2017, 10, 32, 917, NULL, NULL, NULL, '40.7', 33, NULL, 0),
    (2017, 10, 33, 918, NULL, NULL, NULL, '40.3', 35, NULL, 0),
    (2017, 10, 34, 919, NULL, NULL, NULL, '40.1', 36, NULL, 0),
    (2017, 10, 35, 920, NULL, NULL, NULL, '40', 37, NULL, 0),
    (2017, 10, 36, 921, NULL, NULL, NULL, '39.9', 38, NULL, 0),
    (2017, 10, 37, 922, NULL, NULL, NULL, '39.8', 39, NULL, 0),
    (2017, 10, 38, 923, NULL, NULL, NULL, '38.4', 40, NULL, 0),
    (2017, 11, 4, 924, NULL, NULL, NULL, '48.7', 4, NULL, 0),
    (2017, 11, 5, 925, NULL, NULL, NULL, '48.6', 5, NULL, 0),
    (2017, 11, 6, 926, NULL, NULL, NULL, '48.5', 6, NULL, 0),
    (2017, 11, 7, 927, NULL, NULL, NULL, '48.1', 7, NULL, 0),
    (2017, 11, 8, 928, NULL, NULL, NULL, NULL, 8, NULL, 0),
    (2017, 11, 9, 929, NULL, NULL, NULL, '46.2', 9, NULL, 0),
    (2017, 11, 10, 930, NULL, NULL, NULL, '46.1', 10, NULL, 0),
    (2017, 11, 11, 931, NULL, NULL, NULL, '45.6', 11, NULL, 0),
    (2017, 11, 12, 932, NULL, NULL, NULL, '45.3', 12, NULL, 0),
    (2017, 11, 13, 933, NULL, NULL, NULL, '45.2', 13, NULL, 0),
    (2017, 11, 14, 934, NULL, NULL, NULL, '45', 14, NULL, 0),
    (2017, 11, 15, 935, NULL, NULL, NULL, '44.4', 15, NULL, 0),
    (2017, 11, 16, 936, NULL, NULL, NULL, '44.3', 16, NULL, 0),
    (2017, 11, 17, 937, NULL, NULL, NULL, '44.2', 17, NULL, 0),
    (2017, 11, 18, 938, NULL, NULL, NULL, '44', 18, NULL, 0),
    (2017, 11, 19, 939, NULL, NULL, NULL, '44', 19, NULL, 0),
    (2017, 11, 20, 940, NULL, NULL, NULL, '43.9', 20, NULL, 0),
    (2017, 11, 21, 941, NULL, NULL, NULL, '43.2', 21, NULL, 0),
    (2017, 11, 22, 942, NULL, NULL, NULL, '43.1', 22, NULL, 0),
    (2017, 11, 23, 943, NULL, NULL, NULL, '42.4', 23, NULL, 0),
    (2017, 11, 24, 944, NULL, NULL, NULL, '42.3', 24, NULL, 0),
    (2017, 11, 25, 945, NULL, NULL, NULL, '41.6', 25, NULL, 0),
    (2017, 11, 26, 946, NULL, NULL, NULL, '40.9', 27, NULL, 0),
    (2017, 11, 27, 947, NULL, NULL, NULL, '40.8', 28, NULL, 0),
    (2017, 11, 28, 948, NULL, NULL, NULL, '39.5', 29, NULL, 0),
    (2017, 11, 29, 949, NULL, NULL, NULL, '39.4', 30, NULL, 0),
    (2017, 11, 30, 950, NULL, NULL, NULL, '39.3', 31, NULL, 0),
    (2017, 11, 31, 951, NULL, NULL, NULL, '38.4', 32, NULL, 0),
    (2017, 11, 32, 952, NULL, NULL, NULL, '38.3', 33, NULL, 0),
    (2017, 11, 33, 953, NULL, NULL, NULL, '37.4', 34, NULL, 0),
    (2017, 11, 34, 954, NULL, NULL, NULL, '36.8', 35, NULL, 0),
    (2017, 11, 35, 955, NULL, NULL, NULL, '36.5', 36, NULL, 0),
    (2017, 5, 4, 956, NULL, NULL, NULL, NULL, 4, NULL, 0),
    (2017, 5, 5, 957, NULL, NULL, NULL, NULL, 5, NULL, 0),
    (2017, 5, 6, 958, NULL, NULL, NULL, NULL, 6, NULL, 0),
    (2017, 5, 7, 959, NULL, NULL, NULL, '47.1', 7, NULL, 0),
    (2017, 5, 8, 960, NULL, NULL, NULL, '47', 8, NULL, 0),
    (2017, 5, 9, 961, NULL, NULL, NULL, '46.9', 9, NULL, 0),
    (2017, 5, 10, 962, NULL, NULL, NULL, '46.8', 10, NULL, 0),
    (2017, 5, 11, 963, NULL, NULL, NULL, '46.7', 11, NULL, 0),
    (2017, 5, 12, 964, NULL, NULL, NULL, '46.7', 11, NULL, 0),
    (2017, 5, 13, 965, NULL, NULL, NULL, '46.4', 13, NULL, 0),
    (2017, 5, 14, 966, NULL, NULL, NULL, '46.2', 14, NULL, 0),
    (2017, 5, 15, 967, NULL, NULL, NULL, '46', 15, NULL, 0),
    (2017, 5, 16, 968, NULL, NULL, NULL, '45.7', 16, NULL, 0),
    (2017, 5, 17, 969, NULL, NULL, NULL, '45.6', 17, NULL, 0),
    (2017, 5, 18, 970, NULL, NULL, NULL, NULL, 18, NULL, 0),
    (2017, 5, 19, 971, NULL, NULL, NULL, '44.4', 19, NULL, 0),
    (2017, 5, 20, 972, NULL, NULL, NULL, '44.3', 20, NULL, 0),
    (2017, 5, 21, 973, NULL, NULL, NULL, '44.2', 21, NULL, 0),
    (2017, 5, 22, 974, NULL, NULL, NULL, '44', 22, NULL, 0),
    (2017, 5, 23, 975, NULL, NULL, NULL, '44', 23, NULL, 0),
    (2017, 5, 24, 976, NULL, NULL, NULL, '44', 23, NULL, 0),
    (2017, 5, 25, 977, NULL, NULL, NULL, '43.8', 25, NULL, 0),
    (2017, 5, 26, 978, NULL, NULL, NULL, '43.7', 26, NULL, 0),
    (2017, 5, 27, 979, NULL, NULL, NULL, '43.5', 27, NULL, 0),
    (2017, 5, 28, 980, NULL, NULL, NULL, '43.4', 28, NULL, 0),
    (2017, 5, 29, 981, NULL, NULL, NULL, '43.1', 29, NULL, 0),
    (2017, 5, 30, 982, NULL, NULL, NULL, '43', 30, NULL, 0),
    (2017, 5, 31, 983, NULL, NULL, NULL, '42.5', 31, NULL, 0),
    (2017, 5, 32, 984, NULL, NULL, NULL, '42.2', 32, NULL, 0),
    (2017, 5, 33, 985, NULL, NULL, NULL, '42.2', 32, NULL, 0),
    (2017, 5, 34, 986, NULL, NULL, NULL, '42.1', 34, NULL, 0),
    (2017, 5, 35, 987, NULL, NULL, NULL, '41.9', 35, NULL, 0),
    (2017, 5, 36, 988, NULL, NULL, NULL, '41.5', 36, NULL, 0),
    (2017, 5, 37, 989, NULL, NULL, NULL, '41.4', 37, NULL, 0),
    (2017, 5, 38, 990, NULL, NULL, NULL, '41.2', 38, NULL, 0),
    (2017, 5, 39, 991, NULL, NULL, NULL, '41', 39, NULL, 0),
    (2017, 5, 40, 992, NULL, NULL, NULL, '40.4', 41, NULL, 0),
    (2017, 5, 41, 993, NULL, NULL, NULL, '39.7', 44, NULL, 0),
    (2017, 5, 42, 994, NULL, NULL, NULL, '38.4', 50, NULL, 0),
    (2017, 5, 43, 995, NULL, NULL, NULL, '37.9', 51, NULL, 0),
    (2017, 5, 44, 996, NULL, NULL, NULL, '37.8', 52, NULL, 0),
    (2017, 5, 45, 997, NULL, NULL, NULL, '37', 53, NULL, 0),
    (2017, 5, 46, 998, NULL, NULL, NULL, '36.6', 54, NULL, 0),
    (2017, 5, 47, 999, NULL, NULL, NULL, '34.9', 55, NULL, 0),
    (2017, 5, 48, 1000, NULL, NULL, NULL, '34.5', 56, NULL, 0),
    (2017, 5, 49, 1001, NULL, NULL, NULL, '33.5', 57, NULL, 0),
    (2017, 6, 4, 1002, NULL, NULL, NULL, '48.3', 4, NULL, 0),
    (2017, 6, 5, 1003, NULL, NULL, NULL, '48.2', 5, NULL, 0),
    (2017, 6, 6, 1004, NULL, NULL, NULL, '48', 6, NULL, 0),
    (2017, 6, 7, 1005, NULL, NULL, NULL, '48', 6, NULL, 0),
    (2017, 6, 8, 1006, NULL, NULL, NULL, NULL, 8, NULL, 0),
    (2017, 6, 9, 1007, NULL, NULL, NULL, '47.8', 9, NULL, 0),
    (2017, 6, 10, 1008, NULL, NULL, NULL, NULL, 10, NULL, 0),
    (2017, 6, 11, 1009, NULL, NULL, NULL, NULL, 11, NULL, 0),
    (2017, 6, 12, 1010, NULL, NULL, NULL, NULL, 12, NULL, 0),
    (2017, 6, 13, 1011, NULL, NULL, NULL, NULL, 13, NULL, 0),
    (2017, 6, 14, 1012, NULL, NULL, NULL, NULL, 13, NULL, 0),
    (2017, 6, 15, 1013, NULL, NULL, NULL, NULL, 15, NULL, 0),
    (2017, 6, 16, 1014, NULL, NULL, NULL, NULL, 16, NULL, 0),
    (2017, 6, 17, 1015, NULL, NULL, NULL, NULL, 17, NULL, 0),
    (2017, 6, 18, 1016, NULL, NULL, NULL, NULL, 17, NULL, 0),
    (2017, 6, 19, 1017, NULL, NULL, NULL, '47', 19, NULL, 0),
    (2017, 6, 20, 1018, NULL, NULL, NULL, '47', 19, NULL, 0),
    (2017, 6, 21, 1019, NULL, NULL, NULL, '47', 19, NULL, 0),
    (2017, 6, 22, 1020, NULL, NULL, NULL, '46.9', 22, NULL, 0),
    (2017, 6, 23, 1021, NULL, NULL, NULL, '46.9', 22, NULL, 0),
    (2017, 6, 24, 1022, NULL, NULL, NULL, '46.9', 22, NULL, 0),
    (2017, 6, 25, 1023, NULL, NULL, NULL, '46.9', 22, NULL, 0),
    (2017, 6, 26, 1024, NULL, NULL, NULL, '46.9', 22, NULL, 0),
    (2017, 6, 27, 1025, NULL, NULL, NULL, '46.8', 27, NULL, 0),
    (2017, 6, 28, 1026, NULL, NULL, NULL, '46.6', 28, NULL, 0),
    (2017, 6, 29, 1027, NULL, NULL, NULL, '46.2', 29, NULL, 0),
    (2017, 6, 30, 1028, NULL, NULL, NULL, '46.1', 30, NULL, 0),
    (2017, 6, 31, 1029, NULL, NULL, NULL, '46.1', 30, NULL, 0),
    (2017, 6, 32, 1030, NULL, NULL, NULL, '45.8', 32, NULL, 0),
    (2017, 6, 33, 1031, NULL, NULL, NULL, '45.8', 32, NULL, 0),
    (2017, 6, 34, 1032, NULL, NULL, NULL, '45.6', 34, NULL, 0),
    (2017, 6, 35, 1033, NULL, NULL, NULL, '45.4', 35, NULL, 0),
    (2017, 6, 36, 1034, NULL, NULL, NULL, '45.3', 36, NULL, 0),
    (2017, 6, 37, 1035, NULL, NULL, NULL, '45.2', 37, NULL, 0),
    (2017, 6, 38, 1036, NULL, NULL, NULL, '45', 38, NULL, 0),
    (2017, 6, 39, 1037, NULL, NULL, NULL, '44.9', 39, NULL, 0),
    (2017, 6, 40, 1038, NULL, NULL, NULL, '44.6', 40, NULL, 0),
    (2017, 6, 41, 1039, NULL, NULL, NULL, NULL, 41, NULL, 0),
    (2017, 6, 42, 1040, NULL, NULL, NULL, '44.4', 42, NULL, 0),
    (2017, 6, 43, 1041, NULL, NULL, NULL, '44.2', 43, NULL, 0),
    (2017, 6, 44, 1042, NULL, NULL, NULL, '44', 44, NULL, 0),
    (2017, 6, 45, 1043, NULL, NULL, NULL, '44', 44, NULL, 0),
    (2017, 6, 46, 1044, NULL, NULL, NULL, '43.5', 46, NULL, 0),
    (2017, 6, 47, 1045, NULL, NULL, NULL, '43.4', 47, NULL, 0),
    (2017, 6, 48, 1046, NULL, NULL, NULL, '43.4', 47, NULL, 0),
    (2017, 6, 49, 1047, NULL, NULL, NULL, '43.3', 49, NULL, 0),
    (2017, 6, 50, 1048, NULL, NULL, NULL, '43.2', 50, NULL, 0),
    (2017, 6, 51, 1049, NULL, NULL, NULL, '43.1', 51, NULL, 0),
    (2017, 6, 52, 1050, NULL, NULL, NULL, '43', 52, NULL, 0),
    (2017, 6, 53, 1051, NULL, NULL, NULL, '42.9', 53, NULL, 0),
    (2017, 6, 54, 1052, NULL, NULL, NULL, '42.8', 54, NULL, 0),
    (2017, 6, 55, 1053, NULL, NULL, NULL, '42.8', 54, NULL, 0),
    (2017, 6, 56, 1054, NULL, NULL, NULL, '42.7', 56, NULL, 0),
    (2017, 6, 57, 1055, NULL, NULL, NULL, '42.6', 57, NULL, 0),
    (2017, 6, 58, 1056, NULL, NULL, NULL, '42.5', 58, NULL, 0),
    (2017, 6, 59, 1057, NULL, NULL, NULL, '42.5', 58, NULL, 0),
    (2017, 6, 60, 1058, NULL, NULL, NULL, '42.2', 60, NULL, 0),
    (2017, 6, 61, 1059, NULL, NULL, NULL, '42.1', 61, NULL, 0),
    (2017, 6, 62, 1060, NULL, NULL, NULL, '42', 63, NULL, 0),
    (2017, 6, 63, 1061, NULL, NULL, NULL, '42', 63, NULL, 0),
    (2017, 6, 64, 1062, NULL, NULL, NULL, '41.9', 65, NULL, 0),
    (2017, 6, 65, 1063, NULL, NULL, NULL, '41.9', 65, NULL, 0),
    (2017, 6, 66, 1064, NULL, NULL, NULL, '41.9', 65, NULL, 0),
    (2017, 6, 67, 1065, NULL, NULL, NULL, '41.8', 68, NULL, 0),
    (2017, 6, 68, 1066, NULL, NULL, NULL, NULL, 69, NULL, 0),
    (2017, 6, 69, 1067, NULL, NULL, NULL, '41.6', 70, NULL, 0),
    (2017, 6, 70, 1068, NULL, NULL, NULL, NULL, 71, NULL, 0),
    (2017, 6, 71, 1069, NULL, NULL, NULL, NULL, 71, NULL, 0),
    (2017, 6, 72, 1070, NULL, NULL, NULL, '41.4', 73, NULL, 0),
    (2017, 6, 73, 1071, NULL, NULL, NULL, '41.4', 73, NULL, 0),
    (2017, 6, 74, 1072, NULL, NULL, NULL, '41.1', 75, NULL, 0),
    (2017, 6, 75, 1073, NULL, NULL, NULL, '41', 76, NULL, 0),
    (2017, 6, 76, 1074, NULL, NULL, NULL, '40.9', 77, NULL, 0),
    (2017, 6, 77, 1075, NULL, NULL, NULL, '40.8', 78, NULL, 0),
    (2017, 6, 78, 1076, NULL, NULL, NULL, '40.7', 79, NULL, 0),
    (2017, 6, 79, 1077, NULL, NULL, NULL, '40.5', 80, NULL, 0),
    (2017, 6, 80, 1078, NULL, NULL, NULL, '40.4', 81, NULL, 0),
    (2017, 6, 81, 1079, NULL, NULL, NULL, '40.4', 81, NULL, 0),
    (2017, 6, 82, 1080, NULL, NULL, NULL, '40.3', 83, NULL, 0),
    (2017, 6, 83, 1081, NULL, NULL, NULL, '40.3', 83, NULL, 0),
    (2017, 6, 84, 1082, NULL, NULL, NULL, '40.2', 85, NULL, 0),
    (2017, 6, 85, 1083, NULL, NULL, NULL, '40', 86, NULL, 0),
    (2017, 6, 86, 1084, NULL, NULL, NULL, '39.9', 87, NULL, 0),
    (2017, 6, 87, 1085, NULL, NULL, NULL, '39.8', 88, NULL, 0),
    (2017, 6, 88, 1086, NULL, NULL, NULL, '39.3', 89, NULL, 0),
    (2017, 6, 89, 1087, NULL, NULL, NULL, '39.2', 90, NULL, 0),
    (2017, 6, 90, 1088, NULL, NULL, NULL, '39', 91, NULL, 0),
    (2017, 6, 91, 1089, NULL, NULL, NULL, '39', 91, NULL, 0),
    (2017, 6, 92, 1090, NULL, NULL, NULL, '38.7', 93, NULL, 0),
    (2017, 6, 93, 1091, NULL, NULL, NULL, '38.6', 94, NULL, 0),
    (2017, 6, 94, 1092, NULL, NULL, NULL, '38.5', 95, NULL, 0),
    (2017, 6, 95, 1093, NULL, NULL, NULL, '38.3', 96, NULL, 0),
    (2017, 6, 96, 1094, NULL, NULL, NULL, '38.1', 97, NULL, 0),
    (2017, 6, 97, 1095, NULL, NULL, NULL, '38.1', 97, NULL, 0),
    (2017, 6, 98, 1096, NULL, NULL, NULL, '38', 98, NULL, 0),
    (2017, 6, 99, 1097, NULL, NULL, NULL, '38', 98, NULL, 0),
    (2017, 6, 100, 1098, NULL, NULL, NULL, '37.4', 100, NULL, 0),
    (2017, 6, 101, 1099, NULL, NULL, NULL, '34.9', 101, NULL, 0),
    (2017, 6, 102, 1100, NULL, NULL, NULL, '33.7', 102, NULL, 0),
    (2017, 6, 103, 1101, NULL, NULL, NULL, '29.5', 103, NULL, 0),
    (2017, 6, 104, 1102, NULL, NULL, NULL, '28.3', 104, NULL, 0),
    (2017, 6, 105, 1103, NULL, NULL, NULL, '25.7', 105, NULL, 0),
    (2017, 6, 106, 1104, NULL, NULL, NULL, '22.2', 106, NULL, 0),
    (2017, 7, 4, 1105, NULL, NULL, NULL, '48.4', 4, NULL, 0),
    (2017, 7, 5, 1106, NULL, NULL, NULL, '48.3', 5, NULL, 0),
    (2017, 7, 6, 1107, NULL, NULL, NULL, '48.2', 6, NULL, 0),
    (2017, 7, 7, 1108, NULL, NULL, NULL, NULL, 7, NULL, 0),
    (2017, 7, 8, 1109, NULL, NULL, NULL, NULL, 8, NULL, 0),
    (2017, 7, 9, 1110, NULL, NULL, NULL, NULL, 9, NULL, 0),
    (2017, 7, 10, 1111, NULL, NULL, NULL, '47.1', 10, NULL, 0),
    (2017, 7, 11, 1112, NULL, NULL, NULL, '47', 11, NULL, 0),
    (2017, 7, 12, 1113, NULL, NULL, NULL, '46.7', 12, NULL, 0),
    (2017, 7, 13, 1114, NULL, NULL, NULL, '46', 14, NULL, 0),
    (2017, 7, 14, 1115, NULL, NULL, NULL, '45.6', 15, NULL, 0),
    (2017, 7, 15, 1116, NULL, NULL, NULL, '44.8', 16, NULL, 0),
    (2017, 7, 16, 1117, NULL, NULL, NULL, '44.7', 17, NULL, 0),
    (2017, 7, 17, 1118, NULL, NULL, NULL, NULL, 18, NULL, 0),
    (2017, 7, 18, 1119, NULL, NULL, NULL, '44', 19, NULL, 0),
    (2017, 7, 19, 1120, NULL, NULL, NULL, '43.9', 20, NULL, 0),
    (2017, 7, 20, 1121, NULL, NULL, NULL, '42.9', 21, NULL, 0),
    (2017, 7, 21, 1122, NULL, NULL, NULL, '42.3', 22, NULL, 0),
    (2017, 7, 22, 1123, NULL, NULL, NULL, '41.8', 23, NULL, 0),
    (2017, 7, 23, 1124, NULL, NULL, NULL, NULL, 24, NULL, 0),
    (2017, 7, 24, 1125, NULL, NULL, NULL, '40.3', 25, NULL, 0),
    (2017, 7, 25, 1126, NULL, NULL, NULL, '39.9', 26, NULL, 0),
    (2017, 7, 26, 1127, NULL, NULL, NULL, '39.7', 27, NULL, 0),
    (2017, 7, 27, 1128, NULL, NULL, NULL, '39', 28, NULL, 0),
    (2017, 7, 28, 1129, NULL, NULL, NULL, '38.7', 29, NULL, 0),
    (2017, 7, 29, 1130, NULL, NULL, NULL, '38.7', 29, NULL, 0),
    (2017, 7, 30, 1131, NULL, NULL, NULL, '24.2', 31, NULL, 0),
    (2017, 8, 4, 1132, NULL, NULL, NULL, '48.5', 4, NULL, 0),
    (2017, 8, 5, 1133, NULL, NULL, NULL, '48.1', 5, NULL, 0),
    (2017, 8, 6, 1134, NULL, NULL, NULL, '47.9', 6, NULL, 0),
    (2017, 8, 7, 1135, NULL, NULL, NULL, '47.8', 7, NULL, 0),
    (2017, 8, 8, 1136, NULL, NULL, NULL, '47.8', 7, NULL, 0),
    (2017, 8, 9, 1137, NULL, NULL, NULL, NULL, 9, NULL, 0),
    (2017, 8, 10, 1138, NULL, NULL, NULL, '47.6', 10, NULL, 0),
    (2017, 8, 11, 1139, NULL, NULL, NULL, NULL, 11, NULL, 0),
    (2017, 8, 12, 1140, NULL, NULL, NULL, '47.2', 12, NULL, 0),
    (2017, 8, 13, 1141, NULL, NULL, NULL, '46.4', 13, NULL, 0),
    (2017, 8, 14, 1142, NULL, NULL, NULL, '46', 14, NULL, 0),
    (2017, 8, 15, 1143, NULL, NULL, NULL, '45.8', 15, NULL, 0),
    (2017, 8, 16, 1144, NULL, NULL, NULL, '45.7', 16, NULL, 0),
    (2017, 8, 17, 1145, NULL, NULL, NULL, '45.6', 17, NULL, 0),
    (2017, 8, 18, 1146, NULL, NULL, NULL, '45.6', 17, NULL, 0),
    (2017, 8, 19, 1147, NULL, NULL, NULL, '44.9', 19, NULL, 0),
    (2017, 8, 20, 1148, NULL, NULL, NULL, '44.5', 20, NULL, 0),
    (2017, 8, 21, 1149, NULL, NULL, NULL, NULL, 21, NULL, 0),
    (2017, 8, 22, 1150, NULL, NULL, NULL, '44.2', 22, NULL, 0),
    (2017, 8, 23, 1151, NULL, NULL, NULL, '43.5', 24, NULL, 0),
    (2017, 8, 24, 1152, NULL, NULL, NULL, '43.3', 25, NULL, 0),
    (2017, 8, 25, 1153, NULL, NULL, NULL, '42.7', 26, NULL, 0),
    (2017, 8, 26, 1154, NULL, NULL, NULL, '42.6', 27, NULL, 0),
    (2017, 8, 27, 1155, NULL, NULL, NULL, '42.4', 28, NULL, 0),
    (2017, 8, 28, 1156, NULL, NULL, NULL, '41.9', 29, NULL, 0),
    (2017, 8, 29, 1157, NULL, NULL, NULL, '41.6', 30, NULL, 0),
    (2017, 9, 4, 1158, NULL, NULL, NULL, '48.4', 4, NULL, 0),
    (2017, 9, 5, 1159, NULL, NULL, NULL, '48.1', 5, NULL, 0),
    (2017, 9, 6, 1160, NULL, NULL, NULL, '48.1', 5, NULL, 0),
    (2017, 9, 7, 1161, NULL, NULL, NULL, NULL, 7, NULL, 0),
    (2017, 9, 8, 1162, NULL, NULL, NULL, NULL, 8, NULL, 0),
    (2017, 9, 9, 1163, NULL, NULL, NULL, NULL, 10, NULL, 0),
    (2017, 9, 10, 1164, NULL, NULL, NULL, NULL, 11, NULL, 0),
    (2017, 9, 11, 1165, NULL, NULL, NULL, NULL, 11, NULL, 0),
    (2017, 9, 12, 1166, NULL, NULL, NULL, '47.1', 13, NULL, 0),
    (2017, 9, 13, 1167, NULL, NULL, NULL, '46.9', 15, NULL, 0),
    (2017, 9, 14, 1168, NULL, NULL, NULL, '46.8', 16, NULL, 0),
    (2017, 9, 15, 1169, NULL, NULL, NULL, '46.8', 16, NULL, 0),
    (2017, 9, 16, 1170, NULL, NULL, NULL, '46.7', 18, NULL, 0),
    (2017, 9, 17, 1171, NULL, NULL, NULL, '46.6', 19, NULL, 0),
    (2017, 9, 18, 1172, NULL, NULL, NULL, '46.5', 20, NULL, 0),
    (2017, 9, 19, 1173, NULL, NULL, NULL, '46.3', 22, NULL, 0),
    (2017, 9, 20, 1174, NULL, NULL, NULL, '45.8', 23, NULL, 0),
    (2017, 9, 21, 1175, NULL, NULL, NULL, '45.7', 24, NULL, 0),
    (2017, 9, 22, 1176, NULL, NULL, NULL, '45.1', 25, NULL, 0),
    (2017, 9, 23, 1177, NULL, NULL, NULL, '43.8', 27, NULL, 0),
    (2017, 9, 24, 1178, NULL, NULL, NULL, '43.7', 28, NULL, 0),
    (2017, 9, 25, 1179, NULL, NULL, NULL, '43.6', 29, NULL, 0),
    (2017, 9, 26, 1180, NULL, NULL, NULL, '43.2', 30, NULL, 0),
    (2017, 9, 27, 1181, NULL, NULL, NULL, '42.3', 31, NULL, 0),
    (2017, 9, 28, 1182, NULL, NULL, NULL, '41.2', 32, NULL, 0),
    (2017, 9, 29, 1183, NULL, NULL, NULL, '40.6', 33, NULL, 0),
    (2017, 9, 30, 1184, NULL, NULL, NULL, '40.6', 33, NULL, 0),
    (2017, 9, 31, 1185, NULL, NULL, NULL, '40.4', 35, NULL, 0),
    (2017, 9, 32, 1186, NULL, NULL, NULL, '39.9', 36, NULL, 0),
    (2017, 9, 33, 1187, NULL, NULL, NULL, '39.6', 37, NULL, 0),
    (2017, 9, 34, 1188, NULL, NULL, NULL, '39.2', 38, NULL, 0),
    (2017, 9, 35, 1189, NULL, NULL, NULL, '38.1', 39, NULL, 0),
    (2017, 18, 4, 1190, NULL, NULL, NULL, NULL, 4, NULL, 0),
    (2017, 18, 5, 1191, NULL, NULL, NULL, '47.1', 5, NULL, 0),
    (2017, 18, 6, 1192, NULL, NULL, NULL, '46.8', 6, NULL, 0),
    (2017, 18, 7, 1193, NULL, NULL, NULL, '46.2', 7, NULL, 0),
    (2017, 18, 8, 1194, NULL, NULL, NULL, '46.1', 8, NULL, 0),
    (2017, 18, 9, 1195, NULL, NULL, NULL, '45.9', 9, NULL, 0),
    (2017, 18, 10, 1196, NULL, NULL, NULL, '44.9', 10, NULL, 0),
    (2017, 18, 11, 1197, NULL, NULL, NULL, '44.4', 11, NULL, 0),
    (2017, 18, 12, 1198, NULL, NULL, NULL, '43.5', 12, NULL, 0),
    (2017, 18, 13, 1199, NULL, NULL, NULL, '43.4', 13, NULL, 0),
    (2017, 18, 14, 1200, NULL, NULL, NULL, '43.3', 14, NULL, 0),
    (2017, 18, 15, 1201, NULL, NULL, NULL, '43.3', 14, NULL, 0),
    (2017, 18, 16, 1202, NULL, NULL, NULL, '42.5', 15, NULL, 0),
    (2017, 18, 17, 1203, NULL, NULL, NULL, '41.5', 16, NULL, 0),
    (2017, 18, 18, 1204, NULL, NULL, NULL, '41.5', 16, NULL, 0),
    (2017, 18, 19, 1205, NULL, NULL, NULL, NULL, 16, NULL, 0),
    (2017, 18, 20, 1206, NULL, NULL, NULL, '40.2', 19, NULL, 0),
    (2017, 18, 21, 1207, NULL, NULL, NULL, '40', 20, NULL, 0),
    (2017, 18, 22, 1208, NULL, NULL, NULL, '39.8', 21, NULL, 0),
    (2017, 18, 23, 1209, NULL, NULL, NULL, '39', 22, NULL, 0),
    (2017, 18, 24, 1210, NULL, NULL, NULL, '38.9', 23, NULL, 0),
    (2017, 18, 25, 1211, NULL, NULL, NULL, '38.1', 24, NULL, 0),
    (2017, 18, 26, 1212, NULL, NULL, NULL, '37.1', 25, NULL, 0),
    (2017, 14, 4, 1213, NULL, NULL, NULL, '47.2', 4, NULL, 0),
    (2017, 14, 5, 1214, NULL, NULL, NULL, '46.8', 5, NULL, 0),
    (2017, 14, 6, 1215, NULL, NULL, NULL, '46.2', 6, NULL, 0),
    (2017, 14, 7, 1216, NULL, NULL, NULL, '45.4', 7, NULL, 0),
    (2017, 14, 8, 1217, NULL, NULL, NULL, '44', 8, NULL, 0),
    (2017, 14, 9, 1218, NULL, NULL, NULL, '44.3', 9, NULL, 0),
    (2017, 14, 10, 1219, NULL, NULL, NULL, '43.1', 10, NULL, 0),
    (2017, 13, 5, 1220, NULL, NULL, NULL, '47.3', 4, NULL, 0),
    (2017, 13, 6, 1221, NULL, NULL, NULL, '46.3', 6, NULL, 0),
    (2017, 13, 7, 1222, NULL, NULL, NULL, '46.1', 7, NULL, 0),
    (2017, 13, 8, 1223, NULL, NULL, NULL, '45.5', 9, NULL, 0),
    (2017, 13, 9, 1224, NULL, NULL, NULL, '45.4', 10, NULL, 0),
    (2017, 13, 10, 1225, NULL, NULL, NULL, '44.6', 12, NULL, 0),
    (2017, 13, 11, 1226, NULL, NULL, NULL, '43.7', 13, NULL, 0),
    (2017, 13, 12, 1227, NULL, NULL, NULL, '40.7', 14, NULL, 0),
    (2017, 17, 4, 1228, NULL, NULL, NULL, NULL, 4, NULL, 0),
    (2017, 17, 5, 1229, NULL, NULL, NULL, '46.8', 6, NULL, 0),
    (2017, 17, 6, 1230, NULL, NULL, NULL, '46.6', 7, NULL, 0),
    (2017, 17, 7, 1231, NULL, NULL, NULL, '46', 9, NULL, 0),
    (2017, 17, 8, 1232, NULL, NULL, NULL, '45.9', 10, NULL, 0),
    (2017, 17, 9, 1233, NULL, NULL, NULL, '45', 12, NULL, 0),
    (2017, 17, 10, 1234, NULL, NULL, NULL, '44.8', 13, NULL, 0),
    (2017, 17, 11, 1235, NULL, NULL, NULL, '44.7', 14, NULL, 0),
    (2017, 17, 12, 1236, NULL, NULL, NULL, '43.7', 15, NULL, 0),
    (2017, 17, 13, 1237, NULL, NULL, NULL, '42.6', 17, NULL, 0),
    (2017, 17, 14, 1238, NULL, NULL, NULL, '42.3', 18, NULL, 0),
    (2017, 17, 15, 1239, NULL, NULL, NULL, '42', 19, NULL, 0),
    (2017, 17, 16, 1240, NULL, NULL, NULL, NULL, 20, NULL, 0),
    (2017, 17, 17, 1241, NULL, NULL, NULL, '39.1', 21, NULL, 0),
    (2017, 16, 4, 1242, NULL, NULL, NULL, NULL, 4, NULL, 0),
    (2017, 16, 5, 1243, NULL, NULL, NULL, '46.6', 6, NULL, 0),
    (2017, 16, 6, 1244, NULL, NULL, NULL, '46.5', 7, NULL, 0),
    (2017, 16, 7, 1245, NULL, NULL, NULL, '45.9', 8, NULL, 0),
    (2017, 16, 8, 1246, NULL, NULL, NULL, '44.1', 9, NULL, 0),
    (2017, 16, 9, 1247, NULL, NULL, NULL, '43.2', 10, NULL, 0),
    (2017, 16, 10, 1248, NULL, NULL, NULL, '41.8', 11, NULL, 0),
    (2017, 16, 11, 1249, NULL, NULL, NULL, '41.4', 12, NULL, 0),
    (2017, 15, 3, 1250, NULL, NULL, NULL, '48.1', 4, NULL, 0),
    (2017, 15, 4, 1251, NULL, NULL, NULL, '47.9', 5, NULL, 0),
    (2017, 15, 5, 1252, NULL, NULL, NULL, '46.1', 7, NULL, 0),
    (2017, 15, 6, 1253, NULL, NULL, NULL, NULL, 8, NULL, 0),
    (2017, 15, 7, 1254, NULL, NULL, NULL, '43.3', 9, NULL, 0),
    (2017, 15, 8, 1255, NULL, NULL, NULL, '40.4', 10, NULL, 0),
    (2017, 24, 4, 1256, NULL, NULL, NULL, '47.8', 4, NULL, 0),
    (2017, 24, 5, 1257, NULL, NULL, NULL, NULL, 5, NULL, 0),
    (2017, 24, 6, 1258, NULL, NULL, NULL, '47', 6, NULL, 0),
    (2017, 24, 7, 1259, NULL, NULL, NULL, '46.1', 7, NULL, 0),
    (2017, 24, 8, 1260, NULL, NULL, NULL, '45.5', 8, NULL, 0),
    (2017, 24, 9, 1261, NULL, NULL, NULL, '44.9', 9, NULL, 0),
    (2017, 24, 10, 1262, NULL, NULL, NULL, '43.9', 10, NULL, 0),
    (2017, 24, 11, 1263, NULL, NULL, NULL, '43.6', 11, NULL, 0),
    (2017, 24, 12, 1264, NULL, NULL, NULL, '43.2', 12, NULL, 0),
    (2017, 24, 13, 1265, NULL, NULL, NULL, '43.1', 13, NULL, 0),
    (2017, 24, 14, 1266, NULL, NULL, NULL, '43', 14, NULL, 0),
    (2017, 24, 15, 1267, NULL, NULL, NULL, '42.9', 15, NULL, 0),
    (2017, 24, 16, 1268, NULL, NULL, NULL, '42.7', 16, NULL, 0),
    (2017, 24, 17, 1269, NULL, NULL, NULL, '40.1', 17, NULL, 0),
    (2017, 24, 18, 1270, NULL, NULL, NULL, '39.8', 18, NULL, 0),
    (2017, 24, 19, 1271, NULL, NULL, NULL, '38.2', 19, NULL, 0),
    (2017, 24, 20, 1272, NULL, NULL, NULL, '37.3', 20, NULL, 0),
    (2017, 23, 4, 1273, NULL, NULL, NULL, '48.1', 4, NULL, 0),
    (2017, 23, 5, 1274, NULL, NULL, NULL, '45.6', 5, NULL, 0),
    (2017, 23, 6, 1275, NULL, NULL, NULL, '42.6', 6, NULL, 0),
    (2017, 23, 7, 1276, NULL, NULL, NULL, '41.5', 7, NULL, 0),
    (2017, 23, 8, 1277, NULL, NULL, NULL, '40.6', 8, NULL, 0),
    (2017, 23, 9, 1278, NULL, NULL, NULL, '39.4', 9, NULL, 0),
    (2017, 23, 10, 1279, NULL, NULL, NULL, '38', 10, NULL, 0),
    (2017, 19, 4, 1280, NULL, NULL, NULL, '48.5', 4, NULL, 0),
    (2017, 19, 5, 1281, NULL, NULL, NULL, '48.4', 5, NULL, 0),
    (2017, 19, 6, 1282, NULL, NULL, NULL, NULL, 6, NULL, 0),
    (2017, 19, 7, 1283, NULL, NULL, NULL, '46', 7, NULL, 0),
    (2017, 19, 8, 1284, NULL, NULL, NULL, '45.9', 8, NULL, 0),
    (2017, 19, 9, 1285, NULL, NULL, NULL, '45.6', 9, NULL, 0),
    (2017, 19, 10, 1286, NULL, NULL, NULL, '45.4', 10, NULL, 0),
    (2017, 19, 11, 1287, NULL, NULL, NULL, '45.1', 11, NULL, 0),
    (2017, 19, 12, 1288, NULL, NULL, NULL, '41.8', 13, NULL, 0),
    (2017, 19, 13, 1289, NULL, NULL, NULL, NULL, 14, NULL, 0),
    (2017, 19, 14, 1290, NULL, NULL, NULL, '41.3', 15, NULL, 0),
    (2017, 19, 15, 1291, NULL, NULL, NULL, '40.4', 16, NULL, 0),
    (2017, 27, 4, 1292, NULL, NULL, NULL, '48.6', 4, NULL, 0),
    (2017, 27, 5, 1293, NULL, NULL, NULL, '48.2', 5, NULL, 0),
    (2017, 27, 6, 1294, NULL, NULL, NULL, NULL, 6, NULL, 0),
    (2017, 27, 7, 1295, NULL, NULL, NULL, NULL, 7, NULL, 0),
    (2017, 27, 8, 1296, NULL, NULL, NULL, '46.7', 8, NULL, 0),
    (2017, 27, 9, 1297, NULL, NULL, NULL, '45.5', 9, NULL, 0),
    (2017, 27, 10, 1298, NULL, NULL, NULL, '45.2', 10, NULL, 0),
    (2017, 27, 11, 1299, NULL, NULL, NULL, NULL, 12, NULL, 0),
    (2017, 27, 12, 1300, NULL, NULL, NULL, '41.6', 13, NULL, 0),
    (2017, 27, 13, 1301, NULL, NULL, NULL, '40.7', 14, NULL, 0),
    (2017, 27, 14, 1302, NULL, NULL, NULL, '40.7', 14, NULL, 0),
    (2017, 27, 15, 1303, NULL, NULL, NULL, '40', 16, NULL, 0),
    (2017, 27, 16, 1304, NULL, NULL, NULL, '39.9', 17, NULL, 0),
    (2017, 25, 3, 1305, NULL, NULL, NULL, '48.2', 4, NULL, 0),
    (2017, 25, 4, 1306, NULL, NULL, NULL, '48', 5, NULL, 0),
    (2017, 25, 5, 1307, NULL, NULL, NULL, NULL, 6, NULL, 0),
    (2017, 25, 6, 1308, NULL, NULL, NULL, '47.1', 8, NULL, 0),
    (2017, 25, 7, 1309, NULL, NULL, NULL, '46.8', 9, NULL, 0),
    (2017, 25, 8, 1310, NULL, NULL, NULL, '46.7', 10, NULL, 0),
    (2017, 25, 9, 1311, NULL, NULL, NULL, '46.5', 11, NULL, 0),
    (2017, 25, 10, 1312, NULL, NULL, NULL, '46.5', 11, NULL, 0),
    (2017, 25, 11, 1313, NULL, NULL, NULL, '46.2', 13, NULL, 0),
    (2017, 25, 12, 1314, NULL, NULL, NULL, '46', 14, NULL, 0),
    (2017, 25, 13, 1315, NULL, NULL, NULL, '45.6', 15, NULL, 0),
    (2017, 25, 14, 1316, NULL, NULL, NULL, '45', 16, NULL, 0),
    (2017, 25, 15, 1317, NULL, NULL, NULL, '44.6', 17, NULL, 0),
    (2017, 25, 16, 1318, NULL, NULL, NULL, '44.2', 18, NULL, 0),
    (2017, 25, 17, 1319, NULL, NULL, NULL, '44', 19, NULL, 0),
    (2017, 25, 18, 1320, NULL, NULL, NULL, '43.7', 20, NULL, 0),
    (2017, 25, 19, 1321, NULL, NULL, NULL, '43.5', 21, NULL, 0),
    (2017, 25, 20, 1322, NULL, NULL, NULL, '42.6', 22, NULL, 0),
    (2017, 25, 21, 1323, NULL, NULL, NULL, '42.2', 23, NULL, 0),
    (2017, 25, 22, 1324, NULL, NULL, NULL, '42.1', 24, NULL, 0),
    (2017, 25, 23, 1325, NULL, NULL, NULL, NULL, 25, NULL, 0),
    (2017, 25, 24, 1326, NULL, NULL, NULL, '41.6', 26, NULL, 0),
    (2017, 25, 25, 1327, NULL, NULL, NULL, '41.1', 27, NULL, 0),
    (2017, 25, 26, 1328, NULL, NULL, NULL, '38.6', 28, NULL, 0),
    (2017, 25, 27, 1329, NULL, NULL, NULL, '38.4', 29, NULL, 0),
    (2017, 25, 28, 1330, NULL, NULL, NULL, '37.3', 30, NULL, 0),
    (2017, 20, 4, 1331, NULL, NULL, NULL, '47', 4, NULL, 0),
    (2017, 20, 5, 1332, NULL, NULL, NULL, '46.6', 5, NULL, 0),
    (2017, 20, 6, 1333, NULL, NULL, NULL, '45.2', 6, NULL, 0),
    (2017, 26, 4, 1334, NULL, NULL, NULL, '46', 4, NULL, 0),
    (2017, 26, 5, 1335, NULL, NULL, NULL, '45.4', 5, NULL, 0),
    (2017, 21, 4, 1336, NULL, NULL, NULL, '48.1', 4, NULL, 0),
    (2017, 21, 5, 1337, NULL, NULL, NULL, '48.1', 4, NULL, 0),
    (2017, 21, 6, 1338, NULL, NULL, NULL, '48', 6, NULL, 0),
    (2017, 21, 7, 1339, NULL, NULL, NULL, '47.3', 7, NULL, 0),
    (2017, 21, 8, 1340, NULL, NULL, NULL, '47.3', 7, NULL, 0),
    (2017, 21, 9, 1341, NULL, NULL, NULL, '47.2', 9, NULL, 0),
    (2017, 21, 10, 1342, NULL, NULL, NULL, '46.9', 10, NULL, 0),
    (2017, 21, 11, 1343, NULL, NULL, NULL, '46.5', 12, NULL, 0),
    (2017, 21, 12, 1344, NULL, NULL, NULL, '46.3', 13, NULL, 0),
    (2017, 21, 13, 1345, NULL, NULL, NULL, '44.9', 14, NULL, 0),
    (2017, 21, 14, 1346, NULL, NULL, NULL, '42.9', 16, NULL, 0),
    (2017, 21, 15, 1347, NULL, NULL, NULL, '42.7', 17, NULL, 0),
    (2017, 21, 16, 1348, NULL, NULL, NULL, '42.1', 18, NULL, 0),
    (2017, 21, 17, 1349, NULL, NULL, NULL, '41.4', 19, NULL, 0),
    (2017, 21, 18, 1350, NULL, NULL, NULL, '41.4', 19, NULL, 0),
    (2017, 21, 19, 1351, NULL, NULL, NULL, '40.2', 21, NULL, 0),
    (2017, 21, 20, 1352, NULL, NULL, NULL, '39.6', 22, NULL, 0),
    (2017, 21, 21, 1353, NULL, NULL, NULL, '39', 23, NULL, 0),
    (2017, 21, 22, 1354, NULL, NULL, NULL, '38.7', 24, NULL, 0),
    (2017, 21, 23, 1355, NULL, NULL, NULL, '38.6', 25, NULL, 0),
    (2019, 16, 10, 1356, NULL, NULL, NULL, '41.5', 1, NULL, 0),
    (2019, 16, 11, 1357, NULL, NULL, NULL, '40', 2, NULL, 0),
    (2019, 16, 12, 1358, NULL, NULL, NULL, '39', 3, NULL, 0),
    (2019, 12, 7, 1359, NULL, NULL, NULL, '49', 1, NULL, 0),
    (2019, 12, 8, 1360, NULL, NULL, NULL, '43', 2, NULL, 0),
    (2019, 12, 9, 1361, NULL, NULL, NULL, '41', 3, NULL, 0),
    (2019, 11, 3, 1362, NULL, NULL, NULL, '44', 1, NULL, 0),
    (2019, 11, 4, 1363, NULL, NULL, NULL, '43', 2, NULL, 0),
    (2019, 11, 5, 1364, NULL, NULL, NULL, '42', 3, NULL, 0),
    (2019, 14, 7, 1365, NULL, NULL, NULL, '47', 1, NULL, 0),
    (2019, 14, 8, 1366, NULL, NULL, NULL, '43', 2, NULL, 0),
    (2019, 14, 9, 1367, NULL, NULL, NULL, '42.5', 3, NULL, 0),
    (2019, 13, 5, 1368, NULL, NULL, NULL, '45', 1, NULL, 0),
    (2019, 13, 6, 1369, NULL, NULL, NULL, '41', 3, NULL, 0),
    (2019, 15, 3, 1370, NULL, NULL, NULL, '46', 1, NULL, 0),
    (2019, 15, 4, 1371, NULL, NULL, NULL, '44', 2, NULL, 0),
    (2019, 15, 5, 1372, NULL, NULL, NULL, '40', 3, NULL, 0),
    (2019, 21, 8, 1373, NULL, NULL, NULL, '42.5', 1, NULL, 0),
    (2019, 21, 9, 1374, NULL, NULL, NULL, '42', 2, NULL, 0),
    (2019, 21, 10, 1375, NULL, NULL, NULL, '41.5', 3, NULL, 0),
    (2019, 18, 1, 1376, NULL, NULL, NULL, '48', 1, NULL, 0),
    (2019, 18, 2, 1377, NULL, NULL, NULL, '47', 2, NULL, 0),
    (2019, 18, 3, 1378, NULL, NULL, NULL, '44', 3, NULL, 0),
    (2019, 20, 10, 1379, NULL, NULL, NULL, '42', 2, NULL, 0),
    (2019, 20, 11, 1380, NULL, NULL, NULL, '41', 3, NULL, 0),
    (2019, 19, 1, 1381, NULL, NULL, NULL, '47.5', 1, NULL, 0),
    (2019, 19, 2, 1382, NULL, NULL, NULL, '45.5', 2, NULL, 0),
    (2019, 19, 3, 1383, NULL, NULL, NULL, '43', 3, NULL, 0),
    (2019, 23, 4, 1384, NULL, NULL, NULL, '46', 1, NULL, 0),
    (2019, 23, 5, 1385, NULL, NULL, NULL, '44', 2, NULL, 0),
    (2019, 23, 6, 1386, NULL, NULL, NULL, '43.5', 3, NULL, 0),
    (2019, 17, 4, 1387, NULL, NULL, NULL, '43.5', 1, NULL, 0),
    (2019, 17, 5, 1388, NULL, NULL, NULL, '42', 2, NULL, 0),
    (2019, 17, 6, 1389, NULL, NULL, NULL, '41', 3, NULL, 0),
    (2019, 22, 19, 1390, NULL, NULL, NULL, '44.5', 1, NULL, 0),
    (2019, 22, 20, 1391, NULL, NULL, NULL, '43.5', 2, NULL, 0),
    (2019, 22, 21, 1392, NULL, NULL, NULL, '43', 3, NULL, 0),
    (2019, 10, 14, 1393, NULL, NULL, NULL, '45', 1, NULL, 0),
    (2019, 10, 15, 1394, NULL, NULL, NULL, '43.5', 2, NULL, 0),
    (2019, 10, 16, 1395, NULL, NULL, NULL, '42.5', 3, NULL, 0),
    (2019, 6, 17, 1396, NULL, NULL, NULL, '43.5', 1, NULL, 0),
    (2019, 6, 18, 1397, NULL, NULL, NULL, '41.5', 2, NULL, 0),
    (2019, 6, 19, 1398, NULL, NULL, NULL, '41', 3, NULL, 0),
    (2019, 7, 33, 1399, NULL, NULL, NULL, '43', 1, NULL, 0),
    (2019, 7, 34, 1400, NULL, NULL, NULL, '42', 2, NULL, 0),
    (2019, 7, 35, 1401, NULL, NULL, NULL, '41', 3, NULL, 0),
    (2019, 8, 31, 1402, NULL, NULL, NULL, '43.5', 1, NULL, 0),
    (2019, 8, 32, 1403, NULL, NULL, NULL, '43', 2, NULL, 0),
    (2019, 8, 33, 1404, NULL, NULL, NULL, '42.5', 3, NULL, 0),
    (2019, 9, 16, 1405, NULL, NULL, NULL, '46.5', 1, NULL, 0),
    (2019, 9, 17, 1406, NULL, NULL, NULL, '42.5', 2, NULL, 0),
    (2019, 9, 18, 1407, NULL, NULL, NULL, '41', 3, NULL, 0),
    (2019, 5, 15, 1408, NULL, NULL, NULL, '48', 1, NULL, 0),
    (2019, 5, 16, 1409, NULL, NULL, NULL, '45', 2, NULL, 0),
    (2019, 5, 17, 1410, NULL, NULL, NULL, '44.5', 3, NULL, 0),
    (2025, 5, 4, 1411, NULL, NULL, NULL, '49.5', 1, NULL, 0),
    (2025, 5, 5, 1412, NULL, NULL, NULL, '43.5', 3, NULL, 0),
    (2025, 6, 4, 1413, NULL, NULL, NULL, '42.5', 4, NULL, 0),
    (2025, 6, 5, 1414, NULL, NULL, NULL, '42', 5, NULL, 0),
    (2025, 2, 4, 1415, NULL, NULL, NULL, '45.5', 3, NULL, 0),
    (2025, 1, 4, 1416, NULL, NULL, NULL, '43', 4, NULL, 0),
    (2025, 1, 5, 1417, NULL, NULL, NULL, '40', 5, NULL, 0),
    (2025, 1, 6, 1418, NULL, NULL, NULL, '40', 5, NULL, 0),
    (2025, 1, 7, 1419, NULL, NULL, NULL, '40', 5, NULL, 0),
    (2025, 1, 8, 1420, NULL, NULL, NULL, '40', 5, NULL, 0),
    (2025, 1, 9, 1421, NULL, NULL, NULL, '40', 5, NULL, 0),
    (2025, 1, 10, 1422, NULL, NULL, NULL, '40', 5, NULL, 0),
    (2025, 7, 4, 1423, NULL, NULL, NULL, '42', 4, NULL, 0),
    (2025, 8, 4, 1424, NULL, NULL, NULL, '42', 4, NULL, 0),
    (2025, 8, 5, 1425, NULL, NULL, NULL, '41.5', 5, NULL, 0),
    (2025, 8, 6, 1426, NULL, NULL, NULL, '41.5', 5, NULL, 0),
    (2025, 8, 7, 1427, NULL, NULL, NULL, '41.5', 5, NULL, 0),
    (2025, 8, 8, 1428, NULL, NULL, NULL, '41', 8, NULL, 0),
    (2025, 8, 9, 1429, NULL, NULL, NULL, '40.5', 9, NULL, 0),
    (2025, 20, 4, 1430, NULL, NULL, NULL, '43', 4, NULL, 0),
    (2025, 20, 5, 1431, NULL, NULL, NULL, '42', 5, NULL, 0),
    (2025, 19, 3, 1432, NULL, NULL, NULL, '42', 4, NULL, 0),
    (2025, 19, 4, 1433, NULL, NULL, NULL, '42', 4, NULL, 0),
    (2025, 19, 5, 1434, NULL, NULL, NULL, '41', 6, NULL, 0),
    (2025, 19, 6, 1435, NULL, NULL, NULL, '40.5', 7, NULL, 0),
    (2025, 19, 7, 1436, NULL, NULL, NULL, '40.5', 7, NULL, 0),
    (2025, 19, 8, 1437, NULL, NULL, NULL, '40', 9, NULL, 0),
    (2025, 19, 9, 1438, NULL, NULL, NULL, '40', 9, NULL, 0),
    (2025, 19, 10, 1439, NULL, NULL, NULL, '40', 9, NULL, 0),
    (2025, 18, 4, 1440, NULL, NULL, NULL, '47.5', 2, NULL, 0),
    (2025, 18, 5, 1441, NULL, NULL, NULL, '42.5', 4, NULL, 0),
    (2025, 18, 6, 1442, NULL, NULL, NULL, '41.5', 5, NULL, 0),
    (2025, 18, 7, 1443, NULL, NULL, NULL, '40.5', 6, NULL, 0),
    (2025, 18, 8, 1444, NULL, NULL, NULL, '40', 7, NULL, 0),
    (2025, 18, 9, 1445, NULL, NULL, NULL, '40', 7, NULL, 0),
    (2025, 18, 10, 1446, NULL, NULL, NULL, '40', 7, NULL, 0),
    (2025, 18, 11, 1447, NULL, NULL, NULL, '40', 7, NULL, 0),
    (2025, 18, 12, 1448, NULL, NULL, NULL, '40', 7, NULL, 0),
    (2025, 18, 13, 1449, NULL, NULL, NULL, '40', 7, NULL, 0),
    (2025, 17, 4, 1450, NULL, NULL, NULL, '42', 4, NULL, 0),
    (2025, 17, 5, 1451, NULL, NULL, NULL, '41', 5, NULL, 0),
    (2025, 17, 6, 1452, NULL, NULL, NULL, '41', 5, NULL, 0),
    (2025, 17, 7, 1453, NULL, NULL, NULL, '40', 7, NULL, 0),
    (2025, 17, 8, 1454, NULL, NULL, NULL, '39.5', 9, NULL, 0),
    (2025, 17, 9, 1455, NULL, NULL, NULL, '39.5', 9, NULL, 0),
    (2025, 16, 3, 1456, NULL, NULL, NULL, '41.5', 4, NULL, 0),
    (2025, 16, 4, 1457, NULL, NULL, NULL, '41.5', 4, NULL, 0),
    (2025, 16, 5, 1458, NULL, NULL, NULL, '40.5', 6, NULL, 0),
    (2025, 16, 6, 1459, NULL, NULL, NULL, '40.5', 6, NULL, 0),
    (2025, 16, 7, 1460, NULL, NULL, NULL, '40.5', 6, NULL, 0),
    (2025, 16, 8, 1461, NULL, NULL, NULL, '39.5', 9, NULL, 0),
    (2025, 16, 9, 1462, NULL, NULL, NULL, '39.5', 9, NULL, 0),
    (2025, 16, 10, 1463, NULL, NULL, NULL, '38.5', 11, NULL, 0),
    (2025, 16, 11, 1464, NULL, NULL, NULL, '38.5', 11, NULL, 0),
    (2025, 10, 4, 1465, NULL, NULL, NULL, '44', 4, NULL, 0),
    (2025, 10, 5, 1466, NULL, NULL, NULL, '41', 5, NULL, 0),
    (2025, 10, 6, 1467, NULL, NULL, NULL, '40.5', 6, NULL, 0),
    (2025, 10, 7, 1468, NULL, NULL, NULL, '40.5', 6, NULL, 0),
    (2025, 10, 8, 1469, NULL, NULL, NULL, '40.5', 6, NULL, 0),
    (2025, 10, 9, 1470, NULL, NULL, NULL, '40.5', 6, NULL, 0),
    (2025, 10, 10, 1471, NULL, NULL, NULL, '40.5', 6, NULL, 0),
    (2025, 11, 4, 1472, NULL, NULL, NULL, '47', 2, NULL, 0),
    (2025, 11, 5, 1473, NULL, NULL, NULL, '41.5', 4, NULL, 0),
    (2025, 11, 6, 1474, NULL, NULL, NULL, '41', 5, NULL, 0),
    (2025, 11, 7, 1475, NULL, NULL, NULL, '41', 5, NULL, 0),
    (2025, 11, 8, 1476, NULL, NULL, NULL, '40', 7, NULL, 0),
    (2025, 11, 9, 1477, NULL, NULL, NULL, '40', 7, NULL, 0),
    (2025, 11, 10, 1478, NULL, NULL, NULL, '40', 7, NULL, 0),
    (2025, 11, 11, 1479, NULL, NULL, NULL, '40', 7, NULL, 0),
    (2025, 11, 12, 1480, NULL, NULL, NULL, '40', 7, NULL, 0),
    (2025, 11, 13, 1481, NULL, NULL, NULL, '40', 7, NULL, 0),
    (2025, 11, 14, 1482, NULL, NULL, NULL, '39.5', 14, NULL, 0),
    (2025, 11, 15, 1483, NULL, NULL, NULL, '39.5', 14, NULL, 0),
    (2025, 11, 16, 1484, NULL, NULL, NULL, '39.5', 14, NULL, 0),
    (2025, 11, 17, 1485, NULL, NULL, NULL, '39.5', 14, NULL, 0),
    (2025, 12, 4, 1486, NULL, NULL, NULL, '41.5', 4, NULL, 0),
    (2025, 12, 5, 1487, NULL, NULL, NULL, '41.5', 4, NULL, 0),
    (2025, 12, 6, 1488, NULL, NULL, NULL, '41', 6, NULL, 0),
    (2025, 12, 7, 1489, NULL, NULL, NULL, '40.5', 7, NULL, 0),
    (2025, 12, 8, 1490, NULL, NULL, NULL, '40.5', 7, NULL, 0),
    (2025, 12, 9, 1491, NULL, NULL, NULL, '40', 9, NULL, 0),
    (2025, 12, 10, 1492, NULL, NULL, NULL, '40', 9, NULL, 0),
    (2025, 12, 11, 1493, NULL, NULL, NULL, '40', 9, NULL, 0),
    (2025, 13, 4, 1494, NULL, NULL, NULL, '43.5', 4, NULL, 0),
    (2025, 13, 5, 1495, NULL, NULL, NULL, '43', 5, NULL, 0),
    (2025, 13, 6, 1496, NULL, NULL, NULL, '40', 6, NULL, 0),
    (2025, 13, 7, 1497, NULL, NULL, NULL, '40', 6, NULL, 0),
    (2025, 13, 8, 1498, NULL, NULL, NULL, '40', 6, NULL, 0),
    (2025, 13, 9, 1499, NULL, NULL, NULL, '40', 6, NULL, 0),
    (2025, 13, 10, 1500, NULL, NULL, NULL, '40', 6, NULL, 0),
    (2025, 15, 4, 1501, NULL, NULL, NULL, '43.5', 4, NULL, 0),
    (2025, 15, 5, 1502, NULL, NULL, NULL, '41.5', 5, NULL, 0),
    (2025, 15, 6, 1503, NULL, NULL, NULL, '41', 6, NULL, 0),
    (2025, 15, 7, 1504, NULL, NULL, NULL, '40', 7, NULL, 0),
    (2025, 15, 8, 1505, NULL, NULL, NULL, '40', 7, NULL, 0),
    (2025, 15, 9, 1506, NULL, NULL, NULL, '40', 7, NULL, 0),
    (2025, 15, 10, 1507, NULL, NULL, NULL, '39', 10, NULL, 0),
    (2025, 14, 4, 1508, NULL, NULL, NULL, '41.5', 4, NULL, 0),
    (2025, 14, 5, 1509, NULL, NULL, NULL, '41.5', 4, NULL, 0),
    (2025, 14, 6, 1510, NULL, NULL, NULL, '40.5', 6, NULL, 0),
    (2025, 14, 7, 1511, NULL, NULL, NULL, '40.5', 6, NULL, 0),
    (2025, 14, 8, 1512, NULL, NULL, NULL, '40', 8, NULL, 0),
    (2025, 14, 9, 1513, NULL, NULL, NULL, '40', 8, NULL, 0),
    (2025, 14, 10, 1514, NULL, NULL, NULL, '40', 8, NULL, 0),
    (2025, 14, 11, 1515, NULL, NULL, NULL, '40', 8, NULL, 0),
    (2025, 14, 12, 1516, NULL, NULL, NULL, '40', 8, NULL, 0),
    (2025, 14, 13, 1517, NULL, NULL, NULL, '40', 8, NULL, 0),
    (2025, 9, 4, 1518, NULL, NULL, NULL, '42', 4, NULL, 0),
    (2025, 9, 5, 1519, NULL, NULL, NULL, '41.5', 5, NULL, 0),
    (2025, 9, 6, 1520, NULL, NULL, NULL, '41.5', 5, NULL, 0),
    (2025, 9, 7, 1521, NULL, NULL, NULL, '41', 7, NULL, 0),
    (2025, 9, 8, 1522, NULL, NULL, NULL, '40', 8, NULL, 0),
    (2025, 9, 9, 1523, NULL, NULL, NULL, '40', 8, NULL, 0),
    (2025, 9, 10, 1524, NULL, NULL, NULL, '40', 8, NULL, 0),
    (2025, 26, 4, 1525, NULL, NULL, NULL, '42', 4, NULL, 0),
    (2025, 26, 5, 1526, NULL, NULL, NULL, '41.5', 5, NULL, 0),
    (2025, 26, 6, 1527, NULL, NULL, NULL, '41.5', 5, NULL, 0),
    (2025, 26, 7, 1528, NULL, NULL, NULL, '40.5', 7, NULL, 0),
    (2025, 26, 8, 1529, NULL, NULL, NULL, '40.5', 7, NULL, 0),
    (2025, 26, 9, 1530, NULL, NULL, NULL, '40', 9, NULL, 0),
    (2025, 26, 10, 1531, NULL, NULL, NULL, '40', 9, NULL, 0),
    (2025, 26, 11, 1532, NULL, NULL, NULL, '40', 9, NULL, 0),
    (2025, 26, 12, 1533, NULL, NULL, NULL, '39.5', 12, NULL, 0),
    (2025, 26, 13, 1534, NULL, NULL, NULL, '39.5', 12, NULL, 0),
    (2025, 26, 14, 1535, NULL, NULL, NULL, '39.5', 12, NULL, 0),
    (2025, 26, 15, 1536, NULL, NULL, NULL, '39', 15, NULL, 0),
    (2025, 26, 16, 1537, NULL, NULL, NULL, '39', 15, NULL, 0),
    (2025, 26, 17, 1538, NULL, NULL, NULL, '39', 15, NULL, 0),
    (2025, 21, 4, 1539, NULL, NULL, NULL, '42', 4, NULL, 0),
    (2025, 21, 5, 1540, NULL, NULL, NULL, '42', 4, NULL, 0),
    (2025, 21, 6, 1541, NULL, NULL, NULL, '41', 6, NULL, 0),
    (2025, 21, 7, 1542, NULL, NULL, NULL, '40.5', 7, NULL, 0),
    (2025, 21, 8, 1543, NULL, NULL, NULL, '40.5', 7, NULL, 0),
    (2025, 21, 9, 1544, NULL, NULL, NULL, '40', 9, NULL, 0),
    (2025, 21, 10, 1545, NULL, NULL, NULL, '40', 9, NULL, 0),
    (2025, 22, 4, 1546, NULL, NULL, NULL, '45', 3, NULL, 0),
    (2025, 22, 5, 1547, NULL, NULL, NULL, '43', 4, NULL, 0),
    (2025, 22, 6, 1548, NULL, NULL, NULL, '41', 5, NULL, 0),
    (2025, 22, 7, 1549, NULL, NULL, NULL, '41', 5, NULL, 0),
    (2025, 22, 8, 1550, NULL, NULL, NULL, '40', 7, NULL, 0),
    (2025, 22, 9, 1551, NULL, NULL, NULL, '40', 7, NULL, 0),
    (2025, 25, 4, 1552, NULL, NULL, NULL, '43', 4, NULL, 0),
    (2025, 25, 5, 1553, NULL, NULL, NULL, '40.5', 5, NULL, 0),
    (2025, 25, 6, 1554, NULL, NULL, NULL, '40', 6, NULL, 0),
    (2025, 25, 7, 1555, NULL, NULL, NULL, '40', 6, NULL, 0),
    (2025, 25, 8, 1556, NULL, NULL, NULL, '40', 6, NULL, 0),
    (2025, 25, 9, 1557, NULL, NULL, NULL, '40', 6, NULL, 0),
    (2025, 25, 10, 1558, NULL, NULL, NULL, '40', 6, NULL, 0),
    (2025, 25, 11, 1559, NULL, NULL, NULL, '40', 6, NULL, 0),
    (2025, 24, 4, 1560, NULL, NULL, NULL, '42.5', 3, NULL, 0),
    (2025, 24, 5, 1561, NULL, NULL, NULL, '41.5', 4, NULL, 0),
    (2025, 24, 6, 1562, NULL, NULL, NULL, '41', 5, NULL, 0),
    (2025, 24, 7, 1563, NULL, NULL, NULL, '41', 5, NULL, 0),
    (2025, 24, 8, 1564, NULL, NULL, NULL, '40.5', 7, NULL, 0),
    (2025, 24, 9, 1565, NULL, NULL, NULL, '40', 8, NULL, 0),
    (2025, 24, 10, 1566, NULL, NULL, NULL, '39', 9, NULL, 0),
    (2025, 24, 11, 1567, NULL, NULL, NULL, '38.5', 10, NULL, 0),
    (2025, 23, 4, 1568, NULL, NULL, NULL, '42.5', 4, NULL, 0),
    (2025, 23, 5, 1569, NULL, NULL, NULL, '40.5', 5, NULL, 0),
    (2025, 23, 6, 1570, NULL, NULL, NULL, '40', 6, NULL, 0),
    (2025, 23, 7, 1571, NULL, NULL, NULL, '39.5', 7, NULL, 0),
    (2025, 32, 4, 1572, NULL, NULL, NULL, '49', 1, NULL, 0),
    (2025, 32, 5, 1573, NULL, NULL, NULL, '42', 4, NULL, 0),
    (2025, 32, 6, 1574, NULL, NULL, NULL, '40.5', 5, NULL, 0),
    (2025, 31, 4, 1575, NULL, NULL, NULL, '47.5', 2, NULL, 0),
    (2025, 37, 4, 1576, NULL, NULL, NULL, '43', 4, NULL, 0),
    (2025, 37, 5, 1577, NULL, NULL, NULL, '40.5', 5, NULL, 0),
    (2025, 37, 6, 1578, NULL, NULL, NULL, '39.5', 6, NULL, 0),
    (2025, 37, 7, 1579, NULL, NULL, NULL, '39.5', 6, NULL, 0),
    (2025, 34, 1, 1580, NULL, NULL, NULL, '43', 4, NULL, 0),
    (2025, 34, 2, 1581, NULL, NULL, NULL, '42', 5, NULL, 0),
    (2025, 34, 3, 1582, NULL, NULL, NULL, '40', 6, NULL, 0),
    (2025, 34, 4, 1583, NULL, NULL, NULL, '40', 6, NULL, 0),
    (2025, 34, 5, 1584, NULL, NULL, NULL, '38.5', 8, NULL, 0),
    (2025, 33, 1, 1585, NULL, NULL, NULL, '44.5', 4, NULL, 0),
    (2025, 33, 2, 1586, NULL, NULL, NULL, '40', 5, NULL, 0),
    (2025, 33, 3, 1587, NULL, NULL, NULL, '40', 5, NULL, 0),
    (2025, 33, 4, 1588, NULL, NULL, NULL, '40', 5, NULL, 0),
    (2025, 33, 5, 1589, NULL, NULL, NULL, '40', 5, NULL, 0),
    (2025, 33, 6, 1590, NULL, NULL, NULL, '37.5', 9, NULL, 0),
    (2025, 27, 4, 1591, NULL, NULL, NULL, '49', 1, NULL, 0),
    (2025, 27, 5, 1592, NULL, NULL, NULL, '47', 2, NULL, 0),
    (2025, 27, 6, 1593, NULL, NULL, NULL, '41.5', 4, NULL, 0),
    (2025, 27, 7, 1594, NULL, NULL, NULL, '41', 5, NULL, 0),
    (2025, 27, 8, 1595, NULL, NULL, NULL, '41', 5, NULL, 0),
    (2025, 27, 9, 1596, NULL, NULL, NULL, '40', 7, NULL, 0),
    (2025, 27, 10, 1597, NULL, NULL, NULL, '40', 7, NULL, 0),
    (2025, 27, 11, 1598, NULL, NULL, NULL, '40', 7, NULL, 0),
    (2025, 27, 12, 1599, NULL, NULL, NULL, '40', 7, NULL, 0),
    (2025, 27, 13, 1600, NULL, NULL, NULL, '40', 7, NULL, 0),
    (2025, 27, 14, 1601, NULL, NULL, NULL, '40', 7, NULL, 0),
    (2025, 27, 15, 1602, NULL, NULL, NULL, '40', 7, NULL, 0),
    (2025, 27, 16, 1603, NULL, NULL, NULL, '40', 7, NULL, 0),
    (2025, 27, 17, 1604, NULL, NULL, NULL, '40', 7, NULL, 0),
    (2025, 27, 18, 1605, NULL, NULL, NULL, '5', 16, NULL, 0),
    (2025, 30, 4, 1606, NULL, NULL, NULL, '42.5', 4, NULL, 0),
    (2025, 30, 5, 1607, NULL, NULL, NULL, '42', 5, NULL, 0),
    (2025, 30, 6, 1608, NULL, NULL, NULL, '40', 6, NULL, 0),
    (2025, 30, 7, 1609, NULL, NULL, NULL, '40', 6, NULL, 0),
    (2025, 28, 4, 1610, NULL, NULL, NULL, '50', 1, NULL, 0),
    (2025, 36, 3, 1611, NULL, NULL, NULL, '50', 1, NULL, 0),
    (2025, 35, 4, 1612, NULL, NULL, NULL, '44', 4, NULL, 0),
    (2025, 35, 5, 1613, NULL, NULL, NULL, '40.5', 5, NULL, 0),
    (2023, 6, 1, 1614, NULL, NULL, NULL, NULL, 1, NULL, 0),
    (2023, 2, 1, 1615, NULL, NULL, NULL, NULL, 1, NULL, 0),
    (2023, 5, 1, 1616, NULL, NULL, NULL, NULL, 1, NULL, 0),
    (2023, 4, 1, 1617, NULL, NULL, NULL, NULL, 1, NULL, 0),
    (2023, 1, 1, 1618, NULL, NULL, NULL, NULL, 1, NULL, 0),
    (2023, 3, 1, 1619, NULL, NULL, NULL, NULL, 1, NULL, 0);

INSERT INTO BEST_IN_SHOW (championship_year, contest_no, entry_no, award_division) VALUES
    (1999,  7, 1, 'Overall'),      -- Karl-Heinz Hille, Imperial Partial Beard
    (2011,  1, 1, 'Overall'),      -- Elmar Weisser, Full Beard Freestyle
    (2017,  9, 1, 'Overall'),      -- Jason Kiley, entered in Full Beard Freestyle
    (2019, 14, 7, 'Men'),          -- Eugen Hipp, Imperial Moustache
    (2019,  4, 1, 'Women'),        -- Muege/Müge Mete, Realistic Moustache
    (2023,  4, 1, 'Beardsmen'),    -- Norbert Topf, Freestyle Cheekbeard
    (2025, 11, 1, 'Men'),          -- Trevor Mustafa, Full Beard Natural 20 - 30 cm
    (2025,  1, 1, 'Women');        -- Kristin Wagner, Craft Creative Beard


INSERT INTO CLUB (club_id, club_name, club_type, country, founded_year, membership_status, contact_email) VALUES
    (1,  'Mad Viking Beard Club Pennsylvania',            NULL,                                  'USA',            NULL, NULL, NULL),
    (2,  'Ostbayerische Bart- und Schnauzerclub',         'Beard and moustache club',            'Germany',        1996, NULL, NULL),
    (3,  'The Fellowship of the Beard NZ',                'Community',                           'New Zealand',    NULL, NULL, NULL),
    (4,  'Snorrenclub Antwerpen',                         'Moustache club',                      'Belgium',        NULL, NULL, NULL),
    (5,  'Austin Facial Hair Club',                       'Facial hair club',                    'USA',            NULL, NULL, 'austinfacialhairclub@gmail.com'),
    (6,  'Bart & Kultur Club "Belle Moustache" eV',       'Beard and culture club',              'Germany',        2002, NULL, NULL),
    (7,  'Den Norske Mustach-club av -91',                'Moustache club',                      'Norway',         NULL, NULL, NULL),
    (8,  'South Central Alaska Beard and Moustache Club', 'Beard and moustache club',            'USA',            NULL, NULL, NULL),
    (9,  'The Handlebar Club',                            'Gentlemen''s club and moustache club','United Kingdom', 1947, NULL, NULL),
    (10, 'First Berliner Beard Club',                     NULL,                                  'Germany',        NULL, NULL, NULL),
    (11, 'Beard Team USA',                                'Community advocacy organization',     'USA',            NULL, NULL, NULL),
    (12, 'Svenska Mustaschklubben',                       'Moustache club',                      'Sweden',         1984, NULL, NULL);

INSERT INTO CLUB_SOCIAL_LINK (club_id, social_link) VALUES
    (2,  'https://bcostbayern.de/'),
    (5,  'https://www.austinfacialhairclub.com/'),
    (5,  'https://www.facebook.com/austinfacialhairclub'),
    (5,  'https://instagram.com/austinfacialhairclub'),
    (5,  'https://www.twitch.tv/austinfacialhairclub'),
    (5,  'https://www.flickr.com/people/131537946@N03/'),
    (8,  'https://www.facebook.com/SCAKBMC/'),
    (9,  'https://handlebarclub.co.uk/'),
    (11, 'https://www.beardteamusa.org/');

UPDATE CHAMPIONSHIP SET venue_id = 1 WHERE championship_year = 1990;  -- Höfen/Enz, Germany
UPDATE CHAMPIONSHIP SET venue_id = 2 WHERE championship_year = 1995;  -- Pforzheim, Germany
UPDATE CHAMPIONSHIP SET venue_id = 3 WHERE championship_year IN (1997, 2011);  -- Trondheim, Norway
UPDATE CHAMPIONSHIP SET venue_id = 4 WHERE championship_year = 1999;  -- Ystad, Sweden
UPDATE CHAMPIONSHIP SET venue_id = 5 WHERE championship_year = 2001;  -- Schömberg, Germany
UPDATE CHAMPIONSHIP SET venue_id = 6 WHERE championship_year = 2003;  -- Carson City, Nevada, USA
UPDATE CHAMPIONSHIP SET venue_id = 7 WHERE championship_year = 2005;  -- Berlin, Germany
UPDATE CHAMPIONSHIP SET venue_id = 8 WHERE championship_year = 2007;  -- Brighton, England
UPDATE CHAMPIONSHIP SET venue_id = 9 WHERE championship_year = 2009;  -- Anchorage, Alaska, USA
UPDATE CHAMPIONSHIP SET venue_id = 10 WHERE championship_year = 2013;  -- Leinfelden-Echterdingen, Germany
UPDATE CHAMPIONSHIP SET venue_id = 11 WHERE championship_year = 2015;  -- Leogang, Austria
UPDATE CHAMPIONSHIP SET venue_id = 12 WHERE championship_year = 2017;  -- Austin, Texas, USA
UPDATE CHAMPIONSHIP SET venue_id = 13 WHERE championship_year = 2019;  -- Antwerp, Belgium
UPDATE CHAMPIONSHIP SET venue_id = 14 WHERE championship_year = 2021;  -- Auckland, New Zealand
UPDATE CHAMPIONSHIP SET venue_id = 15 WHERE championship_year = 2023;  -- Burghausen, Germany
UPDATE CHAMPIONSHIP SET venue_id = 16 WHERE championship_year = 2025;  -- Pittsburgh, Pennsylvania, USA
UPDATE CHAMPIONSHIP SET venue_id = 17 WHERE championship_year = 2027;  -- Blackpool, England
UPDATE CHAMPIONSHIP SET venue_id = 18 WHERE championship_year = 2029;  -- Spokane, Washington, USA
 


INSERT INTO COMPETITOR_NICKNAME (competitor_id, nickname) VALUES
    (267, 'Ghost'),         -- Corey Giehl, Fairborn, OH, USA
    (270, 'Memo');          -- Mehmet Mete, Braunschweig, Germany
    
-- populate.sql: CHAMPIONSHIP_PHOTO_CREDIT
INSERT INTO CHAMPIONSHIP_PHOTO_CREDIT (championship_year, photo_credit) VALUES
    (2017, 'Greg Anderson'),
    (2019, 'bartweltmeister.de'),
    (2025, 'Greg Anderson Photography');

-- Host clubs (CLUB rows must already exist)
UPDATE CHAMPIONSHIP SET host_club_id = 7 WHERE championship_year IN (1997, 2011);
UPDATE CHAMPIONSHIP SET host_club_id = 9 WHERE championship_year = 2007;
UPDATE CHAMPIONSHIP SET host_club_id = 8 WHERE championship_year = 2009;
UPDATE CHAMPIONSHIP SET host_club_id = 6 WHERE championship_year = 2013;
UPDATE CHAMPIONSHIP SET host_club_id = 5 WHERE championship_year = 2017;
UPDATE CHAMPIONSHIP SET host_club_id = 4 WHERE championship_year = 2019;
UPDATE CHAMPIONSHIP SET host_club_id = 2 WHERE championship_year = 2023;
UPDATE CHAMPIONSHIP SET host_club_id = 1 WHERE championship_year = 2025;

-- 2021 was postponed to 2023 (Wikipedia: "Postponed to 2023 due to COVID-19").
INSERT INTO RESCHEDULED_TO (cancelled_year, replacement_year) VALUES (2021, 2023);

-- =====================================================================
-- ENTRY hometowns. Put AFTER the ENTRY insert.
-- Source: WBMC_Historical_Database_Completed.xlsx, All Results sheet, column
-- "Country / Region / Location", split into city / region / country.
-- 826 entries have a published location; all other entries stay NULL
-- (2011, 2013, 2015 and 2017 publish none).
-- =====================================================================

UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'Germany' WHERE championship_year = 1999 AND contest_no = 1 AND entry_no = 1;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'Germany' WHERE championship_year = 1999 AND contest_no = 1 AND entry_no = 2;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'Italy' WHERE championship_year = 1999 AND contest_no = 1 AND entry_no = 3;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'Germany' WHERE championship_year = 1999 AND contest_no = 2 AND entry_no = 1;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'Germany' WHERE championship_year = 1999 AND contest_no = 2 AND entry_no = 2;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'Germany' WHERE championship_year = 1999 AND contest_no = 2 AND entry_no = 3;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'Germany' WHERE championship_year = 1999 AND contest_no = 3 AND entry_no = 1;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'Germany' WHERE championship_year = 1999 AND contest_no = 3 AND entry_no = 2;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'Germany' WHERE championship_year = 1999 AND contest_no = 3 AND entry_no = 3;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'Germany' WHERE championship_year = 1999 AND contest_no = 4 AND entry_no = 1;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'Germany' WHERE championship_year = 1999 AND contest_no = 4 AND entry_no = 2;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'Sweden' WHERE championship_year = 1999 AND contest_no = 4 AND entry_no = 3;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'Germany' WHERE championship_year = 1999 AND contest_no = 5 AND entry_no = 1;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'Germany' WHERE championship_year = 1999 AND contest_no = 5 AND entry_no = 2;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'United Kingdom' WHERE championship_year = 1999 AND contest_no = 5 AND entry_no = 3;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'Germany' WHERE championship_year = 1999 AND contest_no = 6 AND entry_no = 1;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'USA' WHERE championship_year = 1999 AND contest_no = 6 AND entry_no = 2;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'Sweden' WHERE championship_year = 1999 AND contest_no = 6 AND entry_no = 3;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'Germany' WHERE championship_year = 1999 AND contest_no = 7 AND entry_no = 1;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'Germany' WHERE championship_year = 1999 AND contest_no = 7 AND entry_no = 2;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'Germany' WHERE championship_year = 1999 AND contest_no = 7 AND entry_no = 3;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'Germany' WHERE championship_year = 1999 AND contest_no = 8 AND entry_no = 1;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'Germany' WHERE championship_year = 1999 AND contest_no = 8 AND entry_no = 2;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'Italy' WHERE championship_year = 1999 AND contest_no = 8 AND entry_no = 3;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'Germany' WHERE championship_year = 1999 AND contest_no = 9 AND entry_no = 1;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'Germany' WHERE championship_year = 1999 AND contest_no = 9 AND entry_no = 2;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'Switzerland' WHERE championship_year = 1999 AND contest_no = 9 AND entry_no = 3;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'Germany' WHERE championship_year = 2001 AND contest_no = 1 AND entry_no = 1;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'Germany' WHERE championship_year = 2001 AND contest_no = 1 AND entry_no = 2;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'Germany' WHERE championship_year = 2001 AND contest_no = 1 AND entry_no = 3;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'Germany' WHERE championship_year = 2001 AND contest_no = 2 AND entry_no = 1;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'Germany' WHERE championship_year = 2001 AND contest_no = 2 AND entry_no = 2;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'Germany' WHERE championship_year = 2001 AND contest_no = 2 AND entry_no = 3;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'Germany' WHERE championship_year = 2001 AND contest_no = 3 AND entry_no = 1;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'Austria' WHERE championship_year = 2001 AND contest_no = 3 AND entry_no = 2;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'Germany' WHERE championship_year = 2001 AND contest_no = 3 AND entry_no = 3;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'Germany' WHERE championship_year = 2001 AND contest_no = 4 AND entry_no = 1;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'Germany' WHERE championship_year = 2001 AND contest_no = 4 AND entry_no = 2;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'Germany' WHERE championship_year = 2001 AND contest_no = 4 AND entry_no = 3;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'Germany' WHERE championship_year = 2001 AND contest_no = 5 AND entry_no = 1;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'Germany' WHERE championship_year = 2001 AND contest_no = 5 AND entry_no = 2;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'Germany' WHERE championship_year = 2001 AND contest_no = 5 AND entry_no = 3;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'Germany' WHERE championship_year = 2001 AND contest_no = 6 AND entry_no = 1;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'Germany' WHERE championship_year = 2001 AND contest_no = 6 AND entry_no = 2;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'Germany' WHERE championship_year = 2001 AND contest_no = 6 AND entry_no = 3;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'Germany' WHERE championship_year = 2001 AND contest_no = 7 AND entry_no = 1;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'Germany' WHERE championship_year = 2001 AND contest_no = 7 AND entry_no = 2;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'Germany' WHERE championship_year = 2001 AND contest_no = 7 AND entry_no = 3;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'Germany' WHERE championship_year = 2001 AND contest_no = 8 AND entry_no = 1;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'Germany' WHERE championship_year = 2001 AND contest_no = 8 AND entry_no = 2;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'Germany' WHERE championship_year = 2001 AND contest_no = 8 AND entry_no = 3;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'Germany' WHERE championship_year = 2001 AND contest_no = 9 AND entry_no = 1;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'USA' WHERE championship_year = 2001 AND contest_no = 9 AND entry_no = 2;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'Germany' WHERE championship_year = 2001 AND contest_no = 9 AND entry_no = 3;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'Germany' WHERE championship_year = 2001 AND contest_no = 10 AND entry_no = 1;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'Germany' WHERE championship_year = 2001 AND contest_no = 10 AND entry_no = 2;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'Germany' WHERE championship_year = 2001 AND contest_no = 10 AND entry_no = 3;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'Germany' WHERE championship_year = 2001 AND contest_no = 11 AND entry_no = 1;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'Germany' WHERE championship_year = 2001 AND contest_no = 11 AND entry_no = 2;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'Germany' WHERE championship_year = 2001 AND contest_no = 11 AND entry_no = 3;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'Germany' WHERE championship_year = 2001 AND contest_no = 12 AND entry_no = 1;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'Germany' WHERE championship_year = 2001 AND contest_no = 12 AND entry_no = 2;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'Italy' WHERE championship_year = 2001 AND contest_no = 12 AND entry_no = 3;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'Germany' WHERE championship_year = 2001 AND contest_no = 13 AND entry_no = 1;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'Austria' WHERE championship_year = 2001 AND contest_no = 13 AND entry_no = 2;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'Germany' WHERE championship_year = 2001 AND contest_no = 13 AND entry_no = 3;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'Germany' WHERE championship_year = 2001 AND contest_no = 14 AND entry_no = 1;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'Germany' WHERE championship_year = 2001 AND contest_no = 14 AND entry_no = 2;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'Italy' WHERE championship_year = 2001 AND contest_no = 14 AND entry_no = 3;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'Germany' WHERE championship_year = 2001 AND contest_no = 15 AND entry_no = 1;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'Germany' WHERE championship_year = 2001 AND contest_no = 15 AND entry_no = 2;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'Germany' WHERE championship_year = 2001 AND contest_no = 15 AND entry_no = 3;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'Germany' WHERE championship_year = 2001 AND contest_no = 16 AND entry_no = 1;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'Germany' WHERE championship_year = 2001 AND contest_no = 16 AND entry_no = 2;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'Germany' WHERE championship_year = 2001 AND contest_no = 16 AND entry_no = 3;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'United Kingdom' WHERE championship_year = 2001 AND contest_no = 17 AND entry_no = 1;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'Germany' WHERE championship_year = 2001 AND contest_no = 17 AND entry_no = 2;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'Italy' WHERE championship_year = 2001 AND contest_no = 17 AND entry_no = 3;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'Austria' WHERE championship_year = 2003 AND contest_no = 1 AND entry_no = 1;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'Germany' WHERE championship_year = 2003 AND contest_no = 1 AND entry_no = 2;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'Germany' WHERE championship_year = 2003 AND contest_no = 1 AND entry_no = 3;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'Germany' WHERE championship_year = 2003 AND contest_no = 2 AND entry_no = 1;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'Germany' WHERE championship_year = 2003 AND contest_no = 2 AND entry_no = 2;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'Austria' WHERE championship_year = 2003 AND contest_no = 2 AND entry_no = 3;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'USA' WHERE championship_year = 2003 AND contest_no = 3 AND entry_no = 1;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'Germany' WHERE championship_year = 2003 AND contest_no = 3 AND entry_no = 2;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'Germany' WHERE championship_year = 2003 AND contest_no = 4 AND entry_no = 1;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'USA' WHERE championship_year = 2003 AND contest_no = 4 AND entry_no = 2;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'Germany' WHERE championship_year = 2003 AND contest_no = 4 AND entry_no = 3;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'Germany' WHERE championship_year = 2003 AND contest_no = 5 AND entry_no = 1;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'Germany' WHERE championship_year = 2003 AND contest_no = 5 AND entry_no = 2;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'Germany' WHERE championship_year = 2003 AND contest_no = 5 AND entry_no = 3;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'USA' WHERE championship_year = 2003 AND contest_no = 6 AND entry_no = 1;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'Germany' WHERE championship_year = 2003 AND contest_no = 6 AND entry_no = 2;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'Switzerland' WHERE championship_year = 2003 AND contest_no = 6 AND entry_no = 3;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'Germany' WHERE championship_year = 2003 AND contest_no = 7 AND entry_no = 1;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'Germany' WHERE championship_year = 2003 AND contest_no = 7 AND entry_no = 2;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'Germany' WHERE championship_year = 2003 AND contest_no = 7 AND entry_no = 3;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'Germany' WHERE championship_year = 2003 AND contest_no = 8 AND entry_no = 1;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'Norway' WHERE championship_year = 2003 AND contest_no = 8 AND entry_no = 2;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'Germany' WHERE championship_year = 2003 AND contest_no = 8 AND entry_no = 3;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'USA' WHERE championship_year = 2003 AND contest_no = 9 AND entry_no = 1;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'USA' WHERE championship_year = 2003 AND contest_no = 9 AND entry_no = 2;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'Germany' WHERE championship_year = 2003 AND contest_no = 9 AND entry_no = 3;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'Germany' WHERE championship_year = 2003 AND contest_no = 10 AND entry_no = 1;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'Germany' WHERE championship_year = 2003 AND contest_no = 10 AND entry_no = 2;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'USA' WHERE championship_year = 2003 AND contest_no = 10 AND entry_no = 3;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'Germany' WHERE championship_year = 2003 AND contest_no = 11 AND entry_no = 1;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'Austria' WHERE championship_year = 2003 AND contest_no = 11 AND entry_no = 2;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'Germany' WHERE championship_year = 2003 AND contest_no = 11 AND entry_no = 3;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'Italy' WHERE championship_year = 2003 AND contest_no = 12 AND entry_no = 1;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'Norway' WHERE championship_year = 2003 AND contest_no = 12 AND entry_no = 2;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'Hong Kong' WHERE championship_year = 2003 AND contest_no = 12 AND entry_no = 3;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'Switzerland' WHERE championship_year = 2003 AND contest_no = 13 AND entry_no = 1;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'Switzerland' WHERE championship_year = 2003 AND contest_no = 13 AND entry_no = 2;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'United Kingdom' WHERE championship_year = 2003 AND contest_no = 14 AND entry_no = 1;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'USA' WHERE championship_year = 2003 AND contest_no = 14 AND entry_no = 2;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'Germany' WHERE championship_year = 2003 AND contest_no = 14 AND entry_no = 3;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'USA' WHERE championship_year = 2003 AND contest_no = 15 AND entry_no = 1;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'Germany' WHERE championship_year = 2003 AND contest_no = 15 AND entry_no = 2;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'Germany' WHERE championship_year = 2003 AND contest_no = 15 AND entry_no = 3;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'Germany' WHERE championship_year = 2003 AND contest_no = 16 AND entry_no = 1;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'Germany' WHERE championship_year = 2003 AND contest_no = 16 AND entry_no = 2;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'United Kingdom' WHERE championship_year = 2003 AND contest_no = 17 AND entry_no = 1;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'Germany' WHERE championship_year = 2003 AND contest_no = 17 AND entry_no = 2;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'Italy' WHERE championship_year = 2003 AND contest_no = 17 AND entry_no = 3;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'Germany' WHERE championship_year = 2005 AND contest_no = 1 AND entry_no = 1;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'Germany' WHERE championship_year = 2005 AND contest_no = 1 AND entry_no = 2;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'Italy' WHERE championship_year = 2005 AND contest_no = 1 AND entry_no = 3;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'Germany' WHERE championship_year = 2005 AND contest_no = 2 AND entry_no = 1;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'Switzerland' WHERE championship_year = 2005 AND contest_no = 2 AND entry_no = 2;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'Germany' WHERE championship_year = 2005 AND contest_no = 3 AND entry_no = 1;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'Germany' WHERE championship_year = 2005 AND contest_no = 3 AND entry_no = 2;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'USA' WHERE championship_year = 2005 AND contest_no = 3 AND entry_no = 3;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'Germany' WHERE championship_year = 2005 AND contest_no = 4 AND entry_no = 1;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'Switzerland' WHERE championship_year = 2005 AND contest_no = 4 AND entry_no = 2;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'USA' WHERE championship_year = 2005 AND contest_no = 4 AND entry_no = 3;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'Germany' WHERE championship_year = 2005 AND contest_no = 5 AND entry_no = 1;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'Germany' WHERE championship_year = 2005 AND contest_no = 5 AND entry_no = 2;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'Switzerland' WHERE championship_year = 2005 AND contest_no = 5 AND entry_no = 3;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'Germany' WHERE championship_year = 2005 AND contest_no = 6 AND entry_no = 1;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'Germany' WHERE championship_year = 2005 AND contest_no = 6 AND entry_no = 2;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'USA' WHERE championship_year = 2005 AND contest_no = 6 AND entry_no = 3;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'United Kingdom' WHERE championship_year = 2005 AND contest_no = 7 AND entry_no = 1;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'Germany' WHERE championship_year = 2005 AND contest_no = 7 AND entry_no = 2;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'Germany' WHERE championship_year = 2005 AND contest_no = 7 AND entry_no = 3;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'Germany' WHERE championship_year = 2005 AND contest_no = 8 AND entry_no = 1;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'Germany' WHERE championship_year = 2005 AND contest_no = 8 AND entry_no = 2;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'Germany' WHERE championship_year = 2005 AND contest_no = 8 AND entry_no = 3;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'Germany' WHERE championship_year = 2005 AND contest_no = 9 AND entry_no = 1;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'Germany' WHERE championship_year = 2005 AND contest_no = 9 AND entry_no = 2;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'Germany' WHERE championship_year = 2005 AND contest_no = 9 AND entry_no = 3;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'Germany' WHERE championship_year = 2005 AND contest_no = 10 AND entry_no = 1;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'Germany' WHERE championship_year = 2005 AND contest_no = 10 AND entry_no = 2;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'USA' WHERE championship_year = 2005 AND contest_no = 10 AND entry_no = 3;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'Germany' WHERE championship_year = 2005 AND contest_no = 11 AND entry_no = 1;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'Germany' WHERE championship_year = 2005 AND contest_no = 11 AND entry_no = 2;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'Italy' WHERE championship_year = 2005 AND contest_no = 11 AND entry_no = 3;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'United Kingdom' WHERE championship_year = 2005 AND contest_no = 12 AND entry_no = 1;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'Germany' WHERE championship_year = 2005 AND contest_no = 12 AND entry_no = 2;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'Germany' WHERE championship_year = 2005 AND contest_no = 12 AND entry_no = 3;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'Germany' WHERE championship_year = 2005 AND contest_no = 13 AND entry_no = 1;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'Germany' WHERE championship_year = 2005 AND contest_no = 13 AND entry_no = 2;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'Germany' WHERE championship_year = 2005 AND contest_no = 14 AND entry_no = 1;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'Germany' WHERE championship_year = 2005 AND contest_no = 14 AND entry_no = 2;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'Germany' WHERE championship_year = 2005 AND contest_no = 14 AND entry_no = 3;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'Germany' WHERE championship_year = 2005 AND contest_no = 15 AND entry_no = 1;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'Germany' WHERE championship_year = 2005 AND contest_no = 15 AND entry_no = 2;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'Germany' WHERE championship_year = 2005 AND contest_no = 15 AND entry_no = 3;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'Germany' WHERE championship_year = 2005 AND contest_no = 16 AND entry_no = 1;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'Germany' WHERE championship_year = 2005 AND contest_no = 16 AND entry_no = 2;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'Italy' WHERE championship_year = 2005 AND contest_no = 16 AND entry_no = 3;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'USA' WHERE championship_year = 2005 AND contest_no = 17 AND entry_no = 1;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'Italy' WHERE championship_year = 2005 AND contest_no = 17 AND entry_no = 2;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'Germany' WHERE championship_year = 2005 AND contest_no = 17 AND entry_no = 3;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'Germany' WHERE championship_year = 2007 AND contest_no = 1 AND entry_no = 1;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'Germany' WHERE championship_year = 2007 AND contest_no = 1 AND entry_no = 2;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'Germany' WHERE championship_year = 2007 AND contest_no = 1 AND entry_no = 3;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'Germany' WHERE championship_year = 2007 AND contest_no = 2 AND entry_no = 1;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'USA' WHERE championship_year = 2007 AND contest_no = 3 AND entry_no = 1;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'Sweden' WHERE championship_year = 2007 AND contest_no = 3 AND entry_no = 2;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'United Kingdom' WHERE championship_year = 2007 AND contest_no = 3 AND entry_no = 3;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'USA' WHERE championship_year = 2007 AND contest_no = 4 AND entry_no = 1;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'Germany' WHERE championship_year = 2007 AND contest_no = 4 AND entry_no = 2;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'USA' WHERE championship_year = 2007 AND contest_no = 4 AND entry_no = 3;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'Germany' WHERE championship_year = 2007 AND contest_no = 5 AND entry_no = 1;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'Germany' WHERE championship_year = 2007 AND contest_no = 5 AND entry_no = 2;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'Germany' WHERE championship_year = 2007 AND contest_no = 5 AND entry_no = 3;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'Germany' WHERE championship_year = 2007 AND contest_no = 6 AND entry_no = 1;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'Germany' WHERE championship_year = 2007 AND contest_no = 6 AND entry_no = 2;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'USA' WHERE championship_year = 2007 AND contest_no = 6 AND entry_no = 3;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'Germany' WHERE championship_year = 2007 AND contest_no = 7 AND entry_no = 1;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'USA' WHERE championship_year = 2007 AND contest_no = 7 AND entry_no = 2;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'Germany' WHERE championship_year = 2007 AND contest_no = 7 AND entry_no = 3;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'Germany' WHERE championship_year = 2007 AND contest_no = 8 AND entry_no = 1;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'Italy' WHERE championship_year = 2007 AND contest_no = 8 AND entry_no = 2;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'USA' WHERE championship_year = 2007 AND contest_no = 8 AND entry_no = 3;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'USA' WHERE championship_year = 2007 AND contest_no = 9 AND entry_no = 1;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'Germany' WHERE championship_year = 2007 AND contest_no = 9 AND entry_no = 2;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'United Kingdom' WHERE championship_year = 2007 AND contest_no = 9 AND entry_no = 3;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'USA' WHERE championship_year = 2007 AND contest_no = 10 AND entry_no = 1;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'United Kingdom' WHERE championship_year = 2007 AND contest_no = 10 AND entry_no = 2;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'Germany' WHERE championship_year = 2007 AND contest_no = 10 AND entry_no = 3;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'United Kingdom' WHERE championship_year = 2007 AND contest_no = 11 AND entry_no = 1;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'Germany' WHERE championship_year = 2007 AND contest_no = 11 AND entry_no = 2;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'United Kingdom' WHERE championship_year = 2007 AND contest_no = 11 AND entry_no = 3;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'United Kingdom' WHERE championship_year = 2007 AND contest_no = 12 AND entry_no = 1;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'Germany' WHERE championship_year = 2007 AND contest_no = 13 AND entry_no = 1;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'Germany' WHERE championship_year = 2007 AND contest_no = 13 AND entry_no = 2;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'Germany' WHERE championship_year = 2007 AND contest_no = 13 AND entry_no = 3;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'United Kingdom' WHERE championship_year = 2007 AND contest_no = 14 AND entry_no = 1;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'Germany' WHERE championship_year = 2007 AND contest_no = 14 AND entry_no = 2;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'United Kingdom' WHERE championship_year = 2007 AND contest_no = 14 AND entry_no = 3;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'USA' WHERE championship_year = 2007 AND contest_no = 15 AND entry_no = 1;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'USA' WHERE championship_year = 2007 AND contest_no = 15 AND entry_no = 2;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'Italy' WHERE championship_year = 2007 AND contest_no = 15 AND entry_no = 3;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'Germany' WHERE championship_year = 2007 AND contest_no = 16 AND entry_no = 1;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'Germany' WHERE championship_year = 2007 AND contest_no = 16 AND entry_no = 2;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'Switzerland' WHERE championship_year = 2007 AND contest_no = 16 AND entry_no = 3;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'Germany' WHERE championship_year = 2007 AND contest_no = 17 AND entry_no = 1;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'Germany' WHERE championship_year = 2007 AND contest_no = 17 AND entry_no = 2;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'Germany' WHERE championship_year = 2007 AND contest_no = 17 AND entry_no = 3;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'USA' WHERE championship_year = 2009 AND contest_no = 1 AND entry_no = 1;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'Germany' WHERE championship_year = 2009 AND contest_no = 1 AND entry_no = 2;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'Germany' WHERE championship_year = 2009 AND contest_no = 1 AND entry_no = 3;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'USA' WHERE championship_year = 2009 AND contest_no = 2 AND entry_no = 1;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'USA' WHERE championship_year = 2009 AND contest_no = 2 AND entry_no = 2;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'USA' WHERE championship_year = 2009 AND contest_no = 2 AND entry_no = 3;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'USA' WHERE championship_year = 2009 AND contest_no = 3 AND entry_no = 1;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'USA' WHERE championship_year = 2009 AND contest_no = 3 AND entry_no = 2;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'Germany' WHERE championship_year = 2009 AND contest_no = 3 AND entry_no = 3;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'Germany' WHERE championship_year = 2009 AND contest_no = 4 AND entry_no = 1;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'USA' WHERE championship_year = 2009 AND contest_no = 4 AND entry_no = 2;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'Canada' WHERE championship_year = 2009 AND contest_no = 4 AND entry_no = 3;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'Switzerland' WHERE championship_year = 2009 AND contest_no = 5 AND entry_no = 1;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'Germany' WHERE championship_year = 2009 AND contest_no = 5 AND entry_no = 2;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'USA' WHERE championship_year = 2009 AND contest_no = 5 AND entry_no = 3;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'Germany' WHERE championship_year = 2009 AND contest_no = 6 AND entry_no = 1;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'Germany' WHERE championship_year = 2009 AND contest_no = 6 AND entry_no = 2;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'USA' WHERE championship_year = 2009 AND contest_no = 6 AND entry_no = 3;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'Germany' WHERE championship_year = 2009 AND contest_no = 7 AND entry_no = 1;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'USA' WHERE championship_year = 2009 AND contest_no = 7 AND entry_no = 2;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'USA' WHERE championship_year = 2009 AND contest_no = 7 AND entry_no = 3;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'USA' WHERE championship_year = 2009 AND contest_no = 8 AND entry_no = 1;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'USA' WHERE championship_year = 2009 AND contest_no = 8 AND entry_no = 2;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'Belgium' WHERE championship_year = 2009 AND contest_no = 8 AND entry_no = 3;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'USA' WHERE championship_year = 2009 AND contest_no = 9 AND entry_no = 1;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'Germany' WHERE championship_year = 2009 AND contest_no = 9 AND entry_no = 2;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'Germany' WHERE championship_year = 2009 AND contest_no = 9 AND entry_no = 3;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'USA' WHERE championship_year = 2009 AND contest_no = 10 AND entry_no = 1;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'USA' WHERE championship_year = 2009 AND contest_no = 10 AND entry_no = 2;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'USA' WHERE championship_year = 2009 AND contest_no = 10 AND entry_no = 3;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'Netherlands' WHERE championship_year = 2009 AND contest_no = 11 AND entry_no = 1;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'United Kingdom' WHERE championship_year = 2009 AND contest_no = 11 AND entry_no = 2;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'USA' WHERE championship_year = 2009 AND contest_no = 11 AND entry_no = 3;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'USA' WHERE championship_year = 2009 AND contest_no = 12 AND entry_no = 1;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'USA' WHERE championship_year = 2009 AND contest_no = 12 AND entry_no = 2;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'USA' WHERE championship_year = 2009 AND contest_no = 12 AND entry_no = 3;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'United Kingdom' WHERE championship_year = 2009 AND contest_no = 13 AND entry_no = 1;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'Germany' WHERE championship_year = 2009 AND contest_no = 13 AND entry_no = 2;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'Germany' WHERE championship_year = 2009 AND contest_no = 14 AND entry_no = 1;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'Germany' WHERE championship_year = 2009 AND contest_no = 14 AND entry_no = 2;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'Belgium' WHERE championship_year = 2009 AND contest_no = 14 AND entry_no = 3;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'Germany' WHERE championship_year = 2009 AND contest_no = 15 AND entry_no = 1;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'United Kingdom' WHERE championship_year = 2009 AND contest_no = 15 AND entry_no = 2;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'Germany' WHERE championship_year = 2009 AND contest_no = 15 AND entry_no = 3;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'USA' WHERE championship_year = 2009 AND contest_no = 16 AND entry_no = 1;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'USA' WHERE championship_year = 2009 AND contest_no = 16 AND entry_no = 2;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'Germany' WHERE championship_year = 2009 AND contest_no = 16 AND entry_no = 3;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'USA' WHERE championship_year = 2009 AND contest_no = 17 AND entry_no = 1;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'Belgium' WHERE championship_year = 2009 AND contest_no = 17 AND entry_no = 2;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'USA' WHERE championship_year = 2009 AND contest_no = 17 AND entry_no = 3;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'USA' WHERE championship_year = 2009 AND contest_no = 18 AND entry_no = 1;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'Italy' WHERE championship_year = 2009 AND contest_no = 18 AND entry_no = 2;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'USA' WHERE championship_year = 2009 AND contest_no = 18 AND entry_no = 3;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'England' WHERE championship_year = 2019 AND contest_no = 1 AND entry_no = 1;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'USA' WHERE championship_year = 2019 AND contest_no = 1 AND entry_no = 2;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'USA' WHERE championship_year = 2019 AND contest_no = 1 AND entry_no = 3;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'USA' WHERE championship_year = 2019 AND contest_no = 2 AND entry_no = 1;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'England' WHERE championship_year = 2019 AND contest_no = 2 AND entry_no = 2;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'USA' WHERE championship_year = 2019 AND contest_no = 2 AND entry_no = 3;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'Canada' WHERE championship_year = 2019 AND contest_no = 3 AND entry_no = 1;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'USA' WHERE championship_year = 2019 AND contest_no = 3 AND entry_no = 2;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'USA' WHERE championship_year = 2019 AND contest_no = 3 AND entry_no = 3;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'Germany' WHERE championship_year = 2019 AND contest_no = 4 AND entry_no = 1;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'USA' WHERE championship_year = 2019 AND contest_no = 4 AND entry_no = 2;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'USA' WHERE championship_year = 2019 AND contest_no = 4 AND entry_no = 3;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'USA' WHERE championship_year = 2019 AND contest_no = 5 AND entry_no = 1;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'Netherlands' WHERE championship_year = 2019 AND contest_no = 5 AND entry_no = 2;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'Germany' WHERE championship_year = 2019 AND contest_no = 5 AND entry_no = 3;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'USA' WHERE championship_year = 2019 AND contest_no = 5 AND entry_no = 4;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'Austria' WHERE championship_year = 2019 AND contest_no = 5 AND entry_no = 5;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'United Kingdom' WHERE championship_year = 2019 AND contest_no = 5 AND entry_no = 6;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'Germany' WHERE championship_year = 2019 AND contest_no = 5 AND entry_no = 7;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'Netherlands' WHERE championship_year = 2019 AND contest_no = 5 AND entry_no = 8;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'Germany' WHERE championship_year = 2019 AND contest_no = 5 AND entry_no = 9;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'France' WHERE championship_year = 2019 AND contest_no = 5 AND entry_no = 10;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'United Kingdom' WHERE championship_year = 2019 AND contest_no = 5 AND entry_no = 11;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'Germany' WHERE championship_year = 2019 AND contest_no = 5 AND entry_no = 12;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'Estonia' WHERE championship_year = 2019 AND contest_no = 5 AND entry_no = 13;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'England' WHERE championship_year = 2019 AND contest_no = 5 AND entry_no = 14;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'Germany' WHERE championship_year = 2019 AND contest_no = 5 AND entry_no = 15;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'USA' WHERE championship_year = 2019 AND contest_no = 5 AND entry_no = 16;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'USA' WHERE championship_year = 2019 AND contest_no = 5 AND entry_no = 17;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'USA' WHERE championship_year = 2019 AND contest_no = 6 AND entry_no = 1;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'Germany' WHERE championship_year = 2019 AND contest_no = 6 AND entry_no = 2;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'Ireland' WHERE championship_year = 2019 AND contest_no = 6 AND entry_no = 3;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'France' WHERE championship_year = 2019 AND contest_no = 6 AND entry_no = 4;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'USA' WHERE championship_year = 2019 AND contest_no = 6 AND entry_no = 5;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'Belgium' WHERE championship_year = 2019 AND contest_no = 6 AND entry_no = 6;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'Germany' WHERE championship_year = 2019 AND contest_no = 6 AND entry_no = 7;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'Belgium' WHERE championship_year = 2019 AND contest_no = 6 AND entry_no = 8;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'USA' WHERE championship_year = 2019 AND contest_no = 6 AND entry_no = 9;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'Belgium' WHERE championship_year = 2019 AND contest_no = 6 AND entry_no = 10;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'USA' WHERE championship_year = 2019 AND contest_no = 6 AND entry_no = 11;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'Germany' WHERE championship_year = 2019 AND contest_no = 6 AND entry_no = 12;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'USA' WHERE championship_year = 2019 AND contest_no = 6 AND entry_no = 13;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'Germany' WHERE championship_year = 2019 AND contest_no = 6 AND entry_no = 14;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'Germany' WHERE championship_year = 2019 AND contest_no = 6 AND entry_no = 15;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'Germany' WHERE championship_year = 2019 AND contest_no = 6 AND entry_no = 16;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'Germany' WHERE championship_year = 2019 AND contest_no = 6 AND entry_no = 17;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'Switzerland' WHERE championship_year = 2019 AND contest_no = 6 AND entry_no = 18;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'France' WHERE championship_year = 2019 AND contest_no = 6 AND entry_no = 19;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'United Kingdom' WHERE championship_year = 2019 AND contest_no = 7 AND entry_no = 1;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'USA' WHERE championship_year = 2019 AND contest_no = 7 AND entry_no = 2;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'United Kingdom' WHERE championship_year = 2019 AND contest_no = 7 AND entry_no = 3;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'Netherlands' WHERE championship_year = 2019 AND contest_no = 7 AND entry_no = 4;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'Netherlands' WHERE championship_year = 2019 AND contest_no = 7 AND entry_no = 5;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'United Kingdom' WHERE championship_year = 2019 AND contest_no = 7 AND entry_no = 6;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'Germany' WHERE championship_year = 2019 AND contest_no = 7 AND entry_no = 7;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'USA' WHERE championship_year = 2019 AND contest_no = 7 AND entry_no = 8;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'USA' WHERE championship_year = 2019 AND contest_no = 7 AND entry_no = 9;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'United Kingdom' WHERE championship_year = 2019 AND contest_no = 7 AND entry_no = 10;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'England' WHERE championship_year = 2019 AND contest_no = 7 AND entry_no = 11;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'Germany' WHERE championship_year = 2019 AND contest_no = 7 AND entry_no = 12;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'Belgium' WHERE championship_year = 2019 AND contest_no = 7 AND entry_no = 13;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'Switzerland' WHERE championship_year = 2019 AND contest_no = 7 AND entry_no = 14;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'USA' WHERE championship_year = 2019 AND contest_no = 7 AND entry_no = 15;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'United Kingdom' WHERE championship_year = 2019 AND contest_no = 7 AND entry_no = 16;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'USA' WHERE championship_year = 2019 AND contest_no = 7 AND entry_no = 17;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'Germany' WHERE championship_year = 2019 AND contest_no = 7 AND entry_no = 18;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'New Zealand' WHERE championship_year = 2019 AND contest_no = 7 AND entry_no = 19;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'New Zealand' WHERE championship_year = 2019 AND contest_no = 7 AND entry_no = 20;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'Belgium' WHERE championship_year = 2019 AND contest_no = 7 AND entry_no = 21;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'Belgium' WHERE championship_year = 2019 AND contest_no = 7 AND entry_no = 22;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'United Kingdom' WHERE championship_year = 2019 AND contest_no = 7 AND entry_no = 23;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'Netherlands' WHERE championship_year = 2019 AND contest_no = 7 AND entry_no = 24;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'Germany' WHERE championship_year = 2019 AND contest_no = 7 AND entry_no = 25;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'Spain' WHERE championship_year = 2019 AND contest_no = 7 AND entry_no = 26;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'Netherlands' WHERE championship_year = 2019 AND contest_no = 7 AND entry_no = 27;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'France' WHERE championship_year = 2019 AND contest_no = 7 AND entry_no = 28;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'USA' WHERE championship_year = 2019 AND contest_no = 7 AND entry_no = 29;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'United Kingdom' WHERE championship_year = 2019 AND contest_no = 7 AND entry_no = 30;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'Germany' WHERE championship_year = 2019 AND contest_no = 7 AND entry_no = 32;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'New Zealand' WHERE championship_year = 2019 AND contest_no = 7 AND entry_no = 33;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'Belgium' WHERE championship_year = 2019 AND contest_no = 7 AND entry_no = 34;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'USA' WHERE championship_year = 2019 AND contest_no = 7 AND entry_no = 35;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'USA' WHERE championship_year = 2019 AND contest_no = 8 AND entry_no = 1;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'Ireland' WHERE championship_year = 2019 AND contest_no = 8 AND entry_no = 2;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'USA' WHERE championship_year = 2019 AND contest_no = 8 AND entry_no = 3;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'United Kingdom' WHERE championship_year = 2019 AND contest_no = 8 AND entry_no = 4;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'Italy' WHERE championship_year = 2019 AND contest_no = 8 AND entry_no = 5;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'Sweden' WHERE championship_year = 2019 AND contest_no = 8 AND entry_no = 6;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'Denmark' WHERE championship_year = 2019 AND contest_no = 8 AND entry_no = 7;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'France' WHERE championship_year = 2019 AND contest_no = 8 AND entry_no = 8;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'USA' WHERE championship_year = 2019 AND contest_no = 8 AND entry_no = 9;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'Sweden' WHERE championship_year = 2019 AND contest_no = 8 AND entry_no = 10;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'Germany' WHERE championship_year = 2019 AND contest_no = 8 AND entry_no = 11;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'USA' WHERE championship_year = 2019 AND contest_no = 8 AND entry_no = 12;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'USA' WHERE championship_year = 2019 AND contest_no = 8 AND entry_no = 13;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'USA' WHERE championship_year = 2019 AND contest_no = 8 AND entry_no = 14;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'USA' WHERE championship_year = 2019 AND contest_no = 8 AND entry_no = 15;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'United Kingdom' WHERE championship_year = 2019 AND contest_no = 8 AND entry_no = 16;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'United Kingdom' WHERE championship_year = 2019 AND contest_no = 8 AND entry_no = 17;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'Germany' WHERE championship_year = 2019 AND contest_no = 8 AND entry_no = 18;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'Italy' WHERE championship_year = 2019 AND contest_no = 8 AND entry_no = 19;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'Austria' WHERE championship_year = 2019 AND contest_no = 8 AND entry_no = 20;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'Belgium' WHERE championship_year = 2019 AND contest_no = 8 AND entry_no = 21;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'England' WHERE championship_year = 2019 AND contest_no = 8 AND entry_no = 22;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'Sweden' WHERE championship_year = 2019 AND contest_no = 8 AND entry_no = 23;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'USA' WHERE championship_year = 2019 AND contest_no = 8 AND entry_no = 24;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'United Kingdom' WHERE championship_year = 2019 AND contest_no = 8 AND entry_no = 25;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'Norway' WHERE championship_year = 2019 AND contest_no = 8 AND entry_no = 26;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'Russian Federation' WHERE championship_year = 2019 AND contest_no = 8 AND entry_no = 27;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'United Kingdom' WHERE championship_year = 2019 AND contest_no = 8 AND entry_no = 28;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'USA' WHERE championship_year = 2019 AND contest_no = 8 AND entry_no = 29;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'Israel' WHERE championship_year = 2019 AND contest_no = 8 AND entry_no = 30;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'Italy' WHERE championship_year = 2019 AND contest_no = 8 AND entry_no = 31;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'United Kingdom' WHERE championship_year = 2019 AND contest_no = 8 AND entry_no = 32;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'USA' WHERE championship_year = 2019 AND contest_no = 8 AND entry_no = 33;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'United Kingdom' WHERE championship_year = 2019 AND contest_no = 9 AND entry_no = 1;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'USA' WHERE championship_year = 2019 AND contest_no = 9 AND entry_no = 2;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'Germany' WHERE championship_year = 2019 AND contest_no = 9 AND entry_no = 3;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'USA' WHERE championship_year = 2019 AND contest_no = 9 AND entry_no = 4;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'France' WHERE championship_year = 2019 AND contest_no = 9 AND entry_no = 5;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'Germany' WHERE championship_year = 2019 AND contest_no = 9 AND entry_no = 6;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'USA' WHERE championship_year = 2019 AND contest_no = 9 AND entry_no = 7;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'United Kingdom' WHERE championship_year = 2019 AND contest_no = 9 AND entry_no = 8;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'Israel' WHERE championship_year = 2019 AND contest_no = 9 AND entry_no = 9;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'USA' WHERE championship_year = 2019 AND contest_no = 9 AND entry_no = 10;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'USA' WHERE championship_year = 2019 AND contest_no = 9 AND entry_no = 11;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'Belgium' WHERE championship_year = 2019 AND contest_no = 9 AND entry_no = 12;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'Italy' WHERE championship_year = 2019 AND contest_no = 9 AND entry_no = 13;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'USA' WHERE championship_year = 2019 AND contest_no = 9 AND entry_no = 14;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'USA' WHERE championship_year = 2019 AND contest_no = 9 AND entry_no = 15;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'USA' WHERE championship_year = 2019 AND contest_no = 9 AND entry_no = 16;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'United Kingdom' WHERE championship_year = 2019 AND contest_no = 9 AND entry_no = 17;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'Hungary' WHERE championship_year = 2019 AND contest_no = 9 AND entry_no = 18;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'USA' WHERE championship_year = 2019 AND contest_no = 10 AND entry_no = 1;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'USA' WHERE championship_year = 2019 AND contest_no = 10 AND entry_no = 2;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'Australia' WHERE championship_year = 2019 AND contest_no = 10 AND entry_no = 3;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'Germany' WHERE championship_year = 2019 AND contest_no = 10 AND entry_no = 4;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'USA' WHERE championship_year = 2019 AND contest_no = 10 AND entry_no = 5;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'USA' WHERE championship_year = 2019 AND contest_no = 10 AND entry_no = 6;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'Germany' WHERE championship_year = 2019 AND contest_no = 10 AND entry_no = 7;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'France' WHERE championship_year = 2019 AND contest_no = 10 AND entry_no = 8;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'United Kingdom' WHERE championship_year = 2019 AND contest_no = 10 AND entry_no = 9;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'Germany' WHERE championship_year = 2019 AND contest_no = 10 AND entry_no = 10;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'United Kingdom' WHERE championship_year = 2019 AND contest_no = 10 AND entry_no = 11;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'Belgium' WHERE championship_year = 2019 AND contest_no = 10 AND entry_no = 12;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'Israel' WHERE championship_year = 2019 AND contest_no = 10 AND entry_no = 13;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'France' WHERE championship_year = 2019 AND contest_no = 10 AND entry_no = 14;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'Switzerland' WHERE championship_year = 2019 AND contest_no = 10 AND entry_no = 15;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'France' WHERE championship_year = 2019 AND contest_no = 10 AND entry_no = 16;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'India' WHERE championship_year = 2019 AND contest_no = 11 AND entry_no = 1;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'United Kingdom' WHERE championship_year = 2019 AND contest_no = 11 AND entry_no = 2;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'United Kingdom' WHERE championship_year = 2019 AND contest_no = 11 AND entry_no = 3;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'USA' WHERE championship_year = 2019 AND contest_no = 11 AND entry_no = 4;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'Germany' WHERE championship_year = 2019 AND contest_no = 11 AND entry_no = 5;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'Germany' WHERE championship_year = 2019 AND contest_no = 12 AND entry_no = 1;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'France' WHERE championship_year = 2019 AND contest_no = 12 AND entry_no = 2;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'Switzerland' WHERE championship_year = 2019 AND contest_no = 12 AND entry_no = 3;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'United Kingdom' WHERE championship_year = 2019 AND contest_no = 12 AND entry_no = 4;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'USA' WHERE championship_year = 2019 AND contest_no = 12 AND entry_no = 5;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'Netherlands' WHERE championship_year = 2019 AND contest_no = 12 AND entry_no = 6;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'USA' WHERE championship_year = 2019 AND contest_no = 12 AND entry_no = 7;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'Germany' WHERE championship_year = 2019 AND contest_no = 12 AND entry_no = 8;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'USA' WHERE championship_year = 2019 AND contest_no = 12 AND entry_no = 9;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'Germany' WHERE championship_year = 2019 AND contest_no = 13 AND entry_no = 1;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'USA' WHERE championship_year = 2019 AND contest_no = 13 AND entry_no = 2;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'Hungary' WHERE championship_year = 2019 AND contest_no = 13 AND entry_no = 3;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'Belgium' WHERE championship_year = 2019 AND contest_no = 13 AND entry_no = 4;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'Hungary' WHERE championship_year = 2019 AND contest_no = 13 AND entry_no = 5;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'USA' WHERE championship_year = 2019 AND contest_no = 13 AND entry_no = 6;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'Switzerland' WHERE championship_year = 2019 AND contest_no = 14 AND entry_no = 1;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'USA' WHERE championship_year = 2019 AND contest_no = 14 AND entry_no = 2;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'USA' WHERE championship_year = 2019 AND contest_no = 14 AND entry_no = 3;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'Italy' WHERE championship_year = 2019 AND contest_no = 14 AND entry_no = 4;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'USA' WHERE championship_year = 2019 AND contest_no = 14 AND entry_no = 5;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'USA' WHERE championship_year = 2019 AND contest_no = 14 AND entry_no = 6;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'Germany' WHERE championship_year = 2019 AND contest_no = 14 AND entry_no = 7;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'Germany' WHERE championship_year = 2019 AND contest_no = 14 AND entry_no = 8;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'USA' WHERE championship_year = 2019 AND contest_no = 14 AND entry_no = 9;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'Norway' WHERE championship_year = 2019 AND contest_no = 15 AND entry_no = 1;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'USA' WHERE championship_year = 2019 AND contest_no = 15 AND entry_no = 2;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'USA' WHERE championship_year = 2019 AND contest_no = 15 AND entry_no = 3;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'USA' WHERE championship_year = 2019 AND contest_no = 15 AND entry_no = 4;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'Belgium' WHERE championship_year = 2019 AND contest_no = 15 AND entry_no = 5;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'Germany' WHERE championship_year = 2019 AND contest_no = 16 AND entry_no = 1;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'Belgium' WHERE championship_year = 2019 AND contest_no = 16 AND entry_no = 2;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'Germany' WHERE championship_year = 2019 AND contest_no = 16 AND entry_no = 3;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'Norway' WHERE championship_year = 2019 AND contest_no = 16 AND entry_no = 4;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'Belgium' WHERE championship_year = 2019 AND contest_no = 16 AND entry_no = 5;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'USA' WHERE championship_year = 2019 AND contest_no = 16 AND entry_no = 6;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'USA' WHERE championship_year = 2019 AND contest_no = 16 AND entry_no = 7;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'Netherlands' WHERE championship_year = 2019 AND contest_no = 16 AND entry_no = 8;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'Netherlands' WHERE championship_year = 2019 AND contest_no = 16 AND entry_no = 9;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'Germany' WHERE championship_year = 2019 AND contest_no = 16 AND entry_no = 10;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'Hungary' WHERE championship_year = 2019 AND contest_no = 16 AND entry_no = 11;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'Czech Republic' WHERE championship_year = 2019 AND contest_no = 16 AND entry_no = 12;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'USA' WHERE championship_year = 2019 AND contest_no = 17 AND entry_no = 1;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'England' WHERE championship_year = 2019 AND contest_no = 17 AND entry_no = 2;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'United Kingdom' WHERE championship_year = 2019 AND contest_no = 17 AND entry_no = 3;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'USA' WHERE championship_year = 2019 AND contest_no = 17 AND entry_no = 4;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'USA' WHERE championship_year = 2019 AND contest_no = 17 AND entry_no = 5;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'USA' WHERE championship_year = 2019 AND contest_no = 17 AND entry_no = 6;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'Germany' WHERE championship_year = 2019 AND contest_no = 18 AND entry_no = 1;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'USA' WHERE championship_year = 2019 AND contest_no = 18 AND entry_no = 2;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'USA' WHERE championship_year = 2019 AND contest_no = 18 AND entry_no = 3;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'France' WHERE championship_year = 2019 AND contest_no = 19 AND entry_no = 1;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'Belgium' WHERE championship_year = 2019 AND contest_no = 19 AND entry_no = 2;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'Germany' WHERE championship_year = 2019 AND contest_no = 19 AND entry_no = 3;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'Belgium' WHERE championship_year = 2019 AND contest_no = 20 AND entry_no = 1;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'Switzerland' WHERE championship_year = 2019 AND contest_no = 20 AND entry_no = 2;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'Italy' WHERE championship_year = 2019 AND contest_no = 20 AND entry_no = 3;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'Switzerland' WHERE championship_year = 2019 AND contest_no = 20 AND entry_no = 4;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'Belgium' WHERE championship_year = 2019 AND contest_no = 20 AND entry_no = 5;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'Germany' WHERE championship_year = 2019 AND contest_no = 20 AND entry_no = 6;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'Germany' WHERE championship_year = 2019 AND contest_no = 20 AND entry_no = 7;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'Belgium' WHERE championship_year = 2019 AND contest_no = 20 AND entry_no = 8;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'Belgium' WHERE championship_year = 2019 AND contest_no = 20 AND entry_no = 9;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'Switzerland' WHERE championship_year = 2019 AND contest_no = 20 AND entry_no = 10;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'United Kingdom' WHERE championship_year = 2019 AND contest_no = 20 AND entry_no = 11;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'USA' WHERE championship_year = 2019 AND contest_no = 21 AND entry_no = 1;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'USA' WHERE championship_year = 2019 AND contest_no = 21 AND entry_no = 2;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'Germany' WHERE championship_year = 2019 AND contest_no = 21 AND entry_no = 3;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'USA' WHERE championship_year = 2019 AND contest_no = 21 AND entry_no = 4;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'France' WHERE championship_year = 2019 AND contest_no = 21 AND entry_no = 5;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'Belgium' WHERE championship_year = 2019 AND contest_no = 21 AND entry_no = 6;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'Germany' WHERE championship_year = 2019 AND contest_no = 21 AND entry_no = 7;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'Germany' WHERE championship_year = 2019 AND contest_no = 21 AND entry_no = 8;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'USA' WHERE championship_year = 2019 AND contest_no = 21 AND entry_no = 9;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'Germany' WHERE championship_year = 2019 AND contest_no = 21 AND entry_no = 10;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'France' WHERE championship_year = 2019 AND contest_no = 22 AND entry_no = 1;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'USA' WHERE championship_year = 2019 AND contest_no = 22 AND entry_no = 2;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'Germany' WHERE championship_year = 2019 AND contest_no = 22 AND entry_no = 3;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'France' WHERE championship_year = 2019 AND contest_no = 22 AND entry_no = 4;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'United Kingdom' WHERE championship_year = 2019 AND contest_no = 22 AND entry_no = 5;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'Austria' WHERE championship_year = 2019 AND contest_no = 22 AND entry_no = 6;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'Germany' WHERE championship_year = 2019 AND contest_no = 22 AND entry_no = 7;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'Belgium' WHERE championship_year = 2019 AND contest_no = 22 AND entry_no = 8;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'Belgium' WHERE championship_year = 2019 AND contest_no = 22 AND entry_no = 9;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'Nepal' WHERE championship_year = 2019 AND contest_no = 22 AND entry_no = 10;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'Belgium' WHERE championship_year = 2019 AND contest_no = 22 AND entry_no = 11;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'Belgium' WHERE championship_year = 2019 AND contest_no = 22 AND entry_no = 12;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'Italy' WHERE championship_year = 2019 AND contest_no = 22 AND entry_no = 13;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'Netherlands' WHERE championship_year = 2019 AND contest_no = 22 AND entry_no = 14;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'United Kingdom' WHERE championship_year = 2019 AND contest_no = 22 AND entry_no = 15;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'France' WHERE championship_year = 2019 AND contest_no = 22 AND entry_no = 16;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'Canada' WHERE championship_year = 2019 AND contest_no = 22 AND entry_no = 17;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'Netherlands' WHERE championship_year = 2019 AND contest_no = 22 AND entry_no = 18;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'Germany' WHERE championship_year = 2019 AND contest_no = 22 AND entry_no = 19;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'USA' WHERE championship_year = 2019 AND contest_no = 22 AND entry_no = 20;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'Germany' WHERE championship_year = 2019 AND contest_no = 22 AND entry_no = 21;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'France' WHERE championship_year = 2019 AND contest_no = 23 AND entry_no = 1;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'UK/Poland' WHERE championship_year = 2019 AND contest_no = 23 AND entry_no = 2;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'USA' WHERE championship_year = 2019 AND contest_no = 23 AND entry_no = 3;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'United Kingdom' WHERE championship_year = 2019 AND contest_no = 23 AND entry_no = 4;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'United Kingdom' WHERE championship_year = 2019 AND contest_no = 23 AND entry_no = 5;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'USA' WHERE championship_year = 2019 AND contest_no = 23 AND entry_no = 6;
UPDATE ENTRY SET hometown_city = 'Olmsted Falls', hometown_region = 'OH', hometown_country = 'USA' WHERE championship_year = 2025 AND contest_no = 1 AND entry_no = 1;
UPDATE ENTRY SET hometown_city = 'Sherman', hometown_region = 'TX', hometown_country = 'USA' WHERE championship_year = 2025 AND contest_no = 1 AND entry_no = 2;
UPDATE ENTRY SET hometown_city = 'Surprise', hometown_region = 'AZ', hometown_country = 'USA' WHERE championship_year = 2025 AND contest_no = 1 AND entry_no = 3;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = 'MI', hometown_country = 'USA' WHERE championship_year = 2025 AND contest_no = 1 AND entry_no = 4;
UPDATE ENTRY SET hometown_city = 'Astoria', hometown_region = 'NY', hometown_country = 'USA' WHERE championship_year = 2025 AND contest_no = 1 AND entry_no = 5;
UPDATE ENTRY SET hometown_city = 'Portsmouth', hometown_region = 'RI', hometown_country = 'USA' WHERE championship_year = 2025 AND contest_no = 1 AND entry_no = 6;
UPDATE ENTRY SET hometown_city = 'Austin', hometown_region = 'TX', hometown_country = 'USA' WHERE championship_year = 2025 AND contest_no = 1 AND entry_no = 7;
UPDATE ENTRY SET hometown_city = 'Ocala', hometown_region = 'FL', hometown_country = 'USA' WHERE championship_year = 2025 AND contest_no = 1 AND entry_no = 8;
UPDATE ENTRY SET hometown_city = 'Slippery Rock', hometown_region = 'PA', hometown_country = 'USA' WHERE championship_year = 2025 AND contest_no = 1 AND entry_no = 9;
UPDATE ENTRY SET hometown_city = 'Fort Worth', hometown_region = 'TX', hometown_country = 'USA' WHERE championship_year = 2025 AND contest_no = 1 AND entry_no = 10;
UPDATE ENTRY SET hometown_city = 'Modesto', hometown_region = 'CA', hometown_country = 'USA' WHERE championship_year = 2025 AND contest_no = 2 AND entry_no = 1;
UPDATE ENTRY SET hometown_city = 'Montpelier', hometown_region = 'VA', hometown_country = 'USA' WHERE championship_year = 2025 AND contest_no = 2 AND entry_no = 2;
UPDATE ENTRY SET hometown_city = 'Schulenburg', hometown_region = 'TX', hometown_country = 'USA' WHERE championship_year = 2025 AND contest_no = 2 AND entry_no = 3;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = 'TX', hometown_country = 'USA' WHERE championship_year = 2025 AND contest_no = 2 AND entry_no = 4;
UPDATE ENTRY SET hometown_city = 'Aiken', hometown_region = 'SC', hometown_country = 'USA' WHERE championship_year = 2025 AND contest_no = 3 AND entry_no = 1;
UPDATE ENTRY SET hometown_city = 'Louisville', hometown_region = 'KY', hometown_country = 'USA' WHERE championship_year = 2025 AND contest_no = 3 AND entry_no = 2;
UPDATE ENTRY SET hometown_city = 'Grantham', hometown_region = 'NH', hometown_country = 'USA' WHERE championship_year = 2025 AND contest_no = 4 AND entry_no = 1;
UPDATE ENTRY SET hometown_city = 'St. Louis', hometown_region = 'MO', hometown_country = 'USA' WHERE championship_year = 2025 AND contest_no = 4 AND entry_no = 2;
UPDATE ENTRY SET hometown_city = 'Davis', hometown_region = 'CA', hometown_country = 'USA' WHERE championship_year = 2025 AND contest_no = 4 AND entry_no = 3;
UPDATE ENTRY SET hometown_city = 'Braunschweig', hometown_region = 'Lower Saxony', hometown_country = 'Germany' WHERE championship_year = 2025 AND contest_no = 5 AND entry_no = 1;
UPDATE ENTRY SET hometown_city = 'New Castle', hometown_region = 'PA', hometown_country = 'USA' WHERE championship_year = 2025 AND contest_no = 5 AND entry_no = 2;
UPDATE ENTRY SET hometown_city = 'Ruckersville', hometown_region = 'VA', hometown_country = 'USA' WHERE championship_year = 2025 AND contest_no = 5 AND entry_no = 3;
UPDATE ENTRY SET hometown_city = 'Braunschweig', hometown_region = 'Lower Saxony', hometown_country = 'Germany' WHERE championship_year = 2025 AND contest_no = 5 AND entry_no = 4;
UPDATE ENTRY SET hometown_city = 'Ruckersville', hometown_region = 'VA', hometown_country = 'USA' WHERE championship_year = 2025 AND contest_no = 5 AND entry_no = 5;
UPDATE ENTRY SET hometown_city = 'Elizabethtown', hometown_region = 'NY', hometown_country = 'USA' WHERE championship_year = 2025 AND contest_no = 6 AND entry_no = 1;
UPDATE ENTRY SET hometown_city = 'Celina', hometown_region = 'OH', hometown_country = 'USA' WHERE championship_year = 2025 AND contest_no = 6 AND entry_no = 2;
UPDATE ENTRY SET hometown_city = 'Louisville', hometown_region = 'KY', hometown_country = 'USA' WHERE championship_year = 2025 AND contest_no = 6 AND entry_no = 3;
UPDATE ENTRY SET hometown_city = 'Millington', hometown_region = 'MI', hometown_country = 'USA' WHERE championship_year = 2025 AND contest_no = 6 AND entry_no = 4;
UPDATE ENTRY SET hometown_city = 'Williamsburg', hometown_region = 'VA', hometown_country = 'USA' WHERE championship_year = 2025 AND contest_no = 6 AND entry_no = 5;
UPDATE ENTRY SET hometown_city = 'Pittsburgh', hometown_region = 'PA', hometown_country = 'USA' WHERE championship_year = 2025 AND contest_no = 7 AND entry_no = 1;
UPDATE ENTRY SET hometown_city = 'Pittsburgh', hometown_region = 'PA', hometown_country = 'USA' WHERE championship_year = 2025 AND contest_no = 7 AND entry_no = 2;
UPDATE ENTRY SET hometown_city = 'Salisbury', hometown_region = 'NC', hometown_country = 'USA' WHERE championship_year = 2025 AND contest_no = 7 AND entry_no = 3;
UPDATE ENTRY SET hometown_city = 'Henrico', hometown_region = 'VA', hometown_country = 'USA' WHERE championship_year = 2025 AND contest_no = 7 AND entry_no = 4;
UPDATE ENTRY SET hometown_city = 'Brooklyn', hometown_region = 'NY', hometown_country = 'USA' WHERE championship_year = 2025 AND contest_no = 8 AND entry_no = 1;
UPDATE ENTRY SET hometown_city = 'Eugene', hometown_region = 'OR', hometown_country = 'USA' WHERE championship_year = 2025 AND contest_no = 8 AND entry_no = 2;
UPDATE ENTRY SET hometown_city = 'Lexington', hometown_region = 'KY', hometown_country = 'USA' WHERE championship_year = 2025 AND contest_no = 8 AND entry_no = 3;
UPDATE ENTRY SET hometown_city = 'Killeen', hometown_region = 'TX', hometown_country = 'USA' WHERE championship_year = 2025 AND contest_no = 8 AND entry_no = 4;
UPDATE ENTRY SET hometown_city = 'Lower Burrell', hometown_region = 'PA', hometown_country = 'USA' WHERE championship_year = 2025 AND contest_no = 8 AND entry_no = 5;
UPDATE ENTRY SET hometown_city = 'Glad Spring', hometown_region = 'VA', hometown_country = 'USA' WHERE championship_year = 2025 AND contest_no = 8 AND entry_no = 6;
UPDATE ENTRY SET hometown_city = 'Roma', hometown_region = NULL, hometown_country = 'Italy' WHERE championship_year = 2025 AND contest_no = 8 AND entry_no = 7;
UPDATE ENTRY SET hometown_city = 'Martinsburg', hometown_region = 'VA', hometown_country = 'USA' WHERE championship_year = 2025 AND contest_no = 8 AND entry_no = 8;
UPDATE ENTRY SET hometown_city = 'Pittsburgh', hometown_region = 'PA', hometown_country = 'USA' WHERE championship_year = 2025 AND contest_no = 8 AND entry_no = 9;
UPDATE ENTRY SET hometown_city = 'Ligonier', hometown_region = 'PA', hometown_country = 'USA' WHERE championship_year = 2025 AND contest_no = 9 AND entry_no = 1;
UPDATE ENTRY SET hometown_city = 'Fort Worth', hometown_region = 'TX', hometown_country = 'USA' WHERE championship_year = 2025 AND contest_no = 9 AND entry_no = 2;
UPDATE ENTRY SET hometown_city = 'Pinon Hills', hometown_region = 'CA', hometown_country = 'USA' WHERE championship_year = 2025 AND contest_no = 9 AND entry_no = 3;
UPDATE ENTRY SET hometown_city = 'Garden City', hometown_region = 'ID', hometown_country = 'USA' WHERE championship_year = 2025 AND contest_no = 9 AND entry_no = 4;
UPDATE ENTRY SET hometown_city = 'Amelia', hometown_region = 'OH', hometown_country = 'USA' WHERE championship_year = 2025 AND contest_no = 9 AND entry_no = 5;
UPDATE ENTRY SET hometown_city = 'Ashland', hometown_region = 'VA', hometown_country = 'USA' WHERE championship_year = 2025 AND contest_no = 9 AND entry_no = 6;
UPDATE ENTRY SET hometown_city = 'Cutler Bay', hometown_region = 'FL', hometown_country = 'USA' WHERE championship_year = 2025 AND contest_no = 9 AND entry_no = 7;
UPDATE ENTRY SET hometown_city = 'Surrey', hometown_region = 'British Columbia', hometown_country = 'Canada' WHERE championship_year = 2025 AND contest_no = 9 AND entry_no = 8;
UPDATE ENTRY SET hometown_city = 'Phoenix', hometown_region = 'AZ', hometown_country = 'USA' WHERE championship_year = 2025 AND contest_no = 9 AND entry_no = 9;
UPDATE ENTRY SET hometown_city = 'Montpelier', hometown_region = 'VA', hometown_country = 'USA' WHERE championship_year = 2025 AND contest_no = 9 AND entry_no = 10;
UPDATE ENTRY SET hometown_city = 'Fairbanks', hometown_region = 'AK', hometown_country = 'USA' WHERE championship_year = 2025 AND contest_no = 10 AND entry_no = 1;
UPDATE ENTRY SET hometown_city = 'Ashland City', hometown_region = 'TN', hometown_country = 'USA' WHERE championship_year = 2025 AND contest_no = 10 AND entry_no = 2;
UPDATE ENTRY SET hometown_city = 'Weatherford', hometown_region = 'TX', hometown_country = 'USA' WHERE championship_year = 2025 AND contest_no = 10 AND entry_no = 3;
UPDATE ENTRY SET hometown_city = 'Lizton', hometown_region = 'IN', hometown_country = 'USA' WHERE championship_year = 2025 AND contest_no = 10 AND entry_no = 4;
UPDATE ENTRY SET hometown_city = 'Jacksonville', hometown_region = 'FL', hometown_country = 'USA' WHERE championship_year = 2025 AND contest_no = 10 AND entry_no = 5;
UPDATE ENTRY SET hometown_city = 'Youngstown', hometown_region = 'OH', hometown_country = 'USA' WHERE championship_year = 2025 AND contest_no = 10 AND entry_no = 6;
UPDATE ENTRY SET hometown_city = 'Thomasville', hometown_region = 'NC', hometown_country = 'USA' WHERE championship_year = 2025 AND contest_no = 10 AND entry_no = 7;
UPDATE ENTRY SET hometown_city = 'Pittsburgh', hometown_region = 'PA', hometown_country = 'USA' WHERE championship_year = 2025 AND contest_no = 10 AND entry_no = 8;
UPDATE ENTRY SET hometown_city = 'Wauwatosa', hometown_region = 'WI', hometown_country = 'USA' WHERE championship_year = 2025 AND contest_no = 10 AND entry_no = 9;
UPDATE ENTRY SET hometown_city = 'Portland', hometown_region = 'OR', hometown_country = 'USA' WHERE championship_year = 2025 AND contest_no = 10 AND entry_no = 10;
UPDATE ENTRY SET hometown_city = 'Antelope', hometown_region = 'CA', hometown_country = 'USA' WHERE championship_year = 2025 AND contest_no = 11 AND entry_no = 1;
UPDATE ENTRY SET hometown_city = 'Missoula', hometown_region = 'MT', hometown_country = 'USA' WHERE championship_year = 2025 AND contest_no = 11 AND entry_no = 2;
UPDATE ENTRY SET hometown_city = 'Blackpool', hometown_region = NULL, hometown_country = 'England' WHERE championship_year = 2025 AND contest_no = 11 AND entry_no = 3;
UPDATE ENTRY SET hometown_city = 'Missoula', hometown_region = 'MT', hometown_country = 'USA' WHERE championship_year = 2025 AND contest_no = 11 AND entry_no = 4;
UPDATE ENTRY SET hometown_city = 'Casper', hometown_region = 'WY', hometown_country = 'USA' WHERE championship_year = 2025 AND contest_no = 11 AND entry_no = 5;
UPDATE ENTRY SET hometown_city = 'Harrisburg', hometown_region = 'PA', hometown_country = 'USA' WHERE championship_year = 2025 AND contest_no = 11 AND entry_no = 6;
UPDATE ENTRY SET hometown_city = 'New Castle', hometown_region = 'PA', hometown_country = 'USA' WHERE championship_year = 2025 AND contest_no = 11 AND entry_no = 7;
UPDATE ENTRY SET hometown_city = 'Valencia', hometown_region = 'PA', hometown_country = 'USA' WHERE championship_year = 2025 AND contest_no = 11 AND entry_no = 8;
UPDATE ENTRY SET hometown_city = 'Oakhurst', hometown_region = 'CA', hometown_country = 'USA' WHERE championship_year = 2025 AND contest_no = 11 AND entry_no = 9;
UPDATE ENTRY SET hometown_city = 'Brownsburg', hometown_region = 'IN', hometown_country = 'USA' WHERE championship_year = 2025 AND contest_no = 11 AND entry_no = 10;
UPDATE ENTRY SET hometown_city = 'Charlotte', hometown_region = 'TN', hometown_country = 'USA' WHERE championship_year = 2025 AND contest_no = 11 AND entry_no = 11;
UPDATE ENTRY SET hometown_city = 'Spokane', hometown_region = 'WA', hometown_country = 'USA' WHERE championship_year = 2025 AND contest_no = 11 AND entry_no = 12;
UPDATE ENTRY SET hometown_city = 'Lewes', hometown_region = 'DE', hometown_country = 'USA' WHERE championship_year = 2025 AND contest_no = 11 AND entry_no = 13;
UPDATE ENTRY SET hometown_city = 'Washington', hometown_region = 'PA', hometown_country = 'USA' WHERE championship_year = 2025 AND contest_no = 11 AND entry_no = 14;
UPDATE ENTRY SET hometown_city = 'St. Clair Shores', hometown_region = 'MI', hometown_country = 'USA' WHERE championship_year = 2025 AND contest_no = 11 AND entry_no = 15;
UPDATE ENTRY SET hometown_city = 'Blairsville', hometown_region = 'PA', hometown_country = 'USA' WHERE championship_year = 2025 AND contest_no = 11 AND entry_no = 16;
UPDATE ENTRY SET hometown_city = 'Cheyenne', hometown_region = 'WY', hometown_country = 'USA' WHERE championship_year = 2025 AND contest_no = 11 AND entry_no = 17;
UPDATE ENTRY SET hometown_city = 'Palmyra', hometown_region = 'VA', hometown_country = 'USA' WHERE championship_year = 2025 AND contest_no = 12 AND entry_no = 1;
UPDATE ENTRY SET hometown_city = 'Westminster', hometown_region = 'CA', hometown_country = 'USA' WHERE championship_year = 2025 AND contest_no = 12 AND entry_no = 2;
UPDATE ENTRY SET hometown_city = 'Detroit', hometown_region = 'MI', hometown_country = 'USA' WHERE championship_year = 2025 AND contest_no = 12 AND entry_no = 3;
UPDATE ENTRY SET hometown_city = 'Doswell', hometown_region = 'VA', hometown_country = 'USA' WHERE championship_year = 2025 AND contest_no = 12 AND entry_no = 4;
UPDATE ENTRY SET hometown_city = 'Granbury', hometown_region = 'TX', hometown_country = 'USA' WHERE championship_year = 2025 AND contest_no = 12 AND entry_no = 5;
UPDATE ENTRY SET hometown_city = 'Anchorage', hometown_region = 'AK', hometown_country = 'USA' WHERE championship_year = 2025 AND contest_no = 12 AND entry_no = 6;
UPDATE ENTRY SET hometown_city = 'Flushing', hometown_region = 'MI', hometown_country = 'USA' WHERE championship_year = 2025 AND contest_no = 12 AND entry_no = 7;
UPDATE ENTRY SET hometown_city = 'Groton', hometown_region = 'CT', hometown_country = 'USA' WHERE championship_year = 2025 AND contest_no = 12 AND entry_no = 8;
UPDATE ENTRY SET hometown_city = 'Denver', hometown_region = 'CO', hometown_country = 'USA' WHERE championship_year = 2025 AND contest_no = 12 AND entry_no = 9;
UPDATE ENTRY SET hometown_city = 'Corrales', hometown_region = 'NM', hometown_country = 'USA' WHERE championship_year = 2025 AND contest_no = 12 AND entry_no = 10;
UPDATE ENTRY SET hometown_city = 'Eagle River', hometown_region = 'AK', hometown_country = 'USA' WHERE championship_year = 2025 AND contest_no = 12 AND entry_no = 11;
UPDATE ENTRY SET hometown_city = 'Midlothian', hometown_region = 'VA', hometown_country = 'USA' WHERE championship_year = 2025 AND contest_no = 13 AND entry_no = 1;
UPDATE ENTRY SET hometown_city = 'Grantham', hometown_region = 'NH', hometown_country = 'USA' WHERE championship_year = 2025 AND contest_no = 13 AND entry_no = 2;
UPDATE ENTRY SET hometown_city = 'Kirkville', hometown_region = 'NY', hometown_country = 'USA' WHERE championship_year = 2025 AND contest_no = 13 AND entry_no = 3;
UPDATE ENTRY SET hometown_city = 'Findlay', hometown_region = 'OH', hometown_country = 'USA' WHERE championship_year = 2025 AND contest_no = 13 AND entry_no = 4;
UPDATE ENTRY SET hometown_city = 'Washington', hometown_region = 'UT', hometown_country = 'USA' WHERE championship_year = 2025 AND contest_no = 13 AND entry_no = 5;
UPDATE ENTRY SET hometown_city = 'Flag Pond', hometown_region = 'TN', hometown_country = 'USA' WHERE championship_year = 2025 AND contest_no = 13 AND entry_no = 6;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'Brazil' WHERE championship_year = 2025 AND contest_no = 13 AND entry_no = 7;
UPDATE ENTRY SET hometown_city = 'Downington', hometown_region = 'PA', hometown_country = 'USA' WHERE championship_year = 2025 AND contest_no = 13 AND entry_no = 8;
UPDATE ENTRY SET hometown_city = 'Harleysville', hometown_region = 'PA', hometown_country = 'USA' WHERE championship_year = 2025 AND contest_no = 13 AND entry_no = 9;
UPDATE ENTRY SET hometown_city = 'Claremont', hometown_region = 'NH', hometown_country = 'USA' WHERE championship_year = 2025 AND contest_no = 13 AND entry_no = 10;
UPDATE ENTRY SET hometown_city = 'Eddy', hometown_region = 'TX', hometown_country = 'USA' WHERE championship_year = 2025 AND contest_no = 14 AND entry_no = 1;
UPDATE ENTRY SET hometown_city = 'Anchorage', hometown_region = 'AK', hometown_country = 'USA' WHERE championship_year = 2025 AND contest_no = 14 AND entry_no = 2;
UPDATE ENTRY SET hometown_city = 'Perkins Township', hometown_region = 'ME', hometown_country = 'USA' WHERE championship_year = 2025 AND contest_no = 14 AND entry_no = 3;
UPDATE ENTRY SET hometown_city = 'Aichelberg', hometown_region = NULL, hometown_country = 'Germany' WHERE championship_year = 2025 AND contest_no = 14 AND entry_no = 4;
UPDATE ENTRY SET hometown_city = 'Perry', hometown_region = 'GA', hometown_country = 'USA' WHERE championship_year = 2025 AND contest_no = 14 AND entry_no = 5;
UPDATE ENTRY SET hometown_city = 'Jamestown', hometown_region = 'NY', hometown_country = 'USA' WHERE championship_year = 2025 AND contest_no = 14 AND entry_no = 6;
UPDATE ENTRY SET hometown_city = 'Newcastle', hometown_region = NULL, hometown_country = 'Canada' WHERE championship_year = 2025 AND contest_no = 14 AND entry_no = 7;
UPDATE ENTRY SET hometown_city = 'Yuba City', hometown_region = 'CA', hometown_country = 'USA' WHERE championship_year = 2025 AND contest_no = 14 AND entry_no = 8;
UPDATE ENTRY SET hometown_city = 'Cheswick', hometown_region = 'PA', hometown_country = 'USA' WHERE championship_year = 2025 AND contest_no = 14 AND entry_no = 9;
UPDATE ENTRY SET hometown_city = 'Sioux Falls', hometown_region = 'SD', hometown_country = 'USA' WHERE championship_year = 2025 AND contest_no = 14 AND entry_no = 10;
UPDATE ENTRY SET hometown_city = 'Norfolk', hometown_region = 'NE', hometown_country = 'USA' WHERE championship_year = 2025 AND contest_no = 14 AND entry_no = 11;
UPDATE ENTRY SET hometown_city = 'Downers Grove', hometown_region = 'IL', hometown_country = 'USA' WHERE championship_year = 2025 AND contest_no = 14 AND entry_no = 12;
UPDATE ENTRY SET hometown_city = 'Christiana', hometown_region = 'TN', hometown_country = 'USA' WHERE championship_year = 2025 AND contest_no = 15 AND entry_no = 1;
UPDATE ENTRY SET hometown_city = 'Ocala', hometown_region = 'FL', hometown_country = 'USA' WHERE championship_year = 2025 AND contest_no = 15 AND entry_no = 3;
UPDATE ENTRY SET hometown_city = 'Pickerington', hometown_region = 'OH', hometown_country = 'USA' WHERE championship_year = 2025 AND contest_no = 15 AND entry_no = 4;
UPDATE ENTRY SET hometown_city = 'Summersville', hometown_region = 'WV', hometown_country = 'USA' WHERE championship_year = 2025 AND contest_no = 15 AND entry_no = 5;
UPDATE ENTRY SET hometown_city = 'Mount Rainier', hometown_region = 'MD', hometown_country = 'USA' WHERE championship_year = 2025 AND contest_no = 15 AND entry_no = 6;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = 'TX', hometown_country = 'USA' WHERE championship_year = 2025 AND contest_no = 15 AND entry_no = 7;
UPDATE ENTRY SET hometown_city = 'Tucson', hometown_region = 'AZ', hometown_country = 'USA' WHERE championship_year = 2025 AND contest_no = 15 AND entry_no = 8;
UPDATE ENTRY SET hometown_city = 'Northglenn', hometown_region = 'CO', hometown_country = 'USA' WHERE championship_year = 2025 AND contest_no = 15 AND entry_no = 10;
UPDATE ENTRY SET hometown_city = 'Olmsted Falls', hometown_region = 'OH', hometown_country = 'USA' WHERE championship_year = 2025 AND contest_no = 16 AND entry_no = 1;
UPDATE ENTRY SET hometown_city = 'Hurlock', hometown_region = 'MD', hometown_country = 'USA' WHERE championship_year = 2025 AND contest_no = 16 AND entry_no = 2;
UPDATE ENTRY SET hometown_city = 'Lebanon', hometown_region = 'OH', hometown_country = 'USA' WHERE championship_year = 2025 AND contest_no = 16 AND entry_no = 3;
UPDATE ENTRY SET hometown_city = 'Spring Lake', hometown_region = 'MI', hometown_country = 'USA' WHERE championship_year = 2025 AND contest_no = 16 AND entry_no = 4;
UPDATE ENTRY SET hometown_city = 'Bay Village', hometown_region = 'OH', hometown_country = 'USA' WHERE championship_year = 2025 AND contest_no = 16 AND entry_no = 5;
UPDATE ENTRY SET hometown_city = 'Pulaski', hometown_region = 'PA', hometown_country = 'USA' WHERE championship_year = 2025 AND contest_no = 16 AND entry_no = 6;
UPDATE ENTRY SET hometown_city = 'Blackpool', hometown_region = NULL, hometown_country = 'England' WHERE championship_year = 2025 AND contest_no = 16 AND entry_no = 7;
UPDATE ENTRY SET hometown_city = 'Lakeland', hometown_region = 'FL', hometown_country = 'USA' WHERE championship_year = 2025 AND contest_no = 16 AND entry_no = 8;
UPDATE ENTRY SET hometown_city = 'Girard', hometown_region = 'PA', hometown_country = 'USA' WHERE championship_year = 2025 AND contest_no = 16 AND entry_no = 9;
UPDATE ENTRY SET hometown_city = 'Belford', hometown_region = 'NJ', hometown_country = 'USA' WHERE championship_year = 2025 AND contest_no = 16 AND entry_no = 10;
UPDATE ENTRY SET hometown_city = 'Indianapolis', hometown_region = 'IN', hometown_country = 'USA' WHERE championship_year = 2025 AND contest_no = 16 AND entry_no = 11;
UPDATE ENTRY SET hometown_city = 'Dearborn', hometown_region = 'MI', hometown_country = 'USA' WHERE championship_year = 2025 AND contest_no = 17 AND entry_no = 1;
UPDATE ENTRY SET hometown_city = 'Arvada', hometown_region = 'CO', hometown_country = 'USA' WHERE championship_year = 2025 AND contest_no = 17 AND entry_no = 2;
UPDATE ENTRY SET hometown_city = 'Harmony', hometown_region = 'PA', hometown_country = 'USA' WHERE championship_year = 2025 AND contest_no = 17 AND entry_no = 3;
UPDATE ENTRY SET hometown_city = 'Upper Darpy', hometown_region = 'PA', hometown_country = 'USA' WHERE championship_year = 2025 AND contest_no = 17 AND entry_no = 4;
UPDATE ENTRY SET hometown_city = 'Roseville', hometown_region = 'MI', hometown_country = 'USA' WHERE championship_year = 2025 AND contest_no = 17 AND entry_no = 5;
UPDATE ENTRY SET hometown_city = 'Oberhof', hometown_region = 'Aargau', hometown_country = 'Switzerland' WHERE championship_year = 2025 AND contest_no = 17 AND entry_no = 6;
UPDATE ENTRY SET hometown_city = 'Penelope', hometown_region = 'TX', hometown_country = 'USA' WHERE championship_year = 2025 AND contest_no = 17 AND entry_no = 7;
UPDATE ENTRY SET hometown_city = 'Pittsburgh', hometown_region = 'PA', hometown_country = 'USA' WHERE championship_year = 2025 AND contest_no = 17 AND entry_no = 8;
UPDATE ENTRY SET hometown_city = 'Pasadena', hometown_region = 'CA', hometown_country = 'USA' WHERE championship_year = 2025 AND contest_no = 17 AND entry_no = 9;
UPDATE ENTRY SET hometown_city = 'Hull', hometown_region = NULL, hometown_country = 'England' WHERE championship_year = 2025 AND contest_no = 18 AND entry_no = 1;
UPDATE ENTRY SET hometown_city = 'Mays Landing', hometown_region = 'NJ', hometown_country = 'USA' WHERE championship_year = 2025 AND contest_no = 18 AND entry_no = 2;
UPDATE ENTRY SET hometown_city = 'Brownstown Charter', hometown_region = 'MI', hometown_country = 'USA' WHERE championship_year = 2025 AND contest_no = 18 AND entry_no = 3;
UPDATE ENTRY SET hometown_city = 'Mays Landing', hometown_region = 'NJ', hometown_country = 'USA' WHERE championship_year = 2025 AND contest_no = 18 AND entry_no = 4;
UPDATE ENTRY SET hometown_city = 'Georgetown', hometown_region = 'TX', hometown_country = 'USA' WHERE championship_year = 2025 AND contest_no = 18 AND entry_no = 5;
UPDATE ENTRY SET hometown_city = 'Lincolnton', hometown_region = 'NC', hometown_country = 'USA' WHERE championship_year = 2025 AND contest_no = 18 AND entry_no = 7;
UPDATE ENTRY SET hometown_city = 'Farmington Hills', hometown_region = 'MI', hometown_country = 'USA' WHERE championship_year = 2025 AND contest_no = 18 AND entry_no = 8;
UPDATE ENTRY SET hometown_city = 'Cutler Bay', hometown_region = 'FL', hometown_country = 'USA' WHERE championship_year = 2025 AND contest_no = 18 AND entry_no = 9;
UPDATE ENTRY SET hometown_city = 'Scarborough', hometown_region = 'Ontario', hometown_country = 'Canada' WHERE championship_year = 2025 AND contest_no = 18 AND entry_no = 10;
UPDATE ENTRY SET hometown_city = 'Elizabethtown', hometown_region = 'KY', hometown_country = 'USA' WHERE championship_year = 2025 AND contest_no = 18 AND entry_no = 12;
UPDATE ENTRY SET hometown_city = 'Nashville', hometown_region = 'TN', hometown_country = 'USA' WHERE championship_year = 2025 AND contest_no = 18 AND entry_no = 13;
UPDATE ENTRY SET hometown_city = 'Dresher', hometown_region = 'PA', hometown_country = 'USA' WHERE championship_year = 2025 AND contest_no = 19 AND entry_no = 1;
UPDATE ENTRY SET hometown_city = 'Oslo', hometown_region = NULL, hometown_country = 'Norway' WHERE championship_year = 2025 AND contest_no = 19 AND entry_no = 2;
UPDATE ENTRY SET hometown_city = 'Fairbanks', hometown_region = 'AK', hometown_country = 'USA' WHERE championship_year = 2025 AND contest_no = 19 AND entry_no = 3;
UPDATE ENTRY SET hometown_city = 'Evansville', hometown_region = 'IN', hometown_country = 'USA' WHERE championship_year = 2025 AND contest_no = 19 AND entry_no = 4;
UPDATE ENTRY SET hometown_city = 'Antwerpen', hometown_region = NULL, hometown_country = 'Belgium' WHERE championship_year = 2025 AND contest_no = 19 AND entry_no = 5;
UPDATE ENTRY SET hometown_city = 'Spokane', hometown_region = 'WA', hometown_country = 'USA' WHERE championship_year = 2025 AND contest_no = 19 AND entry_no = 6;
UPDATE ENTRY SET hometown_city = 'Thompson', hometown_region = 'ND', hometown_country = 'USA' WHERE championship_year = 2025 AND contest_no = 19 AND entry_no = 7;
UPDATE ENTRY SET hometown_city = 'Cleveland', hometown_region = 'OH', hometown_country = 'USA' WHERE championship_year = 2025 AND contest_no = 19 AND entry_no = 8;
UPDATE ENTRY SET hometown_city = 'Greensboro', hometown_region = 'NC', hometown_country = 'USA' WHERE championship_year = 2025 AND contest_no = 19 AND entry_no = 9;
UPDATE ENTRY SET hometown_city = 'Ellicott', hometown_region = 'MD', hometown_country = 'USA' WHERE championship_year = 2025 AND contest_no = 19 AND entry_no = 10;
UPDATE ENTRY SET hometown_city = 'Stanton', hometown_region = 'CA', hometown_country = 'USA' WHERE championship_year = 2025 AND contest_no = 20 AND entry_no = 1;
UPDATE ENTRY SET hometown_city = 'Dora', hometown_region = 'AL', hometown_country = 'USA' WHERE championship_year = 2025 AND contest_no = 20 AND entry_no = 2;
UPDATE ENTRY SET hometown_city = 'Sevierville', hometown_region = 'TN', hometown_country = 'USA' WHERE championship_year = 2025 AND contest_no = 20 AND entry_no = 3;
UPDATE ENTRY SET hometown_city = 'Aberdeen', hometown_region = 'MD', hometown_country = 'USA' WHERE championship_year = 2025 AND contest_no = 20 AND entry_no = 4;
UPDATE ENTRY SET hometown_city = 'Windsor Heights', hometown_region = 'IA', hometown_country = 'USA' WHERE championship_year = 2025 AND contest_no = 20 AND entry_no = 5;
UPDATE ENTRY SET hometown_city = 'Berglen', hometown_region = NULL, hometown_country = 'Germany' WHERE championship_year = 2025 AND contest_no = 21 AND entry_no = 1;
UPDATE ENTRY SET hometown_city = 'Stromsburg', hometown_region = 'NE', hometown_country = 'USA' WHERE championship_year = 2025 AND contest_no = 21 AND entry_no = 2;
UPDATE ENTRY SET hometown_city = 'Burlington', hometown_region = 'VT', hometown_country = 'USA' WHERE championship_year = 2025 AND contest_no = 21 AND entry_no = 3;
UPDATE ENTRY SET hometown_city = 'Porter', hometown_region = 'IN', hometown_country = 'USA' WHERE championship_year = 2025 AND contest_no = 21 AND entry_no = 4;
UPDATE ENTRY SET hometown_city = 'Abingdon', hometown_region = NULL, hometown_country = 'United Kingdom' WHERE championship_year = 2025 AND contest_no = 21 AND entry_no = 5;
UPDATE ENTRY SET hometown_city = 'Bradenton', hometown_region = 'FL', hometown_country = 'USA' WHERE championship_year = 2025 AND contest_no = 21 AND entry_no = 6;
UPDATE ENTRY SET hometown_city = 'Harper Woods', hometown_region = 'MI', hometown_country = 'USA' WHERE championship_year = 2025 AND contest_no = 21 AND entry_no = 7;
UPDATE ENTRY SET hometown_city = 'Alexandria', hometown_region = 'VA', hometown_country = 'USA' WHERE championship_year = 2025 AND contest_no = 21 AND entry_no = 8;
UPDATE ENTRY SET hometown_city = 'Louisville', hometown_region = 'KY', hometown_country = 'USA' WHERE championship_year = 2025 AND contest_no = 21 AND entry_no = 9;
UPDATE ENTRY SET hometown_city = 'Charles Town', hometown_region = 'WV', hometown_country = 'USA' WHERE championship_year = 2025 AND contest_no = 21 AND entry_no = 10;
UPDATE ENTRY SET hometown_city = 'Louisville', hometown_region = 'KY', hometown_country = 'USA' WHERE championship_year = 2025 AND contest_no = 22 AND entry_no = 1;
UPDATE ENTRY SET hometown_city = 'Woodland Park', hometown_region = 'CO', hometown_country = 'USA' WHERE championship_year = 2025 AND contest_no = 22 AND entry_no = 2;
UPDATE ENTRY SET hometown_city = 'Tauranga', hometown_region = 'Bay of Plenty', hometown_country = 'New Zealand' WHERE championship_year = 2025 AND contest_no = 22 AND entry_no = 3;
UPDATE ENTRY SET hometown_city = 'Summerville', hometown_region = 'SC', hometown_country = 'USA' WHERE championship_year = 2025 AND contest_no = 22 AND entry_no = 5;
UPDATE ENTRY SET hometown_city = 'Pittsburgh', hometown_region = 'PA', hometown_country = 'USA' WHERE championship_year = 2025 AND contest_no = 22 AND entry_no = 6;
UPDATE ENTRY SET hometown_city = 'Orting', hometown_region = 'WA', hometown_country = 'USA' WHERE championship_year = 2025 AND contest_no = 22 AND entry_no = 7;
UPDATE ENTRY SET hometown_city = 'Ware', hometown_region = 'MA', hometown_country = 'USA' WHERE championship_year = 2025 AND contest_no = 22 AND entry_no = 8;
UPDATE ENTRY SET hometown_city = 'Adliswil', hometown_region = 'Zürich', hometown_country = 'Switzerland' WHERE championship_year = 2025 AND contest_no = 22 AND entry_no = 9;
UPDATE ENTRY SET hometown_city = 'Statesville', hometown_region = 'NC', hometown_country = 'USA' WHERE championship_year = 2025 AND contest_no = 23 AND entry_no = 1;
UPDATE ENTRY SET hometown_city = 'Hopewell', hometown_region = 'NY', hometown_country = 'USA' WHERE championship_year = 2025 AND contest_no = 23 AND entry_no = 2;
UPDATE ENTRY SET hometown_city = 'Clarklake', hometown_region = 'MI', hometown_country = 'USA' WHERE championship_year = 2025 AND contest_no = 23 AND entry_no = 3;
UPDATE ENTRY SET hometown_city = 'Talladega', hometown_region = 'AL', hometown_country = 'USA' WHERE championship_year = 2025 AND contest_no = 23 AND entry_no = 4;
UPDATE ENTRY SET hometown_city = 'New York', hometown_region = 'NY', hometown_country = 'USA' WHERE championship_year = 2025 AND contest_no = 23 AND entry_no = 5;
UPDATE ENTRY SET hometown_city = 'Ypsilanti', hometown_region = 'MI', hometown_country = 'USA' WHERE championship_year = 2025 AND contest_no = 23 AND entry_no = 6;
UPDATE ENTRY SET hometown_city = 'Pittsburgh', hometown_region = 'PA', hometown_country = 'USA' WHERE championship_year = 2025 AND contest_no = 23 AND entry_no = 7;
UPDATE ENTRY SET hometown_city = 'Ruckersville', hometown_region = 'VA', hometown_country = 'USA' WHERE championship_year = 2025 AND contest_no = 24 AND entry_no = 1;
UPDATE ENTRY SET hometown_city = 'Corvallis', hometown_region = 'OR', hometown_country = 'USA' WHERE championship_year = 2025 AND contest_no = 24 AND entry_no = 2;
UPDATE ENTRY SET hometown_city = 'Slippery Rock', hometown_region = 'PA', hometown_country = 'USA' WHERE championship_year = 2025 AND contest_no = 24 AND entry_no = 3;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = 'PA', hometown_country = 'USA' WHERE championship_year = 2025 AND contest_no = 24 AND entry_no = 4;
UPDATE ENTRY SET hometown_city = 'Boise', hometown_region = 'ID', hometown_country = 'USA' WHERE championship_year = 2025 AND contest_no = 24 AND entry_no = 5;
UPDATE ENTRY SET hometown_city = 'Durham', hometown_region = 'NC', hometown_country = 'USA' WHERE championship_year = 2025 AND contest_no = 24 AND entry_no = 6;
UPDATE ENTRY SET hometown_city = 'Gulf Breeze', hometown_region = 'FL', hometown_country = 'USA' WHERE championship_year = 2025 AND contest_no = 24 AND entry_no = 7;
UPDATE ENTRY SET hometown_city = 'Ashtabula', hometown_region = 'OH', hometown_country = 'USA' WHERE championship_year = 2025 AND contest_no = 24 AND entry_no = 8;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = 'KY', hometown_country = 'USA' WHERE championship_year = 2025 AND contest_no = 24 AND entry_no = 9;
UPDATE ENTRY SET hometown_city = 'Jacksonville', hometown_region = 'FL', hometown_country = 'USA' WHERE championship_year = 2025 AND contest_no = 24 AND entry_no = 10;
UPDATE ENTRY SET hometown_city = 'Wexford', hometown_region = 'PA', hometown_country = 'USA' WHERE championship_year = 2025 AND contest_no = 24 AND entry_no = 11;
UPDATE ENTRY SET hometown_city = 'Woodland Hills', hometown_region = 'CA', hometown_country = 'USA' WHERE championship_year = 2025 AND contest_no = 25 AND entry_no = 1;
UPDATE ENTRY SET hometown_city = 'Temple', hometown_region = 'TX', hometown_country = 'USA' WHERE championship_year = 2025 AND contest_no = 25 AND entry_no = 2;
UPDATE ENTRY SET hometown_city = 'Jamestown', hometown_region = 'RI', hometown_country = 'USA' WHERE championship_year = 2025 AND contest_no = 25 AND entry_no = 3;
UPDATE ENTRY SET hometown_city = 'Lake Balboa', hometown_region = 'CA', hometown_country = 'USA' WHERE championship_year = 2025 AND contest_no = 25 AND entry_no = 4;
UPDATE ENTRY SET hometown_city = 'Princeton', hometown_region = 'WV', hometown_country = 'USA' WHERE championship_year = 2025 AND contest_no = 25 AND entry_no = 5;
UPDATE ENTRY SET hometown_city = 'Bluffton', hometown_region = 'SC', hometown_country = 'USA' WHERE championship_year = 2025 AND contest_no = 25 AND entry_no = 6;
UPDATE ENTRY SET hometown_city = 'New Kensington', hometown_region = 'PA', hometown_country = 'USA' WHERE championship_year = 2025 AND contest_no = 25 AND entry_no = 7;
UPDATE ENTRY SET hometown_city = 'Sykesville', hometown_region = 'MD', hometown_country = 'USA' WHERE championship_year = 2025 AND contest_no = 25 AND entry_no = 8;
UPDATE ENTRY SET hometown_city = 'Leinfelden-Echterdingen', hometown_region = NULL, hometown_country = 'Germany' WHERE championship_year = 2025 AND contest_no = 25 AND entry_no = 9;
UPDATE ENTRY SET hometown_city = 'New York', hometown_region = 'NY', hometown_country = 'USA' WHERE championship_year = 2025 AND contest_no = 25 AND entry_no = 10;
UPDATE ENTRY SET hometown_city = 'Tuscaloosa', hometown_region = 'AL', hometown_country = 'USA' WHERE championship_year = 2025 AND contest_no = 25 AND entry_no = 11;
UPDATE ENTRY SET hometown_city = 'Christiana', hometown_region = 'TN', hometown_country = 'USA' WHERE championship_year = 2025 AND contest_no = 26 AND entry_no = 1;
UPDATE ENTRY SET hometown_city = 'Fayetteville', hometown_region = 'NY', hometown_country = 'USA' WHERE championship_year = 2025 AND contest_no = 26 AND entry_no = 2;
UPDATE ENTRY SET hometown_city = 'Lexington', hometown_region = 'KY', hometown_country = 'USA' WHERE championship_year = 2025 AND contest_no = 26 AND entry_no = 3;
UPDATE ENTRY SET hometown_city = 'Woodland Park', hometown_region = 'CO', hometown_country = 'USA' WHERE championship_year = 2025 AND contest_no = 26 AND entry_no = 4;
UPDATE ENTRY SET hometown_city = 'Woodland Park', hometown_region = 'CO', hometown_country = 'USA' WHERE championship_year = 2025 AND contest_no = 26 AND entry_no = 5;
UPDATE ENTRY SET hometown_city = 'Tokyo', hometown_region = NULL, hometown_country = 'Japan' WHERE championship_year = 2025 AND contest_no = 26 AND entry_no = 6;
UPDATE ENTRY SET hometown_city = 'Denver', hometown_region = 'CO', hometown_country = 'USA' WHERE championship_year = 2025 AND contest_no = 26 AND entry_no = 7;
UPDATE ENTRY SET hometown_city = 'Erlinsbach', hometown_region = NULL, hometown_country = 'Switzerland' WHERE championship_year = 2025 AND contest_no = 26 AND entry_no = 8;
UPDATE ENTRY SET hometown_city = 'Lexington', hometown_region = 'NC', hometown_country = 'USA' WHERE championship_year = 2025 AND contest_no = 26 AND entry_no = 9;
UPDATE ENTRY SET hometown_city = 'Wichita', hometown_region = 'KS', hometown_country = 'USA' WHERE championship_year = 2025 AND contest_no = 26 AND entry_no = 10;
UPDATE ENTRY SET hometown_city = 'Jefferson', hometown_region = 'OH', hometown_country = 'USA' WHERE championship_year = 2025 AND contest_no = 26 AND entry_no = 11;
UPDATE ENTRY SET hometown_city = 'York', hometown_region = 'PA', hometown_country = 'USA' WHERE championship_year = 2025 AND contest_no = 26 AND entry_no = 12;
UPDATE ENTRY SET hometown_city = 'Herndon', hometown_region = 'VA', hometown_country = 'USA' WHERE championship_year = 2025 AND contest_no = 26 AND entry_no = 13;
UPDATE ENTRY SET hometown_city = 'Youngwood', hometown_region = 'PA', hometown_country = 'USA' WHERE championship_year = 2025 AND contest_no = 26 AND entry_no = 14;
UPDATE ENTRY SET hometown_city = 'Brooklyn', hometown_region = 'NY', hometown_country = 'USA' WHERE championship_year = 2025 AND contest_no = 26 AND entry_no = 15;
UPDATE ENTRY SET hometown_city = 'Plover', hometown_region = 'WI', hometown_country = 'USA' WHERE championship_year = 2025 AND contest_no = 26 AND entry_no = 16;
UPDATE ENTRY SET hometown_city = 'Knoxville', hometown_region = 'TN', hometown_country = 'USA' WHERE championship_year = 2025 AND contest_no = 26 AND entry_no = 17;
UPDATE ENTRY SET hometown_city = 'Schulenburg', hometown_region = 'TX', hometown_country = 'USA' WHERE championship_year = 2025 AND contest_no = 27 AND entry_no = 1;
UPDATE ENTRY SET hometown_city = 'Fairborn', hometown_region = 'OH', hometown_country = 'USA' WHERE championship_year = 2025 AND contest_no = 27 AND entry_no = 2;
UPDATE ENTRY SET hometown_city = 'Argos', hometown_region = 'IN', hometown_country = 'USA' WHERE championship_year = 2025 AND contest_no = 27 AND entry_no = 3;
UPDATE ENTRY SET hometown_city = 'Schulenburg', hometown_region = 'TX', hometown_country = 'USA' WHERE championship_year = 2025 AND contest_no = 27 AND entry_no = 4;
UPDATE ENTRY SET hometown_city = 'Fairborn', hometown_region = 'OH', hometown_country = 'USA' WHERE championship_year = 2025 AND contest_no = 27 AND entry_no = 5;
UPDATE ENTRY SET hometown_city = 'Newport', hometown_region = 'RI', hometown_country = 'USA' WHERE championship_year = 2025 AND contest_no = 27 AND entry_no = 6;
UPDATE ENTRY SET hometown_city = 'West Chester', hometown_region = 'OH', hometown_country = 'USA' WHERE championship_year = 2025 AND contest_no = 27 AND entry_no = 7;
UPDATE ENTRY SET hometown_city = 'Pulaski', hometown_region = 'NY', hometown_country = 'USA' WHERE championship_year = 2025 AND contest_no = 27 AND entry_no = 8;
UPDATE ENTRY SET hometown_city = 'Louisville', hometown_region = 'KY', hometown_country = 'USA' WHERE championship_year = 2025 AND contest_no = 27 AND entry_no = 9;
UPDATE ENTRY SET hometown_city = 'Cheshire', hometown_region = 'CT', hometown_country = 'USA' WHERE championship_year = 2025 AND contest_no = 27 AND entry_no = 10;
UPDATE ENTRY SET hometown_city = 'Greenfield', hometown_region = 'IN', hometown_country = 'USA' WHERE championship_year = 2025 AND contest_no = 27 AND entry_no = 11;
UPDATE ENTRY SET hometown_city = 'Sandy Lake', hometown_region = 'PA', hometown_country = 'USA' WHERE championship_year = 2025 AND contest_no = 27 AND entry_no = 12;
UPDATE ENTRY SET hometown_city = 'Springfield', hometown_region = 'OH', hometown_country = 'USA' WHERE championship_year = 2025 AND contest_no = 27 AND entry_no = 13;
UPDATE ENTRY SET hometown_city = 'White Oak', hometown_region = 'PA', hometown_country = 'USA' WHERE championship_year = 2025 AND contest_no = 27 AND entry_no = 14;
UPDATE ENTRY SET hometown_city = 'Greenville', hometown_region = 'PA', hometown_country = 'USA' WHERE championship_year = 2025 AND contest_no = 27 AND entry_no = 15;
UPDATE ENTRY SET hometown_city = 'Wheaton', hometown_region = 'IL', hometown_country = 'USA' WHERE championship_year = 2025 AND contest_no = 27 AND entry_no = 16;
UPDATE ENTRY SET hometown_city = 'Clayton', hometown_region = 'NC', hometown_country = 'USA' WHERE championship_year = 2025 AND contest_no = 27 AND entry_no = 17;
UPDATE ENTRY SET hometown_city = 'Lakewood', hometown_region = 'CO', hometown_country = 'USA' WHERE championship_year = 2025 AND contest_no = 27 AND entry_no = 18;
UPDATE ENTRY SET hometown_city = 'Cham', hometown_region = 'Bayern', hometown_country = 'Germany' WHERE championship_year = 2025 AND contest_no = 28 AND entry_no = 1;
UPDATE ENTRY SET hometown_city = 'Land O Lakes', hometown_region = 'WI', hometown_country = 'USA' WHERE championship_year = 2025 AND contest_no = 28 AND entry_no = 2;
UPDATE ENTRY SET hometown_city = 'Seattle', hometown_region = 'WA', hometown_country = 'USA' WHERE championship_year = 2025 AND contest_no = 28 AND entry_no = 3;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = NULL, hometown_country = 'Germany' WHERE championship_year = 2025 AND contest_no = 28 AND entry_no = 4;
UPDATE ENTRY SET hometown_city = 'New Martinsville', hometown_region = 'WV', hometown_country = 'USA' WHERE championship_year = 2025 AND contest_no = 29 AND entry_no = 1;
UPDATE ENTRY SET hometown_city = 'Murphy', hometown_region = 'NC', hometown_country = 'USA' WHERE championship_year = 2025 AND contest_no = 29 AND entry_no = 2;
UPDATE ENTRY SET hometown_city = 'Los Angeles', hometown_region = 'CA', hometown_country = 'USA' WHERE championship_year = 2025 AND contest_no = 30 AND entry_no = 1;
UPDATE ENTRY SET hometown_city = 'Lilienfeld', hometown_region = NULL, hometown_country = 'Austria' WHERE championship_year = 2025 AND contest_no = 30 AND entry_no = 2;
UPDATE ENTRY SET hometown_city = 'North Hills', hometown_region = 'CA', hometown_country = 'USA' WHERE championship_year = 2025 AND contest_no = 30 AND entry_no = 3;
UPDATE ENTRY SET hometown_city = 'Coopersburg', hometown_region = 'PA', hometown_country = 'USA' WHERE championship_year = 2025 AND contest_no = 30 AND entry_no = 4;
UPDATE ENTRY SET hometown_city = 'Angier', hometown_region = 'NC', hometown_country = 'USA' WHERE championship_year = 2025 AND contest_no = 30 AND entry_no = 5;
UPDATE ENTRY SET hometown_city = 'New Vineyard', hometown_region = 'ME', hometown_country = 'USA' WHERE championship_year = 2025 AND contest_no = 30 AND entry_no = 7;
UPDATE ENTRY SET hometown_city = 'Jerusalem', hometown_region = NULL, hometown_country = 'Israel' WHERE championship_year = 2025 AND contest_no = 31 AND entry_no = 1;
UPDATE ENTRY SET hometown_city = 'Braunschweig', hometown_region = 'Lower Saxony', hometown_country = 'Germany' WHERE championship_year = 2025 AND contest_no = 31 AND entry_no = 2;
UPDATE ENTRY SET hometown_city = 'Austin', hometown_region = 'TX', hometown_country = 'USA' WHERE championship_year = 2025 AND contest_no = 31 AND entry_no = 3;
UPDATE ENTRY SET hometown_city = 'Braunschweig', hometown_region = 'Lower Saxony', hometown_country = 'Germany' WHERE championship_year = 2025 AND contest_no = 31 AND entry_no = 4;
UPDATE ENTRY SET hometown_city = 'Levittown', hometown_region = 'NY', hometown_country = 'USA' WHERE championship_year = 2025 AND contest_no = 32 AND entry_no = 1;
UPDATE ENTRY SET hometown_city = 'Toluca Lake', hometown_region = 'CA', hometown_country = 'USA' WHERE championship_year = 2025 AND contest_no = 32 AND entry_no = 2;
UPDATE ENTRY SET hometown_city = 'Winnenden', hometown_region = NULL, hometown_country = 'Germany' WHERE championship_year = 2025 AND contest_no = 32 AND entry_no = 3;
UPDATE ENTRY SET hometown_city = 'Levittown', hometown_region = 'NY', hometown_country = 'USA' WHERE championship_year = 2025 AND contest_no = 32 AND entry_no = 4;
UPDATE ENTRY SET hometown_city = 'Erie', hometown_region = 'PA', hometown_country = 'USA' WHERE championship_year = 2025 AND contest_no = 32 AND entry_no = 5;
UPDATE ENTRY SET hometown_city = 'Gipf-Oberfrick', hometown_region = NULL, hometown_country = 'Switzerland' WHERE championship_year = 2025 AND contest_no = 32 AND entry_no = 6;
UPDATE ENTRY SET hometown_city = 'Napa', hometown_region = 'CA', hometown_country = 'USA' WHERE championship_year = 2025 AND contest_no = 33 AND entry_no = 1;
UPDATE ENTRY SET hometown_city = 'Pittsburgh', hometown_region = 'PA', hometown_country = 'USA' WHERE championship_year = 2025 AND contest_no = 33 AND entry_no = 2;
UPDATE ENTRY SET hometown_city = 'Manchaca', hometown_region = 'TX', hometown_country = 'USA' WHERE championship_year = 2025 AND contest_no = 33 AND entry_no = 3;
UPDATE ENTRY SET hometown_city = 'Richmond', hometown_region = 'VA', hometown_country = 'USA' WHERE championship_year = 2025 AND contest_no = 33 AND entry_no = 4;
UPDATE ENTRY SET hometown_city = 'Eagle River', hometown_region = 'AK', hometown_country = 'USA' WHERE championship_year = 2025 AND contest_no = 33 AND entry_no = 5;
UPDATE ENTRY SET hometown_city = 'Kettering', hometown_region = 'OH', hometown_country = 'USA' WHERE championship_year = 2025 AND contest_no = 33 AND entry_no = 6;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = 'WA', hometown_country = 'USA' WHERE championship_year = 2025 AND contest_no = 34 AND entry_no = 1;
UPDATE ENTRY SET hometown_city = NULL, hometown_region = 'PA', hometown_country = 'USA' WHERE championship_year = 2025 AND contest_no = 34 AND entry_no = 2;
UPDATE ENTRY SET hometown_city = 'Valley City', hometown_region = 'OH', hometown_country = 'USA' WHERE championship_year = 2025 AND contest_no = 34 AND entry_no = 3;
UPDATE ENTRY SET hometown_city = 'Deltona', hometown_region = 'FL', hometown_country = 'USA' WHERE championship_year = 2025 AND contest_no = 34 AND entry_no = 4;
UPDATE ENTRY SET hometown_city = 'Pittsburgh', hometown_region = 'PA', hometown_country = 'USA' WHERE championship_year = 2025 AND contest_no = 34 AND entry_no = 5;
UPDATE ENTRY SET hometown_city = 'Brooklyn Park', hometown_region = 'MN', hometown_country = 'USA' WHERE championship_year = 2025 AND contest_no = 35 AND entry_no = 1;
UPDATE ENTRY SET hometown_city = 'Williamsburg', hometown_region = 'VA', hometown_country = 'USA' WHERE championship_year = 2025 AND contest_no = 35 AND entry_no = 2;
UPDATE ENTRY SET hometown_city = 'New York', hometown_region = 'NY', hometown_country = 'USA' WHERE championship_year = 2025 AND contest_no = 35 AND entry_no = 3;
UPDATE ENTRY SET hometown_city = 'Granville', hometown_region = 'OH', hometown_country = 'USA' WHERE championship_year = 2025 AND contest_no = 35 AND entry_no = 4;
UPDATE ENTRY SET hometown_city = 'Milford', hometown_region = 'NH', hometown_country = 'USA' WHERE championship_year = 2025 AND contest_no = 35 AND entry_no = 5;
UPDATE ENTRY SET hometown_city = 'Leinfelden-Echterdingen', hometown_region = NULL, hometown_country = 'Germany' WHERE championship_year = 2025 AND contest_no = 36 AND entry_no = 1;
UPDATE ENTRY SET hometown_city = 'Seattle', hometown_region = 'WA', hometown_country = 'USA' WHERE championship_year = 2025 AND contest_no = 36 AND entry_no = 2;
UPDATE ENTRY SET hometown_city = 'Leinfelden-Echterdingen', hometown_region = NULL, hometown_country = 'Germany' WHERE championship_year = 2025 AND contest_no = 36 AND entry_no = 3;
UPDATE ENTRY SET hometown_city = 'Powhatan', hometown_region = 'VA', hometown_country = 'USA' WHERE championship_year = 2025 AND contest_no = 37 AND entry_no = 1;
UPDATE ENTRY SET hometown_city = 'Flint', hometown_region = 'MI', hometown_country = 'USA' WHERE championship_year = 2025 AND contest_no = 37 AND entry_no = 2;
UPDATE ENTRY SET hometown_city = 'Hudson', hometown_region = 'WI', hometown_country = 'USA' WHERE championship_year = 2025 AND contest_no = 37 AND entry_no = 3;
UPDATE ENTRY SET hometown_city = 'Brighton', hometown_region = 'MI', hometown_country = 'USA' WHERE championship_year = 2025 AND contest_no = 37 AND entry_no = 4;
UPDATE ENTRY SET hometown_city = 'Toronto', hometown_region = 'Ontario', hometown_country = 'Canada' WHERE championship_year = 2025 AND contest_no = 37 AND entry_no = 5;
UPDATE ENTRY SET hometown_city = 'Toronto', hometown_region = 'Ontario', hometown_country = 'Canada' WHERE championship_year = 2025 AND contest_no = 37 AND entry_no = 6;
UPDATE ENTRY SET hometown_city = 'Smithton', hometown_region = 'PA', hometown_country = 'USA' WHERE championship_year = 2025 AND contest_no = 37 AND entry_no = 7;

-- Verified 2023 image transcription repair (generated by scripts/repair_2023.py)
START TRANSACTION;
UPDATE COMPETITOR c JOIN ENTRY e USING (competitor_id) SET c.first_name = 'Loránd', c.middle_name = NULL, c.last_name = 'Jelényi' WHERE e.championship_year = 2023 AND BINARY CONCAT_WS(' ', NULLIF(c.first_name, ''), NULLIF(c.middle_name, ''), NULLIF(c.last_name, '')) = 'Loránd Jelényı' AND NOT EXISTS (SELECT 1 FROM ENTRY other_entry WHERE other_entry.competitor_id = c.competitor_id AND other_entry.championship_year <> 2023);
CREATE TEMPORARY TABLE wbmc_2023_identities AS SELECT e.competitor_id, CONCAT_WS(' ', c.first_name, NULLIF(c.middle_name, ''), NULLIF(c.last_name, '')) AS name FROM ENTRY e JOIN COMPETITOR c USING (competitor_id) WHERE e.championship_year = 2023;
DELETE FROM ENTRY WHERE championship_year = 2023;
DELETE FROM CONTEST WHERE championship_year = 2023;
DELETE FROM CATEGORY WHERE rule_version = 'V2-import-2023' AND category_name = 'Sideburns Freestyle' AND NOT EXISTS (SELECT 1 FROM CONTEST WHERE CONTEST.category_id = CATEGORY.category_id);
INSERT INTO CATEGORY (category_name, rule_version, bracket, is_freestyle) SELECT 'Natural Moustache', 'V2-import-2023', 'Moustache', 0 WHERE NOT EXISTS (SELECT 1 FROM CATEGORY WHERE category_name = 'Natural Moustache' AND rule_version = 'V2-import-2023');
SET @wbmc_category = (SELECT category_id FROM CATEGORY WHERE category_name = 'Natural Moustache' AND rule_version = 'V2-import-2023');
INSERT INTO MOUSTACHE_CATEGORY (category_id) SELECT @wbmc_category WHERE NOT EXISTS (SELECT 1 FROM MOUSTACHE_CATEGORY WHERE category_id = @wbmc_category);
INSERT INTO CONTEST (championship_year, contest_no, category_id, result_status) VALUES (2023, 1, @wbmc_category, 'Published');
SET @wbmc_competitor = (SELECT competitor_id FROM wbmc_2023_identities WHERE BINARY name = 'Benjamin Juergens' LIMIT 1);
INSERT INTO COMPETITOR (first_name, middle_name, last_name) SELECT 'Benjamin', NULL, 'Juergens' WHERE @wbmc_competitor IS NULL;
SET @wbmc_competitor = COALESCE(@wbmc_competitor, LAST_INSERT_ID());
INSERT INTO ENTRY (championship_year, contest_no, entry_no, competitor_id, published_total_score, final_rank) VALUES (2023, 1, 1, @wbmc_competitor, 45.5, 1);
SET @wbmc_competitor = (SELECT competitor_id FROM wbmc_2023_identities WHERE BINARY name = 'John Stevenson' LIMIT 1);
INSERT INTO COMPETITOR (first_name, middle_name, last_name) SELECT 'John', NULL, 'Stevenson' WHERE @wbmc_competitor IS NULL;
SET @wbmc_competitor = COALESCE(@wbmc_competitor, LAST_INSERT_ID());
INSERT INTO ENTRY (championship_year, contest_no, entry_no, competitor_id, published_total_score, final_rank) VALUES (2023, 1, 2, @wbmc_competitor, 45.5, 2);
SET @wbmc_competitor = (SELECT competitor_id FROM wbmc_2023_identities WHERE BINARY name = 'Neal Eckrich' LIMIT 1);
INSERT INTO COMPETITOR (first_name, middle_name, last_name) SELECT 'Neal', NULL, 'Eckrich' WHERE @wbmc_competitor IS NULL;
SET @wbmc_competitor = COALESCE(@wbmc_competitor, LAST_INSERT_ID());
INSERT INTO ENTRY (championship_year, contest_no, entry_no, competitor_id, published_total_score, final_rank) VALUES (2023, 1, 3, @wbmc_competitor, 44.5, 3);
SET @wbmc_competitor = (SELECT competitor_id FROM wbmc_2023_identities WHERE BINARY name = 'János Juhász' LIMIT 1);
INSERT INTO COMPETITOR (first_name, middle_name, last_name) SELECT 'János', NULL, 'Juhász' WHERE @wbmc_competitor IS NULL;
SET @wbmc_competitor = COALESCE(@wbmc_competitor, LAST_INSERT_ID());
INSERT INTO ENTRY (championship_year, contest_no, entry_no, competitor_id, published_total_score, final_rank) VALUES (2023, 1, 4, @wbmc_competitor, 41.5, 4);
SET @wbmc_competitor = (SELECT competitor_id FROM wbmc_2023_identities WHERE BINARY name = 'Marcel ter Haar' LIMIT 1);
INSERT INTO COMPETITOR (first_name, middle_name, last_name) SELECT 'Marcel', NULL, 'ter Haar' WHERE @wbmc_competitor IS NULL;
SET @wbmc_competitor = COALESCE(@wbmc_competitor, LAST_INSERT_ID());
INSERT INTO ENTRY (championship_year, contest_no, entry_no, competitor_id, published_total_score, final_rank) VALUES (2023, 1, 5, @wbmc_competitor, 41.0, 5);
SET @wbmc_competitor = (SELECT competitor_id FROM wbmc_2023_identities WHERE BINARY name = 'Rolf Huber' LIMIT 1);
INSERT INTO COMPETITOR (first_name, middle_name, last_name) SELECT 'Rolf', NULL, 'Huber' WHERE @wbmc_competitor IS NULL;
SET @wbmc_competitor = COALESCE(@wbmc_competitor, LAST_INSERT_ID());
INSERT INTO ENTRY (championship_year, contest_no, entry_no, competitor_id, published_total_score, final_rank) VALUES (2023, 1, 6, @wbmc_competitor, 41.0, 5);
SET @wbmc_competitor = (SELECT competitor_id FROM wbmc_2023_identities WHERE BINARY name = 'Didier Corpataux' LIMIT 1);
INSERT INTO COMPETITOR (first_name, middle_name, last_name) SELECT 'Didier', NULL, 'Corpataux' WHERE @wbmc_competitor IS NULL;
SET @wbmc_competitor = COALESCE(@wbmc_competitor, LAST_INSERT_ID());
INSERT INTO ENTRY (championship_year, contest_no, entry_no, competitor_id, published_total_score, final_rank) VALUES (2023, 1, 7, @wbmc_competitor, 41.0, 5);
SET @wbmc_competitor = (SELECT competitor_id FROM wbmc_2023_identities WHERE BINARY name = 'Rainer Preussner' LIMIT 1);
INSERT INTO COMPETITOR (first_name, middle_name, last_name) SELECT 'Rainer', NULL, 'Preussner' WHERE @wbmc_competitor IS NULL;
SET @wbmc_competitor = COALESCE(@wbmc_competitor, LAST_INSERT_ID());
INSERT INTO ENTRY (championship_year, contest_no, entry_no, competitor_id, published_total_score, final_rank) VALUES (2023, 1, 8, @wbmc_competitor, 40.5, 8);
SET @wbmc_competitor = (SELECT competitor_id FROM wbmc_2023_identities WHERE BINARY name = 'Roger Gagg' LIMIT 1);
INSERT INTO COMPETITOR (first_name, middle_name, last_name) SELECT 'Roger', NULL, 'Gagg' WHERE @wbmc_competitor IS NULL;
SET @wbmc_competitor = COALESCE(@wbmc_competitor, LAST_INSERT_ID());
INSERT INTO ENTRY (championship_year, contest_no, entry_no, competitor_id, published_total_score, final_rank) VALUES (2023, 1, 9, @wbmc_competitor, 40.0, 9);
SET @wbmc_competitor = (SELECT competitor_id FROM wbmc_2023_identities WHERE BINARY name = 'Egon Jerg' LIMIT 1);
INSERT INTO COMPETITOR (first_name, middle_name, last_name) SELECT 'Egon', NULL, 'Jerg' WHERE @wbmc_competitor IS NULL;
SET @wbmc_competitor = COALESCE(@wbmc_competitor, LAST_INSERT_ID());
INSERT INTO ENTRY (championship_year, contest_no, entry_no, competitor_id, published_total_score, final_rank) VALUES (2023, 1, 10, @wbmc_competitor, 40.0, 9);
SET @wbmc_competitor = (SELECT competitor_id FROM wbmc_2023_identities WHERE BINARY name = 'Helmut Hofstetter' LIMIT 1);
INSERT INTO COMPETITOR (first_name, middle_name, last_name) SELECT 'Helmut', NULL, 'Hofstetter' WHERE @wbmc_competitor IS NULL;
SET @wbmc_competitor = COALESCE(@wbmc_competitor, LAST_INSERT_ID());
INSERT INTO ENTRY (championship_year, contest_no, entry_no, competitor_id, published_total_score, final_rank) VALUES (2023, 1, 11, @wbmc_competitor, 40.0, 9);
SET @wbmc_competitor = (SELECT competitor_id FROM wbmc_2023_identities WHERE BINARY name = 'Sándor Szabó' LIMIT 1);
INSERT INTO COMPETITOR (first_name, middle_name, last_name) SELECT 'Sándor', NULL, 'Szabó' WHERE @wbmc_competitor IS NULL;
SET @wbmc_competitor = COALESCE(@wbmc_competitor, LAST_INSERT_ID());
INSERT INTO ENTRY (championship_year, contest_no, entry_no, competitor_id, published_total_score, final_rank) VALUES (2023, 1, 12, @wbmc_competitor, 40.0, 9);
SET @wbmc_competitor = (SELECT competitor_id FROM wbmc_2023_identities WHERE BINARY name = 'István Bajkai' LIMIT 1);
INSERT INTO COMPETITOR (first_name, middle_name, last_name) SELECT 'István', NULL, 'Bajkai' WHERE @wbmc_competitor IS NULL;
SET @wbmc_competitor = COALESCE(@wbmc_competitor, LAST_INSERT_ID());
INSERT INTO ENTRY (championship_year, contest_no, entry_no, competitor_id, published_total_score, final_rank) VALUES (2023, 1, 13, @wbmc_competitor, 40.0, 9);
SET @wbmc_competitor = (SELECT competitor_id FROM wbmc_2023_identities WHERE BINARY name = 'Michael Penzis' LIMIT 1);
INSERT INTO COMPETITOR (first_name, middle_name, last_name) SELECT 'Michael', NULL, 'Penzis' WHERE @wbmc_competitor IS NULL;
SET @wbmc_competitor = COALESCE(@wbmc_competitor, LAST_INSERT_ID());
INSERT INTO ENTRY (championship_year, contest_no, entry_no, competitor_id, published_total_score, final_rank) VALUES (2023, 1, 14, @wbmc_competitor, 40.0, 9);
SET @wbmc_competitor = (SELECT competitor_id FROM wbmc_2023_identities WHERE BINARY name = 'Darren MacDonald' LIMIT 1);
INSERT INTO COMPETITOR (first_name, middle_name, last_name) SELECT 'Darren', NULL, 'MacDonald' WHERE @wbmc_competitor IS NULL;
SET @wbmc_competitor = COALESCE(@wbmc_competitor, LAST_INSERT_ID());
INSERT INTO ENTRY (championship_year, contest_no, entry_no, competitor_id, published_total_score, final_rank) VALUES (2023, 1, 15, @wbmc_competitor, 40.0, 9);
SET @wbmc_competitor = (SELECT competitor_id FROM wbmc_2023_identities WHERE BINARY name = 'Nils Rubbert' LIMIT 1);
INSERT INTO COMPETITOR (first_name, middle_name, last_name) SELECT 'Nils', NULL, 'Rubbert' WHERE @wbmc_competitor IS NULL;
SET @wbmc_competitor = COALESCE(@wbmc_competitor, LAST_INSERT_ID());
INSERT INTO ENTRY (championship_year, contest_no, entry_no, competitor_id, published_total_score, final_rank) VALUES (2023, 1, 16, @wbmc_competitor, 40.0, 9);
SET @wbmc_competitor = (SELECT competitor_id FROM wbmc_2023_identities WHERE BINARY name = 'Claus Ziebarth' LIMIT 1);
INSERT INTO COMPETITOR (first_name, middle_name, last_name) SELECT 'Claus', NULL, 'Ziebarth' WHERE @wbmc_competitor IS NULL;
SET @wbmc_competitor = COALESCE(@wbmc_competitor, LAST_INSERT_ID());
INSERT INTO ENTRY (championship_year, contest_no, entry_no, competitor_id, published_total_score, final_rank) VALUES (2023, 1, 17, @wbmc_competitor, 40.0, 9);
INSERT INTO CATEGORY (category_name, rule_version, bracket, is_freestyle) SELECT 'Dali Moustache', 'V2-import-2023', 'Moustache', 0 WHERE NOT EXISTS (SELECT 1 FROM CATEGORY WHERE category_name = 'Dali Moustache' AND rule_version = 'V2-import-2023');
SET @wbmc_category = (SELECT category_id FROM CATEGORY WHERE category_name = 'Dali Moustache' AND rule_version = 'V2-import-2023');
INSERT INTO MOUSTACHE_CATEGORY (category_id) SELECT @wbmc_category WHERE NOT EXISTS (SELECT 1 FROM MOUSTACHE_CATEGORY WHERE category_id = @wbmc_category);
INSERT INTO CONTEST (championship_year, contest_no, category_id, result_status) VALUES (2023, 2, @wbmc_category, 'Published');
SET @wbmc_competitor = (SELECT competitor_id FROM wbmc_2023_identities WHERE BINARY name = 'Russell Bristow' LIMIT 1);
INSERT INTO COMPETITOR (first_name, middle_name, last_name) SELECT 'Russell', NULL, 'Bristow' WHERE @wbmc_competitor IS NULL;
SET @wbmc_competitor = COALESCE(@wbmc_competitor, LAST_INSERT_ID());
INSERT INTO ENTRY (championship_year, contest_no, entry_no, competitor_id, published_total_score, final_rank) VALUES (2023, 2, 1, @wbmc_competitor, 45.5, 1);
SET @wbmc_competitor = (SELECT competitor_id FROM wbmc_2023_identities WHERE BINARY name = 'Manfred Müller' LIMIT 1);
INSERT INTO COMPETITOR (first_name, middle_name, last_name) SELECT 'Manfred', NULL, 'Müller' WHERE @wbmc_competitor IS NULL;
SET @wbmc_competitor = COALESCE(@wbmc_competitor, LAST_INSERT_ID());
INSERT INTO ENTRY (championship_year, contest_no, entry_no, competitor_id, published_total_score, final_rank) VALUES (2023, 2, 2, @wbmc_competitor, 44.5, 2);
SET @wbmc_competitor = (SELECT competitor_id FROM wbmc_2023_identities WHERE BINARY name = 'Nathan Wilson' LIMIT 1);
INSERT INTO COMPETITOR (first_name, middle_name, last_name) SELECT 'Nathan', NULL, 'Wilson' WHERE @wbmc_competitor IS NULL;
SET @wbmc_competitor = COALESCE(@wbmc_competitor, LAST_INSERT_ID());
INSERT INTO ENTRY (championship_year, contest_no, entry_no, competitor_id, published_total_score, final_rank) VALUES (2023, 2, 3, @wbmc_competitor, 44.5, 3);
SET @wbmc_competitor = (SELECT competitor_id FROM wbmc_2023_identities WHERE BINARY name = 'Kevin Vela' LIMIT 1);
INSERT INTO COMPETITOR (first_name, middle_name, last_name) SELECT 'Kevin', NULL, 'Vela' WHERE @wbmc_competitor IS NULL;
SET @wbmc_competitor = COALESCE(@wbmc_competitor, LAST_INSERT_ID());
INSERT INTO ENTRY (championship_year, contest_no, entry_no, competitor_id, published_total_score, final_rank) VALUES (2023, 2, 4, @wbmc_competitor, 44.0, 4);
SET @wbmc_competitor = (SELECT competitor_id FROM wbmc_2023_identities WHERE BINARY name = 'Keith Brown' LIMIT 1);
INSERT INTO COMPETITOR (first_name, middle_name, last_name) SELECT 'Keith', NULL, 'Brown' WHERE @wbmc_competitor IS NULL;
SET @wbmc_competitor = COALESCE(@wbmc_competitor, LAST_INSERT_ID());
INSERT INTO ENTRY (championship_year, contest_no, entry_no, competitor_id, published_total_score, final_rank) VALUES (2023, 2, 5, @wbmc_competitor, 42.5, 5);
SET @wbmc_competitor = (SELECT competitor_id FROM wbmc_2023_identities WHERE BINARY name = 'Brad Petrinec' LIMIT 1);
INSERT INTO COMPETITOR (first_name, middle_name, last_name) SELECT 'Brad', NULL, 'Petrinec' WHERE @wbmc_competitor IS NULL;
SET @wbmc_competitor = COALESCE(@wbmc_competitor, LAST_INSERT_ID());
INSERT INTO ENTRY (championship_year, contest_no, entry_no, competitor_id, published_total_score, final_rank) VALUES (2023, 2, 6, @wbmc_competitor, 42.0, 6);
SET @wbmc_competitor = (SELECT competitor_id FROM wbmc_2023_identities WHERE BINARY name = 'Sepp Zeiler' LIMIT 1);
INSERT INTO COMPETITOR (first_name, middle_name, last_name) SELECT 'Sepp', NULL, 'Zeiler' WHERE @wbmc_competitor IS NULL;
SET @wbmc_competitor = COALESCE(@wbmc_competitor, LAST_INSERT_ID());
INSERT INTO ENTRY (championship_year, contest_no, entry_no, competitor_id, published_total_score, final_rank) VALUES (2023, 2, 7, @wbmc_competitor, 40.0, 7);
SET @wbmc_competitor = (SELECT competitor_id FROM wbmc_2023_identities WHERE BINARY name = 'Udo Peilicke' LIMIT 1);
INSERT INTO COMPETITOR (first_name, middle_name, last_name) SELECT 'Udo', NULL, 'Peilicke' WHERE @wbmc_competitor IS NULL;
SET @wbmc_competitor = COALESCE(@wbmc_competitor, LAST_INSERT_ID());
INSERT INTO ENTRY (championship_year, contest_no, entry_no, competitor_id, published_total_score, final_rank) VALUES (2023, 2, 8, @wbmc_competitor, 40.0, 7);
SET @wbmc_competitor = (SELECT competitor_id FROM wbmc_2023_identities WHERE BINARY name = 'Matt Glover' LIMIT 1);
INSERT INTO COMPETITOR (first_name, middle_name, last_name) SELECT 'Matt', NULL, 'Glover' WHERE @wbmc_competitor IS NULL;
SET @wbmc_competitor = COALESCE(@wbmc_competitor, LAST_INSERT_ID());
INSERT INTO ENTRY (championship_year, contest_no, entry_no, competitor_id, published_total_score, final_rank) VALUES (2023, 2, 9, @wbmc_competitor, 40.0, 7);
SET @wbmc_competitor = (SELECT competitor_id FROM wbmc_2023_identities WHERE BINARY name = 'Anton Wyss' LIMIT 1);
INSERT INTO COMPETITOR (first_name, middle_name, last_name) SELECT 'Anton', NULL, 'Wyss' WHERE @wbmc_competitor IS NULL;
SET @wbmc_competitor = COALESCE(@wbmc_competitor, LAST_INSERT_ID());
INSERT INTO ENTRY (championship_year, contest_no, entry_no, competitor_id, published_total_score, final_rank) VALUES (2023, 2, 10, @wbmc_competitor, 40.0, 7);
INSERT INTO CATEGORY (category_name, rule_version, bracket, is_freestyle) SELECT 'English Moustache', 'V2-import-2023', 'Moustache', 0 WHERE NOT EXISTS (SELECT 1 FROM CATEGORY WHERE category_name = 'English Moustache' AND rule_version = 'V2-import-2023');
SET @wbmc_category = (SELECT category_id FROM CATEGORY WHERE category_name = 'English Moustache' AND rule_version = 'V2-import-2023');
INSERT INTO MOUSTACHE_CATEGORY (category_id) SELECT @wbmc_category WHERE NOT EXISTS (SELECT 1 FROM MOUSTACHE_CATEGORY WHERE category_id = @wbmc_category);
INSERT INTO CONTEST (championship_year, contest_no, category_id, result_status) VALUES (2023, 3, @wbmc_category, 'Published');
SET @wbmc_competitor = (SELECT competitor_id FROM wbmc_2023_identities WHERE BINARY name = 'Patrick Fette' LIMIT 1);
INSERT INTO COMPETITOR (first_name, middle_name, last_name) SELECT 'Patrick', NULL, 'Fette' WHERE @wbmc_competitor IS NULL;
SET @wbmc_competitor = COALESCE(@wbmc_competitor, LAST_INSERT_ID());
INSERT INTO ENTRY (championship_year, contest_no, entry_no, competitor_id, published_total_score, final_rank) VALUES (2023, 3, 1, @wbmc_competitor, 50.0, 1);
SET @wbmc_competitor = (SELECT competitor_id FROM wbmc_2023_identities WHERE BINARY name = 'Bernd Hildebrandt' LIMIT 1);
INSERT INTO COMPETITOR (first_name, middle_name, last_name) SELECT 'Bernd', NULL, 'Hildebrandt' WHERE @wbmc_competitor IS NULL;
SET @wbmc_competitor = COALESCE(@wbmc_competitor, LAST_INSERT_ID());
INSERT INTO ENTRY (championship_year, contest_no, entry_no, competitor_id, published_total_score, final_rank) VALUES (2023, 3, 2, @wbmc_competitor, 46.5, 2);
SET @wbmc_competitor = (SELECT competitor_id FROM wbmc_2023_identities WHERE BINARY name = 'Halgeir Vaage' LIMIT 1);
INSERT INTO COMPETITOR (first_name, middle_name, last_name) SELECT 'Halgeir', NULL, 'Vaage' WHERE @wbmc_competitor IS NULL;
SET @wbmc_competitor = COALESCE(@wbmc_competitor, LAST_INSERT_ID());
INSERT INTO ENTRY (championship_year, contest_no, entry_no, competitor_id, published_total_score, final_rank) VALUES (2023, 3, 3, @wbmc_competitor, 44.5, 3);
SET @wbmc_competitor = (SELECT competitor_id FROM wbmc_2023_identities WHERE BINARY name = 'Timothy Hambrick' LIMIT 1);
INSERT INTO COMPETITOR (first_name, middle_name, last_name) SELECT 'Timothy', NULL, 'Hambrick' WHERE @wbmc_competitor IS NULL;
SET @wbmc_competitor = COALESCE(@wbmc_competitor, LAST_INSERT_ID());
INSERT INTO ENTRY (championship_year, contest_no, entry_no, competitor_id, published_total_score, final_rank) VALUES (2023, 3, 4, @wbmc_competitor, 43.5, 4);
SET @wbmc_competitor = (SELECT competitor_id FROM wbmc_2023_identities WHERE BINARY name = 'Josef Smirmaul' LIMIT 1);
INSERT INTO COMPETITOR (first_name, middle_name, last_name) SELECT 'Josef', NULL, 'Smirmaul' WHERE @wbmc_competitor IS NULL;
SET @wbmc_competitor = COALESCE(@wbmc_competitor, LAST_INSERT_ID());
INSERT INTO ENTRY (championship_year, contest_no, entry_no, competitor_id, published_total_score, final_rank) VALUES (2023, 3, 5, @wbmc_competitor, 40.5, 5);
INSERT INTO CATEGORY (category_name, rule_version, bracket, is_freestyle) SELECT 'Imperial Moustache', 'V2-import-2023', 'Moustache', 0 WHERE NOT EXISTS (SELECT 1 FROM CATEGORY WHERE category_name = 'Imperial Moustache' AND rule_version = 'V2-import-2023');
SET @wbmc_category = (SELECT category_id FROM CATEGORY WHERE category_name = 'Imperial Moustache' AND rule_version = 'V2-import-2023');
INSERT INTO MOUSTACHE_CATEGORY (category_id) SELECT @wbmc_category WHERE NOT EXISTS (SELECT 1 FROM MOUSTACHE_CATEGORY WHERE category_id = @wbmc_category);
INSERT INTO CONTEST (championship_year, contest_no, category_id, result_status) VALUES (2023, 4, @wbmc_category, 'Published');
SET @wbmc_competitor = (SELECT competitor_id FROM wbmc_2023_identities WHERE BINARY name = 'Eugen Hipp' LIMIT 1);
INSERT INTO COMPETITOR (first_name, middle_name, last_name) SELECT 'Eugen', NULL, 'Hipp' WHERE @wbmc_competitor IS NULL;
SET @wbmc_competitor = COALESCE(@wbmc_competitor, LAST_INSERT_ID());
INSERT INTO ENTRY (championship_year, contest_no, entry_no, competitor_id, published_total_score, final_rank) VALUES (2023, 4, 1, @wbmc_competitor, 46.5, 1);
SET @wbmc_competitor = (SELECT competitor_id FROM wbmc_2023_identities WHERE BINARY name = 'Ralf Schulz' LIMIT 1);
INSERT INTO COMPETITOR (first_name, middle_name, last_name) SELECT 'Ralf', NULL, 'Schulz' WHERE @wbmc_competitor IS NULL;
SET @wbmc_competitor = COALESCE(@wbmc_competitor, LAST_INSERT_ID());
INSERT INTO ENTRY (championship_year, contest_no, entry_no, competitor_id, published_total_score, final_rank) VALUES (2023, 4, 2, @wbmc_competitor, 45.5, 2);
SET @wbmc_competitor = (SELECT competitor_id FROM wbmc_2023_identities WHERE BINARY name = 'Frank Wiegand' LIMIT 1);
INSERT INTO COMPETITOR (first_name, middle_name, last_name) SELECT 'Frank', NULL, 'Wiegand' WHERE @wbmc_competitor IS NULL;
SET @wbmc_competitor = COALESCE(@wbmc_competitor, LAST_INSERT_ID());
INSERT INTO ENTRY (championship_year, contest_no, entry_no, competitor_id, published_total_score, final_rank) VALUES (2023, 4, 3, @wbmc_competitor, 45.5, 3);
SET @wbmc_competitor = (SELECT competitor_id FROM wbmc_2023_identities WHERE BINARY name = 'Levi Harris' LIMIT 1);
INSERT INTO COMPETITOR (first_name, middle_name, last_name) SELECT 'Levi', NULL, 'Harris' WHERE @wbmc_competitor IS NULL;
SET @wbmc_competitor = COALESCE(@wbmc_competitor, LAST_INSERT_ID());
INSERT INTO ENTRY (championship_year, contest_no, entry_no, competitor_id, published_total_score, final_rank) VALUES (2023, 4, 4, @wbmc_competitor, 43.5, 4);
SET @wbmc_competitor = (SELECT competitor_id FROM wbmc_2023_identities WHERE BINARY name = 'Jordan Majestic' LIMIT 1);
INSERT INTO COMPETITOR (first_name, middle_name, last_name) SELECT 'Jordan', NULL, 'Majestic' WHERE @wbmc_competitor IS NULL;
SET @wbmc_competitor = COALESCE(@wbmc_competitor, LAST_INSERT_ID());
INSERT INTO ENTRY (championship_year, contest_no, entry_no, competitor_id, published_total_score, final_rank) VALUES (2023, 4, 5, @wbmc_competitor, 42.5, 5);
SET @wbmc_competitor = (SELECT competitor_id FROM wbmc_2023_identities WHERE BINARY name = 'Gregor Harris' LIMIT 1);
INSERT INTO COMPETITOR (first_name, middle_name, last_name) SELECT 'Gregor', NULL, 'Harris' WHERE @wbmc_competitor IS NULL;
SET @wbmc_competitor = COALESCE(@wbmc_competitor, LAST_INSERT_ID());
INSERT INTO ENTRY (championship_year, contest_no, entry_no, competitor_id, published_total_score, final_rank) VALUES (2023, 4, 6, @wbmc_competitor, 40.0, 6);
SET @wbmc_competitor = (SELECT competitor_id FROM wbmc_2023_identities WHERE BINARY name = 'Heinz-Jürgen Blenk' LIMIT 1);
INSERT INTO COMPETITOR (first_name, middle_name, last_name) SELECT 'Heinz-Jürgen', NULL, 'Blenk' WHERE @wbmc_competitor IS NULL;
SET @wbmc_competitor = COALESCE(@wbmc_competitor, LAST_INSERT_ID());
INSERT INTO ENTRY (championship_year, contest_no, entry_no, competitor_id, published_total_score, final_rank) VALUES (2023, 4, 7, @wbmc_competitor, 40.0, 6);
SET @wbmc_competitor = (SELECT competitor_id FROM wbmc_2023_identities WHERE BINARY name = 'Wesley Verschetze' LIMIT 1);
INSERT INTO COMPETITOR (first_name, middle_name, last_name) SELECT 'Wesley', NULL, 'Verschetze' WHERE @wbmc_competitor IS NULL;
SET @wbmc_competitor = COALESCE(@wbmc_competitor, LAST_INSERT_ID());
INSERT INTO ENTRY (championship_year, contest_no, entry_no, competitor_id, published_total_score, final_rank) VALUES (2023, 4, 8, @wbmc_competitor, 40.0, 6);
SET @wbmc_competitor = (SELECT competitor_id FROM wbmc_2023_identities WHERE BINARY name = 'Tobias Schürmann' LIMIT 1);
INSERT INTO COMPETITOR (first_name, middle_name, last_name) SELECT 'Tobias', NULL, 'Schürmann' WHERE @wbmc_competitor IS NULL;
SET @wbmc_competitor = COALESCE(@wbmc_competitor, LAST_INSERT_ID());
INSERT INTO ENTRY (championship_year, contest_no, entry_no, competitor_id, published_total_score, final_rank) VALUES (2023, 4, 9, @wbmc_competitor, 40.0, NULL);
INSERT INTO CATEGORY (category_name, rule_version, bracket, is_freestyle) SELECT 'Hungarian Moustache', 'V2-import-2023', 'Moustache', 0 WHERE NOT EXISTS (SELECT 1 FROM CATEGORY WHERE category_name = 'Hungarian Moustache' AND rule_version = 'V2-import-2023');
SET @wbmc_category = (SELECT category_id FROM CATEGORY WHERE category_name = 'Hungarian Moustache' AND rule_version = 'V2-import-2023');
INSERT INTO MOUSTACHE_CATEGORY (category_id) SELECT @wbmc_category WHERE NOT EXISTS (SELECT 1 FROM MOUSTACHE_CATEGORY WHERE category_id = @wbmc_category);
INSERT INTO CONTEST (championship_year, contest_no, category_id, result_status) VALUES (2023, 5, @wbmc_category, 'Published');
SET @wbmc_competitor = (SELECT competitor_id FROM wbmc_2023_identities WHERE BINARY name = 'Zsolt Járomi' LIMIT 1);
INSERT INTO COMPETITOR (first_name, middle_name, last_name) SELECT 'Zsolt', NULL, 'Járomi' WHERE @wbmc_competitor IS NULL;
SET @wbmc_competitor = COALESCE(@wbmc_competitor, LAST_INSERT_ID());
INSERT INTO ENTRY (championship_year, contest_no, entry_no, competitor_id, published_total_score, final_rank) VALUES (2023, 5, 1, @wbmc_competitor, 48.5, 1);
SET @wbmc_competitor = (SELECT competitor_id FROM wbmc_2023_identities WHERE BINARY name = 'Robert Baker' LIMIT 1);
INSERT INTO COMPETITOR (first_name, middle_name, last_name) SELECT 'Robert', NULL, 'Baker' WHERE @wbmc_competitor IS NULL;
SET @wbmc_competitor = COALESCE(@wbmc_competitor, LAST_INSERT_ID());
INSERT INTO ENTRY (championship_year, contest_no, entry_no, competitor_id, published_total_score, final_rank) VALUES (2023, 5, 2, @wbmc_competitor, 47.0, 2);
SET @wbmc_competitor = (SELECT competitor_id FROM wbmc_2023_identities WHERE BINARY name = 'Carlos Porter' LIMIT 1);
INSERT INTO COMPETITOR (first_name, middle_name, last_name) SELECT 'Carlos', NULL, 'Porter' WHERE @wbmc_competitor IS NULL;
SET @wbmc_competitor = COALESCE(@wbmc_competitor, LAST_INSERT_ID());
INSERT INTO ENTRY (championship_year, contest_no, entry_no, competitor_id, published_total_score, final_rank) VALUES (2023, 5, 3, @wbmc_competitor, 46.5, 3);
SET @wbmc_competitor = (SELECT competitor_id FROM wbmc_2023_identities WHERE BINARY name = 'Philipp Holzinger' LIMIT 1);
INSERT INTO COMPETITOR (first_name, middle_name, last_name) SELECT 'Philipp', NULL, 'Holzinger' WHERE @wbmc_competitor IS NULL;
SET @wbmc_competitor = COALESCE(@wbmc_competitor, LAST_INSERT_ID());
INSERT INTO ENTRY (championship_year, contest_no, entry_no, competitor_id, published_total_score, final_rank) VALUES (2023, 5, 4, @wbmc_competitor, 42.5, 4);
SET @wbmc_competitor = (SELECT competitor_id FROM wbmc_2023_identities WHERE BINARY name = 'Daniel Kloos' LIMIT 1);
INSERT INTO COMPETITOR (first_name, middle_name, last_name) SELECT 'Daniel', NULL, 'Kloos' WHERE @wbmc_competitor IS NULL;
SET @wbmc_competitor = COALESCE(@wbmc_competitor, LAST_INSERT_ID());
INSERT INTO ENTRY (championship_year, contest_no, entry_no, competitor_id, published_total_score, final_rank) VALUES (2023, 5, 5, @wbmc_competitor, 40.5, 5);
INSERT INTO CATEGORY (category_name, rule_version, bracket, is_freestyle) SELECT 'Freestyle Moustache', 'V2-import-2023', 'Moustache', 1 WHERE NOT EXISTS (SELECT 1 FROM CATEGORY WHERE category_name = 'Freestyle Moustache' AND rule_version = 'V2-import-2023');
SET @wbmc_category = (SELECT category_id FROM CATEGORY WHERE category_name = 'Freestyle Moustache' AND rule_version = 'V2-import-2023');
INSERT INTO MOUSTACHE_CATEGORY (category_id) SELECT @wbmc_category WHERE NOT EXISTS (SELECT 1 FROM MOUSTACHE_CATEGORY WHERE category_id = @wbmc_category);
INSERT INTO CONTEST (championship_year, contest_no, category_id, result_status) VALUES (2023, 6, @wbmc_category, 'Published');
SET @wbmc_competitor = (SELECT competitor_id FROM wbmc_2023_identities WHERE BINARY name = 'Willi Feldmann' LIMIT 1);
INSERT INTO COMPETITOR (first_name, middle_name, last_name) SELECT 'Willi', NULL, 'Feldmann' WHERE @wbmc_competitor IS NULL;
SET @wbmc_competitor = COALESCE(@wbmc_competitor, LAST_INSERT_ID());
INSERT INTO ENTRY (championship_year, contest_no, entry_no, competitor_id, published_total_score, final_rank) VALUES (2023, 6, 1, @wbmc_competitor, 49.5, 1);
SET @wbmc_competitor = (SELECT competitor_id FROM wbmc_2023_identities WHERE BINARY name = 'Günter Krause' LIMIT 1);
INSERT INTO COMPETITOR (first_name, middle_name, last_name) SELECT 'Günter', NULL, 'Krause' WHERE @wbmc_competitor IS NULL;
SET @wbmc_competitor = COALESCE(@wbmc_competitor, LAST_INSERT_ID());
INSERT INTO ENTRY (championship_year, contest_no, entry_no, competitor_id, published_total_score, final_rank) VALUES (2023, 6, 2, @wbmc_competitor, 48.0, 2);
SET @wbmc_competitor = (SELECT competitor_id FROM wbmc_2023_identities WHERE BINARY name = 'Jan Bischof von der Höh' LIMIT 1);
INSERT INTO COMPETITOR (first_name, middle_name, last_name) SELECT 'Jan', NULL, 'Bischof von der Höh' WHERE @wbmc_competitor IS NULL;
SET @wbmc_competitor = COALESCE(@wbmc_competitor, LAST_INSERT_ID());
INSERT INTO ENTRY (championship_year, contest_no, entry_no, competitor_id, published_total_score, final_rank) VALUES (2023, 6, 3, @wbmc_competitor, 45.0, 3);
INSERT INTO CATEGORY (category_name, rule_version, bracket, is_freestyle) SELECT 'Natural Sideburns', 'V2-import-2023', 'Partial Beard', 0 WHERE NOT EXISTS (SELECT 1 FROM CATEGORY WHERE category_name = 'Natural Sideburns' AND rule_version = 'V2-import-2023');
SET @wbmc_category = (SELECT category_id FROM CATEGORY WHERE category_name = 'Natural Sideburns' AND rule_version = 'V2-import-2023');
INSERT INTO PARTIAL_BEARD_CATEGORY (category_id) SELECT @wbmc_category WHERE NOT EXISTS (SELECT 1 FROM PARTIAL_BEARD_CATEGORY WHERE category_id = @wbmc_category);
INSERT INTO CONTEST (championship_year, contest_no, category_id, result_status) VALUES (2023, 7, @wbmc_category, 'Published');
SET @wbmc_competitor = (SELECT competitor_id FROM wbmc_2023_identities WHERE BINARY name = 'Michael Wallage' LIMIT 1);
INSERT INTO COMPETITOR (first_name, middle_name, last_name) SELECT 'Michael', NULL, 'Wallage' WHERE @wbmc_competitor IS NULL;
SET @wbmc_competitor = COALESCE(@wbmc_competitor, LAST_INSERT_ID());
INSERT INTO ENTRY (championship_year, contest_no, entry_no, competitor_id, published_total_score, final_rank) VALUES (2023, 7, 1, @wbmc_competitor, 50.0, 1);
SET @wbmc_competitor = (SELECT competitor_id FROM wbmc_2023_identities WHERE BINARY name = 'Ivan Van Norman' LIMIT 1);
INSERT INTO COMPETITOR (first_name, middle_name, last_name) SELECT 'Ivan', NULL, 'Van Norman' WHERE @wbmc_competitor IS NULL;
SET @wbmc_competitor = COALESCE(@wbmc_competitor, LAST_INSERT_ID());
INSERT INTO ENTRY (championship_year, contest_no, entry_no, competitor_id, published_total_score, final_rank) VALUES (2023, 7, 2, @wbmc_competitor, 45.0, 2);
SET @wbmc_competitor = (SELECT competitor_id FROM wbmc_2023_identities WHERE BINARY name = 'Kevin Poulos' LIMIT 1);
INSERT INTO COMPETITOR (first_name, middle_name, last_name) SELECT 'Kevin', NULL, 'Poulos' WHERE @wbmc_competitor IS NULL;
SET @wbmc_competitor = COALESCE(@wbmc_competitor, LAST_INSERT_ID());
INSERT INTO ENTRY (championship_year, contest_no, entry_no, competitor_id, published_total_score, final_rank) VALUES (2023, 7, 3, @wbmc_competitor, 41.5, 3);
SET @wbmc_competitor = (SELECT competitor_id FROM wbmc_2023_identities WHERE BINARY name = 'Gerrit Herget' LIMIT 1);
INSERT INTO COMPETITOR (first_name, middle_name, last_name) SELECT 'Gerrit', NULL, 'Herget' WHERE @wbmc_competitor IS NULL;
SET @wbmc_competitor = COALESCE(@wbmc_competitor, LAST_INSERT_ID());
INSERT INTO ENTRY (championship_year, contest_no, entry_no, competitor_id, published_total_score, final_rank) VALUES (2023, 7, 4, @wbmc_competitor, 41.5, 4);
SET @wbmc_competitor = (SELECT competitor_id FROM wbmc_2023_identities WHERE BINARY name = 'Gerold Geiger' LIMIT 1);
INSERT INTO COMPETITOR (first_name, middle_name, last_name) SELECT 'Gerold', NULL, 'Geiger' WHERE @wbmc_competitor IS NULL;
SET @wbmc_competitor = COALESCE(@wbmc_competitor, LAST_INSERT_ID());
INSERT INTO ENTRY (championship_year, contest_no, entry_no, competitor_id, published_total_score, final_rank) VALUES (2023, 7, 5, @wbmc_competitor, 41.5, 5);
SET @wbmc_competitor = (SELECT competitor_id FROM wbmc_2023_identities WHERE BINARY name = 'Wolfgang Reuswich' LIMIT 1);
INSERT INTO COMPETITOR (first_name, middle_name, last_name) SELECT 'Wolfgang', NULL, 'Reuswich' WHERE @wbmc_competitor IS NULL;
SET @wbmc_competitor = COALESCE(@wbmc_competitor, LAST_INSERT_ID());
INSERT INTO ENTRY (championship_year, contest_no, entry_no, competitor_id, published_total_score, final_rank) VALUES (2023, 7, 6, @wbmc_competitor, 41.0, 6);
SET @wbmc_competitor = (SELECT competitor_id FROM wbmc_2023_identities WHERE BINARY name = 'Paul Moons' LIMIT 1);
INSERT INTO COMPETITOR (first_name, middle_name, last_name) SELECT 'Paul', NULL, 'Moons' WHERE @wbmc_competitor IS NULL;
SET @wbmc_competitor = COALESCE(@wbmc_competitor, LAST_INSERT_ID());
INSERT INTO ENTRY (championship_year, contest_no, entry_no, competitor_id, published_total_score, final_rank) VALUES (2023, 7, 7, @wbmc_competitor, 40.5, 7);
SET @wbmc_competitor = (SELECT competitor_id FROM wbmc_2023_identities WHERE BINARY name = 'Dylan Powell' LIMIT 1);
INSERT INTO COMPETITOR (first_name, middle_name, last_name) SELECT 'Dylan', NULL, 'Powell' WHERE @wbmc_competitor IS NULL;
SET @wbmc_competitor = COALESCE(@wbmc_competitor, LAST_INSERT_ID());
INSERT INTO ENTRY (championship_year, contest_no, entry_no, competitor_id, published_total_score, final_rank) VALUES (2023, 7, 8, @wbmc_competitor, 40.0, 8);
SET @wbmc_competitor = (SELECT competitor_id FROM wbmc_2023_identities WHERE BINARY name = 'Dickie Greybeard' LIMIT 1);
INSERT INTO COMPETITOR (first_name, middle_name, last_name) SELECT 'Dickie', NULL, 'Greybeard' WHERE @wbmc_competitor IS NULL;
SET @wbmc_competitor = COALESCE(@wbmc_competitor, LAST_INSERT_ID());
INSERT INTO ENTRY (championship_year, contest_no, entry_no, competitor_id, published_total_score, final_rank) VALUES (2023, 7, 9, @wbmc_competitor, 40.0, 8);
INSERT INTO CATEGORY (category_name, rule_version, bracket, is_freestyle) SELECT 'Natural Goatee', 'V2-import-2023', 'Partial Beard', 0 WHERE NOT EXISTS (SELECT 1 FROM CATEGORY WHERE category_name = 'Natural Goatee' AND rule_version = 'V2-import-2023');
SET @wbmc_category = (SELECT category_id FROM CATEGORY WHERE category_name = 'Natural Goatee' AND rule_version = 'V2-import-2023');
INSERT INTO PARTIAL_BEARD_CATEGORY (category_id) SELECT @wbmc_category WHERE NOT EXISTS (SELECT 1 FROM PARTIAL_BEARD_CATEGORY WHERE category_id = @wbmc_category);
INSERT INTO CONTEST (championship_year, contest_no, category_id, result_status) VALUES (2023, 8, @wbmc_category, 'Published');
SET @wbmc_competitor = (SELECT competitor_id FROM wbmc_2023_identities WHERE BINARY name = 'Patrick Dawson' LIMIT 1);
INSERT INTO COMPETITOR (first_name, middle_name, last_name) SELECT 'Patrick', NULL, 'Dawson' WHERE @wbmc_competitor IS NULL;
SET @wbmc_competitor = COALESCE(@wbmc_competitor, LAST_INSERT_ID());
INSERT INTO ENTRY (championship_year, contest_no, entry_no, competitor_id, published_total_score, final_rank) VALUES (2023, 8, 1, @wbmc_competitor, 48.5, 1);
SET @wbmc_competitor = (SELECT competitor_id FROM wbmc_2023_identities WHERE BINARY name = 'Aaron Johnston' LIMIT 1);
INSERT INTO COMPETITOR (first_name, middle_name, last_name) SELECT 'Aaron', NULL, 'Johnston' WHERE @wbmc_competitor IS NULL;
SET @wbmc_competitor = COALESCE(@wbmc_competitor, LAST_INSERT_ID());
INSERT INTO ENTRY (championship_year, contest_no, entry_no, competitor_id, published_total_score, final_rank) VALUES (2023, 8, 2, @wbmc_competitor, 46.5, 2);
SET @wbmc_competitor = (SELECT competitor_id FROM wbmc_2023_identities WHERE BINARY name = 'Gigi Sciviero' LIMIT 1);
INSERT INTO COMPETITOR (first_name, middle_name, last_name) SELECT 'Gigi', NULL, 'Sciviero' WHERE @wbmc_competitor IS NULL;
SET @wbmc_competitor = COALESCE(@wbmc_competitor, LAST_INSERT_ID());
INSERT INTO ENTRY (championship_year, contest_no, entry_no, competitor_id, published_total_score, final_rank) VALUES (2023, 8, 3, @wbmc_competitor, 45.5, 3);
SET @wbmc_competitor = (SELECT competitor_id FROM wbmc_2023_identities WHERE BINARY name = 'Wolfgang Servay' LIMIT 1);
INSERT INTO COMPETITOR (first_name, middle_name, last_name) SELECT 'Wolfgang', NULL, 'Servay' WHERE @wbmc_competitor IS NULL;
SET @wbmc_competitor = COALESCE(@wbmc_competitor, LAST_INSERT_ID());
INSERT INTO ENTRY (championship_year, contest_no, entry_no, competitor_id, published_total_score, final_rank) VALUES (2023, 8, 4, @wbmc_competitor, 42.0, 4);
SET @wbmc_competitor = (SELECT competitor_id FROM wbmc_2023_identities WHERE BINARY name = 'Julian Schuppe' LIMIT 1);
INSERT INTO COMPETITOR (first_name, middle_name, last_name) SELECT 'Julian', NULL, 'Schuppe' WHERE @wbmc_competitor IS NULL;
SET @wbmc_competitor = COALESCE(@wbmc_competitor, LAST_INSERT_ID());
INSERT INTO ENTRY (championship_year, contest_no, entry_no, competitor_id, published_total_score, final_rank) VALUES (2023, 8, 5, @wbmc_competitor, 40.5, 5);
SET @wbmc_competitor = (SELECT competitor_id FROM wbmc_2023_identities WHERE BINARY name = 'Herbert Heider' LIMIT 1);
INSERT INTO COMPETITOR (first_name, middle_name, last_name) SELECT 'Herbert', NULL, 'Heider' WHERE @wbmc_competitor IS NULL;
SET @wbmc_competitor = COALESCE(@wbmc_competitor, LAST_INSERT_ID());
INSERT INTO ENTRY (championship_year, contest_no, entry_no, competitor_id, published_total_score, final_rank) VALUES (2023, 8, 6, @wbmc_competitor, 40.0, 6);
SET @wbmc_competitor = (SELECT competitor_id FROM wbmc_2023_identities WHERE BINARY name = 'Günter Jana' LIMIT 1);
INSERT INTO COMPETITOR (first_name, middle_name, last_name) SELECT 'Günter', NULL, 'Jana' WHERE @wbmc_competitor IS NULL;
SET @wbmc_competitor = COALESCE(@wbmc_competitor, LAST_INSERT_ID());
INSERT INTO ENTRY (championship_year, contest_no, entry_no, competitor_id, published_total_score, final_rank) VALUES (2023, 8, 7, @wbmc_competitor, 40.0, 6);
SET @wbmc_competitor = (SELECT competitor_id FROM wbmc_2023_identities WHERE BINARY name = 'Michael Zickau' LIMIT 1);
INSERT INTO COMPETITOR (first_name, middle_name, last_name) SELECT 'Michael', NULL, 'Zickau' WHERE @wbmc_competitor IS NULL;
SET @wbmc_competitor = COALESCE(@wbmc_competitor, LAST_INSERT_ID());
INSERT INTO ENTRY (championship_year, contest_no, entry_no, competitor_id, published_total_score, final_rank) VALUES (2023, 8, 8, @wbmc_competitor, 40.0, 6);
SET @wbmc_competitor = (SELECT competitor_id FROM wbmc_2023_identities WHERE BINARY name = 'Torsten Soonberg' LIMIT 1);
INSERT INTO COMPETITOR (first_name, middle_name, last_name) SELECT 'Torsten', NULL, 'Soonberg' WHERE @wbmc_competitor IS NULL;
SET @wbmc_competitor = COALESCE(@wbmc_competitor, LAST_INSERT_ID());
INSERT INTO ENTRY (championship_year, contest_no, entry_no, competitor_id, published_total_score, final_rank) VALUES (2023, 8, 9, @wbmc_competitor, 40.0, 6);
SET @wbmc_competitor = (SELECT competitor_id FROM wbmc_2023_identities WHERE BINARY name = 'Bernhard Greller' LIMIT 1);
INSERT INTO COMPETITOR (first_name, middle_name, last_name) SELECT 'Bernhard', NULL, 'Greller' WHERE @wbmc_competitor IS NULL;
SET @wbmc_competitor = COALESCE(@wbmc_competitor, LAST_INSERT_ID());
INSERT INTO ENTRY (championship_year, contest_no, entry_no, competitor_id, published_total_score, final_rank) VALUES (2023, 8, 10, @wbmc_competitor, 40.0, 6);
INSERT INTO CATEGORY (category_name, rule_version, bracket, is_freestyle) SELECT 'Fu Manchu', 'V2-import-2023', 'Partial Beard', 0 WHERE NOT EXISTS (SELECT 1 FROM CATEGORY WHERE category_name = 'Fu Manchu' AND rule_version = 'V2-import-2023');
SET @wbmc_category = (SELECT category_id FROM CATEGORY WHERE category_name = 'Fu Manchu' AND rule_version = 'V2-import-2023');
INSERT INTO PARTIAL_BEARD_CATEGORY (category_id) SELECT @wbmc_category WHERE NOT EXISTS (SELECT 1 FROM PARTIAL_BEARD_CATEGORY WHERE category_id = @wbmc_category);
INSERT INTO CONTEST (championship_year, contest_no, category_id, result_status) VALUES (2023, 9, @wbmc_category, 'Published');
SET @wbmc_competitor = (SELECT competitor_id FROM wbmc_2023_identities WHERE BINARY name = 'Lutz Giese' LIMIT 1);
INSERT INTO COMPETITOR (first_name, middle_name, last_name) SELECT 'Lutz', NULL, 'Giese' WHERE @wbmc_competitor IS NULL;
SET @wbmc_competitor = COALESCE(@wbmc_competitor, LAST_INSERT_ID());
INSERT INTO ENTRY (championship_year, contest_no, entry_no, competitor_id, published_total_score, final_rank) VALUES (2023, 9, 1, @wbmc_competitor, 50.0, 1);
SET @wbmc_competitor = (SELECT competitor_id FROM wbmc_2023_identities WHERE BINARY name = 'Theo Amann' LIMIT 1);
INSERT INTO COMPETITOR (first_name, middle_name, last_name) SELECT 'Theo', NULL, 'Amann' WHERE @wbmc_competitor IS NULL;
SET @wbmc_competitor = COALESCE(@wbmc_competitor, LAST_INSERT_ID());
INSERT INTO ENTRY (championship_year, contest_no, entry_no, competitor_id, published_total_score, final_rank) VALUES (2023, 9, 2, @wbmc_competitor, 46.5, 2);
SET @wbmc_competitor = (SELECT competitor_id FROM wbmc_2023_identities WHERE BINARY name = 'Josef Nerb' LIMIT 1);
INSERT INTO COMPETITOR (first_name, middle_name, last_name) SELECT 'Josef', NULL, 'Nerb' WHERE @wbmc_competitor IS NULL;
SET @wbmc_competitor = COALESCE(@wbmc_competitor, LAST_INSERT_ID());
INSERT INTO ENTRY (championship_year, contest_no, entry_no, competitor_id, published_total_score, final_rank) VALUES (2023, 9, 3, @wbmc_competitor, 46.0, 3);
INSERT INTO CATEGORY (category_name, rule_version, bracket, is_freestyle) SELECT 'Alaskan Whaler', 'V2-import-2023', 'Partial Beard', 0 WHERE NOT EXISTS (SELECT 1 FROM CATEGORY WHERE category_name = 'Alaskan Whaler' AND rule_version = 'V2-import-2023');
SET @wbmc_category = (SELECT category_id FROM CATEGORY WHERE category_name = 'Alaskan Whaler' AND rule_version = 'V2-import-2023');
INSERT INTO PARTIAL_BEARD_CATEGORY (category_id) SELECT @wbmc_category WHERE NOT EXISTS (SELECT 1 FROM PARTIAL_BEARD_CATEGORY WHERE category_id = @wbmc_category);
INSERT INTO CONTEST (championship_year, contest_no, category_id, result_status) VALUES (2023, 10, @wbmc_category, 'Published');
SET @wbmc_competitor = (SELECT competitor_id FROM wbmc_2023_identities WHERE BINARY name = 'Shannon Clinkenbeard' LIMIT 1);
INSERT INTO COMPETITOR (first_name, middle_name, last_name) SELECT 'Shannon', NULL, 'Clinkenbeard' WHERE @wbmc_competitor IS NULL;
SET @wbmc_competitor = COALESCE(@wbmc_competitor, LAST_INSERT_ID());
INSERT INTO ENTRY (championship_year, contest_no, entry_no, competitor_id, published_total_score, final_rank) VALUES (2023, 10, 1, @wbmc_competitor, 50.0, 1);
SET @wbmc_competitor = (SELECT competitor_id FROM wbmc_2023_identities WHERE BINARY name = 'Jason Hall' LIMIT 1);
INSERT INTO COMPETITOR (first_name, middle_name, last_name) SELECT 'Jason', NULL, 'Hall' WHERE @wbmc_competitor IS NULL;
SET @wbmc_competitor = COALESCE(@wbmc_competitor, LAST_INSERT_ID());
INSERT INTO ENTRY (championship_year, contest_no, entry_no, competitor_id, published_total_score, final_rank) VALUES (2023, 10, 2, @wbmc_competitor, 47.5, 2);
SET @wbmc_competitor = (SELECT competitor_id FROM wbmc_2023_identities WHERE BINARY name = 'Salvatore Cisternino' LIMIT 1);
INSERT INTO COMPETITOR (first_name, middle_name, last_name) SELECT 'Salvatore', NULL, 'Cisternino' WHERE @wbmc_competitor IS NULL;
SET @wbmc_competitor = COALESCE(@wbmc_competitor, LAST_INSERT_ID());
INSERT INTO ENTRY (championship_year, contest_no, entry_no, competitor_id, published_total_score, final_rank) VALUES (2023, 10, 3, @wbmc_competitor, 43.0, 3);
SET @wbmc_competitor = (SELECT competitor_id FROM wbmc_2023_identities WHERE BINARY name = 'Hubert Drexl' LIMIT 1);
INSERT INTO COMPETITOR (first_name, middle_name, last_name) SELECT 'Hubert', NULL, 'Drexl' WHERE @wbmc_competitor IS NULL;
SET @wbmc_competitor = COALESCE(@wbmc_competitor, LAST_INSERT_ID());
INSERT INTO ENTRY (championship_year, contest_no, entry_no, competitor_id, published_total_score, final_rank) VALUES (2023, 10, 4, @wbmc_competitor, 42.0, 4);
SET @wbmc_competitor = (SELECT competitor_id FROM wbmc_2023_identities WHERE BINARY name = 'Daniil Khabarov' LIMIT 1);
INSERT INTO COMPETITOR (first_name, middle_name, last_name) SELECT 'Daniil', NULL, 'Khabarov' WHERE @wbmc_competitor IS NULL;
SET @wbmc_competitor = COALESCE(@wbmc_competitor, LAST_INSERT_ID());
INSERT INTO ENTRY (championship_year, contest_no, entry_no, competitor_id, published_total_score, final_rank) VALUES (2023, 10, 5, @wbmc_competitor, 41.0, 5);
SET @wbmc_competitor = (SELECT competitor_id FROM wbmc_2023_identities WHERE BINARY name = 'Chris Majestic' LIMIT 1);
INSERT INTO COMPETITOR (first_name, middle_name, last_name) SELECT 'Chris', NULL, 'Majestic' WHERE @wbmc_competitor IS NULL;
SET @wbmc_competitor = COALESCE(@wbmc_competitor, LAST_INSERT_ID());
INSERT INTO ENTRY (championship_year, contest_no, entry_no, competitor_id, published_total_score, final_rank) VALUES (2023, 10, 6, @wbmc_competitor, 40.0, 6);
SET @wbmc_competitor = (SELECT competitor_id FROM wbmc_2023_identities WHERE BINARY name = 'Daniel Hauerland' LIMIT 1);
INSERT INTO COMPETITOR (first_name, middle_name, last_name) SELECT 'Daniel', NULL, 'Hauerland' WHERE @wbmc_competitor IS NULL;
SET @wbmc_competitor = COALESCE(@wbmc_competitor, LAST_INSERT_ID());
INSERT INTO ENTRY (championship_year, contest_no, entry_no, competitor_id, published_total_score, final_rank) VALUES (2023, 10, 7, @wbmc_competitor, 40.0, 6);
SET @wbmc_competitor = (SELECT competitor_id FROM wbmc_2023_identities WHERE BINARY name = 'Brian Hall' LIMIT 1);
INSERT INTO COMPETITOR (first_name, middle_name, last_name) SELECT 'Brian', NULL, 'Hall' WHERE @wbmc_competitor IS NULL;
SET @wbmc_competitor = COALESCE(@wbmc_competitor, LAST_INSERT_ID());
INSERT INTO ENTRY (championship_year, contest_no, entry_no, competitor_id, published_total_score, final_rank) VALUES (2023, 10, 8, @wbmc_competitor, 40.0, 6);
SET @wbmc_competitor = (SELECT competitor_id FROM wbmc_2023_identities WHERE BINARY name = 'Johann Beitschek' LIMIT 1);
INSERT INTO COMPETITOR (first_name, middle_name, last_name) SELECT 'Johann', NULL, 'Beitschek' WHERE @wbmc_competitor IS NULL;
SET @wbmc_competitor = COALESCE(@wbmc_competitor, LAST_INSERT_ID());
INSERT INTO ENTRY (championship_year, contest_no, entry_no, competitor_id, published_total_score, final_rank) VALUES (2023, 10, 9, @wbmc_competitor, 40.0, 6);
INSERT INTO CATEGORY (category_name, rule_version, bracket, is_freestyle) SELECT 'Musketeer', 'V2-import-2023', 'Partial Beard', 0 WHERE NOT EXISTS (SELECT 1 FROM CATEGORY WHERE category_name = 'Musketeer' AND rule_version = 'V2-import-2023');
SET @wbmc_category = (SELECT category_id FROM CATEGORY WHERE category_name = 'Musketeer' AND rule_version = 'V2-import-2023');
INSERT INTO PARTIAL_BEARD_CATEGORY (category_id) SELECT @wbmc_category WHERE NOT EXISTS (SELECT 1 FROM PARTIAL_BEARD_CATEGORY WHERE category_id = @wbmc_category);
INSERT INTO CONTEST (championship_year, contest_no, category_id, result_status) VALUES (2023, 11, @wbmc_category, 'Published');
SET @wbmc_competitor = (SELECT competitor_id FROM wbmc_2023_identities WHERE BINARY name = 'Erwin Butsch' LIMIT 1);
INSERT INTO COMPETITOR (first_name, middle_name, last_name) SELECT 'Erwin', NULL, 'Butsch' WHERE @wbmc_competitor IS NULL;
SET @wbmc_competitor = COALESCE(@wbmc_competitor, LAST_INSERT_ID());
INSERT INTO ENTRY (championship_year, contest_no, entry_no, competitor_id, published_total_score, final_rank) VALUES (2023, 11, 1, @wbmc_competitor, 49.0, 1);
SET @wbmc_competitor = (SELECT competitor_id FROM wbmc_2023_identities WHERE BINARY name = 'Edgar König' LIMIT 1);
INSERT INTO COMPETITOR (first_name, middle_name, last_name) SELECT 'Edgar', NULL, 'König' WHERE @wbmc_competitor IS NULL;
SET @wbmc_competitor = COALESCE(@wbmc_competitor, LAST_INSERT_ID());
INSERT INTO ENTRY (championship_year, contest_no, entry_no, competitor_id, published_total_score, final_rank) VALUES (2023, 11, 2, @wbmc_competitor, 47.0, 2);
SET @wbmc_competitor = (SELECT competitor_id FROM wbmc_2023_identities WHERE BINARY name = 'Daniel Thébaud' LIMIT 1);
INSERT INTO COMPETITOR (first_name, middle_name, last_name) SELECT 'Daniel', NULL, 'Thébaud' WHERE @wbmc_competitor IS NULL;
SET @wbmc_competitor = COALESCE(@wbmc_competitor, LAST_INSERT_ID());
INSERT INTO ENTRY (championship_year, contest_no, entry_no, competitor_id, published_total_score, final_rank) VALUES (2023, 11, 3, @wbmc_competitor, 43.5, 3);
SET @wbmc_competitor = (SELECT competitor_id FROM wbmc_2023_identities WHERE BINARY name = 'Jörg Biland' LIMIT 1);
INSERT INTO COMPETITOR (first_name, middle_name, last_name) SELECT 'Jörg', NULL, 'Biland' WHERE @wbmc_competitor IS NULL;
SET @wbmc_competitor = COALESCE(@wbmc_competitor, LAST_INSERT_ID());
INSERT INTO ENTRY (championship_year, contest_no, entry_no, competitor_id, published_total_score, final_rank) VALUES (2023, 11, 4, @wbmc_competitor, 43.5, 4);
SET @wbmc_competitor = (SELECT competitor_id FROM wbmc_2023_identities WHERE BINARY name = 'Jean-Pierre Xausa' LIMIT 1);
INSERT INTO COMPETITOR (first_name, middle_name, last_name) SELECT 'Jean-Pierre', NULL, 'Xausa' WHERE @wbmc_competitor IS NULL;
SET @wbmc_competitor = COALESCE(@wbmc_competitor, LAST_INSERT_ID());
INSERT INTO ENTRY (championship_year, contest_no, entry_no, competitor_id, published_total_score, final_rank) VALUES (2023, 11, 5, @wbmc_competitor, 41.5, 5);
SET @wbmc_competitor = (SELECT competitor_id FROM wbmc_2023_identities WHERE BINARY name = 'André Jonkers' LIMIT 1);
INSERT INTO COMPETITOR (first_name, middle_name, last_name) SELECT 'André', NULL, 'Jonkers' WHERE @wbmc_competitor IS NULL;
SET @wbmc_competitor = COALESCE(@wbmc_competitor, LAST_INSERT_ID());
INSERT INTO ENTRY (championship_year, contest_no, entry_no, competitor_id, published_total_score, final_rank) VALUES (2023, 11, 6, @wbmc_competitor, 40.5, 6);
SET @wbmc_competitor = (SELECT competitor_id FROM wbmc_2023_identities WHERE BINARY name = 'Emilio Ponce' LIMIT 1);
INSERT INTO COMPETITOR (first_name, middle_name, last_name) SELECT 'Emilio', NULL, 'Ponce' WHERE @wbmc_competitor IS NULL;
SET @wbmc_competitor = COALESCE(@wbmc_competitor, LAST_INSERT_ID());
INSERT INTO ENTRY (championship_year, contest_no, entry_no, competitor_id, published_total_score, final_rank) VALUES (2023, 11, 7, @wbmc_competitor, 40.5, 6);
SET @wbmc_competitor = (SELECT competitor_id FROM wbmc_2023_identities WHERE BINARY name = 'Klaus Stahl' LIMIT 1);
INSERT INTO COMPETITOR (first_name, middle_name, last_name) SELECT 'Klaus', NULL, 'Stahl' WHERE @wbmc_competitor IS NULL;
SET @wbmc_competitor = COALESCE(@wbmc_competitor, LAST_INSERT_ID());
INSERT INTO ENTRY (championship_year, contest_no, entry_no, competitor_id, published_total_score, final_rank) VALUES (2023, 11, 8, @wbmc_competitor, 40.0, 8);
SET @wbmc_competitor = (SELECT competitor_id FROM wbmc_2023_identities WHERE BINARY name = 'Leandro Ponce' LIMIT 1);
INSERT INTO COMPETITOR (first_name, middle_name, last_name) SELECT 'Leandro', NULL, 'Ponce' WHERE @wbmc_competitor IS NULL;
SET @wbmc_competitor = COALESCE(@wbmc_competitor, LAST_INSERT_ID());
INSERT INTO ENTRY (championship_year, contest_no, entry_no, competitor_id, published_total_score, final_rank) VALUES (2023, 11, 9, @wbmc_competitor, 40.0, 8);
INSERT INTO CATEGORY (category_name, rule_version, bracket, is_freestyle) SELECT 'Imperial Partial Beard', 'V2-import-2023', 'Partial Beard', 0 WHERE NOT EXISTS (SELECT 1 FROM CATEGORY WHERE category_name = 'Imperial Partial Beard' AND rule_version = 'V2-import-2023');
SET @wbmc_category = (SELECT category_id FROM CATEGORY WHERE category_name = 'Imperial Partial Beard' AND rule_version = 'V2-import-2023');
INSERT INTO PARTIAL_BEARD_CATEGORY (category_id) SELECT @wbmc_category WHERE NOT EXISTS (SELECT 1 FROM PARTIAL_BEARD_CATEGORY WHERE category_id = @wbmc_category);
INSERT INTO CONTEST (championship_year, contest_no, category_id, result_status) VALUES (2023, 12, @wbmc_category, 'Published');
SET @wbmc_competitor = (SELECT competitor_id FROM wbmc_2023_identities WHERE BINARY name = 'Haim Hoffmann' LIMIT 1);
INSERT INTO COMPETITOR (first_name, middle_name, last_name) SELECT 'Haim', NULL, 'Hoffmann' WHERE @wbmc_competitor IS NULL;
SET @wbmc_competitor = COALESCE(@wbmc_competitor, LAST_INSERT_ID());
INSERT INTO ENTRY (championship_year, contest_no, entry_no, competitor_id, published_total_score, final_rank) VALUES (2023, 12, 1, @wbmc_competitor, 50.0, 1);
SET @wbmc_competitor = (SELECT competitor_id FROM wbmc_2023_identities WHERE BINARY name = 'Ty Lehman' LIMIT 1);
INSERT INTO COMPETITOR (first_name, middle_name, last_name) SELECT 'Ty', NULL, 'Lehman' WHERE @wbmc_competitor IS NULL;
SET @wbmc_competitor = COALESCE(@wbmc_competitor, LAST_INSERT_ID());
INSERT INTO ENTRY (championship_year, contest_no, entry_no, competitor_id, published_total_score, final_rank) VALUES (2023, 12, 2, @wbmc_competitor, 47.0, 2);
SET @wbmc_competitor = (SELECT competitor_id FROM wbmc_2023_identities WHERE BINARY name = 'Ernst Pingen' LIMIT 1);
INSERT INTO COMPETITOR (first_name, middle_name, last_name) SELECT 'Ernst', NULL, 'Pingen' WHERE @wbmc_competitor IS NULL;
SET @wbmc_competitor = COALESCE(@wbmc_competitor, LAST_INSERT_ID());
INSERT INTO ENTRY (championship_year, contest_no, entry_no, competitor_id, published_total_score, final_rank) VALUES (2023, 12, 3, @wbmc_competitor, 45.5, 3);
INSERT INTO CATEGORY (category_name, rule_version, bracket, is_freestyle) SELECT 'Freestyle Cheekbeard', 'V2-import-2023', 'Partial Beard', 1 WHERE NOT EXISTS (SELECT 1 FROM CATEGORY WHERE category_name = 'Freestyle Cheekbeard' AND rule_version = 'V2-import-2023');
SET @wbmc_category = (SELECT category_id FROM CATEGORY WHERE category_name = 'Freestyle Cheekbeard' AND rule_version = 'V2-import-2023');
INSERT INTO PARTIAL_BEARD_CATEGORY (category_id) SELECT @wbmc_category WHERE NOT EXISTS (SELECT 1 FROM PARTIAL_BEARD_CATEGORY WHERE category_id = @wbmc_category);
INSERT INTO CONTEST (championship_year, contest_no, category_id, result_status) VALUES (2023, 13, @wbmc_category, 'Published');
SET @wbmc_competitor = (SELECT competitor_id FROM wbmc_2023_identities WHERE BINARY name = 'Franz Mitterhauser' LIMIT 1);
INSERT INTO COMPETITOR (first_name, middle_name, last_name) SELECT 'Franz', NULL, 'Mitterhauser' WHERE @wbmc_competitor IS NULL;
SET @wbmc_competitor = COALESCE(@wbmc_competitor, LAST_INSERT_ID());
INSERT INTO ENTRY (championship_year, contest_no, entry_no, competitor_id, published_total_score, final_rank) VALUES (2023, 13, 1, @wbmc_competitor, 46.5, 1);
SET @wbmc_competitor = (SELECT competitor_id FROM wbmc_2023_identities WHERE BINARY name = 'Siegfried Skarysz' LIMIT 1);
INSERT INTO COMPETITOR (first_name, middle_name, last_name) SELECT 'Siegfried', NULL, 'Skarysz' WHERE @wbmc_competitor IS NULL;
SET @wbmc_competitor = COALESCE(@wbmc_competitor, LAST_INSERT_ID());
INSERT INTO ENTRY (championship_year, contest_no, entry_no, competitor_id, published_total_score, final_rank) VALUES (2023, 13, 2, @wbmc_competitor, 46.0, 2);
SET @wbmc_competitor = (SELECT competitor_id FROM wbmc_2023_identities WHERE BINARY name = 'Dieter Besuch' LIMIT 1);
INSERT INTO COMPETITOR (first_name, middle_name, last_name) SELECT 'Dieter', NULL, 'Besuch' WHERE @wbmc_competitor IS NULL;
SET @wbmc_competitor = COALESCE(@wbmc_competitor, LAST_INSERT_ID());
INSERT INTO ENTRY (championship_year, contest_no, entry_no, competitor_id, published_total_score, final_rank) VALUES (2023, 13, 3, @wbmc_competitor, 45.5, 3);
SET @wbmc_competitor = (SELECT competitor_id FROM wbmc_2023_identities WHERE BINARY name = 'Andreas Pelowski' LIMIT 1);
INSERT INTO COMPETITOR (first_name, middle_name, last_name) SELECT 'Andreas', NULL, 'Pelowski' WHERE @wbmc_competitor IS NULL;
SET @wbmc_competitor = COALESCE(@wbmc_competitor, LAST_INSERT_ID());
INSERT INTO ENTRY (championship_year, contest_no, entry_no, competitor_id, published_total_score, final_rank) VALUES (2023, 13, 4, @wbmc_competitor, 45.0, 4);
SET @wbmc_competitor = (SELECT competitor_id FROM wbmc_2023_identities WHERE BINARY name = 'Mehmet Mete' LIMIT 1);
INSERT INTO COMPETITOR (first_name, middle_name, last_name) SELECT 'Mehmet', NULL, 'Mete' WHERE @wbmc_competitor IS NULL;
SET @wbmc_competitor = COALESCE(@wbmc_competitor, LAST_INSERT_ID());
INSERT INTO ENTRY (championship_year, contest_no, entry_no, competitor_id, published_total_score, final_rank) VALUES (2023, 13, 5, @wbmc_competitor, 42.0, 5);
SET @wbmc_competitor = (SELECT competitor_id FROM wbmc_2023_identities WHERE BINARY name = 'Martin Süß' LIMIT 1);
INSERT INTO COMPETITOR (first_name, middle_name, last_name) SELECT 'Martin', NULL, 'Süß' WHERE @wbmc_competitor IS NULL;
SET @wbmc_competitor = COALESCE(@wbmc_competitor, LAST_INSERT_ID());
INSERT INTO ENTRY (championship_year, contest_no, entry_no, competitor_id, published_total_score, final_rank) VALUES (2023, 13, 6, @wbmc_competitor, 40.0, 6);
SET @wbmc_competitor = (SELECT competitor_id FROM wbmc_2023_identities WHERE BINARY name = 'Patrick Debal' LIMIT 1);
INSERT INTO COMPETITOR (first_name, middle_name, last_name) SELECT 'Patrick', NULL, 'Debal' WHERE @wbmc_competitor IS NULL;
SET @wbmc_competitor = COALESCE(@wbmc_competitor, LAST_INSERT_ID());
INSERT INTO ENTRY (championship_year, contest_no, entry_no, competitor_id, published_total_score, final_rank) VALUES (2023, 13, 7, @wbmc_competitor, 40.0, 6);
SET @wbmc_competitor = (SELECT competitor_id FROM wbmc_2023_identities WHERE BINARY name = 'Coosemans Ronny' LIMIT 1);
INSERT INTO COMPETITOR (first_name, middle_name, last_name) SELECT 'Coosemans', NULL, 'Ronny' WHERE @wbmc_competitor IS NULL;
SET @wbmc_competitor = COALESCE(@wbmc_competitor, LAST_INSERT_ID());
INSERT INTO ENTRY (championship_year, contest_no, entry_no, competitor_id, published_total_score, final_rank) VALUES (2023, 13, 8, @wbmc_competitor, 40.0, 6);
INSERT INTO CATEGORY (category_name, rule_version, bracket, is_freestyle) SELECT 'Freestyle Goatee', 'V2-import-2023', 'Partial Beard', 1 WHERE NOT EXISTS (SELECT 1 FROM CATEGORY WHERE category_name = 'Freestyle Goatee' AND rule_version = 'V2-import-2023');
SET @wbmc_category = (SELECT category_id FROM CATEGORY WHERE category_name = 'Freestyle Goatee' AND rule_version = 'V2-import-2023');
INSERT INTO PARTIAL_BEARD_CATEGORY (category_id) SELECT @wbmc_category WHERE NOT EXISTS (SELECT 1 FROM PARTIAL_BEARD_CATEGORY WHERE category_id = @wbmc_category);
INSERT INTO CONTEST (championship_year, contest_no, category_id, result_status) VALUES (2023, 14, @wbmc_category, 'Published');
SET @wbmc_competitor = (SELECT competitor_id FROM wbmc_2023_identities WHERE BINARY name = 'Norbert Topf' LIMIT 1);
INSERT INTO COMPETITOR (first_name, middle_name, last_name) SELECT 'Norbert', NULL, 'Topf' WHERE @wbmc_competitor IS NULL;
SET @wbmc_competitor = COALESCE(@wbmc_competitor, LAST_INSERT_ID());
INSERT INTO ENTRY (championship_year, contest_no, entry_no, competitor_id, published_total_score, final_rank) VALUES (2023, 14, 1, @wbmc_competitor, 49.0, 1);
INSERT INTO BEST_IN_SHOW (championship_year, contest_no, entry_no, award_division) VALUES (2023, 14, 1, 'Beardsmen');
SET @wbmc_competitor = (SELECT competitor_id FROM wbmc_2023_identities WHERE BINARY name = 'Anthony Carty' LIMIT 1);
INSERT INTO COMPETITOR (first_name, middle_name, last_name) SELECT 'Anthony', NULL, 'Carty' WHERE @wbmc_competitor IS NULL;
SET @wbmc_competitor = COALESCE(@wbmc_competitor, LAST_INSERT_ID());
INSERT INTO ENTRY (championship_year, contest_no, entry_no, competitor_id, published_total_score, final_rank) VALUES (2023, 14, 2, @wbmc_competitor, 48.0, 2);
SET @wbmc_competitor = (SELECT competitor_id FROM wbmc_2023_identities WHERE BINARY name = 'Allen Eckert' LIMIT 1);
INSERT INTO COMPETITOR (first_name, middle_name, last_name) SELECT 'Allen', NULL, 'Eckert' WHERE @wbmc_competitor IS NULL;
SET @wbmc_competitor = COALESCE(@wbmc_competitor, LAST_INSERT_ID());
INSERT INTO ENTRY (championship_year, contest_no, entry_no, competitor_id, published_total_score, final_rank) VALUES (2023, 14, 3, @wbmc_competitor, 44.0, 3);
SET @wbmc_competitor = (SELECT competitor_id FROM wbmc_2023_identities WHERE BINARY name = 'Arthur Runkehl' LIMIT 1);
INSERT INTO COMPETITOR (first_name, middle_name, last_name) SELECT 'Arthur', NULL, 'Runkehl' WHERE @wbmc_competitor IS NULL;
SET @wbmc_competitor = COALESCE(@wbmc_competitor, LAST_INSERT_ID());
INSERT INTO ENTRY (championship_year, contest_no, entry_no, competitor_id, published_total_score, final_rank) VALUES (2023, 14, 4, @wbmc_competitor, 42.0, 4);
SET @wbmc_competitor = (SELECT competitor_id FROM wbmc_2023_identities WHERE BINARY name = 'Chad Roberts' LIMIT 1);
INSERT INTO COMPETITOR (first_name, middle_name, last_name) SELECT 'Chad', NULL, 'Roberts' WHERE @wbmc_competitor IS NULL;
SET @wbmc_competitor = COALESCE(@wbmc_competitor, LAST_INSERT_ID());
INSERT INTO ENTRY (championship_year, contest_no, entry_no, competitor_id, published_total_score, final_rank) VALUES (2023, 14, 5, @wbmc_competitor, 41.5, 5);
SET @wbmc_competitor = (SELECT competitor_id FROM wbmc_2023_identities WHERE BINARY name = 'Gerhard Huber' LIMIT 1);
INSERT INTO COMPETITOR (first_name, middle_name, last_name) SELECT 'Gerhard', NULL, 'Huber' WHERE @wbmc_competitor IS NULL;
SET @wbmc_competitor = COALESCE(@wbmc_competitor, LAST_INSERT_ID());
INSERT INTO ENTRY (championship_year, contest_no, entry_no, competitor_id, published_total_score, final_rank) VALUES (2023, 14, 6, @wbmc_competitor, 40.0, 6);
SET @wbmc_competitor = (SELECT competitor_id FROM wbmc_2023_identities WHERE BINARY name = 'Daniel Riedle' LIMIT 1);
INSERT INTO COMPETITOR (first_name, middle_name, last_name) SELECT 'Daniel', NULL, 'Riedle' WHERE @wbmc_competitor IS NULL;
SET @wbmc_competitor = COALESCE(@wbmc_competitor, LAST_INSERT_ID());
INSERT INTO ENTRY (championship_year, contest_no, entry_no, competitor_id, published_total_score, final_rank) VALUES (2023, 14, 7, @wbmc_competitor, 40.0, 6);
SET @wbmc_competitor = (SELECT competitor_id FROM wbmc_2023_identities WHERE BINARY name = 'Jesse Woods' LIMIT 1);
INSERT INTO COMPETITOR (first_name, middle_name, last_name) SELECT 'Jesse', NULL, 'Woods' WHERE @wbmc_competitor IS NULL;
SET @wbmc_competitor = COALESCE(@wbmc_competitor, LAST_INSERT_ID());
INSERT INTO ENTRY (championship_year, contest_no, entry_no, competitor_id, published_total_score, final_rank) VALUES (2023, 14, 8, @wbmc_competitor, 40.0, 6);
SET @wbmc_competitor = (SELECT competitor_id FROM wbmc_2023_identities WHERE BINARY name = 'Alessandro Sicco' LIMIT 1);
INSERT INTO COMPETITOR (first_name, middle_name, last_name) SELECT 'Alessandro', NULL, 'Sicco' WHERE @wbmc_competitor IS NULL;
SET @wbmc_competitor = COALESCE(@wbmc_competitor, LAST_INSERT_ID());
INSERT INTO ENTRY (championship_year, contest_no, entry_no, competitor_id, published_total_score, final_rank) VALUES (2023, 14, 9, @wbmc_competitor, 40.0, 6);
SET @wbmc_competitor = (SELECT competitor_id FROM wbmc_2023_identities WHERE BINARY name = 'Aldo Gianfrate' LIMIT 1);
INSERT INTO COMPETITOR (first_name, middle_name, last_name) SELECT 'Aldo', NULL, 'Gianfrate' WHERE @wbmc_competitor IS NULL;
SET @wbmc_competitor = COALESCE(@wbmc_competitor, LAST_INSERT_ID());
INSERT INTO ENTRY (championship_year, contest_no, entry_no, competitor_id, published_total_score, final_rank) VALUES (2023, 14, 10, @wbmc_competitor, 38.5, 10);
INSERT INTO CATEGORY (category_name, rule_version, bracket, is_freestyle) SELECT 'Verdi', 'V2-import-2023', 'Full Beard', 0 WHERE NOT EXISTS (SELECT 1 FROM CATEGORY WHERE category_name = 'Verdi' AND rule_version = 'V2-import-2023');
SET @wbmc_category = (SELECT category_id FROM CATEGORY WHERE category_name = 'Verdi' AND rule_version = 'V2-import-2023');
INSERT INTO FULL_BEARD_CATEGORY (category_id) SELECT @wbmc_category WHERE NOT EXISTS (SELECT 1 FROM FULL_BEARD_CATEGORY WHERE category_id = @wbmc_category);
INSERT INTO CONTEST (championship_year, contest_no, category_id, result_status) VALUES (2023, 15, @wbmc_category, 'Published');
SET @wbmc_competitor = (SELECT competitor_id FROM wbmc_2023_identities WHERE BINARY name = 'Karl Roos' LIMIT 1);
INSERT INTO COMPETITOR (first_name, middle_name, last_name) SELECT 'Karl', NULL, 'Roos' WHERE @wbmc_competitor IS NULL;
SET @wbmc_competitor = COALESCE(@wbmc_competitor, LAST_INSERT_ID());
INSERT INTO ENTRY (championship_year, contest_no, entry_no, competitor_id, published_total_score, final_rank) VALUES (2023, 15, 1, @wbmc_competitor, 47.5, 1);
SET @wbmc_competitor = (SELECT competitor_id FROM wbmc_2023_identities WHERE BINARY name = 'Willy Segalotto' LIMIT 1);
INSERT INTO COMPETITOR (first_name, middle_name, last_name) SELECT 'Willy', NULL, 'Segalotto' WHERE @wbmc_competitor IS NULL;
SET @wbmc_competitor = COALESCE(@wbmc_competitor, LAST_INSERT_ID());
INSERT INTO ENTRY (championship_year, contest_no, entry_no, competitor_id, published_total_score, final_rank) VALUES (2023, 15, 2, @wbmc_competitor, 45.5, 2);
SET @wbmc_competitor = (SELECT competitor_id FROM wbmc_2023_identities WHERE BINARY name = 'Paul Tu' LIMIT 1);
INSERT INTO COMPETITOR (first_name, middle_name, last_name) SELECT 'Paul', NULL, 'Tu' WHERE @wbmc_competitor IS NULL;
SET @wbmc_competitor = COALESCE(@wbmc_competitor, LAST_INSERT_ID());
INSERT INTO ENTRY (championship_year, contest_no, entry_no, competitor_id, published_total_score, final_rank) VALUES (2023, 15, 3, @wbmc_competitor, 44.5, 3);
SET @wbmc_competitor = (SELECT competitor_id FROM wbmc_2023_identities WHERE BINARY name = 'Guillaume Renouf' LIMIT 1);
INSERT INTO COMPETITOR (first_name, middle_name, last_name) SELECT 'Guillaume', NULL, 'Renouf' WHERE @wbmc_competitor IS NULL;
SET @wbmc_competitor = COALESCE(@wbmc_competitor, LAST_INSERT_ID());
INSERT INTO ENTRY (championship_year, contest_no, entry_no, competitor_id, published_total_score, final_rank) VALUES (2023, 15, 4, @wbmc_competitor, 43.0, 4);
SET @wbmc_competitor = (SELECT competitor_id FROM wbmc_2023_identities WHERE BINARY name = 'Bernhardt Müller' LIMIT 1);
INSERT INTO COMPETITOR (first_name, middle_name, last_name) SELECT 'Bernhardt', NULL, 'Müller' WHERE @wbmc_competitor IS NULL;
SET @wbmc_competitor = COALESCE(@wbmc_competitor, LAST_INSERT_ID());
INSERT INTO ENTRY (championship_year, contest_no, entry_no, competitor_id, published_total_score, final_rank) VALUES (2023, 15, 5, @wbmc_competitor, 41.0, 5);
SET @wbmc_competitor = (SELECT competitor_id FROM wbmc_2023_identities WHERE BINARY name = 'Justus Hughes' LIMIT 1);
INSERT INTO COMPETITOR (first_name, middle_name, last_name) SELECT 'Justus', NULL, 'Hughes' WHERE @wbmc_competitor IS NULL;
SET @wbmc_competitor = COALESCE(@wbmc_competitor, LAST_INSERT_ID());
INSERT INTO ENTRY (championship_year, contest_no, entry_no, competitor_id, published_total_score, final_rank) VALUES (2023, 15, 6, @wbmc_competitor, 40.5, 6);
SET @wbmc_competitor = (SELECT competitor_id FROM wbmc_2023_identities WHERE BINARY name = 'Bernhard Heinzmann' LIMIT 1);
INSERT INTO COMPETITOR (first_name, middle_name, last_name) SELECT 'Bernhard', NULL, 'Heinzmann' WHERE @wbmc_competitor IS NULL;
SET @wbmc_competitor = COALESCE(@wbmc_competitor, LAST_INSERT_ID());
INSERT INTO ENTRY (championship_year, contest_no, entry_no, competitor_id, published_total_score, final_rank) VALUES (2023, 15, 7, @wbmc_competitor, 40.0, 7);
SET @wbmc_competitor = (SELECT competitor_id FROM wbmc_2023_identities WHERE BINARY name = 'Heinz Schleicher' LIMIT 1);
INSERT INTO COMPETITOR (first_name, middle_name, last_name) SELECT 'Heinz', NULL, 'Schleicher' WHERE @wbmc_competitor IS NULL;
SET @wbmc_competitor = COALESCE(@wbmc_competitor, LAST_INSERT_ID());
INSERT INTO ENTRY (championship_year, contest_no, entry_no, competitor_id, published_total_score, final_rank) VALUES (2023, 15, 8, @wbmc_competitor, 40.0, 7);
SET @wbmc_competitor = (SELECT competitor_id FROM wbmc_2023_identities WHERE BINARY name = 'Alexander Manuvahov' LIMIT 1);
INSERT INTO COMPETITOR (first_name, middle_name, last_name) SELECT 'Alexander', NULL, 'Manuvahov' WHERE @wbmc_competitor IS NULL;
SET @wbmc_competitor = COALESCE(@wbmc_competitor, LAST_INSERT_ID());
INSERT INTO ENTRY (championship_year, contest_no, entry_no, competitor_id, published_total_score, final_rank) VALUES (2023, 15, 9, @wbmc_competitor, 40.0, 7);
SET @wbmc_competitor = (SELECT competitor_id FROM wbmc_2023_identities WHERE BINARY name = 'Lukas Schmiderer' LIMIT 1);
INSERT INTO COMPETITOR (first_name, middle_name, last_name) SELECT 'Lukas', NULL, 'Schmiderer' WHERE @wbmc_competitor IS NULL;
SET @wbmc_competitor = COALESCE(@wbmc_competitor, LAST_INSERT_ID());
INSERT INTO ENTRY (championship_year, contest_no, entry_no, competitor_id, published_total_score, final_rank) VALUES (2023, 15, 10, @wbmc_competitor, 40.0, 7);
SET @wbmc_competitor = (SELECT competitor_id FROM wbmc_2023_identities WHERE BINARY name = 'Aldric Galhaut' LIMIT 1);
INSERT INTO COMPETITOR (first_name, middle_name, last_name) SELECT 'Aldric', NULL, 'Galhaut' WHERE @wbmc_competitor IS NULL;
SET @wbmc_competitor = COALESCE(@wbmc_competitor, LAST_INSERT_ID());
INSERT INTO ENTRY (championship_year, contest_no, entry_no, competitor_id, published_total_score, final_rank) VALUES (2023, 15, 11, @wbmc_competitor, 40.0, 7);
SET @wbmc_competitor = (SELECT competitor_id FROM wbmc_2023_identities WHERE BINARY name = 'Jon Baldur Bogason' LIMIT 1);
INSERT INTO COMPETITOR (first_name, middle_name, last_name) SELECT 'Jon', 'Baldur', 'Bogason' WHERE @wbmc_competitor IS NULL;
SET @wbmc_competitor = COALESCE(@wbmc_competitor, LAST_INSERT_ID());
INSERT INTO ENTRY (championship_year, contest_no, entry_no, competitor_id, published_total_score, final_rank) VALUES (2023, 15, 12, @wbmc_competitor, 40.0, 7);
SET @wbmc_competitor = (SELECT competitor_id FROM wbmc_2023_identities WHERE BINARY name = 'Itai Meshurer' LIMIT 1);
INSERT INTO COMPETITOR (first_name, middle_name, last_name) SELECT 'Itai', NULL, 'Meshurer' WHERE @wbmc_competitor IS NULL;
SET @wbmc_competitor = COALESCE(@wbmc_competitor, LAST_INSERT_ID());
INSERT INTO ENTRY (championship_year, contest_no, entry_no, competitor_id, published_total_score, final_rank) VALUES (2023, 15, 13, @wbmc_competitor, 40.0, 7);
SET @wbmc_competitor = (SELECT competitor_id FROM wbmc_2023_identities WHERE BINARY name = 'Ian Tyrer' LIMIT 1);
INSERT INTO COMPETITOR (first_name, middle_name, last_name) SELECT 'Ian', NULL, 'Tyrer' WHERE @wbmc_competitor IS NULL;
SET @wbmc_competitor = COALESCE(@wbmc_competitor, LAST_INSERT_ID());
INSERT INTO ENTRY (championship_year, contest_no, entry_no, competitor_id, published_total_score, final_rank) VALUES (2023, 15, 14, @wbmc_competitor, 40.0, 7);
SET @wbmc_competitor = (SELECT competitor_id FROM wbmc_2023_identities WHERE BINARY name = 'Johann Catton' LIMIT 1);
INSERT INTO COMPETITOR (first_name, middle_name, last_name) SELECT 'Johann', NULL, 'Catton' WHERE @wbmc_competitor IS NULL;
SET @wbmc_competitor = COALESCE(@wbmc_competitor, LAST_INSERT_ID());
INSERT INTO ENTRY (championship_year, contest_no, entry_no, competitor_id, published_total_score, final_rank) VALUES (2023, 15, 15, @wbmc_competitor, 40.0, 7);
SET @wbmc_competitor = (SELECT competitor_id FROM wbmc_2023_identities WHERE BINARY name = 'Ulf Stuhlmann' LIMIT 1);
INSERT INTO COMPETITOR (first_name, middle_name, last_name) SELECT 'Ulf', NULL, 'Stuhlmann' WHERE @wbmc_competitor IS NULL;
SET @wbmc_competitor = COALESCE(@wbmc_competitor, LAST_INSERT_ID());
INSERT INTO ENTRY (championship_year, contest_no, entry_no, competitor_id, published_total_score, final_rank) VALUES (2023, 15, 16, @wbmc_competitor, 39.5, 16);
SET @wbmc_competitor = (SELECT competitor_id FROM wbmc_2023_identities WHERE BINARY name = 'Andreas Stadler' LIMIT 1);
INSERT INTO COMPETITOR (first_name, middle_name, last_name) SELECT 'Andreas', NULL, 'Stadler' WHERE @wbmc_competitor IS NULL;
SET @wbmc_competitor = COALESCE(@wbmc_competitor, LAST_INSERT_ID());
INSERT INTO ENTRY (championship_year, contest_no, entry_no, competitor_id, published_total_score, final_rank) VALUES (2023, 15, 17, @wbmc_competitor, 39.0, 17);
INSERT INTO CATEGORY (category_name, rule_version, bracket, is_freestyle) SELECT 'Garibaldi', 'V2-import-2023', 'Full Beard', 0 WHERE NOT EXISTS (SELECT 1 FROM CATEGORY WHERE category_name = 'Garibaldi' AND rule_version = 'V2-import-2023');
SET @wbmc_category = (SELECT category_id FROM CATEGORY WHERE category_name = 'Garibaldi' AND rule_version = 'V2-import-2023');
INSERT INTO FULL_BEARD_CATEGORY (category_id) SELECT @wbmc_category WHERE NOT EXISTS (SELECT 1 FROM FULL_BEARD_CATEGORY WHERE category_id = @wbmc_category);
INSERT INTO CONTEST (championship_year, contest_no, category_id, result_status) VALUES (2023, 16, @wbmc_category, 'Published');
SET @wbmc_competitor = (SELECT competitor_id FROM wbmc_2023_identities WHERE BINARY name = 'Lars Lefeber' LIMIT 1);
INSERT INTO COMPETITOR (first_name, middle_name, last_name) SELECT 'Lars', NULL, 'Lefeber' WHERE @wbmc_competitor IS NULL;
SET @wbmc_competitor = COALESCE(@wbmc_competitor, LAST_INSERT_ID());
INSERT INTO ENTRY (championship_year, contest_no, entry_no, competitor_id, published_total_score, final_rank) VALUES (2023, 16, 1, @wbmc_competitor, 45.5, 1);
SET @wbmc_competitor = (SELECT competitor_id FROM wbmc_2023_identities WHERE BINARY name = 'Stefan Hofmeister' LIMIT 1);
INSERT INTO COMPETITOR (first_name, middle_name, last_name) SELECT 'Stefan', NULL, 'Hofmeister' WHERE @wbmc_competitor IS NULL;
SET @wbmc_competitor = COALESCE(@wbmc_competitor, LAST_INSERT_ID());
INSERT INTO ENTRY (championship_year, contest_no, entry_no, competitor_id, published_total_score, final_rank) VALUES (2023, 16, 2, @wbmc_competitor, 45.0, 2);
SET @wbmc_competitor = (SELECT competitor_id FROM wbmc_2023_identities WHERE BINARY name = 'Fritz Sendlhofer' LIMIT 1);
INSERT INTO COMPETITOR (first_name, middle_name, last_name) SELECT 'Fritz', NULL, 'Sendlhofer' WHERE @wbmc_competitor IS NULL;
SET @wbmc_competitor = COALESCE(@wbmc_competitor, LAST_INSERT_ID());
INSERT INTO ENTRY (championship_year, contest_no, entry_no, competitor_id, published_total_score, final_rank) VALUES (2023, 16, 3, @wbmc_competitor, 44.0, 3);
SET @wbmc_competitor = (SELECT competitor_id FROM wbmc_2023_identities WHERE BINARY name = 'Adriano Ghitti' LIMIT 1);
INSERT INTO COMPETITOR (first_name, middle_name, last_name) SELECT 'Adriano', NULL, 'Ghitti' WHERE @wbmc_competitor IS NULL;
SET @wbmc_competitor = COALESCE(@wbmc_competitor, LAST_INSERT_ID());
INSERT INTO ENTRY (championship_year, contest_no, entry_no, competitor_id, published_total_score, final_rank) VALUES (2023, 16, 4, @wbmc_competitor, 44.0, 4);
SET @wbmc_competitor = (SELECT competitor_id FROM wbmc_2023_identities WHERE BINARY name = 'Anton Reimann' LIMIT 1);
INSERT INTO COMPETITOR (first_name, middle_name, last_name) SELECT 'Anton', NULL, 'Reimann' WHERE @wbmc_competitor IS NULL;
SET @wbmc_competitor = COALESCE(@wbmc_competitor, LAST_INSERT_ID());
INSERT INTO ENTRY (championship_year, contest_no, entry_no, competitor_id, published_total_score, final_rank) VALUES (2023, 16, 5, @wbmc_competitor, 41.0, 5);
SET @wbmc_competitor = (SELECT competitor_id FROM wbmc_2023_identities WHERE BINARY name = 'Amos Bassan-Dvash' LIMIT 1);
INSERT INTO COMPETITOR (first_name, middle_name, last_name) SELECT 'Amos', NULL, 'Bassan-Dvash' WHERE @wbmc_competitor IS NULL;
SET @wbmc_competitor = COALESCE(@wbmc_competitor, LAST_INSERT_ID());
INSERT INTO ENTRY (championship_year, contest_no, entry_no, competitor_id, published_total_score, final_rank) VALUES (2023, 16, 6, @wbmc_competitor, 40.5, 6);
SET @wbmc_competitor = (SELECT competitor_id FROM wbmc_2023_identities WHERE BINARY name = 'Anthony Dunne' LIMIT 1);
INSERT INTO COMPETITOR (first_name, middle_name, last_name) SELECT 'Anthony', NULL, 'Dunne' WHERE @wbmc_competitor IS NULL;
SET @wbmc_competitor = COALESCE(@wbmc_competitor, LAST_INSERT_ID());
INSERT INTO ENTRY (championship_year, contest_no, entry_no, competitor_id, published_total_score, final_rank) VALUES (2023, 16, 7, @wbmc_competitor, 40.0, 7);
SET @wbmc_competitor = (SELECT competitor_id FROM wbmc_2023_identities WHERE BINARY name = 'Franz Pill' LIMIT 1);
INSERT INTO COMPETITOR (first_name, middle_name, last_name) SELECT 'Franz', NULL, 'Pill' WHERE @wbmc_competitor IS NULL;
SET @wbmc_competitor = COALESCE(@wbmc_competitor, LAST_INSERT_ID());
INSERT INTO ENTRY (championship_year, contest_no, entry_no, competitor_id, published_total_score, final_rank) VALUES (2023, 16, 8, @wbmc_competitor, 40.0, 7);
SET @wbmc_competitor = (SELECT competitor_id FROM wbmc_2023_identities WHERE BINARY name = 'Sepp Beer' LIMIT 1);
INSERT INTO COMPETITOR (first_name, middle_name, last_name) SELECT 'Sepp', NULL, 'Beer' WHERE @wbmc_competitor IS NULL;
SET @wbmc_competitor = COALESCE(@wbmc_competitor, LAST_INSERT_ID());
INSERT INTO ENTRY (championship_year, contest_no, entry_no, competitor_id, published_total_score, final_rank) VALUES (2023, 16, 9, @wbmc_competitor, 40.0, 7);
SET @wbmc_competitor = (SELECT competitor_id FROM wbmc_2023_identities WHERE BINARY name = 'Michael Rennhofer' LIMIT 1);
INSERT INTO COMPETITOR (first_name, middle_name, last_name) SELECT 'Michael', NULL, 'Rennhofer' WHERE @wbmc_competitor IS NULL;
SET @wbmc_competitor = COALESCE(@wbmc_competitor, LAST_INSERT_ID());
INSERT INTO ENTRY (championship_year, contest_no, entry_no, competitor_id, published_total_score, final_rank) VALUES (2023, 16, 10, @wbmc_competitor, 40.0, 7);
SET @wbmc_competitor = (SELECT competitor_id FROM wbmc_2023_identities WHERE BINARY name = 'Tanner Rudolf' LIMIT 1);
INSERT INTO COMPETITOR (first_name, middle_name, last_name) SELECT 'Tanner', NULL, 'Rudolf' WHERE @wbmc_competitor IS NULL;
SET @wbmc_competitor = COALESCE(@wbmc_competitor, LAST_INSERT_ID());
INSERT INTO ENTRY (championship_year, contest_no, entry_no, competitor_id, published_total_score, final_rank) VALUES (2023, 16, 11, @wbmc_competitor, 40.0, 7);
SET @wbmc_competitor = (SELECT competitor_id FROM wbmc_2023_identities WHERE BINARY name = 'Denis Zen' LIMIT 1);
INSERT INTO COMPETITOR (first_name, middle_name, last_name) SELECT 'Denis', NULL, 'Zen' WHERE @wbmc_competitor IS NULL;
SET @wbmc_competitor = COALESCE(@wbmc_competitor, LAST_INSERT_ID());
INSERT INTO ENTRY (championship_year, contest_no, entry_no, competitor_id, published_total_score, final_rank) VALUES (2023, 16, 12, @wbmc_competitor, 40.0, 7);
SET @wbmc_competitor = (SELECT competitor_id FROM wbmc_2023_identities WHERE BINARY name = 'Holger Langschied' LIMIT 1);
INSERT INTO COMPETITOR (first_name, middle_name, last_name) SELECT 'Holger', NULL, 'Langschied' WHERE @wbmc_competitor IS NULL;
SET @wbmc_competitor = COALESCE(@wbmc_competitor, LAST_INSERT_ID());
INSERT INTO ENTRY (championship_year, contest_no, entry_no, competitor_id, published_total_score, final_rank) VALUES (2023, 16, 13, @wbmc_competitor, 40.0, 7);
SET @wbmc_competitor = (SELECT competitor_id FROM wbmc_2023_identities WHERE BINARY name = 'Robert Kennedy' LIMIT 1);
INSERT INTO COMPETITOR (first_name, middle_name, last_name) SELECT 'Robert', NULL, 'Kennedy' WHERE @wbmc_competitor IS NULL;
SET @wbmc_competitor = COALESCE(@wbmc_competitor, LAST_INSERT_ID());
INSERT INTO ENTRY (championship_year, contest_no, entry_no, competitor_id, published_total_score, final_rank) VALUES (2023, 16, 14, @wbmc_competitor, 40.0, 7);
SET @wbmc_competitor = (SELECT competitor_id FROM wbmc_2023_identities WHERE BINARY name = 'Drew McNaughton' LIMIT 1);
INSERT INTO COMPETITOR (first_name, middle_name, last_name) SELECT 'Drew', NULL, 'McNaughton' WHERE @wbmc_competitor IS NULL;
SET @wbmc_competitor = COALESCE(@wbmc_competitor, LAST_INSERT_ID());
INSERT INTO ENTRY (championship_year, contest_no, entry_no, competitor_id, published_total_score, final_rank) VALUES (2023, 16, 15, @wbmc_competitor, 40.0, 7);
SET @wbmc_competitor = (SELECT competitor_id FROM wbmc_2023_identities WHERE BINARY name = 'Oliver Walek' LIMIT 1);
INSERT INTO COMPETITOR (first_name, middle_name, last_name) SELECT 'Oliver', NULL, 'Walek' WHERE @wbmc_competitor IS NULL;
SET @wbmc_competitor = COALESCE(@wbmc_competitor, LAST_INSERT_ID());
INSERT INTO ENTRY (championship_year, contest_no, entry_no, competitor_id, published_total_score, final_rank) VALUES (2023, 16, 16, @wbmc_competitor, 39.5, 16);
SET @wbmc_competitor = (SELECT competitor_id FROM wbmc_2023_identities WHERE BINARY name = 'Rolf Wollmer' LIMIT 1);
INSERT INTO COMPETITOR (first_name, middle_name, last_name) SELECT 'Rolf', NULL, 'Wollmer' WHERE @wbmc_competitor IS NULL;
SET @wbmc_competitor = COALESCE(@wbmc_competitor, LAST_INSERT_ID());
INSERT INTO ENTRY (championship_year, contest_no, entry_no, competitor_id, published_total_score, final_rank) VALUES (2023, 16, 17, @wbmc_competitor, 39.5, 16);
SET @wbmc_competitor = (SELECT competitor_id FROM wbmc_2023_identities WHERE BINARY name = 'Christian Halbritter' LIMIT 1);
INSERT INTO COMPETITOR (first_name, middle_name, last_name) SELECT 'Christian', NULL, 'Halbritter' WHERE @wbmc_competitor IS NULL;
SET @wbmc_competitor = COALESCE(@wbmc_competitor, LAST_INSERT_ID());
INSERT INTO ENTRY (championship_year, contest_no, entry_no, competitor_id, published_total_score, final_rank) VALUES (2023, 16, 18, @wbmc_competitor, 39.5, 16);
SET @wbmc_competitor = (SELECT competitor_id FROM wbmc_2023_identities WHERE BINARY name = 'Andreas Autenrieth' LIMIT 1);
INSERT INTO COMPETITOR (first_name, middle_name, last_name) SELECT 'Andreas', NULL, 'Autenrieth' WHERE @wbmc_competitor IS NULL;
SET @wbmc_competitor = COALESCE(@wbmc_competitor, LAST_INSERT_ID());
INSERT INTO ENTRY (championship_year, contest_no, entry_no, competitor_id, published_total_score, final_rank) VALUES (2023, 16, 19, @wbmc_competitor, 39.5, 16);
SET @wbmc_competitor = (SELECT competitor_id FROM wbmc_2023_identities WHERE BINARY name = 'Edi Solleder' LIMIT 1);
INSERT INTO COMPETITOR (first_name, middle_name, last_name) SELECT 'Edi', NULL, 'Solleder' WHERE @wbmc_competitor IS NULL;
SET @wbmc_competitor = COALESCE(@wbmc_competitor, LAST_INSERT_ID());
INSERT INTO ENTRY (championship_year, contest_no, entry_no, competitor_id, published_total_score, final_rank) VALUES (2023, 16, 20, @wbmc_competitor, 39.5, 16);
SET @wbmc_competitor = (SELECT competitor_id FROM wbmc_2023_identities WHERE BINARY name = 'Matthew Evans' LIMIT 1);
INSERT INTO COMPETITOR (first_name, middle_name, last_name) SELECT 'Matthew', NULL, 'Evans' WHERE @wbmc_competitor IS NULL;
SET @wbmc_competitor = COALESCE(@wbmc_competitor, LAST_INSERT_ID());
INSERT INTO ENTRY (championship_year, contest_no, entry_no, competitor_id, published_total_score, final_rank) VALUES (2023, 16, 21, @wbmc_competitor, 39.5, 16);
SET @wbmc_competitor = (SELECT competitor_id FROM wbmc_2023_identities WHERE BINARY name = 'Alexander Coblenz' LIMIT 1);
INSERT INTO COMPETITOR (first_name, middle_name, last_name) SELECT 'Alexander', NULL, 'Coblenz' WHERE @wbmc_competitor IS NULL;
SET @wbmc_competitor = COALESCE(@wbmc_competitor, LAST_INSERT_ID());
INSERT INTO ENTRY (championship_year, contest_no, entry_no, competitor_id, published_total_score, final_rank) VALUES (2023, 16, 22, @wbmc_competitor, 39.0, 22);
INSERT INTO CATEGORY (category_name, rule_version, bracket, is_freestyle) SELECT 'Barber Style', 'V2-import-2023', 'Full Beard', 0 WHERE NOT EXISTS (SELECT 1 FROM CATEGORY WHERE category_name = 'Barber Style' AND rule_version = 'V2-import-2023');
SET @wbmc_category = (SELECT category_id FROM CATEGORY WHERE category_name = 'Barber Style' AND rule_version = 'V2-import-2023');
INSERT INTO FULL_BEARD_CATEGORY (category_id) SELECT @wbmc_category WHERE NOT EXISTS (SELECT 1 FROM FULL_BEARD_CATEGORY WHERE category_id = @wbmc_category);
INSERT INTO CONTEST (championship_year, contest_no, category_id, result_status) VALUES (2023, 17, @wbmc_category, 'Published');
SET @wbmc_competitor = (SELECT competitor_id FROM wbmc_2023_identities WHERE BINARY name = 'Christopher Wright' LIMIT 1);
INSERT INTO COMPETITOR (first_name, middle_name, last_name) SELECT 'Christopher', NULL, 'Wright' WHERE @wbmc_competitor IS NULL;
SET @wbmc_competitor = COALESCE(@wbmc_competitor, LAST_INSERT_ID());
INSERT INTO ENTRY (championship_year, contest_no, entry_no, competitor_id, published_total_score, final_rank) VALUES (2023, 17, 1, @wbmc_competitor, 48.0, 1);
SET @wbmc_competitor = (SELECT competitor_id FROM wbmc_2023_identities WHERE BINARY name = 'Andreas Ammerl' LIMIT 1);
INSERT INTO COMPETITOR (first_name, middle_name, last_name) SELECT 'Andreas', NULL, 'Ammerl' WHERE @wbmc_competitor IS NULL;
SET @wbmc_competitor = COALESCE(@wbmc_competitor, LAST_INSERT_ID());
INSERT INTO ENTRY (championship_year, contest_no, entry_no, competitor_id, published_total_score, final_rank) VALUES (2023, 17, 2, @wbmc_competitor, 46.0, 2);
SET @wbmc_competitor = (SELECT competitor_id FROM wbmc_2023_identities WHERE BINARY name = 'Gilor Azulay' LIMIT 1);
INSERT INTO COMPETITOR (first_name, middle_name, last_name) SELECT 'Gilor', NULL, 'Azulay' WHERE @wbmc_competitor IS NULL;
SET @wbmc_competitor = COALESCE(@wbmc_competitor, LAST_INSERT_ID());
INSERT INTO ENTRY (championship_year, contest_no, entry_no, competitor_id, published_total_score, final_rank) VALUES (2023, 17, 3, @wbmc_competitor, 44.0, 3);
SET @wbmc_competitor = (SELECT competitor_id FROM wbmc_2023_identities WHERE BINARY name = 'Daniel Erber' LIMIT 1);
INSERT INTO COMPETITOR (first_name, middle_name, last_name) SELECT 'Daniel', NULL, 'Erber' WHERE @wbmc_competitor IS NULL;
SET @wbmc_competitor = COALESCE(@wbmc_competitor, LAST_INSERT_ID());
INSERT INTO ENTRY (championship_year, contest_no, entry_no, competitor_id, published_total_score, final_rank) VALUES (2023, 17, 4, @wbmc_competitor, 43.0, 4);
SET @wbmc_competitor = (SELECT competitor_id FROM wbmc_2023_identities WHERE BINARY name = 'Vlad Murariu' LIMIT 1);
INSERT INTO COMPETITOR (first_name, middle_name, last_name) SELECT 'Vlad', NULL, 'Murariu' WHERE @wbmc_competitor IS NULL;
SET @wbmc_competitor = COALESCE(@wbmc_competitor, LAST_INSERT_ID());
INSERT INTO ENTRY (championship_year, contest_no, entry_no, competitor_id, published_total_score, final_rank) VALUES (2023, 17, 5, @wbmc_competitor, 42.0, 5);
SET @wbmc_competitor = (SELECT competitor_id FROM wbmc_2023_identities WHERE BINARY name = 'Ewald Weyrauch' LIMIT 1);
INSERT INTO COMPETITOR (first_name, middle_name, last_name) SELECT 'Ewald', NULL, 'Weyrauch' WHERE @wbmc_competitor IS NULL;
SET @wbmc_competitor = COALESCE(@wbmc_competitor, LAST_INSERT_ID());
INSERT INTO ENTRY (championship_year, contest_no, entry_no, competitor_id, published_total_score, final_rank) VALUES (2023, 17, 6, @wbmc_competitor, 40.5, 6);
SET @wbmc_competitor = (SELECT competitor_id FROM wbmc_2023_identities WHERE BINARY name = 'Siegfried Esan' LIMIT 1);
INSERT INTO COMPETITOR (first_name, middle_name, last_name) SELECT 'Siegfried', NULL, 'Esan' WHERE @wbmc_competitor IS NULL;
SET @wbmc_competitor = COALESCE(@wbmc_competitor, LAST_INSERT_ID());
INSERT INTO ENTRY (championship_year, contest_no, entry_no, competitor_id, published_total_score, final_rank) VALUES (2023, 17, 7, @wbmc_competitor, 40.0, 7);
SET @wbmc_competitor = (SELECT competitor_id FROM wbmc_2023_identities WHERE BINARY name = 'Max Mayer' LIMIT 1);
INSERT INTO COMPETITOR (first_name, middle_name, last_name) SELECT 'Max', NULL, 'Mayer' WHERE @wbmc_competitor IS NULL;
SET @wbmc_competitor = COALESCE(@wbmc_competitor, LAST_INSERT_ID());
INSERT INTO ENTRY (championship_year, contest_no, entry_no, competitor_id, published_total_score, final_rank) VALUES (2023, 17, 8, @wbmc_competitor, 40.0, 7);
SET @wbmc_competitor = (SELECT competitor_id FROM wbmc_2023_identities WHERE BINARY name = 'David Scott Kennedy' LIMIT 1);
INSERT INTO COMPETITOR (first_name, middle_name, last_name) SELECT 'David', 'Scott', 'Kennedy' WHERE @wbmc_competitor IS NULL;
SET @wbmc_competitor = COALESCE(@wbmc_competitor, LAST_INSERT_ID());
INSERT INTO ENTRY (championship_year, contest_no, entry_no, competitor_id, published_total_score, final_rank) VALUES (2023, 17, 9, @wbmc_competitor, 40.0, 7);
SET @wbmc_competitor = (SELECT competitor_id FROM wbmc_2023_identities WHERE BINARY name = 'Tobias Winklbauer' LIMIT 1);
INSERT INTO COMPETITOR (first_name, middle_name, last_name) SELECT 'Tobias', NULL, 'Winklbauer' WHERE @wbmc_competitor IS NULL;
SET @wbmc_competitor = COALESCE(@wbmc_competitor, LAST_INSERT_ID());
INSERT INTO ENTRY (championship_year, contest_no, entry_no, competitor_id, published_total_score, final_rank) VALUES (2023, 17, 10, @wbmc_competitor, 40.0, 7);
SET @wbmc_competitor = (SELECT competitor_id FROM wbmc_2023_identities WHERE BINARY name = 'Maximilian Illert' LIMIT 1);
INSERT INTO COMPETITOR (first_name, middle_name, last_name) SELECT 'Maximilian', NULL, 'Illert' WHERE @wbmc_competitor IS NULL;
SET @wbmc_competitor = COALESCE(@wbmc_competitor, LAST_INSERT_ID());
INSERT INTO ENTRY (championship_year, contest_no, entry_no, competitor_id, published_total_score, final_rank) VALUES (2023, 17, 11, @wbmc_competitor, 39.5, 11);
SET @wbmc_competitor = (SELECT competitor_id FROM wbmc_2023_identities WHERE BINARY name = 'John Bull' LIMIT 1);
INSERT INTO COMPETITOR (first_name, middle_name, last_name) SELECT 'John', NULL, 'Bull' WHERE @wbmc_competitor IS NULL;
SET @wbmc_competitor = COALESCE(@wbmc_competitor, LAST_INSERT_ID());
INSERT INTO ENTRY (championship_year, contest_no, entry_no, competitor_id, published_total_score, final_rank) VALUES (2023, 17, 12, @wbmc_competitor, 39.5, 11);
INSERT INTO CATEGORY (category_name, rule_version, bracket, is_freestyle) SELECT 'Natural Full Beard over 60 years', 'V2-import-2023', 'Full Beard', 0 WHERE NOT EXISTS (SELECT 1 FROM CATEGORY WHERE category_name = 'Natural Full Beard over 60 years' AND rule_version = 'V2-import-2023');
SET @wbmc_category = (SELECT category_id FROM CATEGORY WHERE category_name = 'Natural Full Beard over 60 years' AND rule_version = 'V2-import-2023');
INSERT INTO FULL_BEARD_CATEGORY (category_id) SELECT @wbmc_category WHERE NOT EXISTS (SELECT 1 FROM FULL_BEARD_CATEGORY WHERE category_id = @wbmc_category);
INSERT INTO CONTEST (championship_year, contest_no, category_id, result_status) VALUES (2023, 18, @wbmc_category, 'Published');
SET @wbmc_competitor = (SELECT competitor_id FROM wbmc_2023_identities WHERE BINARY name = 'Willi Preuß' LIMIT 1);
INSERT INTO COMPETITOR (first_name, middle_name, last_name) SELECT 'Willi', NULL, 'Preuß' WHERE @wbmc_competitor IS NULL;
SET @wbmc_competitor = COALESCE(@wbmc_competitor, LAST_INSERT_ID());
INSERT INTO ENTRY (championship_year, contest_no, entry_no, competitor_id, published_total_score, final_rank) VALUES (2023, 18, 1, @wbmc_competitor, 46.5, 1);
SET @wbmc_competitor = (SELECT competitor_id FROM wbmc_2023_identities WHERE BINARY name = 'Markus Bross' LIMIT 1);
INSERT INTO COMPETITOR (first_name, middle_name, last_name) SELECT 'Markus', NULL, 'Bross' WHERE @wbmc_competitor IS NULL;
SET @wbmc_competitor = COALESCE(@wbmc_competitor, LAST_INSERT_ID());
INSERT INTO ENTRY (championship_year, contest_no, entry_no, competitor_id, published_total_score, final_rank) VALUES (2023, 18, 2, @wbmc_competitor, 44.0, 2);
SET @wbmc_competitor = (SELECT competitor_id FROM wbmc_2023_identities WHERE BINARY name = 'James McGinn' LIMIT 1);
INSERT INTO COMPETITOR (first_name, middle_name, last_name) SELECT 'James', NULL, 'McGinn' WHERE @wbmc_competitor IS NULL;
SET @wbmc_competitor = COALESCE(@wbmc_competitor, LAST_INSERT_ID());
INSERT INTO ENTRY (championship_year, contest_no, entry_no, competitor_id, published_total_score, final_rank) VALUES (2023, 18, 3, @wbmc_competitor, 43.5, 3);
SET @wbmc_competitor = (SELECT competitor_id FROM wbmc_2023_identities WHERE BINARY name = 'Alois Pletll' LIMIT 1);
INSERT INTO COMPETITOR (first_name, middle_name, last_name) SELECT 'Alois', NULL, 'Pletll' WHERE @wbmc_competitor IS NULL;
SET @wbmc_competitor = COALESCE(@wbmc_competitor, LAST_INSERT_ID());
INSERT INTO ENTRY (championship_year, contest_no, entry_no, competitor_id, published_total_score, final_rank) VALUES (2023, 18, 4, @wbmc_competitor, 42.0, 4);
SET @wbmc_competitor = (SELECT competitor_id FROM wbmc_2023_identities WHERE BINARY name = 'Keith Hauger' LIMIT 1);
INSERT INTO COMPETITOR (first_name, middle_name, last_name) SELECT 'Keith', NULL, 'Hauger' WHERE @wbmc_competitor IS NULL;
SET @wbmc_competitor = COALESCE(@wbmc_competitor, LAST_INSERT_ID());
INSERT INTO ENTRY (championship_year, contest_no, entry_no, competitor_id, published_total_score, final_rank) VALUES (2023, 18, 5, @wbmc_competitor, 41.5, 5);
SET @wbmc_competitor = (SELECT competitor_id FROM wbmc_2023_identities WHERE BINARY name = 'Matthäus Renner' LIMIT 1);
INSERT INTO COMPETITOR (first_name, middle_name, last_name) SELECT 'Matthäus', NULL, 'Renner' WHERE @wbmc_competitor IS NULL;
SET @wbmc_competitor = COALESCE(@wbmc_competitor, LAST_INSERT_ID());
INSERT INTO ENTRY (championship_year, contest_no, entry_no, competitor_id, published_total_score, final_rank) VALUES (2023, 18, 6, @wbmc_competitor, 41.0, 6);
SET @wbmc_competitor = (SELECT competitor_id FROM wbmc_2023_identities WHERE BINARY name = 'Lothar Pegorer' LIMIT 1);
INSERT INTO COMPETITOR (first_name, middle_name, last_name) SELECT 'Lothar', NULL, 'Pegorer' WHERE @wbmc_competitor IS NULL;
SET @wbmc_competitor = COALESCE(@wbmc_competitor, LAST_INSERT_ID());
INSERT INTO ENTRY (championship_year, contest_no, entry_no, competitor_id, published_total_score, final_rank) VALUES (2023, 18, 7, @wbmc_competitor, 40.5, 7);
SET @wbmc_competitor = (SELECT competitor_id FROM wbmc_2023_identities WHERE BINARY name = 'Franz Schottenhammer' LIMIT 1);
INSERT INTO COMPETITOR (first_name, middle_name, last_name) SELECT 'Franz', NULL, 'Schottenhammer' WHERE @wbmc_competitor IS NULL;
SET @wbmc_competitor = COALESCE(@wbmc_competitor, LAST_INSERT_ID());
INSERT INTO ENTRY (championship_year, contest_no, entry_no, competitor_id, published_total_score, final_rank) VALUES (2023, 18, 8, @wbmc_competitor, 40.0, 8);
SET @wbmc_competitor = (SELECT competitor_id FROM wbmc_2023_identities WHERE BINARY name = 'Uwe Hohmann' LIMIT 1);
INSERT INTO COMPETITOR (first_name, middle_name, last_name) SELECT 'Uwe', NULL, 'Hohmann' WHERE @wbmc_competitor IS NULL;
SET @wbmc_competitor = COALESCE(@wbmc_competitor, LAST_INSERT_ID());
INSERT INTO ENTRY (championship_year, contest_no, entry_no, competitor_id, published_total_score, final_rank) VALUES (2023, 18, 9, @wbmc_competitor, 40.0, 8);
SET @wbmc_competitor = (SELECT competitor_id FROM wbmc_2023_identities WHERE BINARY name = 'Terry McCormick' LIMIT 1);
INSERT INTO COMPETITOR (first_name, middle_name, last_name) SELECT 'Terry', NULL, 'McCormick' WHERE @wbmc_competitor IS NULL;
SET @wbmc_competitor = COALESCE(@wbmc_competitor, LAST_INSERT_ID());
INSERT INTO ENTRY (championship_year, contest_no, entry_no, competitor_id, published_total_score, final_rank) VALUES (2023, 18, 10, @wbmc_competitor, 40.0, 8);
SET @wbmc_competitor = (SELECT competitor_id FROM wbmc_2023_identities WHERE BINARY name = 'Reinhold Maierhofer' LIMIT 1);
INSERT INTO COMPETITOR (first_name, middle_name, last_name) SELECT 'Reinhold', NULL, 'Maierhofer' WHERE @wbmc_competitor IS NULL;
SET @wbmc_competitor = COALESCE(@wbmc_competitor, LAST_INSERT_ID());
INSERT INTO ENTRY (championship_year, contest_no, entry_no, competitor_id, published_total_score, final_rank) VALUES (2023, 18, 11, @wbmc_competitor, 40.0, 8);
SET @wbmc_competitor = (SELECT competitor_id FROM wbmc_2023_identities WHERE BINARY name = 'Robert Gabor' LIMIT 1);
INSERT INTO COMPETITOR (first_name, middle_name, last_name) SELECT 'Robert', NULL, 'Gabor' WHERE @wbmc_competitor IS NULL;
SET @wbmc_competitor = COALESCE(@wbmc_competitor, LAST_INSERT_ID());
INSERT INTO ENTRY (championship_year, contest_no, entry_no, competitor_id, published_total_score, final_rank) VALUES (2023, 18, 12, @wbmc_competitor, 40.0, 8);
SET @wbmc_competitor = (SELECT competitor_id FROM wbmc_2023_identities WHERE BINARY name = 'Rainer Christ' LIMIT 1);
INSERT INTO COMPETITOR (first_name, middle_name, last_name) SELECT 'Rainer', NULL, 'Christ' WHERE @wbmc_competitor IS NULL;
SET @wbmc_competitor = COALESCE(@wbmc_competitor, LAST_INSERT_ID());
INSERT INTO ENTRY (championship_year, contest_no, entry_no, competitor_id, published_total_score, final_rank) VALUES (2023, 18, 13, @wbmc_competitor, 39.5, 13);
SET @wbmc_competitor = (SELECT competitor_id FROM wbmc_2023_identities WHERE BINARY name = 'Otto Neuberger' LIMIT 1);
INSERT INTO COMPETITOR (first_name, middle_name, last_name) SELECT 'Otto', NULL, 'Neuberger' WHERE @wbmc_competitor IS NULL;
SET @wbmc_competitor = COALESCE(@wbmc_competitor, LAST_INSERT_ID());
INSERT INTO ENTRY (championship_year, contest_no, entry_no, competitor_id, published_total_score, final_rank) VALUES (2023, 18, 14, @wbmc_competitor, 39.5, 13);
SET @wbmc_competitor = (SELECT competitor_id FROM wbmc_2023_identities WHERE BINARY name = 'Helmut Huck' LIMIT 1);
INSERT INTO COMPETITOR (first_name, middle_name, last_name) SELECT 'Helmut', NULL, 'Huck' WHERE @wbmc_competitor IS NULL;
SET @wbmc_competitor = COALESCE(@wbmc_competitor, LAST_INSERT_ID());
INSERT INTO ENTRY (championship_year, contest_no, entry_no, competitor_id, published_total_score, final_rank) VALUES (2023, 18, 15, @wbmc_competitor, 39.5, 13);
INSERT INTO CATEGORY (category_name, rule_version, bracket, is_freestyle) SELECT 'Natural Full Beard with styled Moustache', 'V2-import-2023', 'Full Beard', 0 WHERE NOT EXISTS (SELECT 1 FROM CATEGORY WHERE category_name = 'Natural Full Beard with styled Moustache' AND rule_version = 'V2-import-2023');
SET @wbmc_category = (SELECT category_id FROM CATEGORY WHERE category_name = 'Natural Full Beard with styled Moustache' AND rule_version = 'V2-import-2023');
INSERT INTO FULL_BEARD_CATEGORY (category_id) SELECT @wbmc_category WHERE NOT EXISTS (SELECT 1 FROM FULL_BEARD_CATEGORY WHERE category_id = @wbmc_category);
INSERT INTO CONTEST (championship_year, contest_no, category_id, result_status) VALUES (2023, 19, @wbmc_category, 'Published');
SET @wbmc_competitor = (SELECT competitor_id FROM wbmc_2023_identities WHERE BINARY name = 'Anton Rittger' LIMIT 1);
INSERT INTO COMPETITOR (first_name, middle_name, last_name) SELECT 'Anton', NULL, 'Rittger' WHERE @wbmc_competitor IS NULL;
SET @wbmc_competitor = COALESCE(@wbmc_competitor, LAST_INSERT_ID());
INSERT INTO ENTRY (championship_year, contest_no, entry_no, competitor_id, published_total_score, final_rank) VALUES (2023, 19, 1, @wbmc_competitor, 48.0, 1);
SET @wbmc_competitor = (SELECT competitor_id FROM wbmc_2023_identities WHERE BINARY name = 'Andrew Kloss' LIMIT 1);
INSERT INTO COMPETITOR (first_name, middle_name, last_name) SELECT 'Andrew', NULL, 'Kloss' WHERE @wbmc_competitor IS NULL;
SET @wbmc_competitor = COALESCE(@wbmc_competitor, LAST_INSERT_ID());
INSERT INTO ENTRY (championship_year, contest_no, entry_no, competitor_id, published_total_score, final_rank) VALUES (2023, 19, 2, @wbmc_competitor, 48.0, 2);
SET @wbmc_competitor = (SELECT competitor_id FROM wbmc_2023_identities WHERE BINARY name = 'Gilad Levy' LIMIT 1);
INSERT INTO COMPETITOR (first_name, middle_name, last_name) SELECT 'Gilad', NULL, 'Levy' WHERE @wbmc_competitor IS NULL;
SET @wbmc_competitor = COALESCE(@wbmc_competitor, LAST_INSERT_ID());
INSERT INTO ENTRY (championship_year, contest_no, entry_no, competitor_id, published_total_score, final_rank) VALUES (2023, 19, 3, @wbmc_competitor, 44.0, 3);
SET @wbmc_competitor = (SELECT competitor_id FROM wbmc_2023_identities WHERE BINARY name = 'Lewis Aylmer' LIMIT 1);
INSERT INTO COMPETITOR (first_name, middle_name, last_name) SELECT 'Lewis', NULL, 'Aylmer' WHERE @wbmc_competitor IS NULL;
SET @wbmc_competitor = COALESCE(@wbmc_competitor, LAST_INSERT_ID());
INSERT INTO ENTRY (championship_year, contest_no, entry_no, competitor_id, published_total_score, final_rank) VALUES (2023, 19, 4, @wbmc_competitor, 40.5, 4);
SET @wbmc_competitor = (SELECT competitor_id FROM wbmc_2023_identities WHERE BINARY name = 'Rasser Justin' LIMIT 1);
INSERT INTO COMPETITOR (first_name, middle_name, last_name) SELECT 'Rasser', NULL, 'Justin' WHERE @wbmc_competitor IS NULL;
SET @wbmc_competitor = COALESCE(@wbmc_competitor, LAST_INSERT_ID());
INSERT INTO ENTRY (championship_year, contest_no, entry_no, competitor_id, published_total_score, final_rank) VALUES (2023, 19, 5, @wbmc_competitor, 40.5, 4);
SET @wbmc_competitor = (SELECT competitor_id FROM wbmc_2023_identities WHERE BINARY name = 'Daniele Fulgheri' LIMIT 1);
INSERT INTO COMPETITOR (first_name, middle_name, last_name) SELECT 'Daniele', NULL, 'Fulgheri' WHERE @wbmc_competitor IS NULL;
SET @wbmc_competitor = COALESCE(@wbmc_competitor, LAST_INSERT_ID());
INSERT INTO ENTRY (championship_year, contest_no, entry_no, competitor_id, published_total_score, final_rank) VALUES (2023, 19, 6, @wbmc_competitor, 40.5, 4);
SET @wbmc_competitor = (SELECT competitor_id FROM wbmc_2023_identities WHERE BINARY name = 'Singh Sabharwal Narinderjeet' LIMIT 1);
INSERT INTO COMPETITOR (first_name, middle_name, last_name) SELECT 'Singh', 'Sabharwal', 'Narinderjeet' WHERE @wbmc_competitor IS NULL;
SET @wbmc_competitor = COALESCE(@wbmc_competitor, LAST_INSERT_ID());
INSERT INTO ENTRY (championship_year, contest_no, entry_no, competitor_id, published_total_score, final_rank) VALUES (2023, 19, 7, @wbmc_competitor, 40.0, 7);
SET @wbmc_competitor = (SELECT competitor_id FROM wbmc_2023_identities WHERE BINARY name = 'Wilfredo Martinez' LIMIT 1);
INSERT INTO COMPETITOR (first_name, middle_name, last_name) SELECT 'Wilfredo', NULL, 'Martinez' WHERE @wbmc_competitor IS NULL;
SET @wbmc_competitor = COALESCE(@wbmc_competitor, LAST_INSERT_ID());
INSERT INTO ENTRY (championship_year, contest_no, entry_no, competitor_id, published_total_score, final_rank) VALUES (2023, 19, 8, @wbmc_competitor, 40.0, 7);
SET @wbmc_competitor = (SELECT competitor_id FROM wbmc_2023_identities WHERE BINARY name = 'Loïc Papillon' LIMIT 1);
INSERT INTO COMPETITOR (first_name, middle_name, last_name) SELECT 'Loïc', NULL, 'Papillon' WHERE @wbmc_competitor IS NULL;
SET @wbmc_competitor = COALESCE(@wbmc_competitor, LAST_INSERT_ID());
INSERT INTO ENTRY (championship_year, contest_no, entry_no, competitor_id, published_total_score, final_rank) VALUES (2023, 19, 9, @wbmc_competitor, 40.0, 7);
SET @wbmc_competitor = (SELECT competitor_id FROM wbmc_2023_identities WHERE BINARY name = 'Hervé Diebolt' LIMIT 1);
INSERT INTO COMPETITOR (first_name, middle_name, last_name) SELECT 'Hervé', NULL, 'Diebolt' WHERE @wbmc_competitor IS NULL;
SET @wbmc_competitor = COALESCE(@wbmc_competitor, LAST_INSERT_ID());
INSERT INTO ENTRY (championship_year, contest_no, entry_no, competitor_id, published_total_score, final_rank) VALUES (2023, 19, 10, @wbmc_competitor, 40.0, 7);
SET @wbmc_competitor = (SELECT competitor_id FROM wbmc_2023_identities WHERE BINARY name = 'Taylor Welden' LIMIT 1);
INSERT INTO COMPETITOR (first_name, middle_name, last_name) SELECT 'Taylor', NULL, 'Welden' WHERE @wbmc_competitor IS NULL;
SET @wbmc_competitor = COALESCE(@wbmc_competitor, LAST_INSERT_ID());
INSERT INTO ENTRY (championship_year, contest_no, entry_no, competitor_id, published_total_score, final_rank) VALUES (2023, 19, 11, @wbmc_competitor, 40.0, 7);
SET @wbmc_competitor = (SELECT competitor_id FROM wbmc_2023_identities WHERE BINARY name = 'Christian Berger' LIMIT 1);
INSERT INTO COMPETITOR (first_name, middle_name, last_name) SELECT 'Christian', NULL, 'Berger' WHERE @wbmc_competitor IS NULL;
SET @wbmc_competitor = COALESCE(@wbmc_competitor, LAST_INSERT_ID());
INSERT INTO ENTRY (championship_year, contest_no, entry_no, competitor_id, published_total_score, final_rank) VALUES (2023, 19, 12, @wbmc_competitor, 40.0, 7);
SET @wbmc_competitor = (SELECT competitor_id FROM wbmc_2023_identities WHERE BINARY name = 'Lionel Martin' LIMIT 1);
INSERT INTO COMPETITOR (first_name, middle_name, last_name) SELECT 'Lionel', NULL, 'Martin' WHERE @wbmc_competitor IS NULL;
SET @wbmc_competitor = COALESCE(@wbmc_competitor, LAST_INSERT_ID());
INSERT INTO ENTRY (championship_year, contest_no, entry_no, competitor_id, published_total_score, final_rank) VALUES (2023, 19, 13, @wbmc_competitor, 40.0, 7);
SET @wbmc_competitor = (SELECT competitor_id FROM wbmc_2023_identities WHERE BINARY name = 'Craig Keough' LIMIT 1);
INSERT INTO COMPETITOR (first_name, middle_name, last_name) SELECT 'Craig', NULL, 'Keough' WHERE @wbmc_competitor IS NULL;
SET @wbmc_competitor = COALESCE(@wbmc_competitor, LAST_INSERT_ID());
INSERT INTO ENTRY (championship_year, contest_no, entry_no, competitor_id, published_total_score, final_rank) VALUES (2023, 19, 14, @wbmc_competitor, 40.0, 7);
SET @wbmc_competitor = (SELECT competitor_id FROM wbmc_2023_identities WHERE BINARY name = 'Wayne Patmore' LIMIT 1);
INSERT INTO COMPETITOR (first_name, middle_name, last_name) SELECT 'Wayne', NULL, 'Patmore' WHERE @wbmc_competitor IS NULL;
SET @wbmc_competitor = COALESCE(@wbmc_competitor, LAST_INSERT_ID());
INSERT INTO ENTRY (championship_year, contest_no, entry_no, competitor_id, published_total_score, final_rank) VALUES (2023, 19, 15, @wbmc_competitor, 40.0, 7);
SET @wbmc_competitor = (SELECT competitor_id FROM wbmc_2023_identities WHERE BINARY name = 'Philipp Böning' LIMIT 1);
INSERT INTO COMPETITOR (first_name, middle_name, last_name) SELECT 'Philipp', NULL, 'Böning' WHERE @wbmc_competitor IS NULL;
SET @wbmc_competitor = COALESCE(@wbmc_competitor, LAST_INSERT_ID());
INSERT INTO ENTRY (championship_year, contest_no, entry_no, competitor_id, published_total_score, final_rank) VALUES (2023, 19, 16, @wbmc_competitor, 40.0, 7);
SET @wbmc_competitor = (SELECT competitor_id FROM wbmc_2023_identities WHERE BINARY name = 'Christopher Parther' LIMIT 1);
INSERT INTO COMPETITOR (first_name, middle_name, last_name) SELECT 'Christopher', NULL, 'Parther' WHERE @wbmc_competitor IS NULL;
SET @wbmc_competitor = COALESCE(@wbmc_competitor, LAST_INSERT_ID());
INSERT INTO ENTRY (championship_year, contest_no, entry_no, competitor_id, published_total_score, final_rank) VALUES (2023, 19, 17, @wbmc_competitor, 40.0, 7);
SET @wbmc_competitor = (SELECT competitor_id FROM wbmc_2023_identities WHERE BINARY name = 'Markus Loy' LIMIT 1);
INSERT INTO COMPETITOR (first_name, middle_name, last_name) SELECT 'Markus', NULL, 'Loy' WHERE @wbmc_competitor IS NULL;
SET @wbmc_competitor = COALESCE(@wbmc_competitor, LAST_INSERT_ID());
INSERT INTO ENTRY (championship_year, contest_no, entry_no, competitor_id, published_total_score, final_rank) VALUES (2023, 19, 18, @wbmc_competitor, 39.5, 18);
SET @wbmc_competitor = (SELECT competitor_id FROM wbmc_2023_identities WHERE BINARY name = 'Oliver Burkhardt' LIMIT 1);
INSERT INTO COMPETITOR (first_name, middle_name, last_name) SELECT 'Oliver', NULL, 'Burkhardt' WHERE @wbmc_competitor IS NULL;
SET @wbmc_competitor = COALESCE(@wbmc_competitor, LAST_INSERT_ID());
INSERT INTO ENTRY (championship_year, contest_no, entry_no, competitor_id, published_total_score, final_rank) VALUES (2023, 19, 19, @wbmc_competitor, 39.5, 18);
SET @wbmc_competitor = (SELECT competitor_id FROM wbmc_2023_identities WHERE BINARY name = 'Wlodzimierz Klancko' LIMIT 1);
INSERT INTO COMPETITOR (first_name, middle_name, last_name) SELECT 'Wlodzimierz', NULL, 'Klancko' WHERE @wbmc_competitor IS NULL;
SET @wbmc_competitor = COALESCE(@wbmc_competitor, LAST_INSERT_ID());
INSERT INTO ENTRY (championship_year, contest_no, entry_no, competitor_id, published_total_score, final_rank) VALUES (2023, 19, 20, @wbmc_competitor, 39.0, 20);
SET @wbmc_competitor = (SELECT competitor_id FROM wbmc_2023_identities WHERE BINARY name = 'Thomas Mußack' LIMIT 1);
INSERT INTO COMPETITOR (first_name, middle_name, last_name) SELECT 'Thomas', NULL, 'Mußack' WHERE @wbmc_competitor IS NULL;
SET @wbmc_competitor = COALESCE(@wbmc_competitor, LAST_INSERT_ID());
INSERT INTO ENTRY (championship_year, contest_no, entry_no, competitor_id, published_total_score, final_rank) VALUES (2023, 19, 21, @wbmc_competitor, 38.5, 21);
INSERT INTO CATEGORY (category_name, rule_version, bracket, is_freestyle) SELECT 'Natural Full Beard under 30cm', 'V2-import-2023', 'Full Beard', 0 WHERE NOT EXISTS (SELECT 1 FROM CATEGORY WHERE category_name = 'Natural Full Beard under 30cm' AND rule_version = 'V2-import-2023');
SET @wbmc_category = (SELECT category_id FROM CATEGORY WHERE category_name = 'Natural Full Beard under 30cm' AND rule_version = 'V2-import-2023');
INSERT INTO FULL_BEARD_CATEGORY (category_id) SELECT @wbmc_category WHERE NOT EXISTS (SELECT 1 FROM FULL_BEARD_CATEGORY WHERE category_id = @wbmc_category);
INSERT INTO CONTEST (championship_year, contest_no, category_id, result_status) VALUES (2023, 20, @wbmc_category, 'Published');
SET @wbmc_competitor = (SELECT competitor_id FROM wbmc_2023_identities WHERE BINARY name = 'Marc Bereiter' LIMIT 1);
INSERT INTO COMPETITOR (first_name, middle_name, last_name) SELECT 'Marc', NULL, 'Bereiter' WHERE @wbmc_competitor IS NULL;
SET @wbmc_competitor = COALESCE(@wbmc_competitor, LAST_INSERT_ID());
INSERT INTO ENTRY (championship_year, contest_no, entry_no, competitor_id, published_total_score, final_rank) VALUES (2023, 20, 1, @wbmc_competitor, 44.0, 1);
SET @wbmc_competitor = (SELECT competitor_id FROM wbmc_2023_identities WHERE BINARY name = 'Jason George' LIMIT 1);
INSERT INTO COMPETITOR (first_name, middle_name, last_name) SELECT 'Jason', NULL, 'George' WHERE @wbmc_competitor IS NULL;
SET @wbmc_competitor = COALESCE(@wbmc_competitor, LAST_INSERT_ID());
INSERT INTO ENTRY (championship_year, contest_no, entry_no, competitor_id, published_total_score, final_rank) VALUES (2023, 20, 2, @wbmc_competitor, 43.0, 2);
SET @wbmc_competitor = (SELECT competitor_id FROM wbmc_2023_identities WHERE BINARY name = 'Shahram Ariafar' LIMIT 1);
INSERT INTO COMPETITOR (first_name, middle_name, last_name) SELECT 'Shahram', NULL, 'Ariafar' WHERE @wbmc_competitor IS NULL;
SET @wbmc_competitor = COALESCE(@wbmc_competitor, LAST_INSERT_ID());
INSERT INTO ENTRY (championship_year, contest_no, entry_no, competitor_id, published_total_score, final_rank) VALUES (2023, 20, 3, @wbmc_competitor, 42.5, 3);
SET @wbmc_competitor = (SELECT competitor_id FROM wbmc_2023_identities WHERE BINARY name = 'Michael Aigner' LIMIT 1);
INSERT INTO COMPETITOR (first_name, middle_name, last_name) SELECT 'Michael', NULL, 'Aigner' WHERE @wbmc_competitor IS NULL;
SET @wbmc_competitor = COALESCE(@wbmc_competitor, LAST_INSERT_ID());
INSERT INTO ENTRY (championship_year, contest_no, entry_no, competitor_id, published_total_score, final_rank) VALUES (2023, 20, 4, @wbmc_competitor, 41.0, 4);
SET @wbmc_competitor = (SELECT competitor_id FROM wbmc_2023_identities WHERE BINARY name = 'Nicola Fusi' LIMIT 1);
INSERT INTO COMPETITOR (first_name, middle_name, last_name) SELECT 'Nicola', NULL, 'Fusi' WHERE @wbmc_competitor IS NULL;
SET @wbmc_competitor = COALESCE(@wbmc_competitor, LAST_INSERT_ID());
INSERT INTO ENTRY (championship_year, contest_no, entry_no, competitor_id, published_total_score, final_rank) VALUES (2023, 20, 5, @wbmc_competitor, 41.0, 4);
SET @wbmc_competitor = (SELECT competitor_id FROM wbmc_2023_identities WHERE BINARY name = 'Sebastian Leber' LIMIT 1);
INSERT INTO COMPETITOR (first_name, middle_name, last_name) SELECT 'Sebastian', NULL, 'Leber' WHERE @wbmc_competitor IS NULL;
SET @wbmc_competitor = COALESCE(@wbmc_competitor, LAST_INSERT_ID());
INSERT INTO ENTRY (championship_year, contest_no, entry_no, competitor_id, published_total_score, final_rank) VALUES (2023, 20, 6, @wbmc_competitor, 40.5, 6);
SET @wbmc_competitor = (SELECT competitor_id FROM wbmc_2023_identities WHERE BINARY name = 'Thomas Fohr' LIMIT 1);
INSERT INTO COMPETITOR (first_name, middle_name, last_name) SELECT 'Thomas', NULL, 'Fohr' WHERE @wbmc_competitor IS NULL;
SET @wbmc_competitor = COALESCE(@wbmc_competitor, LAST_INSERT_ID());
INSERT INTO ENTRY (championship_year, contest_no, entry_no, competitor_id, published_total_score, final_rank) VALUES (2023, 20, 7, @wbmc_competitor, 40.5, 6);
SET @wbmc_competitor = (SELECT competitor_id FROM wbmc_2023_identities WHERE BINARY name = 'Brian Eva' LIMIT 1);
INSERT INTO COMPETITOR (first_name, middle_name, last_name) SELECT 'Brian', NULL, 'Eva' WHERE @wbmc_competitor IS NULL;
SET @wbmc_competitor = COALESCE(@wbmc_competitor, LAST_INSERT_ID());
INSERT INTO ENTRY (championship_year, contest_no, entry_no, competitor_id, published_total_score, final_rank) VALUES (2023, 20, 8, @wbmc_competitor, 40.5, 6);
SET @wbmc_competitor = (SELECT competitor_id FROM wbmc_2023_identities WHERE BINARY name = 'Craig Harvey' LIMIT 1);
INSERT INTO COMPETITOR (first_name, middle_name, last_name) SELECT 'Craig', NULL, 'Harvey' WHERE @wbmc_competitor IS NULL;
SET @wbmc_competitor = COALESCE(@wbmc_competitor, LAST_INSERT_ID());
INSERT INTO ENTRY (championship_year, contest_no, entry_no, competitor_id, published_total_score, final_rank) VALUES (2023, 20, 9, @wbmc_competitor, 40.5, 6);
SET @wbmc_competitor = (SELECT competitor_id FROM wbmc_2023_identities WHERE BINARY name = 'Roman Arthaber' LIMIT 1);
INSERT INTO COMPETITOR (first_name, middle_name, last_name) SELECT 'Roman', NULL, 'Arthaber' WHERE @wbmc_competitor IS NULL;
SET @wbmc_competitor = COALESCE(@wbmc_competitor, LAST_INSERT_ID());
INSERT INTO ENTRY (championship_year, contest_no, entry_no, competitor_id, published_total_score, final_rank) VALUES (2023, 20, 10, @wbmc_competitor, 40.0, 10);
SET @wbmc_competitor = (SELECT competitor_id FROM wbmc_2023_identities WHERE BINARY name = 'Steve Kaufold' LIMIT 1);
INSERT INTO COMPETITOR (first_name, middle_name, last_name) SELECT 'Steve', NULL, 'Kaufold' WHERE @wbmc_competitor IS NULL;
SET @wbmc_competitor = COALESCE(@wbmc_competitor, LAST_INSERT_ID());
INSERT INTO ENTRY (championship_year, contest_no, entry_no, competitor_id, published_total_score, final_rank) VALUES (2023, 20, 11, @wbmc_competitor, 40.0, 10);
SET @wbmc_competitor = (SELECT competitor_id FROM wbmc_2023_identities WHERE BINARY name = 'Thomas Müller-Rühl' LIMIT 1);
INSERT INTO COMPETITOR (first_name, middle_name, last_name) SELECT 'Thomas', NULL, 'Müller-Rühl' WHERE @wbmc_competitor IS NULL;
SET @wbmc_competitor = COALESCE(@wbmc_competitor, LAST_INSERT_ID());
INSERT INTO ENTRY (championship_year, contest_no, entry_no, competitor_id, published_total_score, final_rank) VALUES (2023, 20, 12, @wbmc_competitor, 40.0, 10);
SET @wbmc_competitor = (SELECT competitor_id FROM wbmc_2023_identities WHERE BINARY name = 'Eric Simpson' LIMIT 1);
INSERT INTO COMPETITOR (first_name, middle_name, last_name) SELECT 'Eric', NULL, 'Simpson' WHERE @wbmc_competitor IS NULL;
SET @wbmc_competitor = COALESCE(@wbmc_competitor, LAST_INSERT_ID());
INSERT INTO ENTRY (championship_year, contest_no, entry_no, competitor_id, published_total_score, final_rank) VALUES (2023, 20, 13, @wbmc_competitor, 40.0, 10);
SET @wbmc_competitor = (SELECT competitor_id FROM wbmc_2023_identities WHERE BINARY name = 'John Prentice' LIMIT 1);
INSERT INTO COMPETITOR (first_name, middle_name, last_name) SELECT 'John', NULL, 'Prentice' WHERE @wbmc_competitor IS NULL;
SET @wbmc_competitor = COALESCE(@wbmc_competitor, LAST_INSERT_ID());
INSERT INTO ENTRY (championship_year, contest_no, entry_no, competitor_id, published_total_score, final_rank) VALUES (2023, 20, 14, @wbmc_competitor, 40.0, 10);
SET @wbmc_competitor = (SELECT competitor_id FROM wbmc_2023_identities WHERE BINARY name = 'Dieter Feth' LIMIT 1);
INSERT INTO COMPETITOR (first_name, middle_name, last_name) SELECT 'Dieter', NULL, 'Feth' WHERE @wbmc_competitor IS NULL;
SET @wbmc_competitor = COALESCE(@wbmc_competitor, LAST_INSERT_ID());
INSERT INTO ENTRY (championship_year, contest_no, entry_no, competitor_id, published_total_score, final_rank) VALUES (2023, 20, 15, @wbmc_competitor, 40.0, 10);
SET @wbmc_competitor = (SELECT competitor_id FROM wbmc_2023_identities WHERE BINARY name = 'Herbert Dobner' LIMIT 1);
INSERT INTO COMPETITOR (first_name, middle_name, last_name) SELECT 'Herbert', NULL, 'Dobner' WHERE @wbmc_competitor IS NULL;
SET @wbmc_competitor = COALESCE(@wbmc_competitor, LAST_INSERT_ID());
INSERT INTO ENTRY (championship_year, contest_no, entry_no, competitor_id, published_total_score, final_rank) VALUES (2023, 20, 16, @wbmc_competitor, 40.0, 10);
SET @wbmc_competitor = (SELECT competitor_id FROM wbmc_2023_identities WHERE BINARY name = 'Ferenc Horvath' LIMIT 1);
INSERT INTO COMPETITOR (first_name, middle_name, last_name) SELECT 'Ferenc', NULL, 'Horvath' WHERE @wbmc_competitor IS NULL;
SET @wbmc_competitor = COALESCE(@wbmc_competitor, LAST_INSERT_ID());
INSERT INTO ENTRY (championship_year, contest_no, entry_no, competitor_id, published_total_score, final_rank) VALUES (2023, 20, 17, @wbmc_competitor, 40.0, 10);
SET @wbmc_competitor = (SELECT competitor_id FROM wbmc_2023_identities WHERE BINARY name = 'Cornelio Bravo' LIMIT 1);
INSERT INTO COMPETITOR (first_name, middle_name, last_name) SELECT 'Cornelio', NULL, 'Bravo' WHERE @wbmc_competitor IS NULL;
SET @wbmc_competitor = COALESCE(@wbmc_competitor, LAST_INSERT_ID());
INSERT INTO ENTRY (championship_year, contest_no, entry_no, competitor_id, published_total_score, final_rank) VALUES (2023, 20, 18, @wbmc_competitor, 40.0, 10);
SET @wbmc_competitor = (SELECT competitor_id FROM wbmc_2023_identities WHERE BINARY name = 'Gianluca Caputo' LIMIT 1);
INSERT INTO COMPETITOR (first_name, middle_name, last_name) SELECT 'Gianluca', NULL, 'Caputo' WHERE @wbmc_competitor IS NULL;
SET @wbmc_competitor = COALESCE(@wbmc_competitor, LAST_INSERT_ID());
INSERT INTO ENTRY (championship_year, contest_no, entry_no, competitor_id, published_total_score, final_rank) VALUES (2023, 20, 19, @wbmc_competitor, 40.0, 10);
SET @wbmc_competitor = (SELECT competitor_id FROM wbmc_2023_identities WHERE BINARY name = 'Oded Dawer' LIMIT 1);
INSERT INTO COMPETITOR (first_name, middle_name, last_name) SELECT 'Oded', NULL, 'Dawer' WHERE @wbmc_competitor IS NULL;
SET @wbmc_competitor = COALESCE(@wbmc_competitor, LAST_INSERT_ID());
INSERT INTO ENTRY (championship_year, contest_no, entry_no, competitor_id, published_total_score, final_rank) VALUES (2023, 20, 20, @wbmc_competitor, 39.5, 20);
SET @wbmc_competitor = (SELECT competitor_id FROM wbmc_2023_identities WHERE BINARY name = 'Manuel Fischer' LIMIT 1);
INSERT INTO COMPETITOR (first_name, middle_name, last_name) SELECT 'Manuel', NULL, 'Fischer' WHERE @wbmc_competitor IS NULL;
SET @wbmc_competitor = COALESCE(@wbmc_competitor, LAST_INSERT_ID());
INSERT INTO ENTRY (championship_year, contest_no, entry_no, competitor_id, published_total_score, final_rank) VALUES (2023, 20, 21, @wbmc_competitor, 39.5, 20);
SET @wbmc_competitor = (SELECT competitor_id FROM wbmc_2023_identities WHERE BINARY name = 'André Schmitt' LIMIT 1);
INSERT INTO COMPETITOR (first_name, middle_name, last_name) SELECT 'André', NULL, 'Schmitt' WHERE @wbmc_competitor IS NULL;
SET @wbmc_competitor = COALESCE(@wbmc_competitor, LAST_INSERT_ID());
INSERT INTO ENTRY (championship_year, contest_no, entry_no, competitor_id, published_total_score, final_rank) VALUES (2023, 20, 22, @wbmc_competitor, 39.5, 20);
SET @wbmc_competitor = (SELECT competitor_id FROM wbmc_2023_identities WHERE BINARY name = 'Tim Kramer' LIMIT 1);
INSERT INTO COMPETITOR (first_name, middle_name, last_name) SELECT 'Tim', NULL, 'Kramer' WHERE @wbmc_competitor IS NULL;
SET @wbmc_competitor = COALESCE(@wbmc_competitor, LAST_INSERT_ID());
INSERT INTO ENTRY (championship_year, contest_no, entry_no, competitor_id, published_total_score, final_rank) VALUES (2023, 20, 23, @wbmc_competitor, 39.0, 23);
SET @wbmc_competitor = (SELECT competitor_id FROM wbmc_2023_identities WHERE BINARY name = 'Adam Rowe' LIMIT 1);
INSERT INTO COMPETITOR (first_name, middle_name, last_name) SELECT 'Adam', NULL, 'Rowe' WHERE @wbmc_competitor IS NULL;
SET @wbmc_competitor = COALESCE(@wbmc_competitor, LAST_INSERT_ID());
INSERT INTO ENTRY (championship_year, contest_no, entry_no, competitor_id, published_total_score, final_rank) VALUES (2023, 20, 24, @wbmc_competitor, 39.0, 23);
SET @wbmc_competitor = (SELECT competitor_id FROM wbmc_2023_identities WHERE BINARY name = 'Håkon Årnodt' LIMIT 1);
INSERT INTO COMPETITOR (first_name, middle_name, last_name) SELECT 'Håkon', NULL, 'Årnodt' WHERE @wbmc_competitor IS NULL;
SET @wbmc_competitor = COALESCE(@wbmc_competitor, LAST_INSERT_ID());
INSERT INTO ENTRY (championship_year, contest_no, entry_no, competitor_id, published_total_score, final_rank) VALUES (2023, 20, 25, @wbmc_competitor, 39.0, 23);
SET @wbmc_competitor = (SELECT competitor_id FROM wbmc_2023_identities WHERE BINARY name = 'Bar Pinto' LIMIT 1);
INSERT INTO COMPETITOR (first_name, middle_name, last_name) SELECT 'Bar', NULL, 'Pinto' WHERE @wbmc_competitor IS NULL;
SET @wbmc_competitor = COALESCE(@wbmc_competitor, LAST_INSERT_ID());
INSERT INTO ENTRY (championship_year, contest_no, entry_no, competitor_id, published_total_score, final_rank) VALUES (2023, 20, 26, @wbmc_competitor, 39.0, 23);
SET @wbmc_competitor = (SELECT competitor_id FROM wbmc_2023_identities WHERE BINARY name = 'Avnil Benyaminov' LIMIT 1);
INSERT INTO COMPETITOR (first_name, middle_name, last_name) SELECT 'Avnil', NULL, 'Benyaminov' WHERE @wbmc_competitor IS NULL;
SET @wbmc_competitor = COALESCE(@wbmc_competitor, LAST_INSERT_ID());
INSERT INTO ENTRY (championship_year, contest_no, entry_no, competitor_id, published_total_score, final_rank) VALUES (2023, 20, 27, @wbmc_competitor, 39.0, 23);
SET @wbmc_competitor = (SELECT competitor_id FROM wbmc_2023_identities WHERE BINARY name = 'Martin Unterbichler' LIMIT 1);
INSERT INTO COMPETITOR (first_name, middle_name, last_name) SELECT 'Martin', NULL, 'Unterbichler' WHERE @wbmc_competitor IS NULL;
SET @wbmc_competitor = COALESCE(@wbmc_competitor, LAST_INSERT_ID());
INSERT INTO ENTRY (championship_year, contest_no, entry_no, competitor_id, published_total_score, final_rank) VALUES (2023, 20, 28, @wbmc_competitor, 38.5, 28);
SET @wbmc_competitor = (SELECT competitor_id FROM wbmc_2023_identities WHERE BINARY name = 'Stefan Riediger' LIMIT 1);
INSERT INTO COMPETITOR (first_name, middle_name, last_name) SELECT 'Stefan', NULL, 'Riediger' WHERE @wbmc_competitor IS NULL;
SET @wbmc_competitor = COALESCE(@wbmc_competitor, LAST_INSERT_ID());
INSERT INTO ENTRY (championship_year, contest_no, entry_no, competitor_id, published_total_score, final_rank) VALUES (2023, 20, 29, @wbmc_competitor, 38.0, 29);
SET @wbmc_competitor = (SELECT competitor_id FROM wbmc_2023_identities WHERE BINARY name = 'Andreas Brunner' LIMIT 1);
INSERT INTO COMPETITOR (first_name, middle_name, last_name) SELECT 'Andreas', NULL, 'Brunner' WHERE @wbmc_competitor IS NULL;
SET @wbmc_competitor = COALESCE(@wbmc_competitor, LAST_INSERT_ID());
INSERT INTO ENTRY (championship_year, contest_no, entry_no, competitor_id, published_total_score, final_rank) VALUES (2023, 20, 30, @wbmc_competitor, 37.5, 30);
INSERT INTO CATEGORY (category_name, rule_version, bracket, is_freestyle) SELECT 'Natural Full Beard over 30cm', 'V2-import-2023', 'Full Beard', 0 WHERE NOT EXISTS (SELECT 1 FROM CATEGORY WHERE category_name = 'Natural Full Beard over 30cm' AND rule_version = 'V2-import-2023');
SET @wbmc_category = (SELECT category_id FROM CATEGORY WHERE category_name = 'Natural Full Beard over 30cm' AND rule_version = 'V2-import-2023');
INSERT INTO FULL_BEARD_CATEGORY (category_id) SELECT @wbmc_category WHERE NOT EXISTS (SELECT 1 FROM FULL_BEARD_CATEGORY WHERE category_id = @wbmc_category);
INSERT INTO CONTEST (championship_year, contest_no, category_id, result_status) VALUES (2023, 21, @wbmc_category, 'Published');
SET @wbmc_competitor = (SELECT competitor_id FROM wbmc_2023_identities WHERE BINARY name = 'Fabrizio Bottos' LIMIT 1);
INSERT INTO COMPETITOR (first_name, middle_name, last_name) SELECT 'Fabrizio', NULL, 'Bottos' WHERE @wbmc_competitor IS NULL;
SET @wbmc_competitor = COALESCE(@wbmc_competitor, LAST_INSERT_ID());
INSERT INTO ENTRY (championship_year, contest_no, entry_no, competitor_id, published_total_score, final_rank) VALUES (2023, 21, 1, @wbmc_competitor, 44.5, 1);
SET @wbmc_competitor = (SELECT competitor_id FROM wbmc_2023_identities WHERE BINARY name = 'Loránd Jelényi' LIMIT 1);
INSERT INTO COMPETITOR (first_name, middle_name, last_name) SELECT 'Loránd', NULL, 'Jelényi' WHERE @wbmc_competitor IS NULL;
SET @wbmc_competitor = COALESCE(@wbmc_competitor, LAST_INSERT_ID());
INSERT INTO ENTRY (championship_year, contest_no, entry_no, competitor_id, published_total_score, final_rank) VALUES (2023, 21, 2, @wbmc_competitor, 44.5, 2);
SET @wbmc_competitor = (SELECT competitor_id FROM wbmc_2023_identities WHERE BINARY name = 'Jeremy Wise' LIMIT 1);
INSERT INTO COMPETITOR (first_name, middle_name, last_name) SELECT 'Jeremy', NULL, 'Wise' WHERE @wbmc_competitor IS NULL;
SET @wbmc_competitor = COALESCE(@wbmc_competitor, LAST_INSERT_ID());
INSERT INTO ENTRY (championship_year, contest_no, entry_no, competitor_id, published_total_score, final_rank) VALUES (2023, 21, 3, @wbmc_competitor, 42.5, 3);
SET @wbmc_competitor = (SELECT competitor_id FROM wbmc_2023_identities WHERE BINARY name = 'Sven Volk' LIMIT 1);
INSERT INTO COMPETITOR (first_name, middle_name, last_name) SELECT 'Sven', NULL, 'Volk' WHERE @wbmc_competitor IS NULL;
SET @wbmc_competitor = COALESCE(@wbmc_competitor, LAST_INSERT_ID());
INSERT INTO ENTRY (championship_year, contest_no, entry_no, competitor_id, published_total_score, final_rank) VALUES (2023, 21, 4, @wbmc_competitor, 42.0, 4);
SET @wbmc_competitor = (SELECT competitor_id FROM wbmc_2023_identities WHERE BINARY name = 'Nikolas Godet' LIMIT 1);
INSERT INTO COMPETITOR (first_name, middle_name, last_name) SELECT 'Nikolas', NULL, 'Godet' WHERE @wbmc_competitor IS NULL;
SET @wbmc_competitor = COALESCE(@wbmc_competitor, LAST_INSERT_ID());
INSERT INTO ENTRY (championship_year, contest_no, entry_no, competitor_id, published_total_score, final_rank) VALUES (2023, 21, 5, @wbmc_competitor, 41.5, 5);
SET @wbmc_competitor = (SELECT competitor_id FROM wbmc_2023_identities WHERE BINARY name = 'Stu Eggers' LIMIT 1);
INSERT INTO COMPETITOR (first_name, middle_name, last_name) SELECT 'Stu', NULL, 'Eggers' WHERE @wbmc_competitor IS NULL;
SET @wbmc_competitor = COALESCE(@wbmc_competitor, LAST_INSERT_ID());
INSERT INTO ENTRY (championship_year, contest_no, entry_no, competitor_id, published_total_score, final_rank) VALUES (2023, 21, 6, @wbmc_competitor, 41.5, 5);
SET @wbmc_competitor = (SELECT competitor_id FROM wbmc_2023_identities WHERE BINARY name = 'Mitchell Strycker' LIMIT 1);
INSERT INTO COMPETITOR (first_name, middle_name, last_name) SELECT 'Mitchell', NULL, 'Strycker' WHERE @wbmc_competitor IS NULL;
SET @wbmc_competitor = COALESCE(@wbmc_competitor, LAST_INSERT_ID());
INSERT INTO ENTRY (championship_year, contest_no, entry_no, competitor_id, published_total_score, final_rank) VALUES (2023, 21, 7, @wbmc_competitor, 41.0, 7);
SET @wbmc_competitor = (SELECT competitor_id FROM wbmc_2023_identities WHERE BINARY name = 'John Faherty' LIMIT 1);
INSERT INTO COMPETITOR (first_name, middle_name, last_name) SELECT 'John', NULL, 'Faherty' WHERE @wbmc_competitor IS NULL;
SET @wbmc_competitor = COALESCE(@wbmc_competitor, LAST_INSERT_ID());
INSERT INTO ENTRY (championship_year, contest_no, entry_no, competitor_id, published_total_score, final_rank) VALUES (2023, 21, 8, @wbmc_competitor, 41.0, 7);
SET @wbmc_competitor = (SELECT competitor_id FROM wbmc_2023_identities WHERE BINARY name = 'Brian Elwell' LIMIT 1);
INSERT INTO COMPETITOR (first_name, middle_name, last_name) SELECT 'Brian', NULL, 'Elwell' WHERE @wbmc_competitor IS NULL;
SET @wbmc_competitor = COALESCE(@wbmc_competitor, LAST_INSERT_ID());
INSERT INTO ENTRY (championship_year, contest_no, entry_no, competitor_id, published_total_score, final_rank) VALUES (2023, 21, 9, @wbmc_competitor, 40.5, 9);
SET @wbmc_competitor = (SELECT competitor_id FROM wbmc_2023_identities WHERE BINARY name = 'Stefan Christ' LIMIT 1);
INSERT INTO COMPETITOR (first_name, middle_name, last_name) SELECT 'Stefan', NULL, 'Christ' WHERE @wbmc_competitor IS NULL;
SET @wbmc_competitor = COALESCE(@wbmc_competitor, LAST_INSERT_ID());
INSERT INTO ENTRY (championship_year, contest_no, entry_no, competitor_id, published_total_score, final_rank) VALUES (2023, 21, 10, @wbmc_competitor, 40.0, 10);
SET @wbmc_competitor = (SELECT competitor_id FROM wbmc_2023_identities WHERE BINARY name = 'Aleksandr Oreshkov' LIMIT 1);
INSERT INTO COMPETITOR (first_name, middle_name, last_name) SELECT 'Aleksandr', NULL, 'Oreshkov' WHERE @wbmc_competitor IS NULL;
SET @wbmc_competitor = COALESCE(@wbmc_competitor, LAST_INSERT_ID());
INSERT INTO ENTRY (championship_year, contest_no, entry_no, competitor_id, published_total_score, final_rank) VALUES (2023, 21, 11, @wbmc_competitor, 40.0, 10);
SET @wbmc_competitor = (SELECT competitor_id FROM wbmc_2023_identities WHERE BINARY name = 'Peter Moisan' LIMIT 1);
INSERT INTO COMPETITOR (first_name, middle_name, last_name) SELECT 'Peter', NULL, 'Moisan' WHERE @wbmc_competitor IS NULL;
SET @wbmc_competitor = COALESCE(@wbmc_competitor, LAST_INSERT_ID());
INSERT INTO ENTRY (championship_year, contest_no, entry_no, competitor_id, published_total_score, final_rank) VALUES (2023, 21, 12, @wbmc_competitor, 40.0, 10);
SET @wbmc_competitor = (SELECT competitor_id FROM wbmc_2023_identities WHERE BINARY name = 'Luis Rittger' LIMIT 1);
INSERT INTO COMPETITOR (first_name, middle_name, last_name) SELECT 'Luis', NULL, 'Rittger' WHERE @wbmc_competitor IS NULL;
SET @wbmc_competitor = COALESCE(@wbmc_competitor, LAST_INSERT_ID());
INSERT INTO ENTRY (championship_year, contest_no, entry_no, competitor_id, published_total_score, final_rank) VALUES (2023, 21, 13, @wbmc_competitor, 40.0, 10);
SET @wbmc_competitor = (SELECT competitor_id FROM wbmc_2023_identities WHERE BINARY name = 'Steve Fausneaucht' LIMIT 1);
INSERT INTO COMPETITOR (first_name, middle_name, last_name) SELECT 'Steve', NULL, 'Fausneaucht' WHERE @wbmc_competitor IS NULL;
SET @wbmc_competitor = COALESCE(@wbmc_competitor, LAST_INSERT_ID());
INSERT INTO ENTRY (championship_year, contest_no, entry_no, competitor_id, published_total_score, final_rank) VALUES (2023, 21, 14, @wbmc_competitor, 40.0, 10);
SET @wbmc_competitor = (SELECT competitor_id FROM wbmc_2023_identities WHERE BINARY name = 'Joseph Mills' LIMIT 1);
INSERT INTO COMPETITOR (first_name, middle_name, last_name) SELECT 'Joseph', NULL, 'Mills' WHERE @wbmc_competitor IS NULL;
SET @wbmc_competitor = COALESCE(@wbmc_competitor, LAST_INSERT_ID());
INSERT INTO ENTRY (championship_year, contest_no, entry_no, competitor_id, published_total_score, final_rank) VALUES (2023, 21, 15, @wbmc_competitor, 40.0, 10);
SET @wbmc_competitor = (SELECT competitor_id FROM wbmc_2023_identities WHERE BINARY name = 'Harald Feyersinger' LIMIT 1);
INSERT INTO COMPETITOR (first_name, middle_name, last_name) SELECT 'Harald', NULL, 'Feyersinger' WHERE @wbmc_competitor IS NULL;
SET @wbmc_competitor = COALESCE(@wbmc_competitor, LAST_INSERT_ID());
INSERT INTO ENTRY (championship_year, contest_no, entry_no, competitor_id, published_total_score, final_rank) VALUES (2023, 21, 16, @wbmc_competitor, 40.0, 10);
SET @wbmc_competitor = (SELECT competitor_id FROM wbmc_2023_identities WHERE BINARY name = 'Dennis Ape' LIMIT 1);
INSERT INTO COMPETITOR (first_name, middle_name, last_name) SELECT 'Dennis', NULL, 'Ape' WHERE @wbmc_competitor IS NULL;
SET @wbmc_competitor = COALESCE(@wbmc_competitor, LAST_INSERT_ID());
INSERT INTO ENTRY (championship_year, contest_no, entry_no, competitor_id, published_total_score, final_rank) VALUES (2023, 21, 17, @wbmc_competitor, 40.0, 10);
SET @wbmc_competitor = (SELECT competitor_id FROM wbmc_2023_identities WHERE BINARY name = 'David Cohen' LIMIT 1);
INSERT INTO COMPETITOR (first_name, middle_name, last_name) SELECT 'David', NULL, 'Cohen' WHERE @wbmc_competitor IS NULL;
SET @wbmc_competitor = COALESCE(@wbmc_competitor, LAST_INSERT_ID());
INSERT INTO ENTRY (championship_year, contest_no, entry_no, competitor_id, published_total_score, final_rank) VALUES (2023, 21, 18, @wbmc_competitor, 39.5, 18);
SET @wbmc_competitor = (SELECT competitor_id FROM wbmc_2023_identities WHERE BINARY name = 'Johannes Ullmann' LIMIT 1);
INSERT INTO COMPETITOR (first_name, middle_name, last_name) SELECT 'Johannes', NULL, 'Ullmann' WHERE @wbmc_competitor IS NULL;
SET @wbmc_competitor = COALESCE(@wbmc_competitor, LAST_INSERT_ID());
INSERT INTO ENTRY (championship_year, contest_no, entry_no, competitor_id, published_total_score, final_rank) VALUES (2023, 21, 19, @wbmc_competitor, 39.5, 18);
SET @wbmc_competitor = (SELECT competitor_id FROM wbmc_2023_identities WHERE BINARY name = 'Tomer Gol' LIMIT 1);
INSERT INTO COMPETITOR (first_name, middle_name, last_name) SELECT 'Tomer', NULL, 'Gol' WHERE @wbmc_competitor IS NULL;
SET @wbmc_competitor = COALESCE(@wbmc_competitor, LAST_INSERT_ID());
INSERT INTO ENTRY (championship_year, contest_no, entry_no, competitor_id, published_total_score, final_rank) VALUES (2023, 21, 20, @wbmc_competitor, 39.5, 18);
SET @wbmc_competitor = (SELECT competitor_id FROM wbmc_2023_identities WHERE BINARY name = 'Michael Hauber' LIMIT 1);
INSERT INTO COMPETITOR (first_name, middle_name, last_name) SELECT 'Michael', NULL, 'Hauber' WHERE @wbmc_competitor IS NULL;
SET @wbmc_competitor = COALESCE(@wbmc_competitor, LAST_INSERT_ID());
INSERT INTO ENTRY (championship_year, contest_no, entry_no, competitor_id, published_total_score, final_rank) VALUES (2023, 21, 21, @wbmc_competitor, 39.0, 21);
SET @wbmc_competitor = (SELECT competitor_id FROM wbmc_2023_identities WHERE BINARY name = 'Adam Frearson' LIMIT 1);
INSERT INTO COMPETITOR (first_name, middle_name, last_name) SELECT 'Adam', NULL, 'Frearson' WHERE @wbmc_competitor IS NULL;
SET @wbmc_competitor = COALESCE(@wbmc_competitor, LAST_INSERT_ID());
INSERT INTO ENTRY (championship_year, contest_no, entry_no, competitor_id, published_total_score, final_rank) VALUES (2023, 21, 22, @wbmc_competitor, 38.5, 22);
SET @wbmc_competitor = (SELECT competitor_id FROM wbmc_2023_identities WHERE BINARY name = 'Erich Choat' LIMIT 1);
INSERT INTO COMPETITOR (first_name, middle_name, last_name) SELECT 'Erich', NULL, 'Choat' WHERE @wbmc_competitor IS NULL;
SET @wbmc_competitor = COALESCE(@wbmc_competitor, LAST_INSERT_ID());
INSERT INTO ENTRY (championship_year, contest_no, entry_no, competitor_id, published_total_score, final_rank) VALUES (2023, 21, 23, @wbmc_competitor, 37.5, 23);
INSERT INTO CATEGORY (category_name, rule_version, bracket, is_freestyle) SELECT 'Trendbeard', 'V2-import-2023', 'Full Beard', 0 WHERE NOT EXISTS (SELECT 1 FROM CATEGORY WHERE category_name = 'Trendbeard' AND rule_version = 'V2-import-2023');
SET @wbmc_category = (SELECT category_id FROM CATEGORY WHERE category_name = 'Trendbeard' AND rule_version = 'V2-import-2023');
INSERT INTO FULL_BEARD_CATEGORY (category_id) SELECT @wbmc_category WHERE NOT EXISTS (SELECT 1 FROM FULL_BEARD_CATEGORY WHERE category_id = @wbmc_category);
INSERT INTO CONTEST (championship_year, contest_no, category_id, result_status) VALUES (2023, 22, @wbmc_category, 'Published');
SET @wbmc_competitor = (SELECT competitor_id FROM wbmc_2023_identities WHERE BINARY name = 'Richard Evans-Lacey' LIMIT 1);
INSERT INTO COMPETITOR (first_name, middle_name, last_name) SELECT 'Richard', NULL, 'Evans-Lacey' WHERE @wbmc_competitor IS NULL;
SET @wbmc_competitor = COALESCE(@wbmc_competitor, LAST_INSERT_ID());
INSERT INTO ENTRY (championship_year, contest_no, entry_no, competitor_id, published_total_score, final_rank) VALUES (2023, 22, 1, @wbmc_competitor, 50.0, 1);
SET @wbmc_competitor = (SELECT competitor_id FROM wbmc_2023_identities WHERE BINARY name = 'Thomas Jacob' LIMIT 1);
INSERT INTO COMPETITOR (first_name, middle_name, last_name) SELECT 'Thomas', NULL, 'Jacob' WHERE @wbmc_competitor IS NULL;
SET @wbmc_competitor = COALESCE(@wbmc_competitor, LAST_INSERT_ID());
INSERT INTO ENTRY (championship_year, contest_no, entry_no, competitor_id, published_total_score, final_rank) VALUES (2023, 22, 2, @wbmc_competitor, 47.5, 2);
INSERT INTO CATEGORY (category_name, rule_version, bracket, is_freestyle) SELECT 'Freestyle Full Beard', 'V2-import-2023', 'Full Beard', 1 WHERE NOT EXISTS (SELECT 1 FROM CATEGORY WHERE category_name = 'Freestyle Full Beard' AND rule_version = 'V2-import-2023');
SET @wbmc_category = (SELECT category_id FROM CATEGORY WHERE category_name = 'Freestyle Full Beard' AND rule_version = 'V2-import-2023');
INSERT INTO FULL_BEARD_CATEGORY (category_id) SELECT @wbmc_category WHERE NOT EXISTS (SELECT 1 FROM FULL_BEARD_CATEGORY WHERE category_id = @wbmc_category);
INSERT INTO CONTEST (championship_year, contest_no, category_id, result_status) VALUES (2023, 23, @wbmc_category, 'Published');
SET @wbmc_competitor = (SELECT competitor_id FROM wbmc_2023_identities WHERE BINARY name = 'Daniel Lawlor' LIMIT 1);
INSERT INTO COMPETITOR (first_name, middle_name, last_name) SELECT 'Daniel', NULL, 'Lawlor' WHERE @wbmc_competitor IS NULL;
SET @wbmc_competitor = COALESCE(@wbmc_competitor, LAST_INSERT_ID());
INSERT INTO ENTRY (championship_year, contest_no, entry_no, competitor_id, published_total_score, final_rank) VALUES (2023, 23, 1, @wbmc_competitor, 47.5, 1);
SET @wbmc_competitor = (SELECT competitor_id FROM wbmc_2023_identities WHERE BINARY name = 'Jason Schafer' LIMIT 1);
INSERT INTO COMPETITOR (first_name, middle_name, last_name) SELECT 'Jason', NULL, 'Schafer' WHERE @wbmc_competitor IS NULL;
SET @wbmc_competitor = COALESCE(@wbmc_competitor, LAST_INSERT_ID());
INSERT INTO ENTRY (championship_year, contest_no, entry_no, competitor_id, published_total_score, final_rank) VALUES (2023, 23, 2, @wbmc_competitor, 45.0, 2);
SET @wbmc_competitor = (SELECT competitor_id FROM wbmc_2023_identities WHERE BINARY name = 'Winfried Jezierny' LIMIT 1);
INSERT INTO COMPETITOR (first_name, middle_name, last_name) SELECT 'Winfried', NULL, 'Jezierny' WHERE @wbmc_competitor IS NULL;
SET @wbmc_competitor = COALESCE(@wbmc_competitor, LAST_INSERT_ID());
INSERT INTO ENTRY (championship_year, contest_no, entry_no, competitor_id, published_total_score, final_rank) VALUES (2023, 23, 3, @wbmc_competitor, 42.5, 3);
SET @wbmc_competitor = (SELECT competitor_id FROM wbmc_2023_identities WHERE BINARY name = 'Paul Kennedy' LIMIT 1);
INSERT INTO COMPETITOR (first_name, middle_name, last_name) SELECT 'Paul', NULL, 'Kennedy' WHERE @wbmc_competitor IS NULL;
SET @wbmc_competitor = COALESCE(@wbmc_competitor, LAST_INSERT_ID());
INSERT INTO ENTRY (championship_year, contest_no, entry_no, competitor_id, published_total_score, final_rank) VALUES (2023, 23, 4, @wbmc_competitor, 42.0, 4);
SET @wbmc_competitor = (SELECT competitor_id FROM wbmc_2023_identities WHERE BINARY name = 'Hans-Peter Weis' LIMIT 1);
INSERT INTO COMPETITOR (first_name, middle_name, last_name) SELECT 'Hans-Peter', NULL, 'Weis' WHERE @wbmc_competitor IS NULL;
SET @wbmc_competitor = COALESCE(@wbmc_competitor, LAST_INSERT_ID());
INSERT INTO ENTRY (championship_year, contest_no, entry_no, competitor_id, published_total_score, final_rank) VALUES (2023, 23, 5, @wbmc_competitor, 42.0, 4);
SET @wbmc_competitor = (SELECT competitor_id FROM wbmc_2023_identities WHERE BINARY name = 'Gerd Bauer' LIMIT 1);
INSERT INTO COMPETITOR (first_name, middle_name, last_name) SELECT 'Gerd', NULL, 'Bauer' WHERE @wbmc_competitor IS NULL;
SET @wbmc_competitor = COALESCE(@wbmc_competitor, LAST_INSERT_ID());
INSERT INTO ENTRY (championship_year, contest_no, entry_no, competitor_id, published_total_score, final_rank) VALUES (2023, 23, 6, @wbmc_competitor, 41.5, 6);
SET @wbmc_competitor = (SELECT competitor_id FROM wbmc_2023_identities WHERE BINARY name = 'Leonardo Pezzolla' LIMIT 1);
INSERT INTO COMPETITOR (first_name, middle_name, last_name) SELECT 'Leonardo', NULL, 'Pezzolla' WHERE @wbmc_competitor IS NULL;
SET @wbmc_competitor = COALESCE(@wbmc_competitor, LAST_INSERT_ID());
INSERT INTO ENTRY (championship_year, contest_no, entry_no, competitor_id, published_total_score, final_rank) VALUES (2023, 23, 7, @wbmc_competitor, 41.0, 7);
SET @wbmc_competitor = (SELECT competitor_id FROM wbmc_2023_identities WHERE BINARY name = 'Günther Fuchs' LIMIT 1);
INSERT INTO COMPETITOR (first_name, middle_name, last_name) SELECT 'Günther', NULL, 'Fuchs' WHERE @wbmc_competitor IS NULL;
SET @wbmc_competitor = COALESCE(@wbmc_competitor, LAST_INSERT_ID());
INSERT INTO ENTRY (championship_year, contest_no, entry_no, competitor_id, published_total_score, final_rank) VALUES (2023, 23, 8, @wbmc_competitor, 40.0, 8);
SET @wbmc_competitor = (SELECT competitor_id FROM wbmc_2023_identities WHERE BINARY name = 'Franz Gebhardt' LIMIT 1);
INSERT INTO COMPETITOR (first_name, middle_name, last_name) SELECT 'Franz', NULL, 'Gebhardt' WHERE @wbmc_competitor IS NULL;
SET @wbmc_competitor = COALESCE(@wbmc_competitor, LAST_INSERT_ID());
INSERT INTO ENTRY (championship_year, contest_no, entry_no, competitor_id, published_total_score, final_rank) VALUES (2023, 23, 9, @wbmc_competitor, 40.0, 8);
SET @wbmc_competitor = (SELECT competitor_id FROM wbmc_2023_identities WHERE BINARY name = 'Klaus Leible' LIMIT 1);
INSERT INTO COMPETITOR (first_name, middle_name, last_name) SELECT 'Klaus', NULL, 'Leible' WHERE @wbmc_competitor IS NULL;
SET @wbmc_competitor = COALESCE(@wbmc_competitor, LAST_INSERT_ID());
INSERT INTO ENTRY (championship_year, contest_no, entry_no, competitor_id, published_total_score, final_rank) VALUES (2023, 23, 10, @wbmc_competitor, 40.0, 8);
SET @wbmc_competitor = (SELECT competitor_id FROM wbmc_2023_identities WHERE BINARY name = 'Johannes Kosak' LIMIT 1);
INSERT INTO COMPETITOR (first_name, middle_name, last_name) SELECT 'Johannes', NULL, 'Kosak' WHERE @wbmc_competitor IS NULL;
SET @wbmc_competitor = COALESCE(@wbmc_competitor, LAST_INSERT_ID());
INSERT INTO ENTRY (championship_year, contest_no, entry_no, competitor_id, published_total_score, final_rank) VALUES (2023, 23, 11, @wbmc_competitor, 40.0, 8);
SET @wbmc_competitor = (SELECT competitor_id FROM wbmc_2023_identities WHERE BINARY name = 'Billy Nomates' LIMIT 1);
INSERT INTO COMPETITOR (first_name, middle_name, last_name) SELECT 'Billy', NULL, 'Nomates' WHERE @wbmc_competitor IS NULL;
SET @wbmc_competitor = COALESCE(@wbmc_competitor, LAST_INSERT_ID());
INSERT INTO ENTRY (championship_year, contest_no, entry_no, competitor_id, published_total_score, final_rank) VALUES (2023, 23, 12, @wbmc_competitor, 40.0, 8);
SET @wbmc_competitor = (SELECT competitor_id FROM wbmc_2023_identities WHERE BINARY name = 'Barrial Wilfrid' LIMIT 1);
INSERT INTO COMPETITOR (first_name, middle_name, last_name) SELECT 'Barrial', NULL, 'Wilfrid' WHERE @wbmc_competitor IS NULL;
SET @wbmc_competitor = COALESCE(@wbmc_competitor, LAST_INSERT_ID());
INSERT INTO ENTRY (championship_year, contest_no, entry_no, competitor_id, published_total_score, final_rank) VALUES (2023, 23, 13, @wbmc_competitor, 40.0, 8);
SET @wbmc_competitor = (SELECT competitor_id FROM wbmc_2023_identities WHERE BINARY name = 'Keith Haubrich' LIMIT 1);
INSERT INTO COMPETITOR (first_name, middle_name, last_name) SELECT 'Keith', NULL, 'Haubrich' WHERE @wbmc_competitor IS NULL;
SET @wbmc_competitor = COALESCE(@wbmc_competitor, LAST_INSERT_ID());
INSERT INTO ENTRY (championship_year, contest_no, entry_no, competitor_id, published_total_score, final_rank) VALUES (2023, 23, 14, @wbmc_competitor, 39.5, 14);
INSERT INTO CATEGORY (category_name, rule_version, bracket, is_freestyle) SELECT 'Realistic Moustache', 'V2-import-2023', 'Craft', 0 WHERE NOT EXISTS (SELECT 1 FROM CATEGORY WHERE category_name = 'Realistic Moustache' AND rule_version = 'V2-import-2023');
SET @wbmc_category = (SELECT category_id FROM CATEGORY WHERE category_name = 'Realistic Moustache' AND rule_version = 'V2-import-2023');
INSERT INTO CRAFT_CATEGORY (category_id) SELECT @wbmc_category WHERE NOT EXISTS (SELECT 1 FROM CRAFT_CATEGORY WHERE category_id = @wbmc_category);
INSERT INTO CONTEST (championship_year, contest_no, category_id, result_status) VALUES (2023, 24, @wbmc_category, 'Published');
SET @wbmc_competitor = (SELECT competitor_id FROM wbmc_2023_identities WHERE BINARY name = 'Anita Hildebrandt' LIMIT 1);
INSERT INTO COMPETITOR (first_name, middle_name, last_name) SELECT 'Anita', NULL, 'Hildebrandt' WHERE @wbmc_competitor IS NULL;
SET @wbmc_competitor = COALESCE(@wbmc_competitor, LAST_INSERT_ID());
INSERT INTO ENTRY (championship_year, contest_no, entry_no, competitor_id, published_total_score, final_rank) VALUES (2023, 24, 1, @wbmc_competitor, 49.5, 1);
SET @wbmc_competitor = (SELECT competitor_id FROM wbmc_2023_identities WHERE BINARY name = 'Müge Mete' LIMIT 1);
INSERT INTO COMPETITOR (first_name, middle_name, last_name) SELECT 'Müge', NULL, 'Mete' WHERE @wbmc_competitor IS NULL;
SET @wbmc_competitor = COALESCE(@wbmc_competitor, LAST_INSERT_ID());
INSERT INTO ENTRY (championship_year, contest_no, entry_no, competitor_id, published_total_score, final_rank) VALUES (2023, 24, 2, @wbmc_competitor, 45.5, 2);
SET @wbmc_competitor = (SELECT competitor_id FROM wbmc_2023_identities WHERE BINARY name = 'Nicky Unterbichler' LIMIT 1);
INSERT INTO COMPETITOR (first_name, middle_name, last_name) SELECT 'Nicky', NULL, 'Unterbichler' WHERE @wbmc_competitor IS NULL;
SET @wbmc_competitor = COALESCE(@wbmc_competitor, LAST_INSERT_ID());
INSERT INTO ENTRY (championship_year, contest_no, entry_no, competitor_id, published_total_score, final_rank) VALUES (2023, 24, 3, @wbmc_competitor, 43.5, 3);
SET @wbmc_competitor = (SELECT competitor_id FROM wbmc_2023_identities WHERE BINARY name = 'Laura Eggers' LIMIT 1);
INSERT INTO COMPETITOR (first_name, middle_name, last_name) SELECT 'Laura', NULL, 'Eggers' WHERE @wbmc_competitor IS NULL;
SET @wbmc_competitor = COALESCE(@wbmc_competitor, LAST_INSERT_ID());
INSERT INTO ENTRY (championship_year, contest_no, entry_no, competitor_id, published_total_score, final_rank) VALUES (2023, 24, 4, @wbmc_competitor, 41.0, 4);
SET @wbmc_competitor = (SELECT competitor_id FROM wbmc_2023_identities WHERE BINARY name = 'Beatrix Sengpiel' LIMIT 1);
INSERT INTO COMPETITOR (first_name, middle_name, last_name) SELECT 'Beatrix', NULL, 'Sengpiel' WHERE @wbmc_competitor IS NULL;
SET @wbmc_competitor = COALESCE(@wbmc_competitor, LAST_INSERT_ID());
INSERT INTO ENTRY (championship_year, contest_no, entry_no, competitor_id, published_total_score, final_rank) VALUES (2023, 24, 5, @wbmc_competitor, 40.5, 5);
INSERT INTO CATEGORY (category_name, rule_version, bracket, is_freestyle) SELECT 'Realistic Partial Beard', 'V2-import-2023', 'Craft', 0 WHERE NOT EXISTS (SELECT 1 FROM CATEGORY WHERE category_name = 'Realistic Partial Beard' AND rule_version = 'V2-import-2023');
SET @wbmc_category = (SELECT category_id FROM CATEGORY WHERE category_name = 'Realistic Partial Beard' AND rule_version = 'V2-import-2023');
INSERT INTO CRAFT_CATEGORY (category_id) SELECT @wbmc_category WHERE NOT EXISTS (SELECT 1 FROM CRAFT_CATEGORY WHERE category_id = @wbmc_category);
INSERT INTO CONTEST (championship_year, contest_no, category_id, result_status) VALUES (2023, 25, @wbmc_category, 'Published');
SET @wbmc_competitor = (SELECT competitor_id FROM wbmc_2023_identities WHERE BINARY name = 'Lisa Fausneaucht' LIMIT 1);
INSERT INTO COMPETITOR (first_name, middle_name, last_name) SELECT 'Lisa', NULL, 'Fausneaucht' WHERE @wbmc_competitor IS NULL;
SET @wbmc_competitor = COALESCE(@wbmc_competitor, LAST_INSERT_ID());
INSERT INTO ENTRY (championship_year, contest_no, entry_no, competitor_id, published_total_score, final_rank) VALUES (2023, 25, 1, @wbmc_competitor, 49.0, 1);
SET @wbmc_competitor = (SELECT competitor_id FROM wbmc_2023_identities WHERE BINARY name = 'Apollonia Nelson' LIMIT 1);
INSERT INTO COMPETITOR (first_name, middle_name, last_name) SELECT 'Apollonia', NULL, 'Nelson' WHERE @wbmc_competitor IS NULL;
SET @wbmc_competitor = COALESCE(@wbmc_competitor, LAST_INSERT_ID());
INSERT INTO ENTRY (championship_year, contest_no, entry_no, competitor_id, published_total_score, final_rank) VALUES (2023, 25, 2, @wbmc_competitor, 46.5, 2);
SET @wbmc_competitor = (SELECT competitor_id FROM wbmc_2023_identities WHERE BINARY name = 'Melissa Fette' LIMIT 1);
INSERT INTO COMPETITOR (first_name, middle_name, last_name) SELECT 'Melissa', NULL, 'Fette' WHERE @wbmc_competitor IS NULL;
SET @wbmc_competitor = COALESCE(@wbmc_competitor, LAST_INSERT_ID());
INSERT INTO ENTRY (championship_year, contest_no, entry_no, competitor_id, published_total_score, final_rank) VALUES (2023, 25, 3, @wbmc_competitor, 45.0, 3);
SET @wbmc_competitor = (SELECT competitor_id FROM wbmc_2023_identities WHERE BINARY name = 'Tisha Clinkenbeard' LIMIT 1);
INSERT INTO COMPETITOR (first_name, middle_name, last_name) SELECT 'Tisha', NULL, 'Clinkenbeard' WHERE @wbmc_competitor IS NULL;
SET @wbmc_competitor = COALESCE(@wbmc_competitor, LAST_INSERT_ID());
INSERT INTO ENTRY (championship_year, contest_no, entry_no, competitor_id, published_total_score, final_rank) VALUES (2023, 25, 4, @wbmc_competitor, 43.0, 4);
INSERT INTO CATEGORY (category_name, rule_version, bracket, is_freestyle) SELECT 'Realistic Full Beard', 'V2-import-2023', 'Craft', 0 WHERE NOT EXISTS (SELECT 1 FROM CATEGORY WHERE category_name = 'Realistic Full Beard' AND rule_version = 'V2-import-2023');
SET @wbmc_category = (SELECT category_id FROM CATEGORY WHERE category_name = 'Realistic Full Beard' AND rule_version = 'V2-import-2023');
INSERT INTO CRAFT_CATEGORY (category_id) SELECT @wbmc_category WHERE NOT EXISTS (SELECT 1 FROM CRAFT_CATEGORY WHERE category_id = @wbmc_category);
INSERT INTO CONTEST (championship_year, contest_no, category_id, result_status) VALUES (2023, 26, @wbmc_category, 'Published');
SET @wbmc_competitor = (SELECT competitor_id FROM wbmc_2023_identities WHERE BINARY name = 'Christine Hackman' LIMIT 1);
INSERT INTO COMPETITOR (first_name, middle_name, last_name) SELECT 'Christine', NULL, 'Hackman' WHERE @wbmc_competitor IS NULL;
SET @wbmc_competitor = COALESCE(@wbmc_competitor, LAST_INSERT_ID());
INSERT INTO ENTRY (championship_year, contest_no, entry_no, competitor_id, published_total_score, final_rank) VALUES (2023, 26, 1, @wbmc_competitor, 49.5, 1);
SET @wbmc_competitor = (SELECT competitor_id FROM wbmc_2023_identities WHERE BINARY name = 'Stacy Patmore' LIMIT 1);
INSERT INTO COMPETITOR (first_name, middle_name, last_name) SELECT 'Stacy', NULL, 'Patmore' WHERE @wbmc_competitor IS NULL;
SET @wbmc_competitor = COALESCE(@wbmc_competitor, LAST_INSERT_ID());
INSERT INTO ENTRY (championship_year, contest_no, entry_no, competitor_id, published_total_score, final_rank) VALUES (2023, 26, 2, @wbmc_competitor, 48.0, 2);
INSERT INTO CATEGORY (category_name, rule_version, bracket, is_freestyle) SELECT 'Realistic Freestylebeard', 'V2-import-2023', 'Craft', 1 WHERE NOT EXISTS (SELECT 1 FROM CATEGORY WHERE category_name = 'Realistic Freestylebeard' AND rule_version = 'V2-import-2023');
SET @wbmc_category = (SELECT category_id FROM CATEGORY WHERE category_name = 'Realistic Freestylebeard' AND rule_version = 'V2-import-2023');
INSERT INTO CRAFT_CATEGORY (category_id) SELECT @wbmc_category WHERE NOT EXISTS (SELECT 1 FROM CRAFT_CATEGORY WHERE category_id = @wbmc_category);
INSERT INTO CONTEST (championship_year, contest_no, category_id, result_status) VALUES (2023, 27, @wbmc_category, 'Published');
SET @wbmc_competitor = (SELECT competitor_id FROM wbmc_2023_identities WHERE BINARY name = 'Natali Johnston' LIMIT 1);
INSERT INTO COMPETITOR (first_name, middle_name, last_name) SELECT 'Natali', NULL, 'Johnston' WHERE @wbmc_competitor IS NULL;
SET @wbmc_competitor = COALESCE(@wbmc_competitor, LAST_INSERT_ID());
INSERT INTO ENTRY (championship_year, contest_no, entry_no, competitor_id, published_total_score, final_rank) VALUES (2023, 27, 1, @wbmc_competitor, 49.5, 1);
INSERT INTO BEST_IN_SHOW (championship_year, contest_no, entry_no, award_division) VALUES (2023, 27, 1, 'Whiskerinas');
SET @wbmc_competitor = (SELECT competitor_id FROM wbmc_2023_identities WHERE BINARY name = 'Lammel Szeitz' LIMIT 1);
INSERT INTO COMPETITOR (first_name, middle_name, last_name) SELECT 'Lammel', NULL, 'Szeitz' WHERE @wbmc_competitor IS NULL;
SET @wbmc_competitor = COALESCE(@wbmc_competitor, LAST_INSERT_ID());
INSERT INTO ENTRY (championship_year, contest_no, entry_no, competitor_id, published_total_score, final_rank) VALUES (2023, 27, 2, @wbmc_competitor, 47.0, 2);
SET @wbmc_competitor = (SELECT competitor_id FROM wbmc_2023_identities WHERE BINARY name = 'Cherie Ross' LIMIT 1);
INSERT INTO COMPETITOR (first_name, middle_name, last_name) SELECT 'Cherie', NULL, 'Ross' WHERE @wbmc_competitor IS NULL;
SET @wbmc_competitor = COALESCE(@wbmc_competitor, LAST_INSERT_ID());
INSERT INTO ENTRY (championship_year, contest_no, entry_no, competitor_id, published_total_score, final_rank) VALUES (2023, 27, 3, @wbmc_competitor, 45.5, 3);
DROP TEMPORARY TABLE wbmc_2023_identities;
COMMIT;

-- Cleanup after the 2023 results load
-- 1614 is the renumbered ID of the placeholder 2023 winner row; the scored results above replace it.
DELETE FROM COMPETITOR WHERE competitor_id = 1614;
-- The 2023 block stored empty strings; unknown last names are NULL everywhere else.
UPDATE COMPETITOR SET last_name = NULL WHERE last_name = '';