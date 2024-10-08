
# DONDE ESTA LA RUTA PRINCIPAL DE LOS INSUMOS

rc <- "RUTA DONDE ESTAN LOS INSUMOS"

# NOTACION CIENTIFICA

options(scipen=999) 

# PRIMER BUCLE

for (i in 1:nrow(FECHA)) {
  
  if (FECHA$FECHA[i] >= x & FECHA$FECHA[i] <= h)  {
    
    # HACE EL LLAMADO DE LOS ARCHIVOS EN TXT
    # varaux1 <- (c)
    
    varaux1 <- paste(rc,'IBSRM14FTB_',FECHA[i,6],'.TXT')
    
    varaux1 <- gsub("/ ","/",varaux1)
    
    varaux1 <- gsub(" .TXT",".TXT",varaux1)
    
    varaux1 <- gsub("_ ","_",varaux1)
    
    varaux1 <- read.delim(varaux1, header = FALSE, sep = "©", dec = ",")
    
    # COLOCA LOS TITULOS Y FORMATOS DE LAS VARIABLES 
    # varaux2 <- (c)
    
    varaux2 <-  rename(varaux1, "BANCO"="V1","ID"="V2","PRIMER_NOMBRE"="V3","SEGUNDO_NOMBRE"="V4","PRIMER_APELLIDO"="V5","SEGUNDO_APELLIDO"="V6","NOMBRE_CLIENTE"="V7","TIPO_CLIENTE"="V8","RIF_CI"="V9","CODIGO_AGENCIA"="V10","NOMBRE_AGENCIA"="V11","CODIGO_EJECUTIVO"="V12","NOMBRE_EJECUTIVO"="V13","TIPO_BANCA"="V14","ZONA_AREA"="V15","IBS_GRUPO_ECONOMICO"="V16","GRUPO_ECONOMICO"="V17","MONTO_ACTIVO_GRUPO_ECONOMICO"="V18","PRESTAMO"="V19","PROPUESTA"="V20","MONTO_ORIGINAL"="V21","SALDO_ACTUAL"="V22","MONTO_VIGENTE"="V23","MONTO_REESTRUCTURADO"="V24","MONTO_VENCIDO"="V25","MONTO_LITIGIO"="V26","MONTO_INMOVILIZADO"="V27","DIAS_VENCIDOS"="V28","CANTIDAD_CUOTAS_VENCIDAS_COMERCIAL"="V29","ESTATUS_COMERCIAL_CREDITO"="V30",	"CANTIDAD_PRORROGAS"="V31","FECHA_ULTIMA_PRORROGA"="V32","CLASIFICACION_RIESGO"="V33","PCT_PROVISION"="V34","MONTO_PROVISION_ESPECIFICA"="V35","MONTO_PROVISION_ESPECIFICA_INTERESES"="V36","CUENTA_CONTABLE"="V37","DESCRIPCION_CUENTA_CONTABLE"="V38","ESTATUS_CONTABLE"="V39","DESCRIPCION_ESTATUS_CONTABLE"="V40","TIPO_PRODUCTO"="V41","PRODUCTO_DESCRIPCION"="V42","SUB_PRODUCTO"="V43","SUB_PRODUCTO_DESCRIPCION"="V44","FECHA_LIQUIDACION"="V45","FECHA_VENCIMIENTO_ACTUAL"="V46","FECHA_VENCIMIENTO_ORIGINAL"="V47","PERIODICIDAD"="V48","PERIODICIDAD_CANT"="V49","FECHA_CANCELACION_ULTIMA_CUOTA"="V50","FECHA_CANCELACION_ULTIMA_CUOTA_CAPITAL"="V51","FECHA_VENCIMIENTO_PROX_CUOTA"="V52","MONTO_PROX_CUOTA"="V53","CUOTA_PRINCIPAL"="V54","CUOTA_INTERESES"="V55","OTROS_CARGOS"="V56","CICLO_CAPITAL"="V57","FECHA_DE_CUOTA_PRINCIPAL"="V58","CICLO_INTERESES"="V59","FECHA_CUOTA_INTERESES"="V60","TASA_INTERES"="V61","TIPO_CALCULO_INTERESES"="V62","SALDO_INTERES"="V63","RENDIMIENTOS_COBRAR_VIGENTES"="V64","RENDIMIENTOS_COBRAR_VENCIDOS"="V65","INTERESES_COBRAR_CUENTA_ORDEN"="V66","INTERESES_COBRADOS_ANTICIPADOS"="V67","TIPO_GARANTIA"="V68","DESCRIPCION_GARANTIA"="V69","REFERENCIA_GARANTIA"="V70","MONTO_GARANTIA"="V71","MONEDA"="V72","LINEA_CREDITO"="V73","LINEA_CREDITO_UTILIZADA"="V74","LINEA_CREDITO_DISPONIBLE"="V75","TIPO_LINEA_CREDITO"="V76",
                       "DESCRIPCION_TIPO_LINEA_CREDITO"="V77","FECHA_VENCIMIENTO_LINEA_CREDITO"="V78","CUENTA_DEBITO_REPAGO"="V79","TIPO_CUENTA_DEBITO_REPAGO"="V80","SALDO_DISPONIBLE"="V81","PROMEDIO_TRIMESTRAL_CUENTA"="V82","CODIGO_ACTIVIDAD_ECONOMICA"="V83","DESCRIPCION_ACTIVIDAD_ECONOMICA"="V84","SECTOR_ECONOMICO"="V85","CODIGO_DESTINO_FONDOS"="V86","DESCRIPCION_CODIGO_DESTINO_FONDOS"="V87","FECHA_CONSTITUCION_NACIMIENTO"="V88","FECHA_VIGENCIA_VENCIMIENTO"="V89","NUMERO_EMPLEADOS"="V90","FECHA_ULTIMO_EEFF_AUDITADO"="V91","MONTO_INGRESOS_VENTAS_ANUALES"="V92","MONTO_PATRIMONIO"="V93","MONTO_MAXIMO_RIESGO_ASUMIDO"="V94","REFERENCIA_CARTA_CREDITO"="V95","TIPO_MODULO"="V96","CIUDAD"="V97","ESTADO"="V98","CAPITAL_PAGADO"="V99","CODIGO_SEXO"="V100",	"SEXO_DESCRIPCION"="V101","ESTADO_CIVIL"="V102","ESTADO_CIVIL_DESCRIPCION"="V103","NACIONALIDAD"="V104","CARGAS_FAMILIARES"="V105","TIPO_VIVIENDA"="V106","ANTIGUEDAD_RESIDENCIA"="V107","LUGAR_NACIMIENTO"="V108","CODIGO_NIVEL_EDUCACION"="V109","DESCRIPCION_NIVEL_EDUCACION"="V110",
                       "CODIGO_PROFESION"="V111","DESCRIPCION_PROFESION"="V112","FUENTE_INGRESOS"="V113","DESCRIPCION_FUENTE_INGRESOS"="V114","OCUPACION"="V115","DESCRIPCION_OCUPACION"="V116","ACCIONISTA"="V117","PCT_ACCIONARIO"="V118","ID_ACCIONISTA"="V119","ADMINISTRACION"="V120","CARGO"="V121","ID_ADMINISTRADOR"="V122","SOLVENCIA"="V123","LIQUIDEZ"="V124","CAPITAL_TRABAJO"="V125","DIAS_MANO_COBRANZA"="V126","DIAS_MANO_CUENTAS_PAGAR"="V127","DIAS_MANO_INVENTARIO"="V128","DIAS_CICLO_ECONOMICO"="V129","APALANCAMIENTO"="V130","VENTAS_PASIVO_CIRCULANTE"="V131","AUTONOMIA_FINANCIERA"="V132","EBITDA"="V133","DEUDA_BANCARIA_VENTAS"="V134","RENTABILIDAD_UTILIDAD_NETA_VTAS"="V135","ROE_UTILIDAD_NETA_PATRIMONIO"="V136","PASIVO_CIRCULANTE_VENTAS"="V137","PASIVO_TOTAL_VENTAS"="V138","VARIACION_VENTAS"="V139","ESTRUCTURA_COSTOS_GASTOS"="V140","ACTIVO_CIRCULANTE_TOTAL_ACTIVO"="V141","INMUEBLES_TOTAL_ACTIVO"="V142","INV_LIQUIDAS_TOTAL_ACTIVO"="V143","INGRESO_ANUAL_PASIVO_CIRCULANTE"="V144","INGRESO_ANUAL_SERVICIO_DEUDA"="V145",
                       "TOTAL_PASIVO_TOTAL_ACTIVO"="V146","INMUEBLES_TOTAL_PASIVO"="V147","FECHA_VENCIMIENTO_DOCUMENTO_PAGARE"="V148","FECHA_VENCIMIENTO_ACTUAL_PAGARE"="V149","NUMERO_PRORROGAS_PAGARE"="V150","CODIGO_SECTOR_ECONOMICO"="V151","VACIO"="V152"
    )
    
    varaux2$FECHA_LIQUIDACION <- as.Date (varaux2$FECHA_LIQUIDACION, format = "%d/%m/%y")
    varaux2$FECHA_CANCELACION_ULTIMA_CUOTA <- as.Date (varaux2$FECHA_CANCELACION_ULTIMA_CUOTA, format = "%d/%m/%y")
    varaux2$FECHA_CUOTA_INTERESES <- as.Date (varaux2$FECHA_CUOTA_INTERESES, format = "%d/%m/%y")
    
    varaux2$MONTO_ORIGINAL <- gsub("[.]","",varaux2$MONTO_ORIGINAL)
    varaux2$MONTO_ORIGINAL <- gsub(",",".",varaux2$MONTO_ORIGINAL)
    varaux2$MONTO_ORIGINAL <- as.numeric(varaux2$MONTO_ORIGINAL)
    
    varaux2$SALDO_ACTUAL <- gsub("[.]","",varaux2$SALDO_ACTUAL)
    varaux2$SALDO_ACTUAL <- gsub(",",".",varaux2$SALDO_ACTUAL)
    varaux2$SALDO_ACTUAL <- as.numeric(varaux2$SALDO_ACTUAL)
    
    varaux2$MONTO_VENCIDO <- gsub("[.]","",varaux2$MONTO_VENCIDO)
    varaux2$MONTO_VENCIDO <- gsub(",",".",varaux2$MONTO_VENCIDO)
    varaux2$MONTO_VENCIDO <- as.numeric(varaux2$MONTO_VENCIDO)
    
    varaux2$MONTO_VIGENTE <- gsub("[.]","",varaux2$MONTO_VIGENTE)
    varaux2$MONTO_VIGENTE <- gsub(",",".",varaux2$MONTO_VIGENTE)
    varaux2$MONTO_VIGENTE <- as.numeric(varaux2$MONTO_VIGENTE)
    
    # SE UNE UN MARCADOR PARA IDENTIFICAR LOS PRODUCTOS PARA PROCESAR
    # varaux3 <- (c)
    
    varaux3 <- left_join(varaux2, CUENTA, by = "CUENTA_CONTABLE") #%>% 
    # left_join(FAMILIA, by = "SUB_PRODUCTO") #%>%
    # mutate(DIG2 = str_sub(varaux2$CUENTA_CONTABLE, 4, 5)) %>%
    # left_join(CARTERA, by = "DIG2") 
    
    # SE FILTRA TODA LA PRODUCTOS QUE SE QUIEREN PROCESAR
    # varaux4 <- (c)  
    
    varaux4 <- filter(varaux3, MAR_CUEN == "0")
    
    # SE HACE LA UNION POR PROPUESTA
    # varaux5 <- (c)
    
    varaux5 <- select(varaux4, PROPUESTA, PRESTAMO, SALDO_ACTUAL)
    varaux5 <- group_by(varaux5, PROPUESTA) %>% summarise(CAP_VAR = sum(SALDO_ACTUAL))
    
    # SE HACE UNION POR PROPUESTA    
    # SE HACE LA PRIMERA CLASIFICACION DE CLIENTES EN ATRASO
    # varaux6 <- (c)
    
    varaux6 <- select(varaux4, ID, NOMBRE_CLIENTE, GRUPO_ECONOMICO, PROPUESTA, PRESTAMO, PRODUCTO_DESCRIPCION, SUB_PRODUCTO_DESCRIPCION, SUB_PRODUCTO, MONTO_ORIGINAL, SALDO_ACTUAL, 
                      MONTO_VIGENTE, MONTO_REESTRUCTURADO ,MONTO_VENCIDO, MONTO_LITIGIO, DIAS_VENCIDOS, FECHA_LIQUIDACION, PERIODICIDAD, PERIODICIDAD_CANT, 
                      FECHA_DE_CUOTA_PRINCIPAL, CUOTA_PRINCIPAL, FECHA_CANCELACION_ULTIMA_CUOTA_CAPITAL ) %>% mutate(FECHA[i,1])
    varaux6 <- filter(varaux6, DIAS_VENCIDOS > 0)
    
    # SE HACE UNION POR PROPUESTA       
    # SE HACE LA PRIMERA CLASIFICACION DE CLIENTES EN ATRASO
    # varaux7 <- (c)
    
    varaux7 <- filter(varaux6, MONTO_VENCIDO == 0) %>%
      left_join(varaux5, by = "PROPUESTA")
    
    # SE HACE LA SEGUNDA CLASIFICACION DE CLIENTES EN ATRASO Y DE PRODUCTOS ESPECIFICOS    
    # varaux8 <- (c)
    
    varaux8 <- filter(varaux7,  SUB_PRODUCTO == "PCP1" | SUB_PRODUCTO == "CUA1" | SUB_PRODUCTO == "CUV7" | SUB_PRODUCTO == "CUV9" | SUB_PRODUCTO == "CUV1" | SUB_PRODUCTO == "EXCM")
    
    # SE HACE LA TERCERA CLASIFICACION DE CLIENTES EL VENCIDO
    # varaux9 <- (c)
    
    varaux9 <- select(varaux4, ID, NOMBRE_CLIENTE, GRUPO_ECONOMICO, PROPUESTA, PRESTAMO, PRODUCTO_DESCRIPCION, SUB_PRODUCTO_DESCRIPCION, SUB_PRODUCTO, MONTO_ORIGINAL, SALDO_ACTUAL, 
                      MONTO_VIGENTE, MONTO_REESTRUCTURADO ,MONTO_VENCIDO, MONTO_LITIGIO, DIAS_VENCIDOS, FECHA_LIQUIDACION, PERIODICIDAD, PERIODICIDAD_CANT, 
                      FECHA_DE_CUOTA_PRINCIPAL, CUOTA_PRINCIPAL, FECHA_CANCELACION_ULTIMA_CUOTA_CAPITAL ) %>% mutate(FECHA[i,1])
    varaux9 <- filter(varaux9, DIAS_VENCIDOS >= 30)
    
    # SE HACE LA TERCERA CLASIFICACION DE CLIENTES EL VENCIDO
    # SE HACE UNION POR PROPUESTA    
    # varaux10 <- (c)
    
    varaux10 <- filter(varaux9, MONTO_VENCIDO > 0) %>%
      left_join(varaux5, by = "PROPUESTA") 
    
    # SE HACE LA TERCERA CLASIFICACION DE CLIENTES EL VENCIDO Y POR PRODCUTOS ESPECIFICOS
    # varaux11 <- (c)
    
    varaux11 <- filter(varaux10,  SUB_PRODUCTO == "PCP1" | SUB_PRODUCTO == "CUA1" | SUB_PRODUCTO == "CUV7" | SUB_PRODUCTO == "CUV9" | SUB_PRODUCTO == "CUV1" | SUB_PRODUCTO == "EXCM")
  
    #assign(paste(FECHA0[i,8]), varaux8 )
    
    #assign(paste("df1",i), varaux8 )
    
    #assign(paste("df2",i), varaux8 )
  
    #assign(paste(total), varaux0)  

    # SE ASIGNA A UN DF
    # SE EXPORTA LA INFORMACION
    
    assign(paste(FECHA[i,8]), varaux8 )
    write.xlsx(assign(paste(FECHA[i,8]), varaux8 ), paste({FECHA$ATRASO[i]},'.xlsx'))
    
    assign(paste(FECHA[i,9]), varaux7 )
    write.xlsx(assign(paste(FECHA[i,9]), varaux7 ), paste({FECHA$ATRASOT[i]},'.xlsx'))
    
    assign(paste(FECHA[i,10]), varaux11 )
    write.xlsx(assign(paste(FECHA[i,10]), varaux11 ), paste({FECHA$VENCIDO[i]},'.xlsx'))
    
    assign(paste(FECHA[i,11]), varaux10 )
    write.xlsx(assign(paste(FECHA[i,11]), varaux10 ), paste({FECHA$VENCIDOT[i]},'.xlsx'))
  
  }    
} 


