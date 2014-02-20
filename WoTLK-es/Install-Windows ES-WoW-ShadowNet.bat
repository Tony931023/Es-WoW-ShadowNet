@ECHO OFF
:inicio
TITLE TrinityCore WoW - TLK 3.3.5a " Traducciones ES-WoW-ShadowNet ฉ "
COLOR b
SET rev=52
SET tdb=TDB
CLS
echo.
echo  		888888b  .d8888b. Y8b      d8Y      Y8b      d8Y ฉ 
echo  		888     d88P  Y88b Y8b db d8Y        Y8b db d8Y 
echo  		888     Y88b.       Y888888Y .d8888b. Y888888Y    
echo  		888888D  "Y888b      Y8''8Y d88P""Y88b Y8''8Y 
echo  		888         "Y88b.          888    888              
echo  		888           "888   WOTLK  888    888  %tdb%.%rev%  
echo  		888     Y88b..d88P          Y88b..d88P          
echo  		8888888P "Y8888P"            "Y8888P"   By ShadowNet          
echo.
ECHO   		Por favor, introduce los datos de conexiขn a tu MySQL,
ECHO   		ข, pulsa intro si los que hay entre [ ] son correctos.
echo.
set /p host=จDirecciขn del host MySQL?               [localhost]   : 
if %host%. == . set host=localhost
set /p user=จNombre del usuario MySQL?    	         [root]        : 
if %user%. == . set user=root
set /p pass=จPassword del MySQL?                     [ascent]      : 
if %pass%. == . set pass=ascent
set /p port=จPuerto del MySQL?                       [3306]        : 
if %port%. == . set port=3306
echo --------------------------------------------------------------------------------
set /p world_db=จNombre de la DB World?                  [world]       : 
if %world_db%. == . set world_db=world



SET rutamysql=.\MySQL\
SET rutatc=.\TrinityCore\
SET tctwd=.\TrinityCore\world\


:opciones
CLS
SET O=""
TITLE ES-WoW-ShadowNet ฉ .:. Opciones .:.
COLOR 2
ECHO.
ECHO 		              ษอ๕อออ*๕*อออ๕อออ*๕*อออ๕อป      
ECHO 		       ษอออออ ๕ Julio A. Leyva Osorio ๕ อออออป
ECHO 		       W                                     T
ECHO 		       o              OPCIONES:              L
ECHO 		       W                                     K
ECHO 		       ศอออออ ๕  tony931023@gmail.com ๕ อออออผ
ECHO 		              ศอออออ*๕*อออ๕อออ*๕*อออ๕อผ
ECHO.
ECHO    T - Instalar la Traducciขn de la %tdb% %rev% para TrinityCore.
ECHO.
ECHO    C - Cambiar Ajustes Iniciales.
ECHO.
ECHO    I - Informaciขn del Traductor.
ECHO.
ECHO    A - Ayuda con las Tildes y las ฅ.
ECHO.
ECHO    S - Salir de esta Utilidad.
ECHO.


SET /p O= Introduce una Letra: 
IF %O%==t GOTO trinity
IF %O%==T GOTO trinity
IF %O%==c GOTO inicio
IF %O%==C GOTO inicio
IF %O%==s GOTO salir
IF %O%==S GOTO salir
IF %O%==i GOTO info
IF %O%==I GOTO info
IF %O%==a GOTO ayuda
IF %O%==A GOTO ayuda
IF %O%=="" GOTO opciones
GOTO error

