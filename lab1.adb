-- Lab 1 in fle Lab1.adb
WITH Ada.Text_IO; USE Ada.Text_IO;
with CreateList;

procedure Lab1  is -- in file Lab1.adb
-- declarations
   package IIO is new Ada.Text_IO.Integer_IO(Integer); use IIO;
   Size: Integer;
   length: integer;
BEGIN
   put("enter size for 'C' option: ");
   Get(Size);
   DECLARE
      PROCEDURE MyPut(X: Integer) IS
         begin IIO.Put(X); end;
      PACKAGE C_Option IS NEW CreateList(size, Integer, MyPut);
      use C_Option;
   begin
      -- process transactions for "C" option using a loop to read and print results
      FOR K IN 1..1 LOOP
         C_Option.PrintList;
         C_Option.AddToList(12);
         C_Option.AddToList(3);
         C_Option.AddtoList(7);
         length:= C_Option.ListLength;
         FOR Pt IN 1..length LOOP
              C_Option.PrintList(pt);
         END LOOP;
         C_Option.DeleteList(2);
         C_Option.PrintList;
      END LOOP;
   end;
-- CList no longer in scope.  Space popped/reclaimed automatically from stack.
   put("Enter size for 'B' option: ");
   get(size); -- for "B" option
   declare
      -- use the same format for creating the "C" list if you sip the "C" lab option.
      package Float_IO is new Ada.Text_IO.Float_IO(Float); use Float_IO;
      PROCEDURE MyPutF(X: float) IS
         begin Float_IO.Put(X); end;
      package BList is new CreateList( size, float, myPutF ); use BList;

      BEGIN
         FOR K IN 1..1 LOOP
            BList.PrintList;
            BList.AddToList(12.7);
            BList.AddToList(3.5);
            BList.AddToList(7.6);
            BList.AddToList(9.6);
            BList.PrintList;
            Length := BList.ListLength;
            FOR Pt IN 1..Length LOOP
               PrintList(Pt);
            END LOOP;
            DeleteList(2);
            PrintList;
            end loop;
     null;
   end;
-- BList no longer in scope.  Space popped/reclaimed automatically from stack.

   put("Enter size for 'A' option:");
   get(size); -- for "A" option
   declare
      type JobType is (Programmer, Software_Engineer, Sales, Inventory_Control, customer, manager);
      PACKAGE JobTypeIO IS NEW Ada.Text_IO.Enumeration_IO(JobType);  USE JobTypeIO;
      PROCEDURE MyPutEnum(X: JobType) IS
         begin JobTypeIO.Put(X); end;

      -- use the same format for creating the "C" list if you sip the "C" lab option.
      package AList is new CreateList( size,  JobType, MyPutEnum ); use AList;

      --job: JobType;
      BEGIN
         FOR K IN 1..1 LOOP
            PrintList;
            Put_Line("");
            AddToList(Programmer);
            AddToList(Software_Engineer);
            AddToList(Software_Engineer);
            AddToList(Sales);
            AddToList(Customer);
            AddToList(Programmer);
            PrintList;
            Put_Line("");
            Length:= ListLength;
            FOR Pt IN 1..Length LOOP
               PrintList(Pt);
            END LOOP;
            DeleteList(4);
            PrintList;
         end loop;
     null;
   end;
-- AList no longer in scope.  Space popped/reclaimed automatically from stack.

end Lab1;
