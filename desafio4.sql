SELECT a.nome_usuario AS usuario,
	CASE WHEN YEAR( MAX(b.data_reproducao) )  >= 2021 THEN 'Usuário ativo'
    ELSE 'Usuário inativo'
    END
AS status_usuario
FROM SpotifyClone.usuario AS a
INNER JOIN SpotifyClone.historico_de_reproducoes AS b
ON b.usuario_id = a.usuario_id
GROUP BY usuario
ORDER BY usuario ASC;