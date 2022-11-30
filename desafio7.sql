SELECT a.artista AS artista,
  b.nome_album AS album,
  COUNT(c.id_artista) AS seguidores
FROM SpotifyClone.artista AS a
INNER JOIN SpotifyClone.album AS b
ON b.id_artista = a.id_artista
INNER JOIN SpotifyClone.seguindo_artistas AS c
ON c.id_artista = a.id_artista
GROUP BY b.album_id
ORDER BY seguidores DESC, artista ASC, album ASC;