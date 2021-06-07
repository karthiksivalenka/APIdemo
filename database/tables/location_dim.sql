-- Table: public.location_dim

-- DROP TABLE public.location_dim;

CREATE TABLE public.location_dim
(
    location_id bigint NOT NULL,
    locations_name "char",
    CONSTRAINT pk_location_id PRIMARY KEY (location_id)
        INCLUDE(location_id)
)

TABLESPACE pg_default;

ALTER TABLE public.location_dim
    OWNER to postgres;