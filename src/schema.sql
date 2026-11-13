-- =====================================================================
-- WBMC Phase 4 schema (MySQL 8.4)
-- Run:  mysql -u <user> -p < schema.sql
-- Source: Team 9 Phase 3 relational model (21 relations, 24 foreign keys),
--         converted from Team 18's EER (based on Team 22's Phase 1).
-- Order: parents before children. Triggers are at the end (Section 3).
-- =====================================================================

DROP DATABASE IF EXISTS wbmc_db;
CREATE DATABASE wbmc_db CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE wbmc_db;

-- =====================================================================
-- 1. STRONG ENTITIES AND THEIR MULTIVALUED ATTRIBUTE TABLES
-- =====================================================================

CREATE TABLE CLUB (
    club_id           INT AUTO_INCREMENT PRIMARY KEY,
    club_name         VARCHAR(150) NOT NULL,
    club_type         VARCHAR(60)  NULL,
    country           VARCHAR(80)  NULL,
    founded_year      SMALLINT     NULL,
    membership_status VARCHAR(40)  NULL,
    contact_email     VARCHAR(255) NULL,
    CONSTRAINT uq_club_name UNIQUE (club_name),
    CONSTRAINT chk_club_founded CHECK (founded_year IS NULL OR founded_year BETWEEN 1800 AND 2100)
);

