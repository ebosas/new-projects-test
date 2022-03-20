{{config(
	schema = "promethium",
	materialized = "table"
)}}
WITH select_step1 as (
  SELECT
    "customer"."id" AS "id",
    "customer"."name" AS "name",
    "customer"."city" AS "city",
    "customer"."industry_type" AS "industry_type"
  FROM
    "promethium"."customer"
)
SELECT
  *
FROM
  select_step1
LIMIT
  100