:ayuda
CLS
TITLE ES-WoW-ShadowNet ฉ .:.  Ayuda con las Tildes y ฅ .:.
ECHO.
ECHO 		              ษอ๕อออ*๕*อออ๕อออ*๕*อออ๕อป      
ECHO 		       ษอออออ ๕ Julio A. Leyva Osorio ๕ อออออป
ECHO 		       W                                     T
ECHO 		       o       Ayuda con las Tildes y ฅ:     L
ECHO 		       W                                     K
ECHO 		       ศอออออ ๕  tony931023@gmail.com ๕ อออออผ
ECHO 		              ศอออออ*๕*อออ๕อออ*๕*อออ๕อผ  
ECHO.
ECHO    Todas las bases de datos tienen un juego de caracteres por defecto, que
ECHO    se enuncia, cuando se crea la base de datos, asก que MySQL lo hara por 
ECHO    defecto mediante una sentencias que se asignan en el archivo de 
ECHO    configuraciขn [my.cnf] que esta localizado en la carpeta bin, esta, a su  
ECHO    vez esta dentro de la carpeta mysql, es decir si tu servidor MySQL lo  
ECHO    tuvieses instalado en "c:", [my.cnf] quedarกa en "C:\tu_servidor\mysql\bin".    
ECHO    Si editas con el bloc de notas [my.cnf] encontraras estos dos enunciados
ECHO    (si no los tienes crealos):     
ECHO. 
ECHO    character-set-server = "xxxxx" y collation-server = "xxxxxxx"  
ECHO    			    *** Debes cambiarlos por: ***   
ECHO    character-set-server = latin1  y  collation-server = latin1_general_ci 
ECHO. 
ECHO    Mas en http://start-zone.net/acentos-tildes-y-la-n-no-aparecen-vt7.html
ECHO.
pause >nul
goto opciones


:trinity
CLS
TITLE ES-WoW-ShadowNet ฉ .:.  Elija la Tipo de Actualizaciขn .:.
SET dbt=""
ECHO.
ECHO 		              ษอ๕อออ*๕*อออ๕อออ*๕*อออ๕อป      
ECHO 		       ษอออออ ๕ Julio A. Leyva Osorio ๕ อออออป
ECHO 		       W                                     T
ECHO 		       o   Elija la Tipo de Actualizaciขn:   L
ECHO 		       W                                     K
ECHO 		       ศอออออ ๕  tony931023@gmail.com ๕ อออออผ
ECHO 		              ศอออออ*๕*อออ๕อออ*๕*อออ๕อผ      
ECHO.   
ECHO  		       Intalacciขn Completa           = T
ECHO.
ECHO  Volver al menฃ de opciones = V
ECHO.

set /p dbt=      Letra: 
ECHO.
IF %dbt%==t GOTO trninitydbtdb
IF %dbt%==T GOTO trninitydbtdb
IF %dbt%==v GOTO opciones
IF %dbt%==V GOTO opciones
IF %dbt%=="" GOTO trinity
GOTO error3



:trninitydbtdb
CLS
TITLE ES-WoW-ShadowNet ฉ .:.  Actualizaciขn Completa de la %tdb%.%rev% .:.
ECHO.
ECHO 		              ษอ๕อออ*๕*อออ๕อออ*๕*อออ๕อป      
ECHO 		       ษอออออ ๕ Julio A. Leyva Osorio ๕ อออออป
ECHO 		       W                                     T
ECHO 		       o  Actualizaciขn Completa de la TDB:  L
ECHO 		       W                                     K
ECHO 		       ศอออออ ๕  tony931023@gmail.com ๕ อออออผ
ECHO 		              ศอออออ*๕*อออ๕อออ*๕*อออ๕อผ  
ECHO.
ECHO Proceso en marcha ten paciencia...
ECHO.
FOR %%C IN (%tctwd%\*.sql) DO (
	ECHO Actualizando script: %%~nxC
	%rutamysql%\mysql --host=%host% --user=%user% --password=%pass% --port=%port% %world_db% < "%%~fC"
	ECHO %%~nxC se ha actualizado 
	ECHO --------------------------------------------------
)
ECHO.
ECHO El proceso se ha completado, revisa si hay errores.
ECHO.
ECHO Tu Traduciขn de la DB deberกa estar actualizada a la %tdb%.%rev% de Es-WoW-ShadowNet.
ECHO.
ECHO ------------------- TrinityCore ------------------
ECHO.
ECHO.
pause >nul
GOTO opciones


