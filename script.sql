create database schooltracker;
use schooltracker;
CREATE TABLE DIARIODEBORDO
id int 


CREATE TABLE Aluno (
    id int PRIMARY KEY auto_increment,
    ra char(8) not null
);

alter table ALUNO ADD CONSTRAINT UNIQUE (ra);
describe aluno;
USE schooltracker;


INSERT INTO aluno (ra) VALUES ('000001');
INSERT INTO aluno (ra) VALUES ('000002');
INSERT INTO aluno (ra) VALUES ('000003');
INSERT INTO aluno (ra) VALUES ('000004');
INSERT INTO aluno (ra) VALUES ('000005');
INSERT INTO aluno (ra) VALUES ('000006');
INSERT INTO aluno (ra) VALUES ('000007');
INSERT INTO aluno (ra) VALUES ('000008');
INSERT INTO aluno (ra) VALUES ('000009');
INSERT INTO aluno (ra) VALUES ('000010');
INSERT INTO aluno (ra) VALUES ('000011');
INSERT INTO aluno (ra) VALUES ('000012');
INSERT INTO aluno (ra) VALUES ('000013');
INSERT INTO aluno (ra) VALUES ('000014');
INSERT INTO aluno (ra) VALUES ('000015');
INSERT INTO aluno (ra) VALUES ('000016');
INSERT INTO aluno (ra) VALUES ('000017');
INSERT INTO aluno (ra) VALUES ('000018');
INSERT INTO aluno (ra) VALUES ('000019');
INSERT INTO aluno (ra) VALUES ('000020');
INSERT INTO aluno (ra) VALUES ('000021');
INSERT INTO aluno (ra) VALUES ('000022');
INSERT INTO aluno (ra) VALUES ('000023');
INSERT INTO aluno (ra) VALUES ('000024');
INSERT INTO aluno (ra) VALUES ('000025');
INSERT INTO aluno (ra) VALUES ('000026');
INSERT INTO aluno (ra) VALUES ('000027');
INSERT INTO aluno (ra) VALUES ('000028');
INSERT INTO aluno (ra) VALUES ('000029');
INSERT INTO aluno (ra) VALUES ('000030');
INSERT INTO aluno (ra) VALUES ('000031');
INSERT INTO aluno (ra) VALUES ('000032');
INSERT INTO aluno (ra) VALUES ('000033');
INSERT INTO aluno (ra) VALUES ('000034');
INSERT INTO aluno (ra) VALUES ('000035');
INSERT INTO aluno (ra) VALUES ('000036');
INSERT INTO aluno (ra) VALUES ('000037');
INSERT INTO aluno (ra) VALUES ('000038');
INSERT INTO aluno (ra) VALUES ('000039');
INSERT INTO aluno (ra) VALUES ('000040');
INSERT INTO aluno (ra) VALUES ('000041');
INSERT INTO aluno (ra) VALUES ('000042');
INSERT INTO aluno (ra) VALUES ('000043');
INSERT INTO aluno (ra) VALUES ('000044');
INSERT INTO aluno (ra) VALUES ('000045');
INSERT INTO aluno (ra) VALUES ('000046');
INSERT INTO aluno (ra) VALUES ('000047');
INSERT INTO aluno (ra) VALUES ('000048');
INSERT INTO aluno (ra) VALUES ('000049');
INSERT INTO aluno (ra) VALUES ('000050');
INSERT INTO aluno (ra) VALUES ('000051');
INSERT INTO aluno (ra) VALUES ('000052');
-- altera tabela adicionando e contruir UNIQUE no (ra);

select * from aluno;

/* projetologico: */

CREATE TABLE diariodebordo (
    id int PRIMARY KEY auto_increment,
    texto text,
    datahora datetime,
    fk_Aluno_id int
);
INSERT INTO diariodebordo (texto, datahora, fk_Aluno_id)
VALUES ('Reunião com o professor sobre o projeto de pesquisa.', '2024-07-31 10:30:00', 32);

ALTER TABLE diariodebordo ADD CONSTRAINT FK_diariodebordo_2
    FOREIGN KEY (fk_Aluno_id)
    REFERENCES Aluno (id)
    ON DELETE CASCADE;


 show tables;
 
 select
	d.id,
    d.texto, 
	d.datahora,
    d.ra as registro_academico
    
    FROM
    diariodebordo as d
    JOIN
    aluno AS a
    on 
    d.fk_aluno_fd = a, id;
    
    INSERT INTO aluno (ra) VALUES ('00177504');
-- id=36
INSERT INTO diariodebordo (texto, datahora, fk_Aluno_id)
VALUES ('Eu aprendi a usa o ra o join o from e os demais omandos pra exucutar o diario de bordo ', '2024-07-31 17:51:00', 36);