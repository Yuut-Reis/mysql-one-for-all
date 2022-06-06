SELECT user.name_user AS usuario,

CASE
       WHEN MAX(YEAR(history.reproduction_date)) = 2021 THEN "Usuário ativo" 
       ELSE "Usuário inativo" END AS condicao_usuario

FROM   SpotifyClone.history_music AS history
       INNER JOIN
       SpotifyClone.user AS user ON history.user_id = user.user_id
       GROUP BY usuario
       ORDER BY usuario;
