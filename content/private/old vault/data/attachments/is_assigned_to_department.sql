CREATE OR REPLACE FUNCTION cfc_dw.is_assigned_to_department(
	p_department text,
	p_text text,
	p_team text)
    RETURNS boolean
    LANGUAGE 'plpgsql'
    COST 100
    VOLATILE PARALLEL UNSAFE
AS $BODY$
DECLARE
	v_matches int;
	v_result boolean;
BEGIN
	v_matches = (select count(1)
	from 	cfc_dw.sd_tkt_grp_activity r
	where 	upper(r.dept) = upper(p_department)
		--and (upper(r.team) = upper(p_team) or upper(p_team) = 'DIVISION')
		and ((r.team is null and p_team is null) or upper(r.team) = upper(p_team) or upper(p_team) = 'DIVISION')
		and r.operation = 'assigned_to'
		and p_text like r.statement);

	v_result = v_matches > 0;

	return v_result;
END;
$BODY$;
