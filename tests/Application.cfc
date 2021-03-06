/**
* Copyright Since 2005 Ortus Solutions, Corp
* www.coldbox.org | www.luismajano.com | www.ortussolutions.com | www.gocontentbox.org
**************************************************************************************
*/
component{
    this.name = "A TestBox Runner Suite " & hash( getCurrentTemplatePath() );
    // any other application.cfc stuff goes below:
    this.sessionManagement = true;

    // any mappings go here, we create one that points to the root called test.
    this.mappings[ "/tests" ] = getDirectoryFromPath( getCurrentTemplatePath() );
    rootPath = REReplaceNoCase( this.mappings[ "/tests" ], "tests(\\|/)", "" );
    this.mappings[ "/root" ] = expandPath("/");
    this.mappings['cfboom/security'] = expandPath("/modules_app/cfboom-security");
    this.mappings['cfboom/lang'] = expandPath("/modules_app/cfboom-lang");
    this.mappings['cfboom/util'] = expandPath("/modules_app/cfboom-util");
}