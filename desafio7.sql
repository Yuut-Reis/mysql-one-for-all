SELECT art.name_artist AS artista,
       alb.name_album  AS album,
       COUNT(seguido.artist_id)  AS seguidores

FROM   SpotifyClone.artist AS art
       INNER JOIN
       SpotifyClone.album AS alb ON alb.artist_id = art.artist_id
       INNER JOIN
       SpotifyClone.Followed_artist AS seguido ON seguido.artist_id = art.artist_id
       GROUP BY artista, album
       ORDER BY seguidores DESC, artista, album;
