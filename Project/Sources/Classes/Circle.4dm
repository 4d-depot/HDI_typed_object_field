Class extends Shape
property name:="Circle"
property radius : Real

Class constructor($r : Real)
	This:C1470.radius:=$r
	
Function area() : Real
	return Pi:K30:1*(This:C1470.radius^2)
	
Function perimeter() : Real
	return 2*Pi:K30:1*This:C1470.radius