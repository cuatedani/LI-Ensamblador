; NL:09 NOMBRE:Juan Daniel Gomez Gonzalez  GRUPO:5B-12
; NL:05 NOMBRE: Maria Fernanda Flores Solis
; NL:14 NOMBRE: Marlett Alessandra Marín Bautista

; Fecha: 25/03/2022
;*****************************************************
.model small
.stack
.data
    MenuPrin    db '      --MEN',233,'--      '
    MenuOp1     db '1.Comprobar Exterior'
    MenuOp2     db '2.Controlar Robot   '
    MenuOp3     db '3.Inventario        ' 
    MenuOp4     db '4.Lugares Seguros   ' 
    MenuOp5     db '5.Imprimir Datos    '
    MenuSal     db '6.Salir             '
    MenuSelect  db 'Selecci',162,'n:          '
    LogoAcceso  db '   <Pulse Enter>    $'
    RELLENOS    db 201,205,205,205,205,205,205,205,205,205,205,205,205,205,205,205,205,205,205,205,205,205,205,205,205,205,205,205,205,205,205,205,205,205,205,205,205,205,205,205,205,205,205,205,205,205,205,205,205,205,205,205,205,205,205,205,205,205,205,205,205,205,205,205,205,205,205,205,205,205,205,205,205,205,205,205,205,205,205,187
    RELLENOI    db 200,205,205,205,205,205,205,205,205,205,205,205,205,205,205,205,205,205,205,205,205,205,205,205,205,205,205,205,205,205,205,205,205,205,205,205,205,205,205,205,205,205,205,205,205,205,205,205,205,205,205,205,205,205,205,205,205,205,205,205,205,205,205,205,205,205,205,205,205,205,205,205,205,205,205,205,205,205,205,188
    RELLENOCAD  db '                                                                      '
    
    SInventario db '-INVENTARIO $'
    TITULO1     db 186,'   _____ __   _ _    _ _______ __   _ _______ _______  ______ _____  _____    ',186
    TITULO2     db 186,'     |   | \  |  \  /  |______ | \  |    |    |_____| |_____/   |   |     |   ',186
    TITULO3     db 186,'   __|__ |  \_|   \/   |______ |  \_|    |    |     | |    \_ __|__ |_____|   ',186
    RELLENO     db 186,'                                                                              ',186
    OPCIONES    db 186,'        1.A',164,'adir    2.Quitar    3.Salir           Selecci',162,'n:                  ',186
    SLugarSeguro db '-Lugar seguro $'
    tituloLS1   db 186,  '       _   _   _  ___   _   ___ ___ ___   ___ ___ ___ _   _ ___  ___  ___     ',186
    tituloLS2   db 186,  '      | | | | | |/ __| /_\ | _ \ __/ __| / __| __/ __| | | | _ \/ _ \/ __|    ',186
    tituloLS3   db 186,  '      | |_| |_| | (_ |/ _ \|   / _|\__ \ \__ \ _| (_ | |_| |   / (_) \__ \    ',186
    tituloLS4   db 186,  '      |____\___/ \___/_/ \_\_|_\___|___/ |___/___\___|\___/|_|_\\___/|___/    ',186

    Espacio1    db 61,0,61 dup(' ')
    Espacio2    db 61,0,61 dup(' ')
    Espacio3    db 61,0,61 dup(' ')
    Espacio4    db 61,0,61 dup(' ')
    Espacio5    db 61,0,61 dup(' ')
    Espacio6    db 61,0,61 dup(' ')
    Espacio7    db 61,0,61 dup(' ')
    Espacio8    db 61,0,61 dup(' ')
    Espacio9    db 61,0,61 dup(' ')
    Espacio10   db 61,0,61 dup(' ')
    RenglonE1   db '0.  '
    RenglonE2   db '1.  '
    RenglonE3   db '2.  '
    RenglonE4   db '3.  '
    RenglonE5   db '4.  '
    RenglonE6   db '5.  '
    RenglonE7   db '6.  '
    RenglonE8   db '7.  '
    RenglonE9   db '8.  '
    RenglonE10  db '9.  ' 
    RenglonU1   db 'Ubicaci',162,'n n',248,'0: '
    RenglonU2   db 'Ubicaci',162,'n n',248,'1: '
    RenglonU3   db 'Ubicaci',162,'n n',248,'2: '
    RenglonU4   db 'Ubicaci',162,'n n',248,'3: ' 
    RenglonU5   db 'Ubicaci',162,'n n',248,'4: '
    RenglonU6   db 'Ubicaci',162,'n n',248,'5: '
    RenglonU7   db 'Ubicaci',162,'n n',248,'6: '
    RenglonU8   db 'Ubicaci',162,'n n',248,'7: '
    RenglonU9   db 'Ubicaci',162,'n n',248,'8: ' 
    RenglonU10   db 'Ubicaci',162,'n n',248,'9: '
    Esp1    db 41,0,41 dup(' ')
    Esp2    db 41,0,41 dup(' ')
    Esp3    db 41,0,41 dup(' ')
    Esp4    db 41,0,41 dup(' ')
    Esp5    db 41,0,41 dup(' ')
    Esp6    db 41,0,41 dup(' ')
    Esp7    db 41,0,41 dup(' ')
    Esp8    db 41,0,41 dup(' ')
    Esp9    db 41,0,41 dup(' ')
    Esp10   db 41,0,41 dup(' ')
    SeleccionE  db 'Espacio: ' 
    Ubi         db 'N',248,' ubicaci',162,'n:'
    EspImp      db 0,0,0,0,0,0,0,0,0,0 
    RegUbi      db 0,0,0,0,0,0,0,0,0,0
    
    OPCIONES2       db 186,'            1.Cargar    2.Salir           Selecci',162,'n:                  ',186   
    INDICE          DB 0,0  
               
    REN         db 0
    OPC         db 0
    OpcEsp      db 0
    PantallaId  db 0  ;0.ImprimirLogo 1.MenuPrincipal 2.ComprobarExterior 3.ControlarRobot 4.Inventario 5.LugaresSeguros 6.Iprimir Datos
    
    ;*************** Robot *******************
    msjTituloRobot1 db '  ______            _             _              _____       _           _    '
    msjTituloRobot2 db ' /  ____|          | |           | |            |  __ \     | |         | |   '
    msjTituloRobot3 db ' | |     ___  _ __ | |_ _ __ ___ | | __ _ _ __  | |__) |___ | |__   ___ | |_  ' 
    msjTituloRobot4 db ' | |    / _ \|  _ \| __|  __/ _ \| |/ _` |  __| |  _  // _ \|  _ \ / _ \| __| '
    msjTituloRobot5 db ' | |___| (_) | | | | |_| | | (_) | | (_| | |    | | \ \ (_) | |_) | (_) | |_  '
    msjTituloRobot6 db ' \_____\\___/|_| |_|\__|_|  \___/|_|\__,_|_|    |_|  \_\___/|_.__/ \___/ \__| '
    msjrobomenu1    db '        GirarDerecha: ',26,'  GirarIzquierda: ',27,'  Avanzar: ',24,'$'
    msjrobomenu2    db '        Girar180°: ',26,'     Interaccion: Enter   Salir: Esc$'
    msjroboorden    db '        Instruccion: $'
    msjroboint      db 'Interactuando  $'
    msjroboder      db 'Girar Derecha  $'
    msjroboizq      db 'Girar Izquierda$'
    msjroboava      db 'Avanzar        $'
    msjrobogir      db 'Girar 180°     $'    
    DatosExam       db 0
    rastreo         db 0
    orden           db 0
    
;***************************** Escribir **********************
    msjgua          db '!Datos Guardados!'
    msjErrorA       db '  !Error al abrir el achivo!  $'
    msjErrorC       db ' !Error al crear el archivo!  $'   
    rutaDir         db 'C:\Refugio',0
    rutaInv         db 'C:\Refugio\Inventario.txt',0
    rutaLug         db 'C:\Refugio\LugaresSeguros.txt',0
    datosleidos     db 500 dup(' ')
    leidos          db 500 dup(' ') 
    datosleidos2     db 500 dup(' ')
    leidos2          db 500 dup(' ')
    manejador       dw 0
    long            dw 0
    salto           db 10,13
    contador        dw 0
    
