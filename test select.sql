select * from civilian;
select * from singer
union
select * from social_cultured_civilian;
select * from 
singer
join
social_cultured_civilian
on singer.full_name = social_cultured_civilian.full_name;