CREATE FUNCTION mysumma2(a integer, b integer, c integer)
       RETURNS INTEGER
       LANGUAGE pllua AS
$$
       local d = (a+b)*c
       return d
$$;

SELECT mysumma2(x,y,5) FROM test;
