WITH Ada.Text_IO; USE Ada.Text_IO;
package body CreateList is -- in file CreateList.adb
   Len: Integer range 0..size;
   list: array(1..size) of itemType;
   Index: integer range 0..size;


   PROCEDURE AddToList( ListItem: IN ItemType ) IS
   BEGIN
      IF Len < Size THEN
         Index := Index + 1;
         List(Index):= ListItem;
         len := len + 1;
      ELSE
         Put_Line("Overflow! Operation aborted.");
         END IF;
      end AddToList;
   PROCEDURE PrintList IS
   BEGIN
      IF len = 0 THEN
         Put_Line("The list is empty.");
      else
         index := 1;
         WHILE Index <= Len loop
            Put(List(Index));
            Put_Line("");
            Index := Index +1;
         end loop;
      end if;
      end PrintList;
   PROCEDURE PrintList( Pt: IN Integer) IS
   BEGIN
      IF(Pt > size) then
         Put("Out of Bounds! Cannot print.");
      ELSE
         Put(List(Pt));
         Put(",");
         end if;
      NULL;
      end PrintList;
   PROCEDURE DeleteList( Pt: IN Integer) IS
   BEGIN
      IF Index = 0 THEN
         Put_Line ("Underflow! Delete Aborted.");
      ELSE
         FOR k IN pt .. (len - 1) LOOP
               List(k) := List(k+1);
         END LOOP;
         len := len - 1;
         end if;
      NULL;
      end DeleteList;
   function ListLength return Integer is
   BEGIN
      return len;
      end ListLength;
BEGIN
   Len := 0;
   index :=0;

end CreateList;
