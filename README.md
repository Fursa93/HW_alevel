
select name_a, name  from avto inner join model on (avto.id = model.model_id);

select name_a, name_m from avto left outer join manufacturer on (avto.id = manufacturer.manufacturer_id);

select name_a, name_m from avto join manufacturer on (avto.id = manufacturer.manufacturer_id);

select name_a, name_m from avto right outer join manufacturer on (avto.id = manufacturer.manufacturer_id);

select * from avto inner join manufacturer on (avto.id = manufacturer.id);

select name_a, name_m from avto inner join manufacturer on (avto.name_a = manufacturer.name_m);

select name_a, name_m from avto inner join manufacturer on (avto.name_a = manufacturer.name_m);

select name_a, name_m from avto left outer join manufacturer on (avto.name_a = manufacturer.name_m);
