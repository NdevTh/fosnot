CREATE TABLE Eleve(
   numEleve INT,
   nom VARCHAR(50),
   prenom VARCHAR(50),
   adresse VARCHAR(50),
   codePostal INT,
   ville VARCHAR(50),
   lieuNaissance VARCHAR(50),
   dateNaissance DATE,
   tel VARCHAR(50),
   PRIMARY KEY(numEleve)
);

CREATE TABLE Formule(
   idCours INT,
   cours VARCHAR(50),
   horaire VARCHAR(50),
   tarif INT,
   5_7_ans_Intiation__ VARCHAR(50),
   7_8_ans_Solfège___ VARCHAR(50),
   Classe_d_ochestre___ VARCHAR(50),
   Pratique_d_instruments__ VARCHAR(50),
   PRIMARY KEY(idCours)
);

CREATE TABLE Manifestation(
   idManif VARCHAR(50),
   dateDescription VARCHAR(50),
   titre VARCHAR(50),
   description VARCHAR(50),
   images VARCHAR(50),
   PRIMARY KEY(idManif)
);

CREATE TABLE Responsable(
   idResponsable INT,
   prenomRespon VARCHAR(50) NOT NULL,
   nomRespon VARCHAR(50),
   adresseRespon VARCHAR(50),
   villeRespon VARCHAR(50),
   telRespon VARCHAR(50),
   codePostalRespon INT,
   PRIMARY KEY(idResponsable)
);

CREATE TABLE Instrument(
   idInstrument VARCHAR(50),
   Nom_instrument VARCHAR(50),
   PRIMARY KEY(idInstrument)
);

CREATE TABLE Paiment(
   idPaiem INT,
   cheque VARCHAR(50),
   Virement VARCHAR(50),
   PRIMARY KEY(idPaiem)
);

CREATE TABLE inscrit(
   numEleve INT,
   idResponsable INT,
   PRIMARY KEY(numEleve, idResponsable),
   FOREIGN KEY(numEleve) REFERENCES Eleve(numEleve),
   FOREIGN KEY(idResponsable) REFERENCES Responsable(idResponsable)
);

CREATE TABLE prend(
   numEleve INT,
   idCours INT,
   PRIMARY KEY(numEleve, idCours),
   FOREIGN KEY(numEleve) REFERENCES Eleve(numEleve),
   FOREIGN KEY(idCours) REFERENCES Formule(idCours)
);

CREATE TABLE Choisie(
   numEleve INT,
   idInstrument VARCHAR(50),
   PRIMARY KEY(numEleve, idInstrument),
   FOREIGN KEY(numEleve) REFERENCES Eleve(numEleve),
   FOREIGN KEY(idInstrument) REFERENCES Instrument(idInstrument)
);

CREATE TABLE Paie(
   numEleve INT,
   idPaiem INT,
   PRIMARY KEY(numEleve, idPaiem),
   FOREIGN KEY(numEleve) REFERENCES Eleve(numEleve),
   FOREIGN KEY(idPaiem) REFERENCES Paiment(idPaiem)
);

CREATE TABLE participe(
   numEleve INT,
   idManif VARCHAR(50),
   PRIMARY KEY(numEleve, idManif),
   FOREIGN KEY(numEleve) REFERENCES Eleve(numEleve),
   FOREIGN KEY(idManif) REFERENCES Manifestation(idManif)
);
