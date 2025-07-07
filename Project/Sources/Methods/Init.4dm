//%attributes = {}

Form:C1466.trace:=True:C214

Form:C1466.ID:=1

var $shape:=ds:C1482.Shapes.get(Form:C1466.ID)

Form:C1466.shape:=JSON Stringify:C1217($shape.data; *)

Form:C1466.area:=$shape.data.area()

Form:C1466.perimeter:=$shape.data.perimeter()