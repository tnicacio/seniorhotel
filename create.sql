create table tb_booking (id int8 generated by default as identity, dt_checkin TIMESTAMP WITHOUT TIME ZONE, dt_checkout TIMESTAMP WITHOUT TIME ZONE, end_date TIMESTAMP WITHOUT TIME ZONE, expected_price float8, real_price float8, start_date TIMESTAMP WITHOUT TIME ZONE, garage_id int8, person_id int8, room_id int8, primary key (id));
create table tb_garage (id int8 generated by default as identity, is_available boolean default true, name varchar(255), primary key (id));
create table tb_person (id int8 generated by default as identity, age int4, email varchar(255), name varchar(255), primary key (id));
create table tb_room (id int8 generated by default as identity, is_available boolean default true, name varchar(255), primary key (id));
alter table if exists tb_booking add constraint FKss52qyxxq6jwgxvmdmno8y650 foreign key (garage_id) references tb_garage;
alter table if exists tb_booking add constraint FKo6n48ps7va9v0ny7mvyauhlgj foreign key (person_id) references tb_person;
alter table if exists tb_booking add constraint FKqf1c9mtlusmub4e5eac12rxhm foreign key (room_id) references tb_room;
