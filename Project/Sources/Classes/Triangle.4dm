Class extends Shape
property name:="Triangle"
property side1 : Real
property side2 : Real
property side3 : Real

Class constructor($side1 : Real; $side2 : Real; $side3 : Real)
	This:C1470.side1:=$side1
	This:C1470.side2:=$side2
	This:C1470.side3:=$side3
	
Function perimeter() : Real
	return This:C1470.side1+This:C1470.side2+This:C1470.side3
	
Function area() : Real
	var $s : Real
	// semi perimeter
	$s:=This:C1470.perimeter()/2
	// Heron's formula
	return Square root:C539($s*($s-This:C1470.side1)*($s-This:C1470.side2)*($s-This:C1470.side3))