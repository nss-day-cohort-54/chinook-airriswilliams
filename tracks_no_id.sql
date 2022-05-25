Provide a query that shows all the Tracks, but displays no IDs. The resultant table should include:
Album name
Media type
Genre

SELECT t.name track_name, a.title album_title, m.name media_type, g.name genre 
FROM track AS t 
JOIN mediatype AS m 
    ON t.mediaTypeId = m.MediaTypeId
JOIN genre AS g 
    on t.GenreId = g.GenreId
JOIN album a 
    ON t.AlbumId = a.AlbumId 