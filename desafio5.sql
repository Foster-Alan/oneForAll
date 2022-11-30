SELECT a.cancao AS cancao, COUNT(b.id_cancao) AS reproducoes FROM SpotifyClone.cancoes AS a
INNER JOIN SpotifyClone.historico_de_reproducoes AS b
ON a.id_cancao = b.id_cancao
GROUP BY cancao
ORDER BY reproducoes DESC, cancao
LIMIT 2;