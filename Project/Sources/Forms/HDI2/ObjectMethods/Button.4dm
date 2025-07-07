If (Form:C1466.ID<8)
	Form:C1466.ID+=1
Else 
	Form:C1466.ID:=1
End if 

If (Form:C1466.trace)
	TRACE:C157
End if 


var $shape:=ds:C1482.Shapes.get(Form:C1466.ID)
// Retrieves the record from the "Shapes" table matching the current form's ID.
// This record contains an object field typed with classes that inherit from cs.Shape.

Form:C1466.shape:=JSON Stringify:C1217($shape.data; *)
// Converts the object stored in the "data" field into a JSON string for visualizing the object structure.

Form:C1466.area:=$shape.data.area()
// Calls the "area()" method on the object stored in "data" to calculate the shape's area.
// Thanks to polymorphism, the correct method is executed based on the actual type of the shape (Circle, Square, etc.).

Form:C1466.perimeter:=$shape.data.perimeter()
// Calls the "perimeter()" method on the shape object to calculate its perimeter.
// Again, the appropriate method is called depending on the real class of the stored object.