<cfcomponent name="CheckMateController" output="false">

	<cffunction name="init" access="public" returntype="checkmate.core.controllers.checkmatecontroller" output="false">
		<cfscript>
			return this;
		</cfscript>
	</cffunction>

	<cffunction name="processCMRequest" access="public" returntype="void" output="false">
		<cfscript>
			var RequestService = CreateObject("component","checkmate.core.services.RequestService").init();
			var context = RequestService.captureRequest(URL,FORM);
		</cfscript>	
	</cffunction>
	
	
</cfcomponent>