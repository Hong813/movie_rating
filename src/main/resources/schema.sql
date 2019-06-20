
CREATE TABLE IF NOT EXISTS movie (
  id integer NOT NULL AUTO_INCREMENT,
  title varchar(200) DEFAULT NULL,
  year varchar(45) DEFAULT NULL,
  release varchar(200) DEFAULT NULL,
  runtime varchar(200) DEFAULT NULL,
  genre varchar(200) DEFAULT NULL,
  director varchar(200) DEFAULT NULL,
  poster varchar(2000) DEFAULT NULL,
  plot varchar(4000) DEFAULT NULL,
  imdbid varchar(45) DEFAULT NULL,
  PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS movie_average (
   id integer NOT NULL AUTO_INCREMENT,
   movie_id integer NOT NULL,
   average_score varchar(45) NOT NULL DEFAULT '0',
   updated_date datetime DEFAULT NULL,
   PRIMARY KEY (id)
);

create table IF NOT EXISTS  movie_characteristics (
  id integer not null,
  name varchar(255),
  primary key (id)
);

create table IF NOT EXISTS movie_rating (
  id integer generated by default as identity,
  comment varchar(255),
  created_date timestamp,
  movie_id integer,
  user_id integer,
  rating_id integer not null,
  primary key (id)
);

create table IF NOT EXISTS movie_score (
  id integer generated by default as identity,
  score integer,
  movie_char_id integer,
  movie_rating_id integer,
  primary key (id)
);

create table IF NOT EXISTS user (
  id integer generated by default as identity,
  email varchar(255),
  name varchar(255),
  password varchar(255),
  username varchar(255),
  primary key (id)
);

create table IF NOT EXISTS user_role (
   id integer generated by default as identity,
   name varchar(255),
   user_id integer,
   primary key (id)
);