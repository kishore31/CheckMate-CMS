<cfcomponent displayname="Request Service" output="false">

	<cffunction name="init" access="public" returntype="any" output="false"> 
		<cfscript>
			return this;
		</cfscript>
	</cffunction>

	<cffunction name="captureRequest" access="public" returntype="any" output="false">
		<cfargument name="urlScope" type="Struct" required="true" />
		<cfargument name="formScope" type="Struct" required="true" />	

		<cfscript>
			var Context = createObject("component","checkmate.core.beans.RequestContext").init(urlScope,formScope);
			return Context;
		</cfscript>
	</cffunction> 

</cfcomponent>