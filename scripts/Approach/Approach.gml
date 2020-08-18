///@function approach(start, ending, difference)
///@description to transition one value to another
///@param start
///@param ending
///@param difference
function Approach(argument0, argument1, argument2) {
	var start, ending, difference;

	start = argument0;
	ending = argument1;
	difference = argument2;

	var result;

	if (start < ending){
	    result = min(start + difference, ending); 
	}else{
	    result = max(start - difference, ending);
	}

	return result;


}
