SELECT a.cancao AS nome, COUNT(b.id_cancao) AS reproducoes FROM SpotifyClone.historico_de_reproducoes AS b
INNER JOIN SpotifyClone.cancoes AS a
ON a.id_cancao = b.id_cancao
INNER JOIN SpotifyClone.usuario AS c
ON c.usuario_id = b.usuario_id
INNER JOIN SpotifyClone.plano AS d
ON d.id_plano = c.id_plano
WHERE d.nome_plano IN('gratuito', 'pessoal')
GROUP BY a.cancao
ORDER BY cancao ASC;