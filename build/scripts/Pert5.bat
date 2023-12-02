@rem
@rem Copyright 2015 the original author or authors.
@rem
@rem Licensed under the Apache License, Version 2.0 (the "License");
@rem you may not use this file except in compliance with the License.
@rem You may obtain a copy of the License at
@rem
@rem      https://www.apache.org/licenses/LICENSE-2.0
@rem
@rem Unless required by applicable law or agreed to in writing, software
@rem distributed under the License is distributed on an "AS IS" BASIS,
@rem WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
@rem See the License for the specific language governing permissions and
@rem limitations under the License.
@rem

@if "%DEBUG%" == "" @echo off
@rem ##########################################################################
@rem
@rem  Pert5 startup script for Windows
@rem
@rem ##########################################################################

@rem Set local scope for the variables with windows NT shell
if "%OS%"=="Windows_NT" setlocal

set DIRNAME=%~dp0
if "%DIRNAME%" == "" set DIRNAME=.
set APP_BASE_NAME=%~n0
set APP_HOME=%DIRNAME%..

@rem Resolve any "." and ".." in APP_HOME to make it shorter.
for %%i in ("%APP_HOME%") do set APP_HOME=%%~fi

@rem Add default JVM options here. You can also use JAVA_OPTS and PERT5_OPTS to pass JVM options to this script.
set DEFAULT_JVM_OPTS=

@rem Find java.exe
if defined JAVA_HOME goto findJavaFromJavaHome

set JAVA_EXE=java.exe
%JAVA_EXE% -version >NUL 2>&1
if "%ERRORLEVEL%" == "0" goto execute

echo.
echo ERROR: JAVA_HOME is not set and no 'java' command could be found in your PATH.
echo.
echo Please set the JAVA_HOME variable in your environment to match the
echo location of your Java installation.

goto fail

:findJavaFromJavaHome
set JAVA_HOME=%JAVA_HOME:"=%
set JAVA_EXE=%JAVA_HOME%/bin/java.exe

if exist "%JAVA_EXE%" goto execute

echo.
echo ERROR: JAVA_HOME is set to an invalid directory: %JAVA_HOME%
echo.
echo Please set the JAVA_HOME variable in your environment to match the
echo location of your Java installation.

goto fail

:execute
@rem Setup the command line

