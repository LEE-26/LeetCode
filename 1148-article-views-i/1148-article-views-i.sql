# no primary key(column with unique values), have duplicate rows
# find all the authors that viewed at least one of their own articles

select distinct author_id as id
from views
where author_id = viewer_id
order by id
