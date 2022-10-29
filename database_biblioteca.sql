-- Create and use database
create database biblioteca;
use biblioteca;

--    TABLES CREATION

-- bibliotecario table creation
CREATE TABLE bibliotecario(
                              id_bibliotecario INT NOT NULL AUTO_INCREMENT,
                              nome varchar(50) NOT NULL,
                              matricula INT NOT NULL,
                              email varchar(50),
                              PRIMARY KEY(id_bibliotecario)
);

-- aquisicao table creation
CREATE TABLE aquisicao(
                          id_aquisicao int not null auto_increment,
                          nome_livro varchar(50) not null,
                          autor varchar(50) not null,
                          isbn varchar(15) not null,
                          fk_id_bibliotecario int,
                          primary key(id_aquisicao),
                          foreign key(fk_id_bibliotecario) references bibliotecario(id_bibliotecario)
);

-- aluno table creation
CREATE TABLE aluno(
                      id_aluno INT NOT NULL AUTO_INCREMENT,
                      nome varchar(50) NOT NULL,
                      cpf varchar(11) NOT NULL,
                      email varchar(50),
                      PRIMARY KEY(id_aluno)
);

-- endereco table creation
CREATE TABLE endereco(
                         id_endereco int not null auto_increment,
                         cep varchar(8) not null,
                         rua varchar(50) not null,
                         numero int not null,
                         complemento varchar(30),
                         fk_id_aluno int,
                         primary key(id_endereco),
                         foreign key (fk_id_aluno) references aluno(id_aluno)
);

-- telefone table creation
CREATE TABLE telefone(
                         id_telefone int not null auto_increment,
                         telefone_1 varchar(16) not null,
                         telefone_2 varchar(16) not null,
                         fk_id_aluno int,
                         primary key(id_telefone),
                         foreign key (fk_id_aluno) references aluno(id_aluno)
);

-- atendente table creation
CREATE TABLE atendente(
                          id_atendente int not null auto_increment,
                          nome varchar(50) NOT NULL,
                          matricula INT NOT NULL,
                          email varchar (50),
                          primary key(id_atendente)
);

-- livro table creation
CREATE TABLE livro(
                      id_livro int not null auto_increment,
                      nome varchar(50) not null,
                      autor varchar(30) not null,
                      edicao Varchar(20) not null,
                      isbn varchar(15) not null,
                      primary key(id_livro)
);

-- reserva table creation
CREATE TABLE reserva(
                        id_reserva int not null auto_increment,
                        data_inicio date not null,
                        data_retorno date not null,
                        fk_id_aluno int,
                        fk_id_livro int,
                        fk_id_atendente int,
                        primary key(id_reserva),
                        foreign key (fk_id_aluno) references aluno(id_aluno),
                        foreign key (fk_id_livro) references livro(id_livro),
                        foreign key (fk_id_atendente) references atendente(id_atendente)
);


-- INSERT INTO TABLES

-- bibliotecario table insert
insert into bibliotecario(nome, matricula, email) values ('Maria Oliveira Santos','00235','maria@gmail.com');
insert into bibliotecario(nome, matricula, email) values ('João Pedro Júnior','00895','joao@gmail.com');
insert into bibliotecario(nome, matricula, email) values ('Luiz Gustavo Santos','03234','luiz@gmail.com');
insert into bibliotecario(nome, matricula, email) values ('Lívia Farias Melo','01285','livia@gmail.com');

-- aquisicao table insert
insert into aquisicao (nome_livro,autor,isbn, fk_id_bibliotecario) values('O mistério da fábrica de livros','Pedro Bandeira','13231111',1);
insert into aquisicao (nome_livro,autor,isbn, fk_id_bibliotecario) values('A hora da estrela','Clarice Lispector','232322222',3);
insert into aquisicao (nome_livro,autor,isbn, fk_id_bibliotecario) values('Aventura no Império do Sol','Silvia Cintra Franco','666663434',1);
insert into aquisicao (nome_livro,autor,isbn, fk_id_bibliotecario) values('Lucíola','josé de Alencar','14895353',2);
insert into aquisicao (nome_livro,autor,isbn, fk_id_bibliotecario) values('A serra dos dois meninos',' Aristides Fraga Lima','313157983',4);
insert into aquisicao (nome_livro,autor,isbn, fk_id_bibliotecario) values('O mistério da fábrica de livros','Pedro Bandeira','7340037777',4);
insert into aquisicao (nome_livro,autor,isbn, fk_id_bibliotecario) values('O mistério da fábrica de livros','Pedro Bandeira','3334983433',3);
insert into aquisicao (nome_livro,autor,isbn, fk_id_bibliotecario) values(' Guerra e Paz','Liev Tolstói','5553438055',2);
insert into aquisicao (nome_livro,autor,isbn, fk_id_bibliotecario) values(' A Montanha Mágica','Thomas Mann','444406794',1);