set CLASSPATH=%APP_HOME%\lib\Pert5.jar;%APP_HOME%\lib\spring-context-4.0.1.RELEASE.jar;%APP_HOME%\lib\spring-aop-4.0.1.RELEASE.jar;%APP_HOME%\lib\aopalliance-1.0.jar;%APP_HOME%\lib\hibernate-core-4.3.11.Final.jar;%APP_HOME%\lib\mysql-connector-java-8.0.23.jar;%APP_HOME%\lib\spring-orm-4.0.1.RELEASE.jar;%APP_HOME%\lib\spring-jdbc-4.0.1.RELEASE.jar;%APP_HOME%\lib\spring-tx-4.0.1.RELEASE.jar;%APP_HOME%\lib\spring-beans-4.0.1.RELEASE.jar;%APP_HOME%\lib\spring-expression-4.0.1.RELEASE.jar;%APP_HOME%\lib\spring-core-4.0.1.RELEASE.jar;%APP_HOME%\lib\jasperreports-6.20.0.jar;%APP_HOME%\lib\itext-2.1.7.js10.jar;%APP_HOME%\lib\hibernate-commons-annotations-4.0.5.Final.jar;%APP_HOME%\lib\jboss-logging-3.1.3.GA.jar;%APP_HOME%\lib\jboss-logging-annotations-1.2.0.Beta1.jar;%APP_HOME%\lib\jboss-transaction-api_1.2_spec-1.0.0.Final.jar;%APP_HOME%\lib\dom4j-1.6.1.jar;%APP_HOME%\lib\hibernate-jpa-2.1-api-1.0.0.Final.jar;%APP_HOME%\lib\javassist-3.18.1-GA.jar;%APP_HOME%\lib\antlr-2.7.7.jar;%APP_HOME%\lib\jandex-1.1.0.Final.jar;%APP_HOME%\lib\protobuf-java-3.11.4.jar;%APP_HOME%\lib\commons-digester-2.1.jar;%APP_HOME%\lib\commons-beanutils-1.9.4.jar;%APP_HOME%\lib\commons-logging-1.2.jar;%APP_HOME%\lib\bcmail-jdk15on-1.70.jar;%APP_HOME%\lib\bcpkix-jdk15on-1.70.jar;%APP_HOME%\lib\bcutil-jdk15on-1.70.jar;%APP_HOME%\lib\bcprov-jdk15on-1.70.jar;%APP_HOME%\lib\commons-collections4-4.2.jar;%APP_HOME%\lib\jfreechart-1.0.19.jar;%APP_HOME%\lib\jcommon-1.0.23.jar;%APP_HOME%\lib\ecj-3.21.0.jar;%APP_HOME%\lib\jackson-annotations-2.13.3.jar;%APP_HOME%\lib\jackson-dataformat-xml-2.13.3.jar;%APP_HOME%\lib\jackson-databind-2.13.3.jar;%APP_HOME%\lib\jackson-core-2.13.3.jar;%APP_HOME%\lib\groovy-ant-2.5.14.jar;%APP_HOME%\lib\groovy-cli-commons-2.5.14.jar;%APP_HOME%\lib\groovy-groovysh-2.5.14.jar;%APP_HOME%\lib\groovy-console-2.5.14.jar;%APP_HOME%\lib\groovy-groovydoc-2.5.14.jar;%APP_HOME%\lib\groovy-docgenerator-2.5.14.jar;%APP_HOME%\lib\groovy-cli-picocli-2.5.14.jar;%APP_HOME%\lib\groovy-datetime-2.5.14.jar;%APP_HOME%\lib\groovy-jmx-2.5.14.jar;%APP_HOME%\lib\groovy-json-2.5.14.jar;%APP_HOME%\lib\groovy-jsr223-2.5.14.jar;%APP_HOME%\lib\groovy-macro-2.5.14.jar;%APP_HOME%\lib\groovy-nio-2.5.14.jar;%APP_HOME%\lib\groovy-servlet-2.5.14.jar;%APP_HOME%\lib\groovy-sql-2.5.14.jar;%APP_HOME%\lib\groovy-swing-2.5.14.jar;%APP_HOME%\lib\groovy-templates-2.5.14.jar;%APP_HOME%\lib\groovy-test-2.5.14.jar;%APP_HOME%\lib\groovy-test-junit5-2.5.14.jar;%APP_HOME%\lib\groovy-testng-2.5.14.jar;%APP_HOME%\lib\groovy-xml-2.5.14.jar;%APP_HOME%\lib\groovy-2.5.14.jar;%APP_HOME%\lib\xml-apis-1.0.b2.jar;%APP_HOME%\lib\commons-collections-3.2.2.jar;%APP_HOME%\lib\woodstox-core-6.2.7.jar;%APP_HOME%\lib\stax2-api-4.2.1.jar;%APP_HOME%\lib\ant-junit-1.9.15.jar;%APP_HOME%\lib\ant-1.9.15.jar;%APP_HOME%\lib\ant-launcher-1.9.15.jar;%APP_HOME%\lib\ant-antlr-1.9.15.jar;%APP_HOME%\lib\commons-cli-1.4.jar;%APP_HOME%\lib\picocli-4.3.2.jar;%APP_HOME%\lib\qdox-1.12.1.jar;%APP_HOME%\lib\jline-2.14.6.jar;%APP_HOME%\lib\junit-4.13.1.jar;%APP_HOME%\lib\junit-jupiter-engine-5.4.2.jar;%APP_HOME%\lib\junit-jupiter-api-5.4.2.jar;%APP_HOME%\lib\junit-platform-launcher-1.4.2.jar;%APP_HOME%\lib\testng-6.13.1.jar;%APP_HOME%\lib\hamcrest-core-1.3.jar;%APP_HOME%\lib\junit-platform-engine-1.4.2.jar;%APP_HOME%\lib\opentest4j-1.1.1.jar;%APP_HOME%\lib\jcommander-1.72.jar;%APP_HOME%\lib\junit-platform-commons-1.4.2.jar


@rem Execute Pert5
"%JAVA_EXE%" %DEFAULT_JVM_OPTS% %JAVA_OPTS% %PERT5_OPTS%  -classpath "%CLASSPATH%" springHibernate.App %*

:end
@rem End local scope for the variables with windows NT shell
if "%ERRORLEVEL%"=="0" goto mainEnd

:fail
rem Set variable PERT5_EXIT_CONSOLE if you need the _script_ return code instead of
rem the _cmd.exe /c_ return code!
if  not "" == "%PERT5_EXIT_CONSOLE%" exit 1
exit /b 1

:mainEnd
if "%OS%"=="Windows_NT" endlocal

:omega
