SELECT * FROM city LEFT OUTER JOIN address ON city.city_id = address.city_id;
--よって、結合した表を見ていくと、一番下のLondonはaddressが紐づいていないことがわかる、
--したがって、答えはcity_idLが313のLondon