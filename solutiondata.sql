CREATE TABLE `police` (
  `local_number` int primary key,
  `number_of_Units` int,
  `number_of_crime_prevention_specialist` int
);

create table `people_com_police`(
	`relation_id` int primary key,
    `police_local_number` int,
    `people_com_id` int
);


create table `police_civilian`(
    `survey_id` int primary key,
    `civilian_id` int,
    `police_local_number` int, 
    `date_survey` date,
    `location_survey` varchar(50)
);

create table `police_gov`(
	`relation_id` int primary key,
    `police_local_number` int,
    `local_gov_agency_id` int
);

CREATE TABLE `community_infrastructure` (
  `id` int primary key,
  `name` varchar(50),
  `number_of_members` int
);

create table `com_infrastructure_small_basic_infrastructure`(
	`relation_id` int primary key,
    `com_infrastructure_id` int,
    `small_basic_infrastructure_id` int
);

CREATE TABLE `singer` (
  `id` int primary key,
  `full_name` varchar(50),
  `phone_number` int
);

create table `neighborhood_watch`(
	`relation_id` int primary key,
    `civilian_one_id` int,
    `civilian_two_id` int
);

create table `civilian_singer`(
	`relation_id` int primary key,
    `singer_id` int ,
    `civilian_id` int
);

CREATE TABLE `social_cultured_civilian` (
  `id` int primary key,
  `full_name` varchar(50),
  `phone_number` int
);

create table `social_cultured_civilian_civilian`(
	`relation_id` int primary key,
    `social_cultured_civilian_id` int,
    `civilian_id` int
);

CREATE TABLE `local_government_agencies` (
  `id` int primary key,
  `name` varchar(50),
  `responsible_full_name` varchar(50),
  `people_community_id` int
);


CREATE TABLE `school` (
  `id` int primary key,
  `name` varchar(50),
  `location` varchar(50),
  `crime_preventioon_specialist_id` int
);

create table `school_civilian`(
	`appliance_bullying_tactics_id` int primary key,
    `school_id` int,
    `civilian_id` int
);

create table `church_civilian`(
	`relation_id` int primary key,
    `church_id` int,
    `civilian_id` int
);

CREATE TABLE `church` (
  `id` int primary key,
  `name` varchar(50),
  `relegion` varchar(50)
);

CREATE TABLE `relegious_organization` (
  `id` int primary key,
  `name` varchar(50),
  ` raise_date` date
);

create table `relegious_organization_civilian_guide`(
	`guide_id` int primary key,
    `organization_id` int ,
    `civilian_id` int
);

CREATE TABLE `small_basic_Infrastructure` (
  `Id` int primary key,
  `name` varchar(50),
  `location` varchar(50)
);

create table `small_basic_infrastructure_civilian_serve`(
	`serve_id` int primary key,
    `small_basic_infrastructure_id` int,
    `civilian_id` int
);

CREATE TABLE `local_government_function` (
  `name` varchar(50) primary key,
  `agency_id` int
);

create table `function_civilian_crime_prevent`(
	`crime_prevent_id` int primary key,
    `function_name` varchar(50),
    `civilian_id` int
);

CREATE TABLE `writer` (
  `id` int primary key,
  `full_name` varchar(50),
  `number_of_books` int
);

create table `writer_civilian`(
	`relation_id` int primary key,
    `writer_id`int,
    `civilian_id` int
);

CREATE TABLE `Movie` (
  `name_movie` varchar(50) primary key,
  `date_release` date
);

create table `movie_civilian`(
	`relation_id` int primary key,
    `movie_name` varchar(50),
    `civilian_id` int
);

CREATE TABLE `mayor` (
  `id` int primary key,
  `full_name` varchar(50),
  `phone_number` int,
  `date` date,
  `name_city` varchar(50)
);

create table `mayor_civilian`(
	`relation_id` int primary key,
    `mayor_id` int,
    `civilian_id` int
);

CREATE TABLE `social_media` (
  `id` int primary key,
  `name` varchar(50)
);

create table `social_media_civilian`(
	`relation_id` int primary key,
    `social_media_id` int,
    `civilian_id` int
);

