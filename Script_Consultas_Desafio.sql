-- 1° consulta:
SELECT Nome , Ano FROM Filmes

-- 2° consulta:
SELECT Nome , Ano, Duracao FROM Filmes ORDER BY Ano

-- 3° consulta:
SELECT Nome , Ano, Duracao FROM Filmes WHERE Nome LIKE  '%de volta para o futuro%'

-- 4° consulta:
SELECT Nome , Ano, Duracao FROM Filmes WHERE Ano = 1997

-- 5° consulta:
SELECT Nome , Ano, Duracao FROM Filmes WHERE Ano > 2000

-- 6° consulta:
SELECT Nome , Ano, Duracao FROM Filmes WHERE Duracao > 100  AND Duracao < 150 ORDER BY Duracao

-- 7° consulta:
SELECT   Ano, COUNT(*) as Quantidade FROM Filmes GROUP By ANO ORDER BY Quantidade DESC

-- 8° consulta:
SELECT   Id, PrimeiroNome, UltimoNome, Genero FROM Atores WHERE Genero = 'M' 

-- 9° consulta:
SELECT   Id, PrimeiroNome, UltimoNome, Genero FROM Atores WHERE Genero = 'F' ORDER BY PrimeiroNome

-- 10° consulta:
SELECT F.Nome,G.Genero FROM Filmes F
INNER JOIN FilmesGenero FG ON F.Id = FG.IdFilme
INNER JOIN Generos G on FG.IdGenero = G.Id

-- 11° consulta:
SELECT F.Nome,G.Genero FROM Filmes F
INNER JOIN FilmesGenero FG ON F.Id = FG.IdFilme
INNER JOIN Generos G on FG.IdGenero = G.Id
WHERE G.Genero LIKE '%Mistério%'

-- 12° consulta:
SELECT F.Nome,A.PrimeiroNome, A.UltimoNome, EF.Papel FROM Filmes F
INNER JOIN ElencoFilme EF ON F.Id = EF.IdFilme
INNER JOIN Atores A on EF.IdAtor = A.Id




