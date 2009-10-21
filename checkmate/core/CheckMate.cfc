<cfcomponent name="checkmate" output="false" hint="CheckMate Core Application Handler">
	<!--- this component will never be directly called instead it will be extended by the application.cfc in
	the root folder of the CheckMate CMS --->
	
	<!--- initialise application framework --->
	<cffunction name="loadCheckMate" returntype="void" output="false">
		<cfscript>
			// If the application is being loaded we should clean up first
			if(StructKeyExists(application,"cmController")) {
				StructDelete(application,"cmController");
			}
			// Create a controller object and place it in the application scope
			application.cmController = createObject("component","checkmate.core.controllers.CheckMateController").init();
			
		</cfscript>
	</cffunction>

	<!--- controller entry point, this method processes all direct requests to the framework --->
	<cffunction name="processCMRequest" access="public" returntype="void" output="false">
		<cfscript>
			var cm = application.cmController;
			cm.processCMRequest();
		</cfscript>		
	</cffunction>

	<cffunction name="onSessionStart" access="public" returnType="void" output="false">
		<cfscript>
		</cfscript>
		
	</cffunction>

	<cffunction name="onSessionEnd" access="public" returnType="void" output="false">
		<cfargument name="sessionScope" type="struct" required="true">
		<cfargument name="appScope" type="struct" required="false">
		<cfscript>
		</cfscript>
	</cffunction>

</cfcomponent>
