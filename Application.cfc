<cfcomponent>
	<cfset this.name = Hash(GetCurrentTemplatePath())/>
    <cfset this.sessionManagement = true />
    <cfset this.sessionTimeout = CreateTimeSpan(0,2,0,0) />	
</cfcomponent>