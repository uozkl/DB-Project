\copy location_dimension from 'D:\DB-Project\Dimensions\dimension_location.csv' with delimiter ',' csv header;

\copy crime_dimension from 'D:\DB-Project\Dimensions\dimension_crime.csv' with delimiter ',' csv header;

\copy date_dimension from 'D:\DB-Project\Dimensions\dimension_date.csv' with delimiter ',' csv header;

\copy event_dimension from 'D:\DB-Project\Dimensions\dimension_event.csv' with delimiter ',' csv header;

\copy crime_fact from 'D:\DB-Project\Dimensions\dimension_fact.csv' with delimiter ',' csv header;