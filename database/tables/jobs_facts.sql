-- Table: public.jobs_facts

-- DROP TABLE public.jobs_facts;

CREATE TABLE public.jobs_facts
(
    category_id bigint,
    company_id bigint,
    datekey bigint,
    levels_id bigint,
    location_id bigint,
    jobs_id bigint NOT NULL,
    model_type "char",
    job_name "char",
    job_short_name "char",
    job_type "char",
    publication_date "char",
    CONSTRAINT pk_jobs_id PRIMARY KEY (jobs_id)
        INCLUDE(jobs_id),
    CONSTRAINT fk_category_id FOREIGN KEY (category_id)
        REFERENCES public.category_dim (category_id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT fk_company_id FOREIGN KEY (company_id)
        REFERENCES public.company_dim (company_id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT fk_datekey FOREIGN KEY (datekey)
        REFERENCES public.dates_dim (datekey) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT fk_levels_id FOREIGN KEY (levels_id)
        REFERENCES public.levels_dim (levels_id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT fk_location_id FOREIGN KEY (location_id)
        REFERENCES public.location_dim (location_id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)

TABLESPACE pg_default;

ALTER TABLE public.jobs_facts
    OWNER to postgres;
-- Index: fki_fk_category_id

-- DROP INDEX public.fki_fk_category_id;

CREATE INDEX fki_fk_category_id
    ON public.jobs_facts USING btree
    (category_id ASC NULLS LAST)
    TABLESPACE pg_default;
-- Index: fki_fk_company_id

-- DROP INDEX public.fki_fk_company_id;

CREATE INDEX fki_fk_company_id
    ON public.jobs_facts USING btree
    (company_id ASC NULLS LAST)
    TABLESPACE pg_default;
-- Index: fki_fk_datekey

-- DROP INDEX public.fki_fk_datekey;

CREATE INDEX fki_fk_datekey
    ON public.jobs_facts USING btree
    (datekey ASC NULLS LAST)
    TABLESPACE pg_default;
-- Index: fki_fk_levels_id

-- DROP INDEX public.fki_fk_levels_id;

CREATE INDEX fki_fk_levels_id
    ON public.jobs_facts USING btree
    (levels_id ASC NULLS LAST)
    TABLESPACE pg_default;
-- Index: fki_fk_location_id

-- DROP INDEX public.fki_fk_location_id;

CREATE INDEX fki_fk_location_id
    ON public.jobs_facts USING btree
    (location_id ASC NULLS LAST)
    TABLESPACE pg_default;