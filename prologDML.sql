insert into professor(nome, email) values('Julio', 'julio@fai-mg.br');
insert into professor(nome, email) values('Afonso', 'acs@fai-mg.br');
insert into professor(nome, email) values('Evandro', 'evandro@fai-mg.br');

insert into turma(nome, codigo) values('SI-A', 123);
insert into turma(nome, codigo) values('SI-B', 456);
insert into turma(nome, codigo) values('SI-C', 7789);

insert into aluno(nome, matricula, turma_fk) values('Marcos', 1201400278, 1);
insert into aluno(nome, matricula, turma_fk) values('Carol', 1201410080, 1);
insert into aluno(nome, matricula, turma_fk) values('Douglas', 1201400275, 1);
insert into aluno(nome, matricula, turma_fk) values('Tamires', 1201400172, 2);
insert into aluno(nome, matricula, turma_fk) values('Ana Julia', 1201400122, 2);
insert into aluno(nome, matricula, turma_fk) values('Lyan', 1201400180, 3);
insert into aluno(nome, matricula, turma_fk) values('Giovana', 1201410182, 3);
insert into aluno(nome, matricula, turma_fk) values('Gripado', 1201410002, 3);
insert into aluno(nome, matricula, turma_fk) values('Sem Noção', 1201410112, 3);

insert into materia(nome) values('TTI');
insert into materia(nome) values('LDS');
insert into materia(nome) values('TSIA');
insert into materia(nome) values('ESS');
insert into materia(nome) values('GPS');
insert into materia(nome) values('REDES');

insert into nota(nota, bimestre, aluno_fk, materia_fk) values(70, 1, 1, 1);
insert into nota(nota, bimestre, aluno_fk, materia_fk) values(50, 2, 1, 1);
insert into nota(nota, bimestre, aluno_fk, materia_fk) values(60, 1, 1, 2);
insert into nota(nota, bimestre, aluno_fk, materia_fk) values(55, 2, 1, 2);

insert into nota(nota, bimestre, aluno_fk, materia_fk) values(65, 1, 2, 1);
insert into nota(nota, bimestre, aluno_fk, materia_fk) values(85, 2, 2, 1);
insert into nota(nota, bimestre, aluno_fk, materia_fk) values(90, 1, 2, 2);
insert into nota(nota, bimestre, aluno_fk, materia_fk) values(100, 2, 2, 2);

insert into nota(nota, bimestre, aluno_fk, materia_fk) values(65, 1, 3, 1);
insert into nota(nota, bimestre, aluno_fk, materia_fk) values(74, 2, 3, 1);
insert into nota(nota, bimestre, aluno_fk, materia_fk) values(95, 1, 3, 2);
insert into nota(nota, bimestre, aluno_fk, materia_fk) values(12, 2, 3, 2);

insert into nota(nota, bimestre, aluno_fk, materia_fk) values(32, 1, 4, 3);
insert into nota(nota, bimestre, aluno_fk, materia_fk) values(25, 2, 4, 4);
insert into nota(nota, bimestre, aluno_fk, materia_fk) values(20, 1, 4, 3);
insert into nota(nota, bimestre, aluno_fk, materia_fk) values(45, 2, 4, 4);

insert into nota(nota, bimestre, aluno_fk, materia_fk) values(45, 1, 5, 3);
insert into nota(nota, bimestre, aluno_fk, materia_fk) values(31, 2, 5, 4);
insert into nota(nota, bimestre, aluno_fk, materia_fk) values(10, 1, 5, 3);
insert into nota(nota, bimestre, aluno_fk, materia_fk) values(8, 2, 5, 4);

insert into nota(nota, bimestre, aluno_fk, materia_fk) values(90, 1, 6, 5);
insert into nota(nota, bimestre, aluno_fk, materia_fk) values(71, 2, 6, 6);
insert into nota(nota, bimestre, aluno_fk, materia_fk) values(44, 1, 6, 5);
insert into nota(nota, bimestre, aluno_fk, materia_fk) values(11, 2, 6, 6);

insert into nota(nota, bimestre, aluno_fk, materia_fk) values(80, 1, 7, 6);
insert into nota(nota, bimestre, aluno_fk, materia_fk) values(65, 2, 7, 5);
insert into nota(nota, bimestre, aluno_fk, materia_fk) values(22, 1, 7, 6);
insert into nota(nota, bimestre, aluno_fk, materia_fk) values(29, 2, 7, 5);

insert into nota(nota, bimestre, aluno_fk, materia_fk) values(27, 1, 8, 5);
insert into nota(nota, bimestre, aluno_fk, materia_fk) values(34, 2, 8, 5);
insert into nota(nota, bimestre, aluno_fk, materia_fk) values(35, 1, 8, 6);
insert into nota(nota, bimestre, aluno_fk, materia_fk) values(37, 2, 8, 6);

insert into nota(nota, bimestre, aluno_fk, materia_fk) values(65, 1, 9, 6);
insert into nota(nota, bimestre, aluno_fk, materia_fk) values(41, 2, 9, 5);
insert into nota(nota, bimestre, aluno_fk, materia_fk) values(100, 1, 9, 5);
insert into nota(nota, bimestre, aluno_fk, materia_fk) values(100, 2, 9, 6);

insert into turma_professor(turma_fk, professor_fk, materia_fk) values(1, 1, 1);
insert into turma_professor(turma_fk, professor_fk, materia_fk) values(1, 1, 2);
insert into turma_professor(turma_fk, professor_fk, materia_fk) values(2, 2, 4);
insert into turma_professor(turma_fk, professor_fk, materia_fk) values(3, 2, 5);
insert into turma_professor(turma_fk, professor_fk, materia_fk) values(2, 3, 3);
insert into turma_professor(turma_fk, professor_fk, materia_fk) values(3, 3, 6);
