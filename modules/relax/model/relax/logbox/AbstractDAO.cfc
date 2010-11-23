<cfcomponent output="false">

	<!--- Constructor --->
	<cffunction name="init" hint="Constructor" access="public" returntype="AbstractDAO" output="false">
		<cfargument name="configBean" inject="coldbox:configBean"/>
		<cfargument name="logBox" 	  inject="logBox"/>
		<cfscript>
			// get module settings
			instance.logSettings = arguments.configBean.getKey("modules").relax.settings.relaxLogs;
			
			// Logging
			instance.log = arguments.logBox.getLogger(this);
			
			return this;
		</cfscript>
	</cffunction>
	
	
<!------------------------------------------- PRIVATE ------------------------------------------>

	<!--- getLog --->
    <cffunction name="getLog" output="false" access="public" returntype="any" hint="Get the logger reference">
    	<cfreturn instance.log>
    </cffunction>

	<!--- getDatasource --->
    <cffunction name="getDatasource" output="false" access="private" returntype="any" hint="Get the datasource">
    	<cfreturn instance.logSettings.datasource>
    </cffunction>
	
	<!--- getTable --->
    <cffunction name="getTable" output="false" access="private" returntype="any" hint="Get the log table">
    	<cfreturn instance.logSettings.table>
    </cffunction>

</cfcomponent>