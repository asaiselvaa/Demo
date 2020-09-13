<script>
$( function() {
    $( "#DOB" ).datepicker({
      changeMonth: true,
      changeYear: true,
	  yearRange: "-100:+0",
	  dateFormat: 'yy-mm-dd'
    });
	
	$("#empregform").validate({
			rules: {
					EMP_NO:
					{ 
						required:true,
						minlength:6
					},
					
					EMP_NAME:
					{ 
						required:true,
						minlength:1
					},
					
					DOB:
					{
						required:true,
						date:true
					},
					EMAIL:
					{
						required:true,
						email:true
					}
					
				}
				});
} );
</script>
  
<h3>Register Employee</h3>

<!--- Submit Form--->
<cfif IsDefined("FORM.submit")>
	<cfquery datasource="selvamdb">
	INSERT INTO public."EMP_PROFILE" VALUES 
	(
	 DEFAULT,
	 <cfqueryparam cfsqltype="cf_sql_varchar" value="#Trim(FORM.EMP_NO)#">,
	 <cfqueryparam cfsqltype="cf_sql_varchar" value="#Trim(FORM.EMP_NAME)#">,
	 <cfqueryparam cfsqltype="cf_sql_date" value="#Trim(FORM.DOB)#">,
	 <cfqueryparam cfsqltype="cf_sql_integer" value="#Trim(FORM.DEPT_ID)#">,
	 <cfqueryparam cfsqltype="cf_sql_varchar" value="#Trim(FORM.SEX)#">,
	 <cfqueryparam cfsqltype="cf_sql_varchar" value="#Trim(FORM.EMAIL)#">
	 )
	</cfquery>
	<cflocation addtoken="no" url="?route=emp_list&newemp=yes">
</cfif>
<!--- Submit Form--->

<form method="post" action="" id="empregform">
<table border="1" cellspacing="0" cellpadding="7" class="formtab" style="border-collapse:collapse;width:61%">
<tbody>

<tr>
<td style="width:200px">Employee Number : </td>
<td>
<input type="text" value="" name="EMP_NO" id="EMP_NO">
</td>
</tr>

<tr>
<td style="width:200px">Name : </td>
<td>
<input type="text" value="" name="EMP_NAME" id="EMP_NAME">
</td>
</tr>

<tr>
<td style="width:200px">Date of Birth : </td>
<td>
<input type="text" value="" name="DOB" id="DOB" readonly>
</td>
</tr>

<tr>
<td style="width:200px">Department : </td>
<td>
<cfinvoke component="dropdown" method="dept_dropdown" returnvariable="deptdropdown">
<cfoutput>#deptdropdown#</cfoutput>
</td>
</tr>

<tr>
<td style="width:200px">Sex : </td>
<td>
<input type="radio" name="sex" value="M" id="sex_m" checked="checked"><label for="sex_m">Male</label> 
<input type="radio" name="sex" value="F" id="sex_f"><label for="sex_f">Female</label>
</td>
</tr>

<tr>
<td style="width:200px">Personal Email Id : </td>
<td>
<input type="text" value="" name="EMAIL" id="EMAIL">
</td>
</tr>

</tbody>
</table>
<br>
<input type="submit" name="submit" value="Submit">
</form>