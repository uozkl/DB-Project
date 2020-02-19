create table location_dimension(
location_Key int,
city varchar,
location_name varchar,
neighborhood varchar,
longitude float,
latiude float,
crime_rate float,
primary key (location_Key)
);

create table crime_dimension(
crime_key int,
crime_category_name varchar,
crime_type_name varchar,
crime_details varchar,
start_hour int,
start_minute int,
start_second int,
end_hour int,
end_minute int,
end_second int,
report_hour int,
report_minute int,
report_second int,
primary key (crime_key)
);

create table date_dimension(
date_key int,
day_of_week int,
day_of_month int,
month int,
year int,
is_weekend int,
is_holiday_denver int,
holiday_name_denver varchar,
is_holiday_vancouver int,
holiday_name_vancouver varchar,
primary key (date_key)
);

create table event_dimension(
event_key int,
event_name varchar,
event_type varchar,
event_location varchar,
event_size varchar,
primary key (event_key)
);


create table crime_fact(
location_Key int,
crime_key int,
date_key int,
event_key int,
is_traffic int,
is_fatal int,
is_nighttime int,
primary key (location_Key, crime_key, date_key, event_key),
foreign key (location_key) references location_dimension(location_key),
foreign key (crime_key) references crime_dimension(crime_key),
foreign key (date_key) references date_dimension(date_key),
foreign key (event_key) references event_dimension(event_key)
);