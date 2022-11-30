SELECT a.artista AS artista,
  b.nome_album AS album
FROM SpotifyClone.artista AS a
INNER JOIN SpotifyClone.album AS b
WHERE a.artista LIKE 'Elis Regina' AND b.id_artista = '3';