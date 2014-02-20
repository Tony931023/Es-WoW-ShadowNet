@ECHO OFF
:inicio
TITLE TrinityCore WoW - TLK 3.3.5a " Traducciones ES-WoW-ShadowNet � "
COLOR b
SET rev=52
SET tdb=TDB
CLS
echo.
echo  		888888b  .d8888b. Y8b      d8Y      Y8b      d8Y � 
echo  		888     d88P  Y88b Y8b db d8Y        Y8b db d8Y 
echo  		888     Y88b.       Y888888Y .d8888b. Y888888Y    
echo  		888888D  "Y888b      Y8''8Y d88P""Y88b Y8''8Y 
echo  		888         "Y88b.          888    888              
echo  		888           "888   WOTLK  888    888  %tdb%.%rev%  
echo  		888     Y88b..d88P          Y88b..d88P          
echo  		8888888P "Y8888P"            "Y8888P"   By ShadowNet          
echo.
ECHO   		Por favor, introduce los datos de conexi�n a tu MySQL,
ECHO   		�, pulsa intro si los que hay entre [ ] son correctos.
echo.
set /p host=�Direcci�n del host MySQL?               [localhost]   : 
if %host%. == . set host=localhost
set /p user=�Nombre del usuario MySQL?    	         [root]        : 
if %user%. == . set user=root
set /p pass=�Password del MySQL?                     [ascent]      : 
if %pass%. == . set pass=ascent
set /p port=�Puerto del MySQL?                       [3306]        : 
if %port%. == . set port=3306
echo --------------------------------------------------------------------------------
set /p world_db=�Nombre de la DB World?                  [world]       : 
if %world_db%. == . set world_db=world



SET rutamysql=.\MySQL\
SET rutatc=.\TrinityCore\
SET tctwd=.\TrinityCore\world\


:opciones
CLS
SET O=""
TITLE ES-WoW-ShadowNet � .:. Opciones .:.
COLOR 2
ECHO.
ECHO 		              ������*�*�������*�*����ͻ      
ECHO 		       ������ � Julio A. Leyva Osorio � ����ͻ
ECHO 		       W                                     T
ECHO 		       o              OPCIONES:              L
ECHO 		       W                                     K
ECHO 		       ������ �  tony931023@gmail.com � ����ͼ
ECHO 		              ������*�*�������*�*����ͼ
ECHO.
ECHO    T - Instalar la Traducci�n de la %tdb% %rev% para TrinityCore.
ECHO.
ECHO    C - Cambiar Ajustes Iniciales.
ECHO.
ECHO    I - Informaci�n del Traductor.
ECHO.
ECHO    A - Ayuda con las Tildes y las �.
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
TITLE ES-WoW-ShadowNet � .:.  Ayuda con las Tildes y � .:.
ECHO.
ECHO 		              ������*�*�������*�*����ͻ      
ECHO 		       ������ � Julio A. Leyva Osorio � ����ͻ
ECHO 		       W                                     T
ECHO 		       o       Ayuda con las Tildes y �:     L
ECHO 		       W                                     K
ECHO 		       ������ �  tony931023@gmail.com � ����ͼ
ECHO 		              ������*�*�������*�*����ͼ  
ECHO.
ECHO    Todas las bases de datos tienen un juego de caracteres por defecto, que
ECHO    se enuncia, cuando se crea la base de datos, as� que MySQL lo hara por 
ECHO    defecto mediante una sentencias que se asignan en el archivo de 
ECHO    configuraci�n [my.cnf] que esta localizado en la carpeta bin, esta, a su  
ECHO    vez esta dentro de la carpeta mysql, es decir si tu servidor MySQL lo  
ECHO    tuvieses instalado en "c:", [my.cnf] quedar�a en "C:\tu_servidor\mysql\bin".    
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
TITLE ES-WoW-ShadowNet � .:.  Elija la Tipo de Actualizaci�n .:.
SET dbt=""
ECHO.
ECHO 		              ������*�*�������*�*����ͻ      
ECHO 		       ������ � Julio A. Leyva Osorio � ����ͻ
ECHO 		       W                                     T
ECHO 		       o   Elija la Tipo de Actualizaci�n:   L
ECHO 		       W                                     K
ECHO 		       ������ �  tony931023@gmail.com � ����ͼ
ECHO 		              ������*�*�������*�*����ͼ      
ECHO.   
ECHO  		       Intalacci�n Completa           = T
ECHO.
ECHO  Volver al men� de opciones = V
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
TITLE ES-WoW-ShadowNet � .:.  Actualizaci�n Completa de la %tdb%.%rev% .:.
ECHO.
ECHO 		              ������*�*�������*�*����ͻ      
ECHO 		       ������ � Julio A. Leyva Osorio � ����ͻ
ECHO 		       W                                     T
ECHO 		       o  Actualizaci�n Completa de la TDB:  L
ECHO 		       W                                     K
ECHO 		       ������ �  tony931023@gmail.com � ����ͼ
ECHO 		              ������*�*�������*�*����ͼ  
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
ECHO Tu Traduci�n de la DB deber�a estar actualizada a la %tdb%.%rev% de Es-WoW-ShadowNet.
ECHO.
ECHO ------------------- TrinityCore ------------------
ECHO.
ECHO.
pause >nul
GOTO opciones


:error
ECHO	Por Favor, Seleccione la Opci�n Correcta.
ECHO.
PAUSE
GOTO opciones

:error3
ECHO	Por Favor, Seleccione la Opci�n de Actualizaci�n Correcta.
ECHO.
PAUSE
GOTO trinity


:info 
CLS
TITLE Acerca de TrinityCore WoW - TLK 3.3.5a " Traducciones ES-WoW-ShadowNet � "
COLOR 4e
ECHO.
ECHO 		              ������*�*�������*�*����ͻ      
ECHO 		       ������ � Julio A. Leyva Osorio � ����ͻ
ECHO 		       W                                     T
ECHO 		       o       Traducciones al Espa�ol       L
ECHO 		       W                                     K
ECHO 		       ������ �  tony931023@gmail.com � ����ͼ
ECHO 		              ������*�*�������*�*����ͼ      
ECHO.
ECHO    	 El trabajo de las Traducciones es casi todo del Staff de EsWoW2� 
ECHO    	 yo solo llevare este proyecto a la compatibilidad con la %tdb%.%rev%
ECHO    	 del Servidor de WoW 3.3.5a "The Lich King" de TrinitiCore.
ECHO.	 
ECHO 			       Informaci�n de Contacto
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
TITLE Saliendo de TrinityCore WoW - TLK 3.3.5a " Traducciones ES-WoW-ShadowNet � "
COLOR 4e
ECHO.
ECHO 		              ������*�*�������*�*����ͻ      
ECHO 		       ������ � Julio A. Leyva Osorio � ����ͻ
ECHO 		       W                                     T
ECHO 		       o       Traducciones al Espa�ol       L
ECHO 		       W                                     K
ECHO 		       ������ �  tony931023@gmail.com � ����ͼ
ECHO 		              ������*�*�������*�*����ͼ      
ECHO.
ECHO    	 El trabajo de las Traducciones es casi todo del Staff de EsWoW2� 
ECHO    	 yo solo llevare este proyecto a la compatibilidad con la %tdb%.%rev%
ECHO    	 del Servidor de WoW 3.3.5a "The Lich King" de TrinitiCore.
ECHO.	 
ECHO 			       Informaci�n de Contacto
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


