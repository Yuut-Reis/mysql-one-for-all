SELECT
  user.name_user AS usuario,
  COUNT(DISTINCT(history.music_id)) AS qtde_musicas_ouvidas,
  ROUND(SUM(music.duration /60), 2) AS total_minutos

FROM
  SpotifyClone.user AS user
  INNER JOIN
  SpotifyClone.history_music AS history ON user.user_id = history.user_id
  INNER JOIN
  SpotifyClone.music AS music ON music.music_id = history.music_id
  GROUP BY user.name_user
  ORDER BY user.name_user;