;**********************************Termometro********************************************************
    msjtituloTerm1   db '  _______                                       _             '
    msjtituloTerm2   db ' |__   __|                                     | |            '
    msjtituloTerm3   db '    | | ___ _ __ _ __ ___   ___  _ __ ___   ___| |_ _ __ ___  '
    msjtituloTerm4   db '    | |/ _ \ '__| '_ ` _ \ / _ \| '_ ` _ \ / _ \ __| '__/ _ \ '
    msjtituloTerm5   db '    | |  __/ |  | | | | | | (_) | | | | | |  __/ |_| | | (_) |'
    msjtituloTerm6   db '    |_|\___|_|  |_| |_| |_|\___/|_| |_| |_|\___|\__|_|  \___/ '
;*****************************************Imprimir******************************************************
    ContadorInv     dw 0
    ContadorLug     dw 0
;*****************************************INICIO MACROS***********************************************
    
    IMP_L_1 MACRO col,car, fondo
        MOV AH,2
        MOV DL,col    ;C
        INT 10H
        MOV AH,9
        MOV CX,car     ;Numero de Caracter
        MOV AL,' '   ;Caracter
        MOV BL,fondo,  ;Fondo
        INT 10H
    IMP_L_1 ENDM   
    
    IMP_CAD_COLOR MACRO cadena,ren,col,atrib,long,modo,pagina
        MOV AH,19
            LEA BP,cadena
            MOV DH,ren
            MOV DL,col
            MOV BL,atrib
            MOV CX,long
            MOV AL,modo
            MOV BH,pagina
        INT 10H
    IMP_CAD_COLOR ENDM
    
    ImprimirCadena MACRO cadena
        MOV AH,9
        LEA DX,cadena
        inT 21H
    ImprimirCadena ENDM
    
    CaracterColor MACRO cantidad, caracter, pag, color
        MOV AH,9
        MOV CX,cantidad
        MOV AL,caracter
        MOV BH,pag
        MOV BL,color
        INT 10H
    CaracterColor ENDM
    
    IMP_CAD MACRO cadena,ren,col
        MOV AH,19
            LEA BP,cadena
            MOV DH,ren
            MOV DL,col
            MOV AL,0
        INT 10H
    IMP_CAD ENDM
    
    IMP_CAR MACRO Cantidad,Caracter,Fondo
        MOV AH,9
        MOV CX,Cantidad
        MOV AL,Caracter
        MOV BL,Fondo
        INT 10H
    IMP_CAR ENDM
        
    CURSOR MACRO REN,COL,PAG
        MOV AH,2
        MOV DH,REN
        MOV DL,COL
        MOV BH,PAG
        INT 10H    
    CURSOR ENDM
    
    LEER_CAD MACRO cadena
        MOV AH,10
        LEA DX,cadena
        INT 21H
    LEER_CAD ENDM
    
    AbrirArchivo MACRO ruta,modo
        MOV AH,3DH
        LEA DX,ruta
        MOV AL,modo
        INT 21H
    AbrirArchivo ENDM
    
    LeerArchivo MACRO manejador, cuantosleer, leidos
        MOV AH,3FH
        MOV BX,manejador
        MOV CX,cuantosleer
        LEA DX,leidos
        INT 21H
    LeerArchivo ENDM
    
    CerrarArchivo MACRO manejador
        MOV AH,3EH
        MOV BX,manejador
        INT 21H
    CerrarArchivo ENDM
    
    ArchivoActual MACRO manejador
        MOV AH,3EH
        MOV BX,manejador
        INT 21H
    ArchivoActual ENDM
    
    ArchivoEscribir MACRO manejador,cant,cadena
        MOV AH,40H              
        MOV BX,manejador
        MOV CH,0      
        MOV CX,cant               
        LEA DX,cadena
        INT 21H
    ArchivoEscribir ENDM
    
    DirectorioCrear MACRO ruta
        MOV AH,39H
        LEA DX,ruta
        INT 21H
    DirectorioCrear ENDM
    
    ArchivoCrear MACRO ruta
        MOV AH,3CH
        LEA DX,ruta
        MOV CX,32
        INT 21H
    ArchivoCrear ENDM

;*****************************************FINAL MACROS************************************************  
.code

Inicio:
    MOv AX,@DATA
    MOV DS,AX
    MOV ES,AX
    
Limpiar:
    IMP_CAD_COLOR RELLENOS,0,0,0F0H,80,0,0
    IMP_CAD_COLOR RELLENOI,24,0,0F0H,80,0,0
    MOV REN,1
    JMP ImprimirRelleno
    
ImprimirRelleno:
    MOV AH,19
    LEA BP,RELLENO
    MOV CX,80       ;Longitud de Cadena
    MOV BH,0        ;Pagina
    MOV DH,REN      ;Renglon
    MOV DL,0        ;Columna
    MOV BL,0F0H     ;Fondo
    MOV AL,0
    INT 10H
    
    INC REN
    CMP REN,24
        JE CambioPantalla
    JMP ImprimirRelleno
    
CambioPantalla:
    CMP PantallaId,0
        JE ImprimirLogo
    CMP PantallaId,1
        JE MenuPrincipal
    CMP PantallaId,2
        JE ImprimirInterfazExterior
    CMP PantallaId,3
        JE ImprimirInterfazControlarRobot
    CMP PantallaId,4
        JE ImprimirInterfazInventario
    CMP PantallaId,5  
        JE ImprimirInterfazLugaresSeg
    CMP PantallaId,6
        JE ImprimirDatos
ImprimirLogo:
    MOV AH,19
    LEA BP,RELLENOS
    MOV CX,80       ;Longitud de Cadena
    MOV BH,0        ;Pagina
    MOV DH,0        ;Renglon
    MOV DL,0        ;Columna
    MOV BL,0F0H     ;Fondo
    MOV AL,0
    INT 10H
    
    MOV AH,19
    LEA BP,RELLENOI
    MOV DH,24       ;Renglon
    MOV AL,0
    INT 10H
    
    MOV AH,2
    MOV DH,1     ;R
    MOV DL,17    ;C
    INT 10H
    MOV AH,9
    MOV CX,4     ;Numero de Caracter
    MOV AL,' '   ;Caracter
    MOV BL,80H, ;Fondo
    INT 10H
    
 
    IMP_L_1 22, 4, 80H
    
    
    MOV AH,2
    MOV DL,12    ;C
    MOV DH,2
    INT 10H
    MOV AH,9
    MOV CX,2     ;Numero de Caracter
    MOV AL,' '   ;Caracter
    MOV BL,60H, ;Fondo
    INT 10H
        
    IMP_L_1 14, 3, 80H
    IMP_L_1 20, 1, 80H
    IMP_L_1 21, 1, 60H
    IMP_L_1 22, 1, 80H
    IMP_L_1 23, 1, 70H
    IMP_L_1 26, 3, 80H
    
    
    MOV AH,2
    MOV DH,3
    MOV DL,9    ;C
    INT 10H
    MOV AH,9
    MOV CX,3     ;Numero de Caracter
    MOV AL,' '   ;Caracter
    MOV BL,60H, ;Fondo
    INT 10H  
    
    IMP_L_1 12, 2, 80H
    IMP_L_1 14, 1, 70H
    IMP_L_1 15, 3, 80H
    IMP_L_1 20, 1, 80H
    IMP_L_1 21, 1, 0E0H
    IMP_L_1 22, 1, 80H
    IMP_L_1 23, 1, 70H
    IMP_L_1 25, 3, 80H
    IMP_L_1 29, 2, 80H
    
    MOV AH,2
    MOV DH,4
    MOV DL,7    ;C
    INT 10H
    MOV AH,9
    MOV CX,2     ;Numero de Caracter
    MOV AL,' '   ;Caracter
    MOV BL,60H,  ;Fondo
    INT 10H    
    
    IMP_L_1 9, 2, 0E0H
    IMP_L_1 11, 1, 70H
    IMP_L_1 12, 1, 70H
    IMP_L_1 14, 2, 80H
    IMP_L_1 18, 1, 80H
    IMP_L_1 20, 1, 80H
    IMP_L_1 21, 1, 0E0H
    IMP_L_1 22, 1, 80H
    IMP_L_1 23, 1, 70H
    IMP_L_1 24, 2, 80H
    IMP_L_1 28, 1, 80H
    IMP_L_1 31, 1, 80H
    
    MOV AH,2
    MOV DH,5
    MOV DL,5    ;C
    INT 10H
    MOV AH,9
    MOV CX,3     ;Numero de Caracter
    MOV AL,' '   ;Caracter
    MOV BL,60H,  ;Fondo
    INT 10H
    
    IMP_L_1 8, 2, 0E0H
    IMP_L_1 10, 1, 80H
    IMP_L_1 11, 2, 70H
    IMP_L_1 14, 3, 80H
    IMP_L_1 18, 1, 80H
    IMP_L_1 20, 1, 80H
    IMP_L_1 21, 1, 0E0H
    IMP_L_1 22, 1, 80H
    IMP_L_1 23, 1, 70H
    IMP_L_1 24, 3, 80H
    IMP_L_1 28, 1, 80H
    IMP_L_1 32, 1, 80H
    
;renglon 6     
    MOV AH,2
    MOV DH,6
    MOV DL,4    ;C
    INT 10H
    MOV AH,9
    MOV CX,1     ;Numero de Caracter
    MOV AL,' '   ;Caracter
    MOV BL,60H,  ;Fondo
    INT 10H
    
    IMP_L_1 5, 2, 0E0H
    IMP_L_1 7, 1, 60H
    IMP_L_1 8, 2, 0E0H
    IMP_L_1 10, 1, 80H
    IMP_L_1 11, 2, 70H
    IMP_L_1 14, 3, 80H
    IMP_L_1 17, 1, 70H
    IMP_L_1 18, 1, 80H
    IMP_L_1 20, 1, 80H
    IMP_L_1 21, 1, 0E0H
    IMP_L_1 22, 1, 80H
    IMP_L_1 23, 1, 70H
    IMP_L_1 24, 3, 80H
    IMP_L_1 27, 1, 70H
    IMP_L_1 28, 1, 80H
    IMP_L_1 32, 1, 80H
    
;renglon 7     
    MOV AH,2
    MOV DH,7
    MOV DL,4    ;C
    INT 10H
    MOV AH,9
    MOV CX,1     ;Numero de Caracter
    MOV AL,' '   ;Caracter
    MOV BL,60H,  ;Fondo
    INT 10H

    IMP_L_1 5, 2, 0E0H
    IMP_L_1 7, 1, 60H
    IMP_L_1 8, 2, 0E0H
    IMP_L_1 10, 1, 80H
    IMP_L_1 11, 2, 70H
    IMP_L_1 14, 2, 80H
    IMP_L_1 16, 1, 70H
    IMP_L_1 17, 2, 80H
    IMP_L_1 20, 1, 80H
    IMP_L_1 21, 1, 0E0H
    IMP_L_1 22, 1, 80H
    IMP_L_1 23, 1, 70H
    IMP_L_1 24, 2, 80H
    IMP_L_1 26, 1, 70H
    IMP_L_1 27, 2, 80H
    IMP_L_1 32, 1, 80H
    
    
;renglon 8     
    MOV AH,2
    MOV DH,8
    MOV DL,4    ;C
    INT 10H
    MOV AH,9
    MOV CX,1     ;Numero de Caracter
    MOV AL,' '   ;Caracter
    MOV BL,60H,  ;Fondo
    INT 10H
    
    IMP_L_1 5, 2, 0E0H
    IMP_L_1 7, 1, 60H
    IMP_L_1 8, 2, 0E0H
    IMP_L_1 10, 1, 80H
    IMP_L_1 11, 2, 70H
    IMP_L_1 17, 1, 70H
    IMP_L_1 19, 1, 80H
    IMP_L_1 20, 3, 0E0H
    IMP_L_1 23, 1, 80H
    IMP_L_1 24, 1, 70H
    IMP_L_1 24, 3, 80H
    IMP_L_1 32, 1, 80H
    
;renglon 9     
    MOV AH,2
    MOV DH,9
    MOV DL,4    ;C
    INT 10H
    MOV AH,9
    MOV CX,1     ;Numero de Caracter
    MOV AL,' '   ;Caracter
    MOV BL,60H,  ;Fondo
    INT 10H
    
    IMP_L_1 5, 2, 0E0H
    IMP_L_1 7, 1, 60H
    IMP_L_1 8, 3, 0E0H
    IMP_L_1 11, 1,80H 
    IMP_L_1 12, 2,70H
    IMP_L_1 17, 3,80H 
    IMP_L_1 20, 4,0E0H
    IMP_L_1 24, 1,80H 
    IMP_L_1 25, 3,70H
    IMP_L_1 31, 1,80H
    
;renglon 10     
    MOV AH,2
    MOV DH,10
    MOV DL,5    ;C
    INT 10H
    MOV AH,9
    MOV CX,4     ;Numero de Caracter
    MOV AL,' '   ;Caracter
    MOV BL,60H,  ;Fondo
    INT 10H
    
    IMP_L_1 9, 3, 0E0H
    IMP_L_1 12, 1,80H
    IMP_L_1 13, 3,70H
    IMP_L_1 16, 2,80H
    IMP_L_1 18, 1,0E0H
    IMP_L_1 19, 4,60H
    IMP_L_1 23, 2, 0E0H
    IMP_L_1 25, 2, 80H
    IMP_L_1 27, 2, 70H
    IMP_L_1 30, 1, 80H
       
;renglon 11     
    MOV AH,2
    MOV DH,11
    MOV DL,9    ;C
    INT 10H
    MOV AH,9
    MOV CX,4     ;Numero de Caracter
    MOV AL,' '   ;Caracter
    MOV BL,60H,  ;Fondo
    INT 10H
    
    IMP_L_1 13, 3, 80H
    IMP_L_1 16, 1, 60H
    IMP_L_1 17, 4, 0E0H
    IMP_L_1 21, 1, 60H
    IMP_L_1 23, 4, 60H
    IMP_L_1 27, 3, 80H
  
;renglon 12     
    MOV AH,2
    MOV DH,12
    MOV DL,10    ;C
    INT 10H
    MOV AH,9
    MOV CX,1     ;Numero de Caracter
    MOV AL,' '   ;Caracter
    MOV BL,60H,  ;Fondo
    INT 10H    
   
    IMP_L_1 13, 1, 60H    
    IMP_L_1 16, 1, 60H
    IMP_L_1 17, 4, 0E0H  
    IMP_L_1 21, 1, 60H

;renglon 13     
    MOV AH,2
    MOV DH,13
    MOV DL,11    ;C
    INT 10H
    MOV AH,9
    MOV CX,2     ;Numero de Caracter
    MOV AL,' '   ;Caracter
    MOV BL,60H,  ;Fondo
    INT 10H
    
    IMP_L_1 16, 2, 60H
    IMP_L_1 18, 3, 0E0H    
    IMP_L_1 21, 2, 60H
   
;renglon 14     
    MOV AH,2
    MOV DH,14
    MOV DL,17    ;C
    INT 10H
    MOV AH,9
    MOV CX,1     ;Numero de Caracter
    MOV AL,' '   ;Caracter
    MOV BL,60H,  ;Fondo
    INT 10H
    
    IMP_L_1 18, 4, 0E0H
    IMP_L_1 22, 1, 60H       
    
;renglon 15     
    MOV AH,2
    MOV DH,15
    MOV DL,17    ;C
    INT 10H
    MOV AH,9
    MOV CX,2     ;Numero de Caracter
    MOV AL,' '   ;Caracter
    MOV BL,60H,  ;Fondo
    INT 10H 
    
    IMP_L_1 19, 3, 0E0H
    IMP_L_1 22, 2, 60H
           
;renglon 16     
    MOV AH,2
    MOV DH,16
    MOV DL,18    ;C
    INT 10H
    MOV AH,9
    MOV CX,1     ;Numero de Caracter
    MOV AL,' '   ;Caracter
    MOV BL,60H,  ;Fondo
    INT 10H
    
    IMP_L_1 19, 4, 0E0H
    IMP_L_1 23, 1, 60H       
           
;renglon 17     
    MOV AH,2
    MOV DH,17
    MOV DL,17    ;C
    INT 10H
    MOV AH,9
    MOV CX,7     ;Numero de Caracter
    MOV AL,' '   ;Caracter
    MOV BL,60H,  ;Fondo
    INT 10H
    
;renglon 18     
    MOV AH,2
    MOV DH,18
    MOV DL,16    ;C
    INT 10H
    MOV AH,9
    MOV CX,1     ;Numero de Caracter
    MOV AL,' '   ;Caracter
    MOV BL,60H,  ;Fondo
    INT 10H
    
    IMP_L_1 17, 5, 0E0H
    IMP_L_1 22, 1, 60H       
    
;renglon 19     
    MOV AH,2
    MOV DH,19
    MOV DL,7    ;C
    INT 10H
    MOV AH,9
    MOV CX,22     ;Numero de Caracter
    MOV AL,' '   ;Caracter
    MOV BL,60H,  ;Fondo
    INT 10H
    
;renglon 20     
    MOV AH,2
    MOV DH,20
    MOV DL,6    ;C
    INT 10H
    MOV AH,9
    MOV CX,1     ;Numero de Caracter
    MOV AL,' '   ;Caracter
    MOV BL,60H,  ;Fondo
    INT 10H
    
    IMP_L_1 7, 6, 0E0H
    IMP_L_1 13, 1, 00H 
    IMP_L_1 14, 3, 70H
    IMP_L_1 17, 1, 00H 
    IMP_L_1 18, 7, 70H
    IMP_L_1 25, 1, 00H 
    IMP_L_1 26, 2, 70H
    IMP_L_1 28, 1, 60H 
    
;renglon 21     
    MOV AH,2
    MOV DH,21
    MOV DL,5    ;C
    INT 10H
    MOV AH,9
    MOV CX,4     ;Numero de Caracter
    MOV AL,' '   ;Caracter
    MOV BL,60H,  ;Fondo
    INT 10H
    
    IMP_L_1 9, 4, 70H
    IMP_L_1 13, 1, 00H
    IMP_L_1 16, 1, 70H
    IMP_L_1 17, 1, 00H
    IMP_L_1 21, 5, 00H
    IMP_L_1 26, 1, 70H
    IMP_L_1 28, 2, 60H
    
;renglon 22     
    MOV AH,2
    MOV DH,22
    MOV DL,4    ;C
    INT 10H
    MOV AH,9
    MOV CX,1     ;Numero de Caracter
    MOV AL,' '   ;Caracter
    MOV BL,60H,  ;Fondo
    INT 10H
    
    IMP_L_1 5, 3, 0E0H
    IMP_L_1 7, 5, 70H 
    IMP_L_1 8, 3, 80H
    IMP_L_1 13, 1,00H 
    IMP_L_1 16, 1,70H
    IMP_L_1 17, 1,00H 
    IMP_L_1 18, 3, 0E0H
    IMP_L_1 21, 1, 00H 
    IMP_L_1 22, 2, 0E0H
    IMP_L_1 24, 2, 00H 
    IMP_L_1 26, 1, 70H
    IMP_L_1 27, 1, 60H 
    IMP_L_1 28, 1, 0E0H
    IMP_L_1 29, 2, 80H 
        
;renglon 23     
    MOV AH,2
    MOV DH,23
    MOV DL,4    ;C
    INT 10H
    MOV AH,9
    MOV CX,1     ;Numero de Caracter
    MOV AL,' '   ;Caracter
    MOV BL,60H,  ;Fondo
    INT 10H
    
    IMP_L_1 5, 2, 0E0H
    IMP_L_1 6, 5, 70H 
    IMP_L_1 12, 1, 80H
    IMP_L_1 13, 1, 00H 
    IMP_L_1 16, 1, 70H
    IMP_L_1 17, 1, 00H 
    IMP_L_1 18, 3, 0E0H
    IMP_L_1 21, 2, 00H 
    IMP_L_1 23, 1, 0E0H
    IMP_L_1 24, 2, 00H 
    IMP_L_1 26, 1, 70H
    IMP_L_1 27, 1, 60H 
    IMP_L_1 28, 3, 70H
    IMP_L_1 31, 2, 80H 
    
    MOV REN,0

    JMP CicloLogo

CicloLogo:
    MOV AH,19
    LEA BP,LogoAcceso
    MOV CX,20       ;Longitud de Cadena
    MOV BH,0        ;Pagina
    MOV DH,13       ;Renglon
    MOV DL,48       ;Columna
    MOV BL,0F0H     ;Fondo
    MOV AL,0
    INT 10H
    
    MOV AH,2    
    MOV DL,57   ;Col
    INT 10H    
    MOV AH,1
    INT 21H

    CMP AL,13
        JE CrearDocumentos
    JMP CicloLogo
    
MenuPrincipal:
    IMP_CAD_COLOR MenuPrin,10,48,0F0H,20,0,0
    IMP_CAD_COLOR MenuOp1,11,48,0F0H,20,0,0
    IMP_CAD_COLOR MenuOp2,12,48,0F0H,20,0,0
    IMP_CAD_COLOR MenuOp3,13,48,0F0H,20,0,0   
    IMP_CAD_COLOR MenuOp4,14,48,0F0H,20,0,0 
    IMP_CAD_COLOR MenuOp5,15,48,0F0H,20,0,0
    IMP_CAD_COLOR MenuSal,16,48,0F0H,20,0,0
    IMP_CAD_COLOR MenuSelect,17,48,0F0H,20,0,0 
    JMP SeleccionarOpcionMenu
    
CrearDocumentos:
    ;Crear Directorio
    DirectorioCrear rutaDir
    ;JC ErrorDirectorio
    
    ;Crear Archivo Inventario
    ArchivoCrear rutaInv
    MOV manejador,AX
    
    ;Crear Archivo Lugares de Defensa
    ArchivoCrear rutaLug
    MOV manejador,AX
    
    JMP MenuPrincipal
    
ErrorCrear:
    CURSOR 24,25,0
    ImprimirCadena msjErrorC
    JMP Final
    
ErrorAbrir:
    CURSOR 24,25,0
    ImprimirCadena msjErrorA
    JMP Final
        
SeleccionarOpcionMenu:
    
    CURSOR 17,59,0
    IMP_CAR 1,' ',0F0H
        MOV AH,1
        INT 21H
        MOV OPC,AL
        SUB OPC,30h
    CMP OPC,1
    CMP OPC,2
        MOV PantallaID,3 
        JE Limpiar
    CMP OPC,3      
        MOV PantallaID,4 
        JE Limpiar 
    CMP OPC,4
        MOV PantallaID,5  
        JE Limpiar 
    CMP OPC,5 
        MOV PantallaID,6 
        JE Limpiar
    CMP OPC,6
        JE Final
    JMP SeleccionarOpcionMenu

;***************************** INICIO ROBOT *********************************

ImprimirInterfazControlarRobot:
    #start=robot.exe#
    IMP_CAD_COLOR msjTituloRobot1,1,1,0F0H,78,0,0
    IMP_CAD_COLOR msjTituloRobot2,2,1,0F0H,78,0,0
    IMP_CAD_COLOR msjTituloRobot3,3,1,0F0H,78,0,0
    IMP_CAD_COLOR msjTituloRobot4,4,1,0F0H,78,0,0
    IMP_CAD_COLOR msjTituloRobot5,5,1,0F0H,78,0,0
    IMP_CAD_COLOR msjTituloRobot6,6,1,0F0H,78,0,0
    IMP_CAD_COLOR msjrobomenu1,8,10,0F0H,44,0,0
    IMP_CAD_COLOR msjrobomenu2,9,10,0F0H,44,0,0
    IMP_CAD_COLOR msjroboorden,10,10,0F0H,21,0,0
    JMP Control
    
Control:
    Cursor 10,31,0
    MOV AH,0
    INT 16H
    MOV rastreo,AH
    CMP rastreo,48H
        JE Adelante
    CMP rastreo,50H
        JE Voltear
    CMP rastreo,4BH
        JE GiroIzq
    CMP rastreo,4DH
        JE GiroDer
    CMP rastreo,1CH
        JE Interactuar
    CMP OPC,3
        MOV PantallaID,1 
        INC indice
    CMP rastreo,01H
        JE Limpiar    

Adelante:
    ;Avanzar una casilla
    IMP_CAD_COLOR msjroboava,10,31,0F0H,15,0,0
    CALL RoboAva
    CALL RobEsp
    CALL RoboNad
    CALL RobEsp
    JMP Control
    
Voltear:
    ;Girar 180°
    IMP_CAD_COLOR msjrobogir,10,31,0F0H,15,0,0
    CALL RoboIzq
    CALL RobEsp
    CALL RoboNad
    CALL RobEsp
    CALL RoboIzq
    CALL RobEsp
    CALL RoboNad
    CALL RobEsp
    JMP Control  

GiroDer:
    ;Girar Derecha 90°
    IMP_CAD_COLOR msjroboder,10,31,0F0H,15,0,0
    INT 10H
    CALL RoboDer
    CALL RobEsp
    CALL RoboNad
    CALL RobEsp
    JMP Control

GiroIzq:     
    IMP_CAD_COLOR msjroboizq,10,31,0F0H,15,0,0
    CALL RoboIzq
    CALL RobEsp
    CALL RoboNad
    CALL RobEsp
    JMP Control
    
Interactuar:
    IMP_CAD_COLOR msjroboint,10,31,0F0H,15,0,0
    CALL RoboExa
    CALL RobEspExa
    IN AL,10   ;Obtiene Datos de Examinacion
    MOV DatosExam,AL
    CALL RobEsp
    CMP DatosExam,7
        JE LampApagar         
    CMP DatosExam,8
        JE LampEncender         
    JE Control

LampEncender:
    CALL RoboOn
    CALL RobEsp
    CALL RoboNad
    CALL RobEsp
    JMP Control

LampApagar:
    CALL RoboOff
    CALL RobEsp
    CALL RoboNad
    CALL RobEsp
    JMP Control
    
;****************************** FIN  ROBOT *****************************
;****************************** INVENTARIO *****************************
GuardarInventario:
    ;Abrir archivo carta.txt
    AbrirArchivo rutaInv,2
    mov manejador,ax
    
    ArchivoEscribir  manejador,11,SInventario+1;manejador,cant,cadena 
     
    ArchivoEscribir  manejador,2,salto ;->37 caracteres
    ;Escribir Indicador
    ArchivoEscribir  manejador,4,RenglonE1;manejador,cant,cadena
    mov contador,61;Caracteres de todos los titulos    
    ;Escribir Inventario
    mov ax,0
    mov al,Espacio1[1]
    mov long,ax
    add contador,ax;Caracteres de la cadena
    ArchivoEscribir  manejador,long,Espacio1+2
    ArchivoEscribir  manejador,1,salto ;->37 caracteres
    
    ;Escribir Indicador
    ArchivoEscribir  manejador,4,RenglonE2;manejador,cant,cadena
    mov contador,61;Caracteres de todos los titulos    
    ;Escribir Inventario
    mov ax,0
    mov al,Espacio2[1]
    mov long,ax
    add contador,ax;Caracteres de la cadena
    ArchivoEscribir  manejador,long,Espacio2+2
    ArchivoEscribir  manejador,1,salto ;->37 caracteres
    
    ;Escribir Indicador
    ArchivoEscribir  manejador,4,RenglonE3;manejador,cant,cadena
    mov contador,61;Caracteres de todos los titulos    
    ;Escribir Inventario
    mov ax,0
    mov al,Espacio3[1]
    mov long,ax
    add contador,ax;Caracteres de la cadena
    ArchivoEscribir  manejador,long,Espacio3+2
    ArchivoEscribir  manejador,1,salto ;->37 caracteres
    
    ;Escribir Indicador
    ArchivoEscribir  manejador,4,RenglonE4;manejador,cant,cadena
    mov contador,61;Caracteres de todos los titulos    
    ;Escribir Inventario
    mov ax,0
    mov al,Espacio4[1]
    mov long,ax
    add contador,ax;Caracteres de la cadena
    ArchivoEscribir  manejador,long,Espacio4+2
    ArchivoEscribir  manejador,1,salto ;->37 caracteres
    
    ;Escribir Indicador
    ArchivoEscribir  manejador,4,RenglonE5;manejador,cant,cadena
    mov contador,61;Caracteres de todos los titulos    
    ;Escribir Inventario
    mov ax,0
    mov al,Espacio5[1]
    mov long,ax
    add contador,ax;Caracteres de la cadena
    ArchivoEscribir  manejador,long,Espacio5+2
    ArchivoEscribir  manejador,1,salto ;->37 caracteres
    
    ;Escribir Indicador
    ArchivoEscribir  manejador,4,RenglonE6;manejador,cant,cadena
    mov contador,61;Caracteres de todos los titulos    
    ;Escribir Inventario
    mov ax,0
    mov al,Espacio6[1]
    mov long,ax
    add contador,ax;Caracteres de la cadena
    ArchivoEscribir  manejador,long,Espacio6+2
    ArchivoEscribir  manejador,1,salto ;->37 caracteres
    
    ;Escribir Indicador
    ArchivoEscribir  manejador,4,RenglonE7;manejador,cant,cadena
    mov contador,61;Caracteres de todos los titulos    
    ;Escribir Inventario
    mov ax,0
    mov al,Espacio7[1]
    mov long,ax
    add contador,ax;Caracteres de la cadena
    ArchivoEscribir  manejador,long,Espacio7+2
    ArchivoEscribir  manejador,1,salto ;->37 caracteres
    
    ;Escribir Indicador
    ArchivoEscribir  manejador,4,RenglonE8;manejador,cant,cadena
    mov contador,61;Caracteres de todos los titulos    
    ;Escribir Inventario
    mov ax,0
    mov al,Espacio8[1]
    mov long,ax
    add contador,ax;Caracteres de la cadena
    ArchivoEscribir  manejador,long,Espacio8+2
    ArchivoEscribir  manejador,1,salto ;->37 caracteres
    
    ;Escribir Indicador
    ArchivoEscribir  manejador,4,RenglonE9;manejador,cant,cadena
    mov contador,61;Caracteres de todos los titulos    
    ;Escribir Inventario
    mov ax,0
    mov al,Espacio9[1]
    mov long,ax
    add contador,ax;Caracteres de la cadena
    ArchivoEscribir  manejador,long,Espacio9+2
    ArchivoEscribir  manejador,1,salto ;->37 caracteres
    
    ;Escribir Indicador
    ArchivoEscribir  manejador,4,RenglonE10;manejador,cant,cadena
    mov contador,61;Caracteres de todos los titulos    
    ;Escribir Inventario
    mov ax,0
    mov al,Espacio10[1]
    mov long,ax
    add contador,ax;Caracteres de la cadena
    ArchivoEscribir  manejador,long,Espacio10+2
    ArchivoEscribir  manejador,1,salto ;->37 caracteres
    
    CerrarArchivo manejador
    
    JMP Limpiar

;****************************** INVENTARIO *****************************
ImprimirInterfazInventario:        
    IMP_CAD_COLOR TITULO1,1,0,0F0H,80,0,0
    IMP_CAD_COLOR TITULO2,2,0,0F0H,80,0,0
    IMP_CAD_COLOR TITULO3,3,0,0F0H,80,0,0   
    IMP_CAD_COLOR OPCIONES,5,0,0F0H,80,0,0
    
    JMP ImprimirInventario
   
ImprimirInventario:
    IMP_CAD_COLOR RenglonE1,8,5,0F0H,4,0,0 
    IMP_CAD_COLOR RenglonE2,9,5,0F0H,4,0,0
    IMP_CAD_COLOR RenglonE3,10,5,0F0H,4,0,0
    IMP_CAD_COLOR RenglonE4,11,5,0F0H,4,0,0 
    IMP_CAD_COLOR RenglonE5,12,5,0F0H,4,0,0
    IMP_CAD_COLOR RenglonE6,13,5,0F0H,4,0,0
    IMP_CAD_COLOR RenglonE7,14,5,0F0H,4,0,0
    IMP_CAD_COLOR RenglonE8,15,5,0F0H,4,0,0 
    IMP_CAD_COLOR RenglonE9,16,5,0F0H,4,0,0 
    IMP_CAD_COLOR RenglonE10,17,5,0F0H,4,0,0
    CMP EspImp[0],1
        JE ImprimirEspacio1
    CMP EspImp[1],1
        JE ImprimirEspacio2
    CMP EspImp[2],1
        JE ImprimirEspacio3
    CMP EspImp[3],1
        JE ImprimirEspacio4
    CMP EspImp[4],1
        JE ImprimirEspacio5
    CMP EspImp[5],1
        JE ImprimirEspacio6
    CMP EspImp[6],1
        JE ImprimirEspacio7
    CMP EspImp[7],1
        JE ImprimirEspacio8
    CMP EspImp[8],1
        JE ImprimirEspacio9
    CMP EspImp[9],1
        JE ImprimirEspacio10                
   
    JMP SeleccionarOpcionMenuInventario
    
ImprimirEspacio1:
    MOV AX,0
    MOV AL,Espacio1[1] 
    MOV long,AX
    IMP_CAD_COLOR Espacio1+2,8,10,0F0H,long,0,0
    CMP EspImp[1],1
        JE ImprimirEspacio2
    CMP EspImp[2],1
        JE ImprimirEspacio3
    CMP EspImp[3],1
        JE ImprimirEspacio4
    CMP EspImp[4],1
        JE ImprimirEspacio5
    CMP EspImp[5],1
        JE ImprimirEspacio6
    CMP EspImp[6],1
        JE ImprimirEspacio7
    CMP EspImp[7],1
        JE ImprimirEspacio8
    CMP EspImp[8],1
        JE ImprimirEspacio9
    CMP EspImp[9],1
        JE ImprimirEspacio10
    JMP SeleccionarOpcionMenuInventario
        
ImprimirEspacio2:
    MOV AX,0
    MOV AL,Espacio2[1] 
    MOV long,AX                      
    IMP_CAD_COLOR Espacio2+2,9,10,0F0H,long,0,0
    CMP EspImp[2],1
        JE ImprimirEspacio3
    CMP EspImp[3],1
        JE ImprimirEspacio4
    CMP EspImp[4],1
        JE ImprimirEspacio5
    CMP EspImp[5],1
        JE ImprimirEspacio6
    CMP EspImp[6],1
        JE ImprimirEspacio7
    CMP EspImp[7],1
        JE ImprimirEspacio8
    CMP EspImp[8],1
        JE ImprimirEspacio9
    CMP EspImp[9],1
        JE ImprimirEspacio10
    JMP SeleccionarOpcionMenuInventario
    
ImprimirEspacio3:
    MOV AX,0
    MOV AL,Espacio3[1] 
    MOV long,AX                           
    IMP_CAD_COLOR Espacio3+2,10,10,0F0H,long,0,0
    CMP EspImp[3],1
        JE ImprimirEspacio4
    CMP EspImp[4],1
        JE ImprimirEspacio5
    CMP EspImp[5],1
        JE ImprimirEspacio6
    CMP EspImp[6],1
        JE ImprimirEspacio7
    CMP EspImp[7],1
        JE ImprimirEspacio8
    CMP EspImp[8],1
        JE ImprimirEspacio9
    CMP EspImp[9],1
        JE ImprimirEspacio10
    JMP SeleccionarOpcionMenuInventario
    
ImprimirEspacio4:
    MOV AX,0
    MOV AL,Espacio4[1] 
    MOV long,AX
    IMP_CAD_COLOR Espacio4+1,11,10,0F0H,long,0,0
    CMP EspImp[4],1
        JE ImprimirEspacio5
    CMP EspImp[5],1
        JE ImprimirEspacio6
    CMP EspImp[6],1
        JE ImprimirEspacio7
    CMP EspImp[7],1
        JE ImprimirEspacio8
    CMP EspImp[8],1
        JE ImprimirEspacio9
    CMP EspImp[9],1
        JE ImprimirEspacio10
    JMP SeleccionarOpcionMenuInventario 
    
ImprimirEspacio5:
    MOV AX,0
    MOV AL,Espacio5[1] 
    MOV long,AX
    IMP_CAD_COLOR Espacio5+1,12,10,0F0H,long,0,0
    CMP EspImp[5],1
        JE ImprimirEspacio6
    CMP EspImp[6],1
        JE ImprimirEspacio7
    CMP EspImp[7],1
        JE ImprimirEspacio8
    CMP EspImp[8],1
        JE ImprimirEspacio9
    CMP EspImp[9],1
        JE ImprimirEspacio10
    JMP SeleccionarOpcionMenuInventario
    
ImprimirEspacio6:           
    MOV AX,0
    MOV AL,Espacio6[1]
    MOV long,AX
    IMP_CAD_COLOR Espacio6+2,13,10,0F0H,long,0,0
    CMP EspImp[6],1
        JE ImprimirEspacio7
    CMP EspImp[7],1
        JE ImprimirEspacio8
    CMP EspImp[8],1
        JE ImprimirEspacio9
    CMP EspImp[9],1
        JE ImprimirEspacio10
    JMP SeleccionarOpcionMenuInventario
    
ImprimirEspacio7:
    MOV AX,0
    MOV AL,Espacio7[1]
    MOV long,AX
    IMP_CAD_COLOR Espacio7+2,14,10,0F0H,long,0,0
    CMP EspImp[7],1
        JE ImprimirEspacio8
    CMP EspImp[8],1
        JE ImprimirEspacio9
    CMP EspImp[9],1
        JE ImprimirEspacio10
    JMP SeleccionarOpcionMenuInventario
    
ImprimirEspacio8:
    MOV AX,0
    MOV AL,Espacio8[1]
    MOV long,AX
    IMP_CAD_COLOR Espacio8+2,15,10,0F0H,long,0,0
    CMP EspImp[8],1
        JE ImprimirEspacio9
    CMP EspImp[9],1
        JE ImprimirEspacio10
    JMP SeleccionarOpcionMenuInventario
    
ImprimirEspacio9:
    MOV AX,0
    MOV AL,Espacio9[1]
    MOV long,AX
    IMP_CAD_COLOR Espacio9+2,16,10,0F0H,long,0,0
    CMP EspImp[9],1
        JE ImprimirEspacio10
    JMP SeleccionarOpcionMenuInventario
    
ImprimirEspacio10:
    MOV AX,0
    MOV AL,Espacio10[1]
    MOV long,AX
    IMP_CAD_COLOR Espacio10+2,17,10,0F0H,long,0,0
    JMP SeleccionarOpcionMenuInventario 
    
SeleccionarOpcionMenuInventario:
    CURSOR 5,62,0  
        MOV AH,9     ;Imprime Caracter
        MOV CX,1     ;Numero de Caracter
        MOV AL,' '   ;Caracter
        MOV BL,0F0H  ;Fondo
        INT 10H
        MOV AH,1
        INT 21H
        MOV OPC,AL
        SUB OPC,30h
        
    CMP OPC,1
        JE AñadirSeleccion
    CMP OPC,2
        JE QuitarSeleccion
    CMP OPC,3
        MOV PantallaID,1 
        inc indice
    CMP OPC,3
        JE GuardarInventario
    JMP SeleccionarOpcionMenuInventario        
    
AñadirSeleccion:
    IMP_CAD_COLOR SeleccionE,5,65,0F0H,9,0,0
    CURSOR 5,73,0  
        MOV AH,9     ;Imprime Caracter
        MOV CX,1     ;Numero de Caracter
        MOV AL,' '   ;Caracter
        MOV BL,0F0H  ;Fondo
        INT 10H
        
    INT 10H
    MOV AH,1
    INT 21H
    MOV OpcEsp,AL
    SUB OpcEsp,30H
    
    CURSOR 5,65,0
    IMP_CAR 10,' ',0F0H
    
    CMP OpcEsp,0
        JE AñadirEspacio1
    CMP OpcEsp,1
        JE AñadirEspacio2
    CMP OpcEsp,2          
        JE AñadirEspacio3
    CMP OpcEsp,3          
        JE AñadirEspacio4
    CMP OpcEsp,4          
        JE AñadirEspacio5
    CMP OpcEsp,5          
        JE AñadirEspacio6
    CMP OpcEsp,6          
        JE AñadirEspacio7
    CMP OpcEsp,7          
        JE AñadirEspacio8
    CMP OpcEsp,8           
        JE AñadirEspacio9
    CMP OpcEsp,9          
        JE AñadirEspacio10
    JMP AñadirSeleccion
    
AñadirEspacio1:
    MOV EspImp[0],1
    CURSOR 8,10,0
    LEER_CAD Espacio1
    JMP ImprimirInterfazInventario
       
AñadirEspacio2:
    MOV EspImp[1],1
    CURSOR 9,10,0
    LEER_CAD Espacio2
    JMP ImprimirInterfazInventario
    
AñadirEspacio3:
    MOV EspImp[2],1
    CURSOR 10,10,0
    LEER_CAD Espacio3
    JMP ImprimirInterfazInventario
    
AñadirEspacio4:
    MOV EspImp[3],1
    CURSOR 11,10,0
    LEER_CAD Espacio4
    JMP ImprimirInterfazInventario
    
AñadirEspacio5:
    MOV EspImp[4],1
    CURSOR 12,10,0
    LEER_CAD Espacio5
    JMP ImprimirInterfazInventario
    
AñadirEspacio6:
    MOV EspImp[5],1
    CURSOR 13,10,0
    LEER_CAD Espacio6
    JMP ImprimirInterfazInventario

AñadirEspacio7:
    MOV EspImp[6],1
    CURSOR 14,10,0
    LEER_CAD Espacio7
    JMP ImprimirInterfazInventario
    
AñadirEspacio8:
    MOV EspImp[7],1
    CURSOR 15,10,0
    LEER_CAD Espacio8
    JMP ImprimirInterfazInventario
    
AñadirEspacio9:
    MOV EspImp[8],1
    CURSOR 16,10,0
    LEER_CAD Espacio9
    JMP ImprimirInterfazInventario
    
AñadirEspacio10:
    MOV EspImp[9],1
    CURSOR 17,10,0
    LEER_CAD Espacio10
    JMP ImprimirInterfazInventario

QuitarSeleccion:
    IMP_CAD_COLOR SeleccionE,5,65,0F0H,9,0,0
    CURSOR 5,73,0  
        MOV AH,9     ;Imprime Caracter
        MOV CX,1     ;Numero de Caracter
        MOV AL,' '   ;Caracter
        MOV BL,0F0H  ;Fondo
        INT 10H 
    INT 10H
    MOV AH,1
    INT 21H
    MOV OpcEsp,AL
    SUB OpcEsp,30H
    
    CURSOR 5,65,0
    IMP_CAR 10,' ',0F0H
    
    CMP OpcEsp,0
        MOV EspImp[0],0
    CMP OpcEsp,0
        IMP_CAD_COLOR RELLENOCAD,8,10,0F0H,61,0,0
    CMP OpcEsp,1
        MOV EspImp[1],0
    CMP OpcEsp,1
        IMP_CAD_COLOR RELLENOCAD,9,10,0F0H,61,0,0
    CMP OpcEsp,2          
        MOV EspImp[2],0
    CMP OpcEsp,2
        IMP_CAD_COLOR RELLENOCAD,10,10,0F0H,61,0,0
    CMP OpcEsp,3          
        MOV EspImp[3],0
    CMP OpcEsp,3
        IMP_CAD_COLOR RELLENOCAD,11,10,0F0H,61,0,0
    CMP OpcEsp,4          
        MOV EspImp[4],0
    CMP OpcEsp,4
        IMP_CAD_COLOR RELLENOCAD,12,10,0F0H,61,0,0
    CMP OpcEsp,5          
        MOV EspImp[5],0
    CMP OpcEsp,5
        IMP_CAD_COLOR RELLENOCAD,13,10,0F0H,61,0,0    
    CMP OpcEsp,6          
        MOV EspImp[6],0
    CMP OpcEsp,6
        IMP_CAD_COLOR RELLENOCAD,14,10,0F0H,61,0,0
    CMP OpcEsp,7          
        MOV EspImp[7],0
    CMP OpcEsp,7
        IMP_CAD_COLOR RELLENOCAD,15,10,0F0H,61,0,0
    CMP OpcEsp,8           
        MOV EspImp[8],0
    CMP OpcEsp,8
        IMP_CAD_COLOR RELLENOCAD,16,10,0F0H,61,0,0
    CMP OpcEsp,9          
        MOV EspImp[9],0
    CMP OpcEsp,9
        IMP_CAD_COLOR RELLENOCAD,17,10,0F0H,61,0,0
    JMP ImprimirInterfazInventario

;******************************** FIN INVENTARIO****************************
;*********************************GUARDAR LUGARES****************************  
GuardarLugares:
    ;Abrir archivo carta.txt
    AbrirArchivo rutaLug,2
    mov manejador,ax
    
    ArchivoEscribir manejador,13,SLugarSeguro+1;manejador,cant,cadena
    ArchivoEscribir  manejador,2,salto ;->37 caracteres               
    
    ;Escribir Indicador
    ArchivoEscribir  manejador,15,RenglonU1;manejador,cant,cadena
    mov contador,61;Caracteres de todos los titulos    
    ;Escribir Espacio
    mov ax,0
    mov al,Esp1[1]
    mov long,ax
    add contador,ax;Caracteres de la cadena
    ArchivoEscribir  manejador,long,Esp1+2
    ArchivoEscribir  manejador,1,salto ;->37 caracteres
    
    ;Escribir Indicador
    ArchivoEscribir  manejador,15,RenglonU2;manejador,cant,cadena
    mov contador,61;Caracteres de todos los titulos    
    ;Escribir Espacio
    mov ax,0
    mov al,Esp2[1]
    mov long,ax
    add contador,ax;Caracteres de la cadena
    ArchivoEscribir  manejador,long,Esp2+2 
    ArchivoEscribir  manejador,1,salto ;->37 caracteres
    
    ;Escribir Indicador
    ArchivoEscribir  manejador,15,RenglonU3;manejador,cant,cadena
    mov contador,61;Caracteres de todos los titulos    
    ;Escribir Espacio
    mov ax,0
    mov al,Esp3[1]
    mov long,ax
    add contador,ax;Caracteres de la cadena
    ArchivoEscribir  manejador,long,Esp3+2
    ArchivoEscribir  manejador,1,salto ;->37 caracteres 
    
    ;Escribir Indicador
    ArchivoEscribir  manejador,15,RenglonU4;manejador,cant,cadena
    mov contador,61;Caracteres de todos los titulos    
    ;Escribir Espacio
    mov ax,0
    mov al,Esp4[1]
    mov long,ax
    add contador,ax;Caracteres de la cadena
    ArchivoEscribir  manejador,long,Esp4+2
    ArchivoEscribir  manejador,1,salto ;->37 caracteres 
    
    ;Escribir Indicador
    ArchivoEscribir  manejador,15,RenglonU5;manejador,cant,cadena
    mov contador,61;Caracteres de todos los titulos    
    ;Escribir Espacio
    mov ax,0
    mov al,Esp5[1]
    mov long,ax
    add contador,ax;Caracteres de la cadena
    ArchivoEscribir  manejador,long,Esp5+2
    ArchivoEscribir  manejador,1,salto ;->37 caracteres
        
    ;Escribir Indicador
    ArchivoEscribir  manejador,15,RenglonU5;manejador,cant,cadena
    mov contador,61;Caracteres de todos los titulos    
    ;Escribir Espacio
    mov ax,0
    mov al,Esp5[1]
    mov long,ax
    add contador,ax;Caracteres de la cadena
    ArchivoEscribir  manejador,long,Esp5+2
    ArchivoEscribir  manejador,1,salto ;->37 caracteres
        
    ;Escribir Indicador
    ArchivoEscribir  manejador,15,RenglonU6;manejador,cant,cadena
    mov contador,61;Caracteres de todos los titulos    
    ;Escribir Espacio
    mov ax,0
    mov al,Esp6[1]
    mov long,ax
    add contador,ax;Caracteres de la cadena
    ArchivoEscribir  manejador,long,Esp6+2
    ArchivoEscribir  manejador,1,salto ;->37 caracteres
        
    ;Escribir Indicador
    ArchivoEscribir  manejador,15,RenglonU7;manejador,cant,cadena
    mov contador,61;Caracteres de todos los titulos    
    ;Escribir Espacio
    mov ax,0
    mov al,Esp7[1]
    mov long,ax
    add contador,ax;Caracteres de la cadena
    ArchivoEscribir  manejador,long,Esp7+2
    ArchivoEscribir  manejador,1,salto ;->37 caracteres
        
    ;Escribir Indicador
    ArchivoEscribir  manejador,15,RenglonU8;manejador,cant,cadena
    mov contador,61;Caracteres de todos los titulos    
    ;Escribir Espacio
    mov ax,0
    mov al,Esp8[1]
    mov long,ax
    add contador,ax;Caracteres de la cadena
    ArchivoEscribir  manejador,long,Esp8+2
    ArchivoEscribir  manejador,1,salto ;->37 caracteres
        
    ;Escribir Indicador
    ArchivoEscribir  manejador,15,RenglonU9;manejador,cant,cadena
    mov contador,61;Caracteres de todos los titulos    
    ;Escribir Espacio
    mov ax,0
    mov al,Esp9[1]
    mov long,ax
    add contador,ax;Caracteres de la cadena
    ArchivoEscribir  manejador,long,Esp9+2
    ArchivoEscribir  manejador,1,salto ;->37 caracteres
        
    ;Escribir Indicador
    ArchivoEscribir  manejador,15,RenglonU10;manejador,cant,cadena
    mov contador,61;Caracteres de todos los titulos    
    ;Escribir Espacio
    mov ax,0
    mov al,Esp10[1]
    mov long,ax
    add contador,ax;Caracteres de la cadena
    MOV DX,contador
    MOV ContadorInv,DX
    ArchivoEscribir  manejador,long,Esp10+2
   
    CerrarArchivo manejador
    
    JMP Limpiar
               
ImprimirInterfazLugaresSeg:
    MOV DL,0
       
    MOV AH,19
    LEA BP,TITULOLS1
    MOV DH,1        
    MOV AL,0
    INT 10H
    
    MOV AH,19
    LEA BP,TITULOLS2
    MOV DH,2        
    MOV AL,0
    INT 10H
        
    MOV AH,19
    LEA BP,TITULOLS3
    MOV DH,3        
    MOV AL,0
    INT 10H 
    
    MOV AH,19
    LEA BP,TITULOLS4
    MOV DH,4        
    MOV AL,0
    INT 10H 
    
    MOV AH,19
    LEA BP,Opciones
    MOV DH,7       
    MOV AL,0
    INT 10H         
    
    JMP ImprimirLugares 
    
ImprimirLugares:
    IMP_CAD_COLOR RenglonU1,10,5,0F0H,15,0,0 
    IMP_CAD_COLOR RenglonU2,11,5,0F0H,15,0,0
    IMP_CAD_COLOR RenglonU3,12,5,0F0H,15,0,0
    IMP_CAD_COLOR RenglonU4,13,5,0F0H,15,0,0
    IMP_CAD_COLOR RenglonU5,14,5,0F0H,15,0,0
    IMP_CAD_COLOR RenglonU6,15,5,0F0H,15,0,0
    IMP_CAD_COLOR RenglonU7,16,5,0F0H,15,0,0
    IMP_CAD_COLOR RenglonU8,17,5,0F0H,15,0,0
    IMP_CAD_COLOR RenglonU9,18,5,0F0H,15,0,0
    IMP_CAD_COLOR RenglonU10,19,5,0F0H,15,0,0
               
    JMP SeleccionarOpcionMenuLugares 
    
ImpEsp1:
    IMP_CAD_COLOR Esp1,10,25,0F0H,50,0,0
    CMP RegUbi[1],1
        JE ImpEsp2
    CMP RegUbi[2],1
        JE ImpEsp3
    CMP RegUbi[3],1
        JE ImpEsp4
    CMP RegUbi[4],1
        JE ImpEsp5
    CMP RegUbi[5],1
        JE ImpEsp6
    CMP RegUbi[6],1
        JE ImpEsp7
    CMP RegUbi[7],1
        JE ImpEsp8
    CMP RegUbi[8],1
        JE ImpEsp9
    CMP RegUbi[9],1
        JE ImpEsp10
    JMP SeleccionarOpcionMenuLugares    

ImpEsp2:
    IMP_CAD_COLOR Esp2,11,25,0F0H,50,0,0
    CMP RegUbi[2],1
        JE ImpEsp3
    CMP RegUbi[3],1
        JE ImpEsp4
    CMP RegUbi[4],1
        JE ImpEsp5
    CMP RegUbi[5],1
        JE ImpEsp6
    CMP RegUbi[6],1
        JE ImpEsp7
    CMP RegUbi[7],1
        JE ImpEsp8
    CMP RegUbi[8],1
        JE ImpEsp9
    CMP RegUbi[9],1
        JE ImpEsp10
    JMP SeleccionarOpcionMenuLugares  
      
ImpEsp3:
    IMP_CAD_COLOR Esp3,12,25,0F0H,50,0,0
    CMP RegUbi[3],1
        JE ImpEsp4
    CMP RegUbi[4],1
        JE ImpEsp5
    CMP RegUbi[5],1
        JE ImpEsp6
    CMP RegUbi[6],1
        JE ImpEsp7
    CMP RegUbi[7],1
        JE ImpEsp8
    CMP RegUbi[8],1
        JE ImpEsp9
    CMP RegUbi[9],1
        JE ImpEsp10
    JMP SeleccionarOpcionMenuLugares  
      
ImpEsp4:
    IMP_CAD_COLOR Esp4,13,25,0F0H,50,0,0
    CMP RegUbi[4],1
        JE ImpEsp5
    CMP RegUbi[5],1
        JE ImpEsp6
    CMP RegUbi[6],1
        JE ImpEsp7
    CMP RegUbi[7],1
        JE ImpEsp8
    CMP RegUbi[8],1
        JE ImpEsp9
    CMP RegUbi[9],1
        JE ImpEsp10
    JMP SeleccionarOpcionMenuLugares  

ImpEsp5:
    IMP_CAD_COLOR Esp5,14,25,0F0H,50,0,0
    CMP RegUbi[5],1
        JE ImpEsp6
    CMP RegUbi[6],1
        JE ImpEsp7
    CMP RegUbi[7],1
        JE ImpEsp8
    CMP RegUbi[8],1
        JE ImpEsp9
    CMP RegUbi[9],1
        JE ImpEsp10
    JMP SeleccionarOpcionMenuLugares 

ImpEsp6:
    IMP_CAD_COLOR Esp6,15,25,0F0H,50,0,0
    CMP RegUbi[6],1
        JE ImpEsp7
    CMP RegUbi[7],1
        JE ImpEsp8
    CMP RegUbi[8],1
        JE ImpEsp9
    CMP RegUbi[9],1
        JE ImpEsp10
    JMP SeleccionarOpcionMenuLugares 
    
ImpEsp7:
    IMP_CAD_COLOR Esp7,16,25,0F0H,50,0,0
    CMP RegUbi[7],1
        JE ImpEsp8
    CMP RegUbi[8],1
        JE ImpEsp9
    CMP RegUbi[9],1
        JE ImpEsp10
    JMP SeleccionarOpcionMenuLugares   

ImpEsp8:
    IMP_CAD_COLOR Esp8,17,25,0F0H,50,0,0
    CMP RegUbi[8],1
        JE ImpEsp9
    CMP RegUbi[9],1
        JE ImpEsp10
    JMP SeleccionarOpcionMenuLugares  
ImpEsp9:
    IMP_CAD_COLOR Esp9,18,25,0F0H,50,0,0
    CMP RegUbi[9],1
        JE ImpEsp10
    JMP SeleccionarOpcionMenuLugares  
    
ImpEsp10:
    IMP_CAD_COLOR Esp10,19,25,0F0H,50,0,0
    JMP SeleccionarOpcionMenuLugares                  

SeleccionarOpcionMenuLugares:
    CURSOR 7,61,0  
        MOV AH,9     ;Imprime Caracter
        MOV CX,1     ;Numero de Caracter
        MOV AL,' '   ;Caracter
        MOV BL,0F0H  ;Fondo
        INT 10H
        MOV AH,1
        INT 21H
        MOV OPC,AL
        SUB OPC,30h
        
    CMP OPC,1
        JE NuevoLugar 
    CMP OPC,2
        JE BorrarLugar
    CMP OPC,3
        MOV PantallaID,1 
        inc indice
    CMP OPC,3
        JE GuardarLugares 
    JMP SeleccionarOpcionMenuLugares     
    
NuevoLugar:
    IMP_CAD_COLOR Ubi,7,64,0F0H,13,0,0
    CURSOR 7,77,0  
        MOV AH,9     ;Imprime Caracter
        MOV CX,1     ;Numero de Caracter
        MOV AL,' '   ;Caracter
        MOV BL,0F0H  ;Fondo
        INT 10H
        
    INT 10H
    MOV AH,1
    INT 21H
    MOV OpcEsp,AL
    SUB OpcEsp,30H
    
    CURSOR 7,63,0
    IMP_CAR 15,' ',0F0H
    
    CMP OpcEsp,0
        JE NuevoEspacio1
    CMP OpcEsp,1
        JE NuevoEspacio2
    CMP OpcEsp,2          
        JE NuevoEspacio3
    CMP OpcEsp,3          
        JE NuevoEspacio4
    CMP OpcEsp,4          
        JE NuevoEspacio5
    CMP OpcEsp,5          
        JE NuevoEspacio6
    CMP OpcEsp,6          
        JE NuevoEspacio7
    CMP OpcEsp,7          
        JE NuevoEspacio8
    CMP OpcEsp,8           
        JE NuevoEspacio9
    CMP OpcEsp,9          
        JE NuevoEspacio10
    JMP NuevoLugar
    
NuevoEspacio1:
    MOV RegUbi[0],1
    CURSOR 10,21,0
    LEER_CAD Esp1
    JMP ImprimirInterfazLugaresSeg
NuevoEspacio2:
    MOV RegUbi[1],1
    CURSOR 11,21,0
    LEER_CAD Esp2
    JMP ImprimirInterfazLugaresSeg
NuevoEspacio3:
    MOV RegUbi[2],1
    CURSOR 12,21,0
    LEER_CAD Esp3
    JMP ImprimirInterfazLugaresSeg
NuevoEspacio4:
    MOV RegUbi[3],1
    CURSOR 13,21,0
    LEER_CAD Esp4
    JMP ImprimirInterfazLugaresSeg
NuevoEspacio5:
    MOV RegUbi[4],1
    CURSOR 14,21,0
    LEER_CAD Esp5
    JMP ImprimirInterfazLugaresSeg 
NuevoEspacio6:
    MOV RegUbi[5],1
    CURSOR 15,21,0
    LEER_CAD Esp6
    JMP ImprimirInterfazLugaresSeg   
NuevoEspacio7:
    MOV RegUbi[6],1
    CURSOR 16,21,0
    LEER_CAD Esp7
    JMP ImprimirInterfazLugaresSeg     
NuevoEspacio8:
    MOV RegUbi[7],1
    CURSOR 17,21,0
    LEER_CAD Esp8
    JMP ImprimirInterfazLugaresSeg   
NuevoEspacio9:
    MOV RegUbi[8],1
    CURSOR 18,21,0
    LEER_CAD Esp9
    JMP ImprimirInterfazLugaresSeg     
NuevoEspacio10:
    MOV RegUbi[9],1
    CURSOR 19,21,0
    LEER_CAD Esp10
    JMP ImprimirInterfazLugaresSeg  
            
BorrarLugar:
    IMP_CAD_COLOR Ubi,7,64,0F0H,13,0,0
    CURSOR 7,77,0  
        MOV AH,9     ;Imprime Caracter
        MOV CX,1     ;Numero de Caracter
        MOV AL,' '   ;Caracter
        MOV BL,0F0H  ;Fondo
        INT 10H 
    INT 10H
    MOV AH,1
    INT 21H
    MOV OpcEsp,AL
    SUB OpcEsp,30H
    
    CURSOR 7,63,0
    IMP_CAR 15,' ',0F0H
    
    CMP OpcEsp,0
    JE Borrar0 
    CMP OpcEsp,1
    JE Borrar1
    CMP OpcEsp,2
    JE Borrar2
    CMP OpcEsp,3
    JE Borrar3
    CMP OpcEsp,4
    JE Borrar4
    CMP OpcEsp,5
    JE Borrar5
    CMP OpcEsp,6
    JE Borrar6
    CMP OpcEsp,7
    JE Borrar7
    CMP OpcEsp,8
    JE Borrar8
    CMP OpcEsp,9
    JE Borrar9
    Borrar0:
        MOV RegUbi[0],0 
            CURSOR 10,21,0
            IMP_CAR 41,' ',0F0H
    JMP ImprimirInterfazLugaresSeg 
    Borrar1:
        MOV RegUbi[1],0 
            CURSOR 11,21,0
            IMP_CAR 41,' ',0F0H
    JMP ImprimirInterfazLugaresSeg        
    CMP OpcEsp,2
    JMP Borrar2
    Borrar2:    
        MOV RegUbi[2],0 
            CURSOR 12,21,0
            IMP_CAR 41,' ',0F0H
    JMP ImprimirInterfazLugaresSeg

    Borrar3: 
        MOV RegUbi[3],0 
            CURSOR 13,21,0
            IMP_CAR 41,' ',0F0H
    JMP ImprimirInterfazLugaresSeg

    Borrar4:
        MOV RegUbi[4],0 
            CURSOR 14,21,0
            IMP_CAR 41,' ',0F0H
    JMP ImprimirInterfazLugaresSeg

    Borrar5:
        MOV RegUbi[5],0 
            CURSOR 15,21,0
            IMP_CAR 41,' ',0F0H
    JMP ImprimirInterfazLugaresSeg

    Borrar6:
        MOV RegUbi[6],0 
            CURSOR 16,21,0
            IMP_CAR 41,' ',0F0H
    JMP ImprimirInterfazLugaresSeg

    Borrar7:
        MOV RegUbi[7],0 
            CURSOR 17,21,0
            IMP_CAR 41,' ',0F0H
    JMP ImprimirInterfazLugaresSeg

    Borrar8:
        MOV RegUbi[8],0 
            CURSOR 18,21,0
            IMP_CAR 41,' ',0F0H
    JMP ImprimirInterfazLugaresSeg

    Borrar9:
        MOV RegUbi[9],0 
            CURSOR 19,21,0
            IMP_CAR 41,' ',0F0H
    JMP ImprimirInterfazLugaresSeg
;********************************** Final Guardar Lugares******************************
;********************************** Inicio Termometro *********************************
 ImprimirInterfazExterior:

 #start=thermometer.exe#
 
 
    IMP_CAD_COLOR msjtituloTerm1,1,1,0F0H,62,0,0
    IMP_CAD_COLOR msjtituloTerm2,2,1,0F0H,62,0,0
    IMP_CAD_COLOR msjtituloTerm3,3,1,0F0H,62,0,0
    IMP_CAD_COLOR msjtituloTerm4,4,1,0F0H,62,0,0
    IMP_CAD_COLOR msjtituloTerm5,5,1,0F0H,62,0,0
    IMP_CAD_COLOR msjtituloTerm6,6,1,0F0H,62,0,0

    mov ax, cs
    mov ds, ax

start:

    in al, 125

    cmp al, 0 
    jl  low

    cmp al, 50  
    jle  ok
    jg   high

low:
    mov al, 1
    out 127, al   ; turn heater "on".
    jmp ok

high:
    mov al, 0
    out 127, al   ; turn heater "off". 

ok:
    jmp start   ; endless loop.
;**************************************Final Termometro*******************************     
;********************************* Inicio Impresora ***********************************
ImprimirDatos:
    ;Abrir Archivo
    AbrirArchivo RutaInv,2
        MOV manejador,AX
    JC ErrorAbrir
    ;Leer archivo
    LeerArchivo manejador,ContadorInv,leidos;manejador, cuantosleer, leidos  
    CerrarArchivo manejador  
    LEA SI,leidos
    LEA DI,datosleidos 
    MOV CX,ContadorInv
        REP MOVSB
    MOV DL,12      ; form feed code. new page.
    MOV AH,5
    INT 21H
    
    MOV SI, offset datosleidos
    MOV CX,ContadorInv;Imprimir caracteres
Imprimir:    
    MOV DL,[SI]
    MOV AH,5       ; MS-DOS print function.
    INT 21H
    INC SI	        ; next char.
    LOOP Imprimir

    MOV DL,12      ; form feed code. page out!
    MOV AH,5
    INT 21H
    
    ;Abrir Archivo
    AbrirArchivo RutaLug,2
        MOV manejador,AX
    JC ErrorAbrir
    ;Leer archivo
    LeerArchivo manejador,ContadorLug,leidos2;manejador, cuantosleer, leidos  
    CerrarArchivo manejador  
    LEA SI,leidos2
    LEA DI,datosleidos2 
    MOV CX,ContadorLug
        REP MOVSB
    MOV DL,12      ; form feed code. new page.
    MOV AH,5
    INT 21H
    
    MOV SI, offset datosleidos2
    MOV CX,ContadorLug;Imprimir caracteres
    
Imprimir2:
    MOV DL,[SI]
    MOV AH,5       ; MS-DOS print function.
    INT 21H
    INC SI	        ; next char.
    LOOP Imprimir2

    MOV DL,12      ; form feed code. page out!
    MOV AH,5
    INT 21H                                                                          
                                                                              
    JMP Limpiar                                                                          
;********************************* Final Impresora ************************************
Final:
    MOV AX,4C00H
    INT 21H
    ;***************** PROC ROBOT ************************
    ;No hacer nada
    RoboNad PROC
        MOV AX, 0
        MOV AL, 0
        OUT 9, AL
        RET    
    RoboNad ENDP
    
    ;Avanzar
    RoboAva PROC
        MOV AX,0
        MOV AL, 1
        OUT 9, AL
        RET    
    RoboAva ENDP
    
    ;Girar Izquierda
    RoboIzq PROC
        MOV AX,0
        MOV AL, 2
        OUT 9, AL
        RET    
    RoboIzq ENDP

    ;Gira Derecha
    RoboDer PROC
        MOV AX,0
        MOV AL, 3
        OUT 9, AL
        RET    
    RoboDer ENDP
    
    ;Examinar
    RoboExa PROC
        MOV AX,0
        MOV AL, 4
        OUT 9, AL
        RET    
    RoboExa ENDP
    
    ;Apagar Lampara
    RoboOff PROC
        MOV AX,0
        MOV AL, 6
        OUT 9, AL
        RET
    RoboOff ENDP
    
    ;Encender Lampara
    RoboOn PROC
        MOV AX,0
        MOV AL, 5
        OUT 9, AL
        RET
    RoboOn ENDP
         
    RobEsp PROC
    ;Comprueba si el robot esta ocupado
    BUSY1: IN AL,11
    CMP AL, 00000010b
    JE BUSY1 ;Espera si esta ocupado
    RET
    RobEsp ENDP
    
    RobEspExa PROC
    ;Comprueba si el robot esta Examinando
    BUSY2: IN AL,11
    RET
    RobEspExa ENDP
    ;***************** PROC ROBOT ************************
    END   