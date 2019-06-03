USE codeup_test_db;

drop table if exists albums;

CREATE TABLE albums (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    artist VARCHAR(255) NOT NULL,
    name  VARCHAR(100) NOT NULL,
    release_date DATE NOT NULL,
    sales float NOT NULL,
    genre varchar(50) NOT NULL,
    PRIMARY KEY (id)
);