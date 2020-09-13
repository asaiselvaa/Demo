<cfif isDefined("URL.route")>
	<cfset tar_file = '#trim(URL.route)#.cfm'>
    <cfinclude template="#tar_file#">
<cfelse>
	<cfinclude template="emp_list.cfm">
</cfif>