:error
ECHO	Por Favor, Seleccione la Opciขn Correcta.
ECHO.
PAUSE
GOTO opciones

:error3
ECHO	Por Favor, Seleccione la Opciขn de Actualizaciขn Correcta.
ECHO.
PAUSE
GOTO trinity


:info 
CLS
TITLE Acerca de TrinityCore WoW - TLK 3.3.5a " Traducciones ES-WoW-ShadowNet ฉ "
COLOR 4e
ECHO.
ECHO 		              ษอ๕อออ*๕*อออ๕อออ*๕*อออ๕อป      
ECHO 		       ษอออออ ๕ Julio A. Leyva Osorio ๕ อออออป
ECHO 		       W                                     T
ECHO 		       o       Traducciones al Espaคol       L
ECHO 		       W                                     K
ECHO 		       ศอออออ ๕  tony931023@gmail.com ๕ อออออผ
ECHO 		              ศอออออ*๕*อออ๕อออ*๕*อออ๕อผ      
ECHO.
ECHO    	 El trabajo de las Traducciones es casi todo del Staff de EsWoW2ฉ 
ECHO    	 yo solo llevare este proyecto a la compatibilidad con la %tdb%.%rev%
ECHO    	 del Servidor de WoW 3.3.5a "The Lich King" de TrinitiCore.
ECHO.	 
ECHO 			       Informaciขn de Contacto
ECHO 			        - - - - - - - - - - - 
ECHO. 			        
ECHO 			   Nombre: Julio A. Leyva Osorio
ECHO    	  	Emal: tony931023@gmail.com   Tel: +5352629386
ECHO    FB: https://fb.com/tony931023   Pag: http://tony931023.blogspot.com
ECHO    	  	GitHub: https://github.com/Tony931023/Es-WoW-ShadowNet
ECHO    	  	              	 Holguin, Cuba.
ECHO.
ECHO	     		 --- Gracias por confiar en Es-WoW-ShadowNet ---
ECHO.
pause >nul 
GOTO opciones

:salir 
CLS
TITLE Saliendo de TrinityCore WoW - TLK 3.3.5a " Traducciones ES-WoW-ShadowNet ฉ "
COLOR 4e
ECHO.
ECHO 		              ษอ๕อออ*๕*อออ๕อออ*๕*อออ๕อป      
ECHO 		       ษอออออ ๕ Julio A. Leyva Osorio ๕ อออออป
ECHO 		       W                                     T
ECHO 		       o       Traducciones al Espaคol       L
ECHO 		       W                                     K
ECHO 		       ศอออออ ๕  tony931023@gmail.com ๕ อออออผ
ECHO 		              ศอออออ*๕*อออ๕อออ*๕*อออ๕อผ      
ECHO.
ECHO    	 El trabajo de las Traducciones es casi todo del Staff de EsWoW2ฉ 
ECHO    	 yo solo llevare este proyecto a la compatibilidad con la %tdb%.%rev%
ECHO    	 del Servidor de WoW 3.3.5a "The Lich King" de TrinitiCore.
ECHO.	 
ECHO 			       Informaciขn de Contacto
ECHO 			        - - - - - - - - - - - 
ECHO. 			        
ECHO 			   Nombre: Julio A. Leyva Osorio
ECHO    	  	Emal: tony931023@gmail.com   Tel: +5352629386
ECHO    FB: https://fb.com/tony931023   Pag: http://tony931023.blogspot.com
ECHO    	  	GitHub: https://github.com/Tony931023/Es-WoW-ShadowNet
ECHO    	  	              	 Holguin, Cuba.
ECHO.
ECHO	     		 --- Gracias por confiar en Es-WoW-ShadowNet ---
ECHO.
pause >nul 


