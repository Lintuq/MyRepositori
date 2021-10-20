CREATE FUNCTION mysumma (a integer, b integer)
  RETURNS integer
  LANGUAGE plpgsql AS
$$
  BEGIN
       RETURN a + b;
  END;
$$;

SELECT mysumma(x, y) FROM test;
