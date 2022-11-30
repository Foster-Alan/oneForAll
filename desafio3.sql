SELECT a.nome_usuario AS usuario,
	COUNT(b.id_cancao) AS qt_de_musicas_ouvidas,
    ROUND(SUM(c.duracao_segundos / 60), 2) AS total_minutos        
FROM SpotifyClone.usuario AS a
INNER JOIN SpotifyClone.historico_de_reproducoes AS b
ON b.usuario_id = a.usuario_id
INNER JOIN SpotifyClone.cancoes AS c
ON c.id_cancao = b.id_cancao
GROUP BY a.usuario_id
ORDER BY a.nome_usuario;
