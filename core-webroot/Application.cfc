<cfcomponent extends="checkmate.core.checkmate" output="false">
	<cfscript>
		this.name = 'checkmate_' & hash(getCurrentTemplatePath());
		this.sessionmanagement = true;
		this.sessionTimeout = createTimespan(0,1,0,0);
		
	</cfscript>

	<cffunction name="onApplicationStart" returntype="boolean" output="false">
		<cfscript>
			// Initialise CheckMate Application
			loadCheckMate();
			return true;
		</cfscript>	
	</cffunction>
	
	<cffunction name="onRequestStart" returntype="boolean" output="false">
		<cfargument name="targetPage" type="string" required="true"/>
		<cfscript>
			cm = application.cmController;
			return true;
		</cfscript>
	</cffunction>
	
	<cffunction name="onApplicationEnd" returntype="void" output="false">
		<cfargument name="applicationScope" type="struct" required="true"/>
		<cfscript>
			// Unload CheckMate Application
		</cfscript>
	</cffunction>
	
	<cffunction name="onSessionStart" returnType="void" output="false">
		<cfscript>
			// Initiate session
			super.onSessionStart();
		</cfscript>
	</cffunction>
	
	<cffunction name="onSessionEnd" returntype="void" output="false">
		<cfargument name="sessionScope" type="struct" required="true">
		<cfargument name="appScope" 	type="struct" required="false">
		<cfscript>
			// Finish session
			super.onSessionEnd(argumentCollection=arguments);
		</cfscript>
	</cffunction>
	
</cfcomponent>