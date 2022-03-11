--create table table_a (dimension_1 char(22), dimensioan_2 char(22), dimension_3 char(22), measure_1 numeric);
--create table table_b (dimension_1 char(22), dimension_2 char(22), measure_2 numeric);

--insert into table_a values('a', 'I','K', 1);
--insert into table_a values('a', 'J','L', 7);
--insert into table_a values('b', 'I','M', 2);
--insert into table_a values('c', 'J','N', 5);
--insert into table_b values('a', 'J', 7);
--insert into table_b values('b', 'J', 10);
--insert into table_b values('d', 'J', 4);

with 
table_aa as (
select dimension_1, case dimension_1
when  'a' then 'W'
WHEN  'b' then 'X'
WHEN 'c' then 'Y'
when 'd' then 'Z'   end dimension_2, dimension_3, measure_1
 from table_a),

table_bb as (
select dimension_1, case dimension_1
when  'a' then 'W'
WHEN  'b' then 'X'
WHEN 'c' then 'Y'
when 'd' then 'Z'   end dimension_2, measure_2 from table_b)

select dimension_1, dimension_2, measure_1, 0 as measure_2 from table_aa
union
select dimension_1, dimension_2, 0,  measure_2 from table_bb
;