CREATE TABLE CLUB_SOCIAL_LINK (
    club_id     INT          NOT NULL,
    social_link VARCHAR(255) NOT NULL,
    PRIMARY KEY (club_id, social_link),
    CONSTRAINT fk_clubsocial_club FOREIGN KEY (club_id) REFERENCES CLUB (club_id)
        ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE VENUE (
    venue_id    INT AUTO_INCREMENT PRIMARY KEY,
    venue_name  VARCHAR(150) NULL,
    street      VARCHAR(200) NULL,
    city        VARCHAR(100) NULL,
    region      VARCHAR(100) NULL,
    postal_code VARCHAR(20)  NULL,
    country     VARCHAR(80)  NULL,
    capacity    INT          NULL,
    CONSTRAINT chk_venue_capacity CHECK (capacity IS NULL OR capacity > 0)
);

CREATE TABLE CHAMPIONSHIP (
    championship_year   SMALLINT PRIMARY KEY,
    status              ENUM('Held', 'Cancelled', 'Scheduled') NOT NULL,
    start_date          DATE         NULL,
    end_date            DATE         NULL,
    cancellation_reason VARCHAR(255) NULL,
    website_url         VARCHAR(255) NULL,
    host_club_id        INT          NULL,
    venue_id            INT          NULL,
    -- Phase 1 domain: 1990, or an odd year >= 1995
    CONSTRAINT chk_champ_year CHECK (championship_year = 1990
                                     OR (championship_year >= 1995 AND championship_year % 2 = 1)),
    CONSTRAINT chk_champ_dates CHECK (start_date IS NULL OR end_date IS NULL OR start_date <= end_date),
    CONSTRAINT chk_champ_cancel CHECK (status <> 'Cancelled' OR cancellation_reason IS NOT NULL),
    CONSTRAINT fk_champ_hostclub FOREIGN KEY (host_club_id) REFERENCES CLUB (club_id)
        ON DELETE SET NULL ON UPDATE CASCADE,
    CONSTRAINT fk_champ_venue FOREIGN KEY (venue_id) REFERENCES VENUE (venue_id)
        ON DELETE SET NULL ON UPDATE CASCADE
);

CREATE TABLE CHAMPIONSHIP_PHOTO_CREDIT (
    championship_year SMALLINT     NOT NULL,
    photo_credit      VARCHAR(150) NOT NULL,
    PRIMARY KEY (championship_year, photo_credit),
    CONSTRAINT fk_photocredit_champ FOREIGN KEY (championship_year) REFERENCES CHAMPIONSHIP (championship_year)
        ON DELETE CASCADE ON UPDATE CASCADE
);

-- Recursive 1:1 (R8). No ON DELETE/ON UPDATE clauses on purpose: both columns are
-- also used in a CHECK, and MySQL forbids CHECKs on columns with CASCADE/SET NULL actions.
-- Default behaviour is RESTRICT: an edition that is part of a reschedule cannot be deleted.
CREATE TABLE RESCHEDULED_TO (
    cancelled_year   SMALLINT NOT NULL PRIMARY KEY,
    replacement_year SMALLINT NOT NULL,
    CONSTRAINT uq_resched_replacement UNIQUE (replacement_year),
    CONSTRAINT chk_resched_diff CHECK (cancelled_year <> replacement_year),
    CONSTRAINT fk_resched_cancelled FOREIGN KEY (cancelled_year) REFERENCES CHAMPIONSHIP (championship_year),
    CONSTRAINT fk_resched_replacement FOREIGN KEY (replacement_year) REFERENCES CHAMPIONSHIP (championship_year)
);

-- =====================================================================
-- 2. CATEGORY (superclass) AND ITS FOUR SUBCLASSES (option 8A)
-- =====================================================================

CREATE TABLE CATEGORY (
    category_id   INT AUTO_INCREMENT PRIMARY KEY,
    category_name VARCHAR(150) NOT NULL,
    rule_version  VARCHAR(30)  NOT NULL,
    bracket       ENUM('Moustache', 'Partial Beard', 'Full Beard', 'Craft') NOT NULL,
    styling_aids  ENUM('None', 'Moustache only', 'Allowed') NULL,
    is_freestyle  BOOLEAN NOT NULL DEFAULT FALSE,
    min_age       TINYINT UNSIGNED NULL,
    max_age       TINYINT UNSIGNED NULL,
    description   TEXT NULL,
    CONSTRAINT uq_category_name_version UNIQUE (category_name, rule_version),
    CONSTRAINT chk_category_age CHECK (min_age IS NULL OR max_age IS NULL OR min_age <= max_age)
);

CREATE TABLE CATEGORY_ALIAS (
    category_id INT          NOT NULL,
    alias       VARCHAR(150) NOT NULL,
    PRIMARY KEY (category_id, alias),
    CONSTRAINT fk_alias_category FOREIGN KEY (category_id) REFERENCES CATEGORY (category_id)
        ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE MOUSTACHE_CATEGORY (
    category_id       INT PRIMARY KEY,
    style_description VARCHAR(255) NULL,
    tip_direction     VARCHAR(40)  NULL,
    CONSTRAINT fk_moustache_category FOREIGN KEY (category_id) REFERENCES CATEGORY (category_id)
        ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE PARTIAL_BEARD_CATEGORY (
    category_id       INT PRIMARY KEY,
    min_length_cm     DECIMAL(5,1) NULL,
    max_length_cm     DECIMAL(5,1) NULL,
    style_description VARCHAR(255) NULL,
    CONSTRAINT chk_pbeard_len CHECK (min_length_cm IS NULL OR max_length_cm IS NULL OR min_length_cm <= max_length_cm),
    CONSTRAINT fk_pbeard_category FOREIGN KEY (category_id) REFERENCES CATEGORY (category_id)
        ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE FULL_BEARD_CATEGORY (
    category_id   INT PRIMARY KEY,
    min_length_cm DECIMAL(5,1) NULL,
    max_length_cm DECIMAL(5,1) NULL,
    beard_style   VARCHAR(100) NULL,
    CONSTRAINT chk_fbeard_len CHECK (min_length_cm IS NULL OR max_length_cm IS NULL OR min_length_cm <= max_length_cm),
    CONSTRAINT fk_fbeard_category FOREIGN KEY (category_id) REFERENCES CATEGORY (category_id)
        ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE CRAFT_CATEGORY (
    category_id      INT PRIMARY KEY,
    craft_type       VARCHAR(100) NULL,
    target_shape     VARCHAR(100) NULL,
    materials_policy VARCHAR(255) NULL,
    CONSTRAINT fk_craft_category FOREIGN KEY (category_id) REFERENCES CATEGORY (category_id)
        ON DELETE CASCADE ON UPDATE CASCADE
);

-- =====================================================================
-- 3. CONTEST (weak entity of CHAMPIONSHIP)
-- =====================================================================

CREATE TABLE CONTEST (
    championship_year   SMALLINT    NOT NULL,
    contest_no          INT         NOT NULL,
    category_id         INT         NOT NULL,
    scheduled_date      DATE        NULL,
    registration_status VARCHAR(30) NULL,
    result_status       VARCHAR(30) NOT NULL DEFAULT 'Pending',   -- 'Published' locks scores
    PRIMARY KEY (championship_year, contest_no),
    -- a category version is contested at most once per edition (Phase 1 alternate key)
    CONSTRAINT uq_contest_year_category UNIQUE (championship_year, category_id),
    CONSTRAINT chk_contest_no CHECK (contest_no >= 1),
    CONSTRAINT fk_contest_champ FOREIGN KEY (championship_year) REFERENCES CHAMPIONSHIP (championship_year)
        ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT fk_contest_category FOREIGN KEY (category_id) REFERENCES CATEGORY (category_id)
        ON DELETE RESTRICT ON UPDATE CASCADE
);

-- =====================================================================
-- 4. COMPETITORS, CLUB REPRESENTATION (ternary R7), ENTRIES
-- =====================================================================

CREATE TABLE COMPETITOR (
    competitor_id INT AUTO_INCREMENT PRIMARY KEY,
    email         VARCHAR(255) NULL,
    first_name    VARCHAR(80)  NOT NULL,
    middle_name   VARCHAR(80)  NULL,
    last_name     VARCHAR(80)  NULL,
    birth_date    DATE         NULL,
    CONSTRAINT uq_competitor_email UNIQUE (email),     -- nullable: many NULLs allowed
    INDEX idx_competitor_name (last_name, first_name)
);

CREATE TABLE COMPETITOR_NICKNAME (
    competitor_id INT          NOT NULL,
    nickname      VARCHAR(100) NOT NULL,
    PRIMARY KEY (competitor_id, nickname),
    CONSTRAINT fk_nickname_competitor FOREIGN KEY (competitor_id) REFERENCES COMPETITOR (competitor_id)
        ON DELETE CASCADE ON UPDATE CASCADE
);

-- (competitor, edition) -> at most one club
CREATE TABLE REPRESENTS (
    competitor_id     INT      NOT NULL,
    championship_year SMALLINT NOT NULL,
    club_id           INT      NOT NULL,
    PRIMARY KEY (competitor_id, championship_year),
    CONSTRAINT fk_represents_competitor FOREIGN KEY (competitor_id) REFERENCES COMPETITOR (competitor_id)
        ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT fk_represents_champ FOREIGN KEY (championship_year) REFERENCES CHAMPIONSHIP (championship_year)
        ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT fk_represents_club FOREIGN KEY (club_id) REFERENCES CLUB (club_id)
        ON DELETE RESTRICT ON UPDATE CASCADE
);

-- entry_no is assigned by the application (next number within the contest).
CREATE TABLE ENTRY (
    championship_year     SMALLINT     NOT NULL,
    contest_no            INT          NOT NULL,
    entry_no              INT          NOT NULL,
    competitor_id         INT          NOT NULL,
    hometown_city         VARCHAR(100) NULL,
    hometown_region       VARCHAR(100) NULL,
    hometown_country      VARCHAR(80)  NULL,
    published_total_score DECIMAL(7,2) NULL,
    final_rank            INT          NULL,
    freestyle_theme       VARCHAR(255) NULL,
    is_withdrawn          BOOLEAN      NOT NULL DEFAULT FALSE,
    PRIMARY KEY (championship_year, contest_no, entry_no),
    -- at most one entry per competitor per edition (Phase 1 section 1.4)
    CONSTRAINT uq_entry_competitor_year UNIQUE (competitor_id, championship_year),
    CONSTRAINT chk_entry_no CHECK (entry_no >= 1),
    CONSTRAINT chk_entry_rank CHECK (final_rank IS NULL OR final_rank >= 1),
    CONSTRAINT chk_entry_score CHECK (published_total_score IS NULL OR published_total_score >= 0),
    CONSTRAINT fk_entry_contest FOREIGN KEY (championship_year, contest_no) REFERENCES CONTEST (championship_year, contest_no)
        ON DELETE CASCADE ON UPDATE CASCADE,
    -- history is kept: a competitor with entries cannot be deleted
    CONSTRAINT fk_entry_competitor FOREIGN KEY (competitor_id) REFERENCES COMPETITOR (competitor_id)
        ON DELETE RESTRICT ON UPDATE CASCADE,
    INDEX idx_entry_rank (championship_year, contest_no, final_rank)
);

-- R9: an entry wins Best in Show at most once; key = the ENTRY key.
CREATE TABLE BEST_IN_SHOW (
    championship_year SMALLINT    NOT NULL,
    contest_no        INT         NOT NULL,
    entry_no          INT         NOT NULL,
    award_division    VARCHAR(80) NULL,
    PRIMARY KEY (championship_year, contest_no, entry_no),
    CONSTRAINT fk_bis_entry FOREIGN KEY (championship_year, contest_no, entry_no)
        REFERENCES ENTRY (championship_year, contest_no, entry_no)
        ON DELETE CASCADE ON UPDATE CASCADE
);

-- =====================================================================
-- 5. JUDGES, ASSIGNMENTS (R11), SCORES (R10)
-- =====================================================================

CREATE TABLE JUDGE (
    judge_id     INT AUTO_INCREMENT PRIMARY KEY,
    email        VARCHAR(255) NULL,
    full_name    VARCHAR(150) NOT NULL,
    role         VARCHAR(80)  NULL,
    organisation VARCHAR(150) NULL,
    CONSTRAINT uq_judge_email UNIQUE (email)
);

CREATE TABLE ASSIGNED_TO (
    judge_id          INT      NOT NULL,
    championship_year SMALLINT NOT NULL,
    contest_no        INT      NOT NULL,
    PRIMARY KEY (judge_id, championship_year, contest_no),
    CONSTRAINT fk_assigned_judge FOREIGN KEY (judge_id) REFERENCES JUDGE (judge_id)
        ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT fk_assigned_contest FOREIGN KEY (championship_year, contest_no)
        REFERENCES CONTEST (championship_year, contest_no)
        ON DELETE CASCADE ON UPDATE CASCADE
);

-- A judge can only score entries of a contest they are assigned to:
-- the judge side is a FK to ASSIGNED_TO, the entry side a FK to ENTRY.
CREATE TABLE SCORES (
    judge_id          INT          NOT NULL,
    championship_year SMALLINT     NOT NULL,
    contest_no        INT          NOT NULL,
    entry_no          INT          NOT NULL,
    score             DECIMAL(6,2) NOT NULL,
    scored_at         DATETIME     NULL DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (judge_id, championship_year, contest_no, entry_no),
    CONSTRAINT chk_scores_score CHECK (score >= 0),
    CONSTRAINT fk_scores_assigned FOREIGN KEY (judge_id, championship_year, contest_no)
        REFERENCES ASSIGNED_TO (judge_id, championship_year, contest_no)
        ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT fk_scores_entry FOREIGN KEY (championship_year, contest_no, entry_no)
        REFERENCES ENTRY (championship_year, contest_no, entry_no)
        ON DELETE CASCADE ON UPDATE CASCADE,
    INDEX idx_scores_entry (championship_year, contest_no, entry_no)
);

-- =====================================================================
-- 6. TRIGGERS: CATEGORY specialization (disjoint, total, defined on bracket)
-- ---------------------------------------------------------------------
-- Disjointness : a category can be in only one subclass table, and the
--                table must match CATEGORY.bracket (BEFORE INSERT triggers).
-- Totality     : MySQL has no deferred constraints, so a category row cannot
--                be forced to have a subclass row at the moment it is inserted.
--                Instead: (a) the subclass row can never be removed on its own
--                (BEFORE DELETE), (b) bracket can never change (BEFORE UPDATE
--                on CATEGORY), and (c) view v_category_integrity lists any
--                category whose subclass rows are missing or duplicated.
-- Cascaded FK actions do not fire triggers in MySQL, so deleting a CATEGORY
-- still removes its subclass row through ON DELETE CASCADE.
-- =====================================================================

DELIMITER $$

CREATE TRIGGER trg_moustache_bi BEFORE INSERT ON MOUSTACHE_CATEGORY
FOR EACH ROW
BEGIN
    IF IFNULL((SELECT bracket FROM CATEGORY WHERE category_id = NEW.category_id), '') <> 'Moustache' THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Category bracket is not Moustache';
    END IF;
    IF EXISTS (SELECT 1 FROM PARTIAL_BEARD_CATEGORY WHERE category_id = NEW.category_id)
       OR EXISTS (SELECT 1 FROM FULL_BEARD_CATEGORY WHERE category_id = NEW.category_id)
       OR EXISTS (SELECT 1 FROM CRAFT_CATEGORY WHERE category_id = NEW.category_id) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Category already belongs to another subclass';
    END IF;
END$$

CREATE TRIGGER trg_pbeard_bi BEFORE INSERT ON PARTIAL_BEARD_CATEGORY
FOR EACH ROW
BEGIN
    IF IFNULL((SELECT bracket FROM CATEGORY WHERE category_id = NEW.category_id), '') <> 'Partial Beard' THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Category bracket is not Partial Beard';
    END IF;
    IF EXISTS (SELECT 1 FROM MOUSTACHE_CATEGORY WHERE category_id = NEW.category_id)
       OR EXISTS (SELECT 1 FROM FULL_BEARD_CATEGORY WHERE category_id = NEW.category_id)
       OR EXISTS (SELECT 1 FROM CRAFT_CATEGORY WHERE category_id = NEW.category_id) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Category already belongs to another subclass';
    END IF;
END$$

CREATE TRIGGER trg_fbeard_bi BEFORE INSERT ON FULL_BEARD_CATEGORY
FOR EACH ROW
BEGIN
    IF IFNULL((SELECT bracket FROM CATEGORY WHERE category_id = NEW.category_id), '') <> 'Full Beard' THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Category bracket is not Full Beard';
    END IF;
    IF EXISTS (SELECT 1 FROM MOUSTACHE_CATEGORY WHERE category_id = NEW.category_id)
       OR EXISTS (SELECT 1 FROM PARTIAL_BEARD_CATEGORY WHERE category_id = NEW.category_id)
       OR EXISTS (SELECT 1 FROM CRAFT_CATEGORY WHERE category_id = NEW.category_id) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Category already belongs to another subclass';
    END IF;
END$$

CREATE TRIGGER trg_craft_bi BEFORE INSERT ON CRAFT_CATEGORY
FOR EACH ROW
BEGIN
    IF IFNULL((SELECT bracket FROM CATEGORY WHERE category_id = NEW.category_id), '') <> 'Craft' THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Category bracket is not Craft';
    END IF;
    IF EXISTS (SELECT 1 FROM MOUSTACHE_CATEGORY WHERE category_id = NEW.category_id)
       OR EXISTS (SELECT 1 FROM PARTIAL_BEARD_CATEGORY WHERE category_id = NEW.category_id)
       OR EXISTS (SELECT 1 FROM FULL_BEARD_CATEGORY WHERE category_id = NEW.category_id) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Category already belongs to another subclass';
    END IF;
END$$

-- Totality (a): a subclass row cannot be deleted on its own
CREATE TRIGGER trg_moustache_bd BEFORE DELETE ON MOUSTACHE_CATEGORY
FOR EACH ROW
BEGIN
    SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Delete the CATEGORY row instead; a category must keep its subclass row';
END$$

CREATE TRIGGER trg_pbeard_bd BEFORE DELETE ON PARTIAL_BEARD_CATEGORY
FOR EACH ROW
BEGIN
    SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Delete the CATEGORY row instead; a category must keep its subclass row';
END$$

CREATE TRIGGER trg_fbeard_bd BEFORE DELETE ON FULL_BEARD_CATEGORY
FOR EACH ROW
BEGIN
    SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Delete the CATEGORY row instead; a category must keep its subclass row';
END$$

CREATE TRIGGER trg_craft_bd BEFORE DELETE ON CRAFT_CATEGORY
FOR EACH ROW
BEGIN
    SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Delete the CATEGORY row instead; a category must keep its subclass row';
END$$

-- A subclass row cannot be moved to another category
CREATE TRIGGER trg_moustache_bu BEFORE UPDATE ON MOUSTACHE_CATEGORY
FOR EACH ROW
BEGIN
    IF NEW.category_id <> OLD.category_id THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'category_id of a subclass row cannot be changed';
    END IF;
END$$

CREATE TRIGGER trg_pbeard_bu BEFORE UPDATE ON PARTIAL_BEARD_CATEGORY
FOR EACH ROW
BEGIN
    IF NEW.category_id <> OLD.category_id THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'category_id of a subclass row cannot be changed';
    END IF;
END$$

CREATE TRIGGER trg_fbeard_bu BEFORE UPDATE ON FULL_BEARD_CATEGORY
FOR EACH ROW
BEGIN
    IF NEW.category_id <> OLD.category_id THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'category_id of a subclass row cannot be changed';
    END IF;
END$$

CREATE TRIGGER trg_craft_bu BEFORE UPDATE ON CRAFT_CATEGORY
FOR EACH ROW
BEGIN
    IF NEW.category_id <> OLD.category_id THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'category_id of a subclass row cannot be changed';
    END IF;
END$$

-- Totality (b): the defining attribute never changes (a new rule version is a new row)
CREATE TRIGGER trg_category_bu BEFORE UPDATE ON CATEGORY
FOR EACH ROW
BEGIN
    IF NEW.bracket <> OLD.bracket THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'bracket cannot be changed; create a new category version instead';
    END IF;
END$$

DELIMITER ;

-- Totality (c): integrity report. Should return 0 rows on a correct database.
CREATE VIEW v_category_integrity AS
SELECT t.category_id, t.category_name, t.rule_version, t.bracket, t.subclass_rows
FROM (
    SELECT c.category_id, c.category_name, c.rule_version, c.bracket,
           ( (SELECT COUNT(*) FROM MOUSTACHE_CATEGORY      m WHERE m.category_id = c.category_id)
           + (SELECT COUNT(*) FROM PARTIAL_BEARD_CATEGORY  p WHERE p.category_id = c.category_id)
           + (SELECT COUNT(*) FROM FULL_BEARD_CATEGORY     f WHERE f.category_id = c.category_id)
           + (SELECT COUNT(*) FROM CRAFT_CATEGORY          r WHERE r.category_id = c.category_id) ) AS subclass_rows
    FROM CATEGORY c
) AS t
WHERE t.subclass_rows <> 1;