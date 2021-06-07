-- Table: public.category_dim

-- DROP TABLE public.category_dim;

CREATE TABLE public.category_dim
(
    category_id bigint NOT NULL,
    category_name "char",
    CONSTRAINT pk_category_id PRIMARY KEY (category_id)
        INCLUDE(category_id)
)

TABLESPACE pg_default;

ALTER TABLE public.category_dim
    OWNER to postgres;