-- aluno table insert
insert into aluno (nome,cpf,email) values('Antônia Freitas Santos', '1111111111', 'tonia@hotmail.com');
insert into aluno (nome,cpf,email) values('Murilo Alves Filho', '13432345', 'muriloa@gmail.com');
insert into aluno (nome,cpf,email) values('Jessilane Santos Silva', '123451323', 'jessisilva@hotmail.com');
insert into aluno (nome,cpf,email) values('Cássio Freitas Pinto', '879123452','cafreit@hotmail.com');
insert into aluno (nome,cpf,email) values('Samara Silva Holanda', '1234567545','samholanda@outlook.com');
insert into aluno (nome,cpf,email) values('Océlio Campos Sales','126634299','ocelio@gmail.com');
insert into aluno (nome,cpf,email) values('Guilherme Pontes Silva','3288987688','guipontes@gmail.com');
insert into aluno (nome,cpf,email) values('Magão Carlos Barra Costa Oca','3202939241','magaodabarra13@aluno.unifametro.edu.br');

-- endereco table insert
insert into endereco(cep,rua,numero,complemento,fk_id_aluno) values('32322343','Rua B','69','Não Possui',1);
insert into endereco(cep,rua,numero,complemento,fk_id_aluno) values('34344524','Rua D','68','Casa A',2);
insert into endereco(cep,rua,numero,complemento,fk_id_aluno) values('98983431','Rua São José','785','Apto 8',3);
insert into endereco(cep,rua,numero,complemento,fk_id_aluno) values('23676893','Rua Angélica','3587','Casa B',4);
insert into endereco(cep,rua,numero,complemento,fk_id_aluno) values('32308970','Rua João Anastácia','36','Não possui',5);
insert into endereco(cep,rua,numero,complemento,fk_id_aluno) values('33469113','Rua Cândida','726','Apto 13',6);
insert into endereco(cep,rua,numero,complemento,fk_id_aluno) values('22222330','Rua da paz','741','Altos',7);
insert into endereco(cep,rua,numero,complemento,fk_id_aluno) values('11131658','Rua Sete','1078','Não possui',8);

-- telefone table insert
insert into telefone (telefone_1,telefone_2,fk_id_aluno) values('85999632532','85996857412',1);
insert into telefone (telefone_1,telefone_2,fk_id_aluno) values('85998856471','85965823596',2);
insert into telefone (telefone_1,telefone_2,fk_id_aluno) values('85974125632','85974125632',3);
insert into telefone (telefone_1,telefone_2,fk_id_aluno) values('85996854236','85987451269',4);
insert into telefone (telefone_1,telefone_2,fk_id_aluno) values('85996854555','85987453339',5);
insert into telefone (telefone_1,telefone_2,fk_id_aluno) values('85996854226','85987451211',6);
insert into telefone (telefone_1,telefone_2,fk_id_aluno) values('85996994236','85981151269',7);
insert into telefone (telefone_1,telefone_2,fk_id_aluno) values('85996844436','85987451233',8);

-- livro table insert
insert into livro(nome, autor, edicao, isbn) values('Senhora','José de Alencar','1ª edição','23422342');
insert into livro(nome, autor, edicao, isbn) values('Cinco Minutos','José de Alencar','1ª edição','3930394994');
insert into livro(nome, autor, edicao, isbn) values('Dom Casmurro','Machado de Assis','1ª edição','717690002');
insert into livro(nome, autor, edicao, isbn) values('O Alienista','Machado de Assis','1ª edição','93837626');
insert into livro(nome, autor, edicao, isbn) values('Frankenstein','Mary Shelley','1ª edição','746378311');
insert into livro(nome, autor, edicao, isbn) values('Kindred laços de sangue','Octavia Butler','1ª edição','937847400');
insert into livro(nome, autor, edicao, isbn) values('Admirável mundo novo','Aldous Huxley','2ª edição','020093837');
insert into livro(nome, autor, edicao, isbn) values('Um estranho numa Terra estranha','Robert A. Heilein','1ª edição','7169405031');
insert into livro(nome, autor, edicao, isbn) values('2001: Uma Odisséia no Espaço','Arthur C. Clarke','1ª edição','982773841');

-- atendente table insert
insert into atendente(nome, matricula, email) values('Juliana Paiva Moreira','00523','julianap@gmail.com');
insert into atendente(nome, matricula, email) values('Samantha Leão Gomes','00896','samanthal@gmail.com');
insert into atendente(nome, matricula, email) values('Gustavo Braga Santos','09982','gustavob@gmail.com');
insert into atendente(nome, matricula, email) values('Juarina Maria Borges','03569','juarinam@gmail.com');

-- reserva table insert
insert into reserva(data_inicio,data_retorno,fk_id_aluno, fk_id_livro, fk_id_atendente) values('2022-08-11','2022-08-16',1,5,4);
insert into reserva(data_inicio,data_retorno,fk_id_aluno, fk_id_livro, fk_id_atendente) values('2022-09-13','2022-09-18',2,4,3);
insert into reserva(data_inicio,data_retorno,fk_id_aluno, fk_id_livro, fk_id_atendente) values('2022-10-10','2022-10-15',3,3,2);
insert into reserva(data_inicio,data_retorno,fk_id_aluno, fk_id_livro, fk_id_atendente) values('2022-07-10','2022-07-15',4,1,1);


-- Test query
select a.nome, t.telefone_1, t.telefone_2
from aluno a
         inner join telefone t
                    on (a.id_aluno = t.fk_id_aluno)
where nome like '%Oca%';
