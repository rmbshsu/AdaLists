generic   -- in file CreateList.ads
	size: integer;
   TYPE ItemType IS PRIVATE;
   with procedure Put(X:ItemType);

PACKAGE CreateList IS -- export the following behavior.
   procedure AddToList(  listItem: in itemType );
	procedure PrintList; -- Ada does allows but not require empty ( ).
	procedure PrintList( pt: in integer );
	procedure DeleteList( pt: in integer );
FUNCTION ListLength RETURN Integer;  -- Ada does allows but not require empty ( ).

End CreateList;
