CREATE TABLE foo ( id serial, data varchar);


CREATE OR REPLACE FUNCTION foo_after_insert_func()
RETURNS trigger AS
$BODY$
    BEGIN
        PERFORM pg_notify('foo', new.data);
        return null;
    END;
$BODY$ language plpgsql;

CREATE TRIGGER after_insert_trig AFTER INSERT ON foo FOR EACH ROW EXECUTE PROCEDURE foo_after_insert_func();
