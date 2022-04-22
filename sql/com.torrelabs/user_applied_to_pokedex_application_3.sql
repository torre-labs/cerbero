-- AUTO-GENERATED BY igluctl DO NOT EDIT
-- Generator: igluctl 0.8.0
-- Generated: 2022-04-13 22:24 UTC

CREATE SCHEMA IF NOT EXISTS atomic;

CREATE TABLE IF NOT EXISTS atomic.com_torrelabs_user_applied_to_pokedex_application_3 (
    "schema_vendor"            VARCHAR(128)     ENCODE ZSTD NOT NULL,
    "schema_name"              VARCHAR(128)     ENCODE ZSTD NOT NULL,
    "schema_format"            VARCHAR(128)     ENCODE ZSTD NOT NULL,
    "schema_version"           VARCHAR(128)     ENCODE ZSTD NOT NULL,
    "root_id"                  CHAR(36)         ENCODE RAW  NOT NULL,
    "root_tstamp"              TIMESTAMP        ENCODE ZSTD NOT NULL,
    "ref_root"                 VARCHAR(255)     ENCODE ZSTD NOT NULL,
    "ref_tree"                 VARCHAR(1500)    ENCODE ZSTD NOT NULL,
    "ref_parent"               VARCHAR(255)     ENCODE ZSTD NOT NULL,
    "external_application_url" VARCHAR(5000)    ENCODE ZSTD NOT NULL,
    "gg_id"                    DOUBLE PRECISION ENCODE RAW  NOT NULL,
    "opportunity_id"           DOUBLE PRECISION ENCODE RAW  NOT NULL,
    "applicant_username"       VARCHAR(50)      ENCODE ZSTD,
    "email"                    VARCHAR(100)     ENCODE ZSTD,
    "phone_number"             VARCHAR(50)      ENCODE ZSTD,
    "sharing_token"            VARCHAR(50)      ENCODE ZSTD,
    "tracker_location"         VARCHAR(100)     ENCODE ZSTD,
    FOREIGN KEY (root_id) REFERENCES atomic.events(event_id)
)
DISTSTYLE KEY
DISTKEY (root_id)
SORTKEY (root_tstamp);

COMMENT ON TABLE atomic.com_torrelabs_user_applied_to_pokedex_application_3 IS 'iglu:com.torrelabs/UserAppliedToPokedexApplication/jsonschema/3-0-0';
