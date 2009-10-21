<cfcomponent displayname="Request Context" hint="bean containing contextual request data, facades URL & FORM scopes">

	<cfscript>
	
	
	</cfscript>

	<cffunction name="init" access="public" returntype="any" output="false" >
		<cfargument name="urlScope" type="struct" required="true" />
		<cfargument name="formScope" type="struct" required="true" />
		<cfreturn this />
	</cffunction>


</cfcomponent>
