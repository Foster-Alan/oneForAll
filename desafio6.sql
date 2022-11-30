SELECT 
  FORMAT(MIN(a.valor_plano), 2) AS faturamento_minimo,
  FORMAT(MAX(a.valor_plano), 2) AS faturamento_maximo,
  FORMAT(AVG(a.valor_plano), 2) AS faturamento_medio,
  FORMAT(SUM(a.valor_plano), 2) AS faturamento_total
FROM SpotifyClone.plano AS a
INNER JOIN SpotifyClone.usuario AS b
ON b.id_plano = a.id_plano;