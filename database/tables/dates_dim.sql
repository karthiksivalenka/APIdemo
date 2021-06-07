-- Table: public.dates_dim

-- DROP TABLE public.dates_dim;

CREATE TABLE public.dates_dim
(
    datekey bigint NOT NULL,
    full_date_alt_key date,
    "DayNum_of_Month" bigint,
    "CalendarMonth" bigint,
    "CalendarQuarter" bigint,
    "CalendarYear" bigint,
    CONSTRAINT pk_datekey PRIMARY KEY (datekey)
        INCLUDE(datekey)
)

TABLESPACE pg_default;

ALTER TABLE public.dates_dim
    OWNER to postgres;