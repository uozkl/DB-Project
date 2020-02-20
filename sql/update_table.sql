\copy location_dimension from '.\Dimensions\dimension_location.csv' with delimiter ',' csv header;

\copy crime_dimension from '.\Dimensions\dimension_crime.csv' with delimiter ',' csv header;

\copy date_dimension from '.\Dimensions\dimension_date.csv' with delimiter ',' csv header;

\copy event_dimension from '.\Dimensions\dimension_event.csv' with delimiter ',' csv header;

\copy crime_fact from '.\Dimensions\dimension_fact.csv' with delimiter ',' csv header;