CREATE TABLE `sport_club` (
  `ID` int primary key,
  ` Name` varchar(50),
  `number_of_members_club` int
);

create table `sport_club_civilian`(
	`relation_id` int primary key,
    `sport_club_id` int,
    `civilian_id` int
);

CREATE TABLE `crime_prevention_specialist` (
  `id` int primary key,
  `full_name` varchar(50),
  `phone_number` int,
  `years_of_experience` int,
  `school_id` int
);

CREATE TABLE `grand_economic` (
  `ID` int primary key,
  `full_name` varchar(50),
  `phone_number` int
);

create table `grand_economic_civilian_donation`(
	`donation_id` int primary key,
    `grand_economic_id` int,
    `civilian_id` int
);

CREATE TABLE `civilian` (
  `ID` int primary key,
  `full_name` varchar(50),
  `phone_number` int,
  `mayor_id` int
);

CREATE TABLE `people_communitiy` (
  `ID` int primary key,
  `number_of_members_com` int
);

ALTER TABLE people_com_police
ADD CONSTRAINT FK_people_com_police_police
FOREIGN KEY (`police_local_number`) REFERENCES police(`local_number`);

ALTER TABLE people_com_police
ADD CONSTRAINT FK_people_com_police_people_com
FOREIGN KEY (`people_com_id`) REFERENCES people_communitiy(`id`);


ALTER TABLE relegious_organization_civilian_guide
ADD CONSTRAINT FK_rel_orga__civilian_guide_rel_orga
FOREIGN KEY (`organization_id`) REFERENCES relegious_organization(`id`);

ALTER TABLE relegious_organization_civilian_guide
ADD CONSTRAINT FK_rel_orga__civilian_guide_civilian
FOREIGN KEY (`civilian_id`) REFERENCES civilian(`id`);

ALTER TABLE police_civilian
ADD CONSTRAINT FK_police_civilian_police
FOREIGN KEY (`police_local_number`) REFERENCES police(`local_number`);


ALTER TABLE police_civilian
ADD CONSTRAINT FK_police_civilian_civilian
FOREIGN KEY (`civilian_id`) REFERENCES civilian(`id`);


ALTER TABLE police_gov
ADD CONSTRAINT FK_police_gov_police
FOREIGN KEY (`police_local_number`) REFERENCES police(`local_number`);

ALTER TABLE police_gov
ADD CONSTRAINT FK_police_gov_gov
FOREIGN KEY (`local_gov_agency_id`) REFERENCES local_government_agencies(`id`);

ALTER TABLE church_civilian
ADD CONSTRAINT FK_church_civilian_church
FOREIGN KEY (`church_id`) REFERENCES church(`id`);

ALTER TABLE church_civilian
ADD CONSTRAINT FK_church_civilian_civilian
FOREIGN KEY (`civilian_id`) REFERENCES civilian(`id`);

ALTER TABLE function_civilian_crime_prevent
ADD CONSTRAINT FK_function_civilian_crime_prevent_function
FOREIGN KEY (`function_name`) REFERENCES local_government_function(`name`);

ALTER TABLE function_civilian_crime_prevent
ADD CONSTRAINT FK_function_civilian_crime_prevent_civilian
FOREIGN KEY (`civilian_id`) REFERENCES civilian(`id`);

ALTER TABLE sport_club_civilian
ADD CONSTRAINT FK_sport_club_civilian_civilian
FOREIGN KEY (`civilian_id`) REFERENCES civilian(`id`);

ALTER TABLE sport_club_civilian
ADD CONSTRAINT FK_sport_club_civilian_sport_club
FOREIGN KEY (`sport_club_id`) REFERENCES sport_club(`id`);

ALTER TABLE grand_economic_civilian_donation
ADD CONSTRAINT FK_grand_economic_civilian_donation_civilian
FOREIGN KEY (`civilian_id`) REFERENCES civilian(`id`);

ALTER TABLE grand_economic_civilian_donation
ADD CONSTRAINT FK_grand_economic_civilian_donation_grand_economic
FOREIGN KEY (`grand_economic_id`) REFERENCES grand_economic(`id`);

