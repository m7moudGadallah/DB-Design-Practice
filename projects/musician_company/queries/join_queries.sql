use MusicCompany
go

-- how much albums that each musician produce
select m.id as musician_id, m.name as musician_name, count(p.album_id) as num_of_albums
from Musician m left join Produce p
on m.id = p.musician_id
group by m.id, m.name
order by num_of_albums desc, musician_id asc
go

-- Retrieve a list of musicians and the instruments they play.
select m.id as musician_id, m.name as musician_name, p.instrument_name
from Musician m inner join Play p
on m.id = p.musician_id
order by m.id asc
go


-- Retrieve a list of musicians and the songs they performed, including those who haven't performed any songs.
select m.id as musician_id, m.name as musician_name, coalesce(p.song_title, 'N/A') as song_title
from Musician m  left join Perform p
on m.id = p.musician_id
order by musician_id asc
go

-- Retrieve a list of instruments and the musicians who play them, including instruments without any players.
select i.name, coalesce(m.name, 'N/A') as musician_name
from Instrument i left join Play p
on i.name = p.instrument_name
left join Musician m
on p.musician_id = m.id
go
