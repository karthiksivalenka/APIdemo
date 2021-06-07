-- Table: public.jobs_staging

-- DROP TABLE public.jobs_staging;

CREATE TABLE public.jobs_staging
(
    category_id "char",
    company_id bigint,
    company_name "char",
    company_short_name "char",
    job_id bigint,
    levels_name "char",
    levels_short_name "char",
    locations_name "char",
    model_type "char",
    name "char",
    publication_date "char",
    short_name "char",
    type "char"
)

TABLESPACE pg_default;

ALTER TABLE public.jobs_staging
    OWNER to postgres;
COMMENT ON TABLE public.jobs_staging
    IS 'staging table for jobs datapoint';