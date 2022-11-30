SELECT COUNT(a.id_cancao) AS quantidade_musicas_no_historico FROM SpotifyClone.historico_de_reproducoes AS a
INNER JOIN SpotifyClone.usuario AS b
ON a.usuario_id = b.usuario_id
WHERE b.nome_usuario LIKE 'Barbara Liskov';