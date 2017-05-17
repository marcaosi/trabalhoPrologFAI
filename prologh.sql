create table aluno(
	id bigserial not null,
	nome varchar(50) not null,
	matricula bigint not null unique,
	turma_fk bigint null,
	primary key(id)
);


create table nota(
	id bigserial not null,
	nota float not null,
	bimestre bigint not null,
	aluno_fk bigint not null,
	materia_fk bigint not null,
	primary key(id)
);

create table turma(
	id bigserial not null,
	nome varchar(50) not null,
	codigo bigint not null unique,
	primary key(id)
);

create table professor(
	id bigserial not null,
	nome varchar(50) not null,
	email varchar(100) not null unique,
	primary key(id)
);

create table materia(
	id bigserial not null,
	nome varchar(50) not null unique,
	primary key(id)
);

create table turma_professor(
	professor_fk bigint not null,
	turma_fk bigint not null,
	materia_fk bigint not null,
	primary key(professor_fk, turma_fk, materia_fk)
);

alter table aluno add constraint aluno_turma_fk foreign key(turma_fk) references turma(id) on delete cascade on update cascade;
alter table nota add constraint nota_aluno_fk foreign key(aluno_fk) references aluno(id) on delete cascade on update cascade;
alter table nota add constraint nota_materia_fk foreign key(materia_fk) references materia(id) on delete cascade on update cascade;
alter table turma_professor add constraint turma_professor_professor_fk foreign key(professor_fk) references professor(id) on delete cascade on update cascade;
alter table turma_professor add constraint turma_professor_turma_fk foreign key(turma_fk) references turma(id) on delete cascade on update cascade;
alter table turma_professor add constraint turma_professor_materia_fk foreign key(materia_fk) references materia(id) on delete cascade on update cascade;