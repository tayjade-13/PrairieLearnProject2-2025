
BEGIN {
	FS = ","
	num_accidents = 0
	DD_count = 0
	fri_sat = 0
	in_MI_total = 0
	in_MI_drunk
	in_MI_dark = 0
}
NR > 1 {
	num_accidents++
	num_DD = $NF

	if (num_DD > 0) { DD_count++ }
	if ($15 == 6 || $15 == 7) { fri_sat++ }
	if ($1 == 26) { in_MI++ }
	if ($1 == 26 && num_DD > 0) { in_MI_drunk++ }
	if ($1 == 26 && ($36 == 2 || $36 == 3 || $36 == 6)) { in_MI_dark++ }

	PROCINFO["sorted_in"] = "@ind_num_asc"

	num_people = $9
	state_code = $1
	people_per_state[state_code] += num_people


}

END {
	print "DD Proportion:", DD_count / num_accidents
	print "Friday/Saturday Proportion:", fri_sat / num_accidents
	print "MI DD Proportion:", in_MI_drunk / in_MI
	print "MI Dark Proportion:", in_MI_dark / in_MI
	print "State Code,# People"
	for (code in people_per_state) {
		print code "," people_per_state[code] }
}
