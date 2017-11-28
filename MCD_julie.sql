#------------------------------------------------------------
#        Script MySQL.
#------------------------------------------------------------


#------------------------------------------------------------
# Table: Films
#------------------------------------------------------------

CREATE TABLE Films(
        id          int (11) Auto_increment  NOT NULL ,
        Film_Name   Varchar (25) ,
        Annee       Date ,
        Realisateur Varchar (25) ,
        Genre       Varchar (25) ,
        Synopsis    Text ,
        PRIMARY KEY (id )
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: Acteurs
#------------------------------------------------------------

CREATE TABLE Acteurs(
        id         int (11) Auto_increment  NOT NULL ,
        First_Name Varchar (25) ,
        Last_Name  Varchar (25) ,
        PRIMARY KEY (id )
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: Genre
#------------------------------------------------------------

CREATE TABLE Genre(
        id     int (11) Auto_increment  NOT NULL ,
        Gender Varchar (25) ,
        PRIMARY KEY (id )
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: Réalisateurs
#------------------------------------------------------------

CREATE TABLE Realisateurs(
        id   int (11) Auto_increment  NOT NULL ,
        Name Varchar (25) ,
        PRIMARY KEY (id )
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: A joué dans
#------------------------------------------------------------

CREATE TABLE A_joue_dans(
        id         Int NOT NULL ,
        id_Acteurs Int NOT NULL ,
        PRIMARY KEY (id ,id_Acteurs )
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: Catégorie
#------------------------------------------------------------

CREATE TABLE Categorie(
        id       Int NOT NULL ,
        id_Genre Int NOT NULL ,
        PRIMARY KEY (id ,id_Genre )
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: A réalisé
#------------------------------------------------------------

CREATE TABLE A_realise(
        id       Int NOT NULL ,
        id_Films Int NOT NULL ,
        PRIMARY KEY (id ,id_Films )
)ENGINE=InnoDB;

ALTER TABLE A_joue_dans ADD CONSTRAINT FK_A_joue_dans_id FOREIGN KEY (id) REFERENCES Films(id);
ALTER TABLE A_joue_dans ADD CONSTRAINT FK_A_joue_dans_id_Acteurs FOREIGN KEY (id_Acteurs) REFERENCES Acteurs(id);
ALTER TABLE Categorie ADD CONSTRAINT FK_Categorie_id FOREIGN KEY (id) REFERENCES Films(id);
ALTER TABLE Categorie ADD CONSTRAINT FK_Categorie_id_Genre FOREIGN KEY (id_Genre) REFERENCES Genre(id);
ALTER TABLE A_realise ADD CONSTRAINT FK_A_realise_id FOREIGN KEY (id) REFERENCES Realisateurs(id);
ALTER TABLE A_realise ADD CONSTRAINT FK_A_realise_id_Films FOREIGN KEY (id_Films) REFERENCES Films(id);
