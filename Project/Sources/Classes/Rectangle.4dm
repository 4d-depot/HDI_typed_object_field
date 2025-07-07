Class extends Shape
property name:="Rectangle"
property width : Real
//property height : Real

Class constructor($width : Real; $height : Real)
	This:C1470.width:=$width
	This:C1470.height:=$height
	
Function area() : Real
	return This:C1470.width*This:C1470.height
	
Function perimeter() : Real
	return 2*(This:C1470.width+This:C1470.height)