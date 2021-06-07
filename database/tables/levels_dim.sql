-- Table: public.levels_dim

-- DROP TABLE public.levels_dim;

CREATE TABLE public.levels_dim
(
    levels_id bigint NOT NULL,
    levels_name "char",
    levels_short_name "char",
    CONSTRAINT pk_levels_id PRIMARY KEY (levels_id)
        INCLUDE(levels_id)
)

TABLESPACE pg_default;

ALTER TABLE public.levels_dim
    OWNER to postgres;