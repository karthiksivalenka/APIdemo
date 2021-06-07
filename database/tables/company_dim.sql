-- Table: public.company_dim

-- DROP TABLE public.company_dim;

CREATE TABLE public.company_dim
(
    company_id bigint NOT NULL,
    company_name "char",
    company_short_name "char",
    CONSTRAINT pk_company_id PRIMARY KEY (company_id)
        INCLUDE(company_id)
)

TABLESPACE pg_default;

ALTER TABLE public.company_dim
    OWNER to postgres;