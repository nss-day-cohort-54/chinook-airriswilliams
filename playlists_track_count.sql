Provide a query that shows the total number of tracks in each playlist. The resultant table should include:
Playlist name
Total number of tracks on each playlist

SELECT p.Name,
COUNT(pt.TrackId) AS TrackCount
FROM PlaylistTrack AS pt 
JOIN Playlist AS p 
    ON p.PlaylistId = pt.PlaylistId
GROUP BY p.Name