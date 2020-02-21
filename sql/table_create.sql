create table location_dimension(
location_Key int,
city varchar,
location_name varchar,
neighborhood varchar,
latitude float,
longitude float,
crime_rate float,
primary key (location_Key)
);

create table crime_dimension(
crime_key int,
crime_category_name varchar,
crime_type_name varchar,
crime_details varchar,
start_hour float,
start_minute float,
start_second float,
end_hour float,
end_minute float,
end_second float,
report_hour float,
report_minute float,
report_second float,
crime_severity_index float,
primary key (crime_key)
);

create table date_dimension(
date_key int,
year int,
month int,
day int,
day_of_week varchar,
is_weekend int,
is_holiday_vancouver int,
holiday_name_vancouver varchar,
is_holiday_denver int,
holiday_name_denver varchar,
primary key (date_key)
);

create table event_dimension(
event_key float,
event_name varchar,
event_type varchar,
event_location varchar,
event_neighbourhood varchar,
event_city varchar,
event_start_date int,
event_end_date int,
event_location_size varchar,
primary key (event_key)
);


create table crime_fact(
location_Key int,
crime_key int,
date_key int,
event_key float,
is_traffic int,
is_fatal int,
is_nighttime int,
primary key (location_Key, crime_key, date_key),
foreign key (location_key) references location_dimension(location_key),
foreign key (crime_key) references crime_dimension(crime_key),
foreign key (date_key) references date_dimension(date_key),
foreign key (event_key) references event_dimension(event_key)
);