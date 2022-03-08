// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function sformat(fmt, args){
	var n_args = array_length(args);
	var length = string_length(fmt);

	var i = 0;
	var a = 0;

	if (n_args == 0) {
		return fmt;
	}

	var retstr = ""
	for (i = 1; i < length; i++) {
		if (a == n_args) {
			return retstr + string_copy(fmt, i + 1, length - i);
		}

		if (string_char_at(fmt, i) == "{" and string_char_at(fmt, i + 1) == "}") {
			retstr = retstr + string(args[a]);
			a = a + 1;
		} else if (string_char_at(fmt, i) != "}") {
			retstr = retstr + string_char_at(fmt, i);
		}
	}

	if (string_char_at(fmt, length) != "}") {
		retstr += retstr + string_char_at(fmt, length);
	}

	return retstr;
	
}