create table Utenti_Magazzino(
id_utente int not null auto_increment, 
nome varchar(20) not null, 
cognome varchar(20) not null,
eta int not null, 
data_nascita Date not null, 
mail varchar(20) not null, 
password varchar(20) not null, 
primary key(id_utente)
);


create table prodotti(
id_prodotti int not null auto_increment, 
quantita int not null, 
prezzi int not null, 
codice_prodottto varchar(20)not null, 
primary key(id_prodotti)
);


create table fornitori(
cod_fornitore char(128) not null  primary key, 
nome varchar(20) not null, 
cognome varchar(20) not null, 
data_conssegna Date not null, 
ora varchar(20) not null);


create table magazzino(
id_magazzino int not null auto_increment, 
carico varchar(20) not null, 
scarico varchar(20) not null, 
id_prodotti int not null, 
cod_fornitore char not null, 
primary key(id_magazzino), 
foreign key (id_prodotti) references prodotti(id_prodotti), 
foreign key (cod_fornitore) references fornitori(cod_fornitore)
);






