-- 1 - Buscar o nome e ano dos filmes
SELECT NOME, ANO FROM FILMES;
-- 2 - Buscar o nome e ano dos filmes, ordenados por ordem crescente pelo ano
SELECT NOME, ANO FROM FILMES ORDER BY ANO ASC;
-- 3 - Buscar pelo filme de volta para o futuro, trazendo o nome, ano e a duração
SELECT NOME,ANO, DURACAO FROM FILMES WHERE NOME LIKE '%DE VOLTA%';
-- 4 - Buscar os filmes lançados em 1997
SELECT NOME,ANO, DURACAO FROM FILMES WHERE ANO = 1997;
-- 5 - Buscar os filmes lançados APÓS o ano 2000
SELECT NOME,ANO, DURACAO FROM FILMES WHERE ANO >= 2000;
-- 6 - Buscar os filmes com a duracao maior que 100 e menor que 150, ordenando pela duracao em ordem crescente
SELECT NOME,ANO, DURACAO FROM FILMES WHERE DURACAO > 100 AND DURACAO < 150 ORDER BY DURACAO ASC;
-- 7 - Buscar a quantidade de filmes lançadas no ano, agrupando por ano, ordenando pela duracao em ordem decrescente
SELECT ANO, COUNT(ANO) AS QUANTIDADE FROM FILMES GROUP BY ANO ORDER BY QUANTIDADE DESC; --creio que o texto está errado, na query reproduzi a imagem que está colocando no lugar de 'duracao' a 'quantidade'
-- 8 - Buscar os Atores do gênero masculino, retornando o PrimeiroNome, UltimoNome
SELECT PRIMEIRONOME, ULTIMONOME FROM ATORES WHERE GENERO = 'M';
-- 9 - Buscar os Atores do gênero feminino, retornando o PrimeiroNome, UltimoNome, e ordenando pelo PrimeiroNome
SELECT PRIMEIRONOME, ULTIMONOME FROM ATORES WHERE GENERO = 'F' ORDER BY PRIMEIRONOME;
-- 10 - Buscar o nome do filme e o gênero
SELECT A.NOME, C.GENERO FROM FILMES A, FILMESGENERO B, GENEROS C WHERE A.ID = B.IDFILME AND B.IDGENERO = C.ID;
-- 11 - Buscar o nome do filme e o gênero do tipo "Mistério"
SELECT A.NOME, C.GENERO FROM FILMES A, FILMESGENERO B, GENEROS C WHERE A.ID = B.IDFILME AND B.IDGENERO = C.ID AND GENERO = 'Mistério';
-- 12 - Buscar o nome do filme e os atores, trazendo o PrimeiroNome, UltimoNome e seu Papel
SELECT C.NOME, A.PRIMEIRONOME, A.ULTIMONOME, B.PAPEL FROM ATORES A, ELENCOFILME B, FILMES C WHERE A.ID = B.IDATOR
AND C.ID = B.IDFILME;