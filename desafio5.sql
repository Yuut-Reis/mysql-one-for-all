SELECT music.name_music AS cancao,
       COUNT(user_id) AS reproducoes

FROM   SpotifyClone.history_music AS history
       INNER JOIN
       SpotifyClone.music AS music ON history.music_id = music.music_id
       GROUP BY cancao 
       ORDER BY reproducoes DESC, cancao
       LIMIT 2;
