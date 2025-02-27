{{	config(	materialized = 'table',
		alias = 'srini_schema_change_t3'
	)
}}
use SRINI_P2;
with srini_schema_change_test1 as(

	select * from SRINI_P1.SRINI_P2.NETFLIX_DATA where type = 'TV Show'
)
select * from srini_schema_change_test
