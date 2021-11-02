 1. What will happen when the code is executed?
 
DECLARE
   -- Global variables
   num number := 95;

BEGIN
   dbms_output.put_line('num:  '|| num1);
   DECLARE
   -- Local variables
   num number := 195;

 BEGIN
   dbms_output.put_line ('num:  '|| num1);

  END;
END;

ANS : A - It won’t execute, it has syntax error




2. What is wrong in the following code?

DECLARE

c_id := 1;
c_name  customers.name%type;

c_addr  customers.address%type;

BEGIN

   SELECT name, address INTO c_name, c_addr
   FROM customers
   WHERE id = c_id;

END;

ANS : D - The variable c_id should be declared as a type-compatible   variable as − c_id customers.id%type := 1;





3. What will be the output of the following code snippet?

DECLARE

   a number (2) := 21;
   b number (2) := 10;

BEGIN

   IF (a <= b ) THEN
     dbms_output.put_line (a);
   END IF;

   IF ( b >= a) THEN
    dbms_output.put_line(a);
   END IF;

   IF (a <> b) THEN
    dbms_output.put_line (b);
   END IF;

END;


ANS: B - 21