<cfif IsDefined("URL.newemp")>
	<div class="success">New Employee Registered Successfully!</div>
</cfif>

<cfquery name="get_emp" datasource="selvamdb">
select a.*,b.* from public."EMP_PROFILE" a INNER JOIN public."DEPARTMENT" b ON a."DEPT_ID" = b."DEPT_ID"
</cfquery>

<cfif get_emp.RecordCount LTE 0>
	<div class="failure">No record found!</div>
<cfelse>
	<h3>List of Employees:</h3>
	<table class="seltab1" cellpadding="3px">
	<tr>
	<th>No.</th><th>Emp No.</th><th>Name</th><th>DOB</th><th>Department</th><th>Sex</th><th>Email</th>
	</tr>

	<cfoutput query="get_emp">
	<tr>
		<td>#get_emp.CurrentRow#</td>
		<td>#get_emp.EMP_NO#</td>
		<td>#get_emp.EMP_NAME#</td>
		<td>#DateFormat(get_emp.DOB,'dd/mm/yyyy')#</td>
		<td>#get_emp.DEPT_NAME#</td>
		<td>#get_emp.SEX#</td>
		<td>#get_emp.EMAIL#</td>
	</tr>
	</cfoutput>
	</table>
</cfif>