aluno(marcos).
aluno(lyan).

matricula(marcos, 123).
matricula(lyan, 1223).

turma(si).
idTurma(si,1).

turmaDoAluno(marcos, 1).
turmaDoAluno(lyan, 1).

materia(tsia).
idMateria(tsia, 1).

nota(marcos, 10, 1).

professor(julio).
emailProfessor(julio, "julio@fai-mg.br").
idProfessor(julio, 1).

turmaProfessor(1, 1, 1).
turmaEMateriaDoProfessor(X, Y, Z) :- professor(X), idProfessor(X, I), turmaProfessor(I, M, T), idMateria(Y, M), idTurma(Z, T).



alunoDaTurma(marcos, X) :- turmaDoAluno(marcos, Y), idTurma(X, Y).
alunosDaTurma(X, Y) :- idTurma(X, Z), turmaDoAluno(Y, Z).

notasDoAluno(X, Y, Z) :- aluno(X), idMateria(Z, A), nota(X, Y, A).

