// Formato de numeross
function formatNumber(n) {
	var s = string(n);
	var result = "";
	var count = 0;
	
	for (var i = string_length(s); i > 0; i--) {
		result = string_char_at(s, i) + result;
		count++;
		
		if (count == 3 && i > 1) {
			result = "." + result;
			count = 0;
		}
	}
	
	return result;
}

layer_text_text(get_layerTextCredit, formatNumber(global.galaxian_credits) + "$");
layer_text_text(get_layerTextStarlit, formatNumber(global.starlit));
layer_text_text(get_layerTextKaulite, formatNumber(global.kaulite));