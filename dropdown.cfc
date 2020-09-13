<cfcomponent>
	<cffunction name="dept_dropdown" access="public" returntype="string">
		<cfquery name="get_dept" datasource="selvamdb">
		select * from public."DEPARTMENT" order by "DEPT_NAME"
		</cfquery>
		
		<cfsavecontent variable="deptdropdown">
		<cfoutput>
		<select name="DEPT_ID">
			<cfloop query="get_dept">
				<option value="#get_dept.DEPT_ID#">#get_dept.DEPT_NAME#</option>
			</cfloop>
		</select>
		</cfoutput>
		</cfsavecontent>
		
		<cfreturn deptdropdown>
	</cffunction>
</cfcomponent>