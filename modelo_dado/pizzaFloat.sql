
CREATE SEQUENCE public.tbborda_borcodigo_seq;

CREATE TABLE public.tbborda (
                borcodigo SMALLINT NOT NULL DEFAULT nextval('public.tbborda_borcodigo_seq'),
                bortitulo VARCHAR(25) NOT NULL,
                bordescricao VARCHAR(50) NOT NULL,
                CONSTRAINT pk_tbborda PRIMARY KEY (borcodigo)
);


ALTER SEQUENCE public.tbborda_borcodigo_seq OWNED BY public.tbborda.borcodigo;

CREATE SEQUENCE public.tbbebida_bebcodigo_seq;

CREATE TABLE public.tbbebida (
                bebcodigo SMALLINT NOT NULL DEFAULT nextval('public.tbbebida_bebcodigo_seq'),
                bebdescricao VARCHAR(50) NOT NULL,
                bebvalor NUMERIC(10,2) NOT NULL,
                CONSTRAINT pk_tbbebida PRIMARY KEY (bebcodigo)
);


CREATE SEQUENCE public.tbsabordoce_sbscodigo_seq;

CREATE TABLE public.tbsabordoce (
                sbscodigo SMALLINT NOT NULL DEFAULT nextval('public.tbsabordoce_sbscodigo_seq'),
                sbddescricao VARCHAR(150) NOT NULL,
                sbdtitulo VARCHAR(50) NOT NULL,
                CONSTRAINT pk_tbsabordoce PRIMARY KEY (sbscodigo)
);


ALTER SEQUENCE public.tbsabordoce_sbscodigo_seq OWNED BY public.tbsabordoce.sbscodigo;

CREATE SEQUENCE public.tbsaborsalgado_sbscodigo_seq;

CREATE TABLE public.tbsaborsalgado (
                sbscodigo SMALLINT NOT NULL DEFAULT nextval('public.tbsaborsalgado_sbscodigo_seq'),
                sbsdescricao VARCHAR(150) NOT NULL,
                sbstitulo VARCHAR(50) NOT NULL,
                CONSTRAINT pk_tbsaborsalgado PRIMARY KEY (sbscodigo)
);


ALTER SEQUENCE public.tbsaborsalgado_sbscodigo_seq OWNED BY public.tbsaborsalgado.sbscodigo;

CREATE SEQUENCE public.tbtamanhopizza_tmpcodigo_seq;

CREATE TABLE public.tbtamanhopizza (
                tmpcodigo SMALLINT NOT NULL DEFAULT nextval('public.tbtamanhopizza_tmpcodigo_seq'),
                tmpdescricao VARCHAR(50) NOT NULL,
                tmptamanho INTEGER NOT NULL,
                tmpvalor NUMERIC(10,2) NOT NULL,
                CONSTRAINT pk_tbtamanhopizza PRIMARY KEY (tmpcodigo)
);


ALTER SEQUENCE public.tbtamanhopizza_tmpcodigo_seq OWNED BY public.tbtamanhopizza.tmpcodigo;

CREATE TABLE public.tbpizza (
                tmpcodigo SMALLINT NOT NULL,
                borcodigo SMALLINT NOT NULL,
                CONSTRAINT pk_tbpizza PRIMARY KEY (tmpcodigo)
);


CREATE SEQUENCE public.tbpedido_pedcodigo_seq;

CREATE TABLE public.tbpedido (
                pedcodigo BIGINT NOT NULL DEFAULT nextval('public.tbpedido_pedcodigo_seq'),
                pedcliente VARCHAR(100) NOT NULL,
                tmpcodigo SMALLINT NOT NULL,
                CONSTRAINT pk_tbpedido PRIMARY KEY (pedcodigo)
);


ALTER SEQUENCE public.tbpedido_pedcodigo_seq OWNED BY public.tbpedido.pedcodigo;

CREATE SEQUENCE public.tbbebida_new_column_seq;

CREATE TABLE public.tbbebidapedido (
                bebcodigo SMALLINT NOT NULL DEFAULT nextval('public.tbbebida_new_column_seq'),
                pedcodigo BIGINT NOT NULL,
                CONSTRAINT pk_tbbebidapedido PRIMARY KEY (bebcodigo)
);


ALTER SEQUENCE public.tbbebida_new_column_seq OWNED BY public.tbbebidapedido.bebcodigo;

CREATE TABLE public.tbpizzadoce (
                sbscodigo SMALLINT NOT NULL,
                tmpcodigo SMALLINT NOT NULL,
                CONSTRAINT pk_tbpizzadoce PRIMARY KEY (sbscodigo, tmpcodigo)
);


CREATE TABLE public.tbpizzasalgado (
                sbscodigo SMALLINT NOT NULL,
                tmpcodigo SMALLINT NOT NULL,
                CONSTRAINT pk_tbpizzasalgado PRIMARY KEY (sbscodigo, tmpcodigo)
);


ALTER TABLE public.tbpizza ADD CONSTRAINT tbborda_tbpizza_fk
FOREIGN KEY (borcodigo)
REFERENCES public.tbborda (borcodigo)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE public.tbbebidapedido ADD CONSTRAINT tbbebida_tbbebidapedido_fk
FOREIGN KEY (bebcodigo)
REFERENCES public.tbbebida (bebcodigo)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE public.tbpizzadoce ADD CONSTRAINT tbsabordoce_tbpizzadoce_fk
FOREIGN KEY (sbscodigo)
REFERENCES public.tbsabordoce (sbscodigo)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE public.tbpizzasalgado ADD CONSTRAINT tbsaborsalgado_tbpizzasalgado_fk
FOREIGN KEY (sbscodigo)
REFERENCES public.tbsaborsalgado (sbscodigo)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE public.tbpizza ADD CONSTRAINT tbtamanhopizza_tbpizza_fk
FOREIGN KEY (tmpcodigo)
REFERENCES public.tbtamanhopizza (tmpcodigo)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE public.tbpizzasalgado ADD CONSTRAINT tbpizza_tbpizzasalgado_fk
FOREIGN KEY (tmpcodigo)
REFERENCES public.tbpizza (tmpcodigo)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE public.tbpizzadoce ADD CONSTRAINT tbpizza_tbpizzadoce_fk
FOREIGN KEY (tmpcodigo)
REFERENCES public.tbpizza (tmpcodigo)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE public.tbpedido ADD CONSTRAINT tbpizza_tbpedido_fk
FOREIGN KEY (tmpcodigo)
REFERENCES public.tbpizza (tmpcodigo)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE public.tbbebidapedido ADD CONSTRAINT tbpedido_tbbebidapedido_fk
FOREIGN KEY (pedcodigo)
REFERENCES public.tbpedido (pedcodigo)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;
