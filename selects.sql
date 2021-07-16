SELECT MAX(NOTA), MIN(nota) FROM nota;

SELECT cod_disciplina, MAX(NOTA), MIN(nota) FROM nota GROUP BY cod_disciplina;

SELECT n_aluno, avg(nota) FROM nota group by n_aluno HAVING avg(nota)>12;

SELECT cod_disciplina, avg(nota)*1.15 FROM nota WHERE ano_lectivo='2020/21' group by cod_disciplina;

SELECT a.nome, n.ano_lectivo 'Ano Letivo', avg(n.nota) 'Media Nota AVG', SUM(n.nota)/count(n.nota) 'Media Nota Calc'
FROM nota as n
INNER JOIN aluno as a
on a.numero=n.n_aluno
WHERE n.ano_lectivo='2020/21' group by a.nome;

