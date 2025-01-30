select name from country where headofstate is not null and region = 'Southern Europe' 
except
select name from country where governmentform = 'Constitutional Monarchy'
order by name;