ALTER TABLE small_basic_infrastructure_civilian_serve
ADD CONSTRAINT FK_small_basic_infrastructure_civilian_serve_small
FOREIGN KEY (`small_basic_infrastructure_id`) REFERENCES small_basic_infrastructure(`id`);

ALTER TABLE small_basic_infrastructure_civilian_serve
ADD CONSTRAINT FK_small_basic_infrastructure_civilian_serve_civi
FOREIGN KEY (`civilian_id`) REFERENCES civilian(`id`);

ALTER TABLE com_infrastructure_small_basic_infrastructure
ADD CONSTRAINT FK_com_infrastructure_small_basic_infrastru
FOREIGN KEY (`com_infrastructure_id`) REFERENCES community_infrastructure(`id`);

ALTER TABLE com_infrastructure_small_basic_infrastructure
ADD CONSTRAINT FK_com_infrastructure_small_basic_infrastruct
FOREIGN KEY (`small_basic_infrastructure_id`) REFERENCES small_basic_infrastructure(`id`);

ALTER TABLE civilian_singer
ADD CONSTRAINT FK_civilian_singer_civilian
FOREIGN KEY (`civilian_id`) REFERENCES civilian(`id`);

ALTER TABLE civilian_singer
ADD CONSTRAINT FK_civilian_singer_singer
FOREIGN KEY (`singer_id`) REFERENCES singer(`id`);

ALTER TABLE school_civilian
ADD CONSTRAINT FK_school_civilian_school
FOREIGN KEY (`school_id`) REFERENCES school(`id`);

ALTER TABLE social_cultured_civilian_civilian
ADD CONSTRAINT FK_social_cultured_civilian_civilian_civilian
FOREIGN KEY (`civilian_id`) REFERENCES civilian(`id`);

ALTER TABLE social_cultured_civilian_civilian
ADD CONSTRAINT FK_social_cultured_civilian_civilian_s
FOREIGN KEY (`social_cultured_civilian_id`) REFERENCES social_cultured_civilian(`id`);

ALTER TABLE writer_civilian
ADD CONSTRAINT FK_writer_civilian_writer
FOREIGN KEY (`writer_id`) REFERENCES writer(`id`);

ALTER TABLE writer_civilian
ADD CONSTRAINT FK_writer_civilian_civilian
FOREIGN KEY (`civilian_id`) REFERENCES civilian(`id`);

ALTER TABLE movie_civilian
ADD CONSTRAINT FK_movie_civilian_movie
FOREIGN KEY (`movie_name`) REFERENCES movie(`name_movie`);

ALTER TABLE movie_civilian
ADD CONSTRAINT FK_movie_civilian_civilian
FOREIGN KEY (`civilian_id`) REFERENCES civilian(`id`);

ALTER TABLE social_media_civilian
ADD CONSTRAINT FK_social_media_civilian_social_media
FOREIGN KEY (`social_media_id`) REFERENCES social_media(`id`);

ALTER TABLE social_media_civilian
ADD CONSTRAINT FK_social_media_civilian_civilian
FOREIGN KEY (`civilian_id`) REFERENCES civilian(`id`);


ALTER TABLE mayor_civilian
ADD CONSTRAINT FK_mayor_civilian_mayor
FOREIGN KEY (`mayor_id`) REFERENCES mayor(`id`);

ALTER TABLE mayor_civilian
ADD CONSTRAINT FK_mayor_civilian_civilian
FOREIGN KEY (`civilian_id`) REFERENCES civilian(`id`);

ALTER TABLE local_government_function
ADD CONSTRAINT FK_local_government_function_local_go
FOREIGN KEY (`agency_id`) REFERENCES local_government_agencies(`id`);


ALTER TABLE local_government_agencies
ADD CONSTRAINT FK_local_government_agencies_peo
FOREIGN KEY (`people_community_id`) REFERENCES people_communitiy(`id`);

ALTER TABLE school
ADD CONSTRAINT FK_school_specialist_school
FOREIGN KEY (`crime_preventioon_specialist_id`) REFERENCES crime_prevention_specialist(`id`);

ALTER TABLE crime_prevention_specialist
ADD CONSTRAINT FK_school_specialist_specialist
FOREIGN KEY (`school_id`) REFERENCES school(`id`);
