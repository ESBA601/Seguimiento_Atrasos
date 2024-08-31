

# ESTA PARTE HACE LA UNION DE LAS TABLAS QUE SE EJECUTARON    

f0<-data.frame()

for (i in 1:nrow(FECHA)) {
  if (FECHA$FECHA[i] >= x & FECHA$FECHA[i] <= h) {
    
    tab <- get(paste0("Atraso_Dia_",FECHA$FECHA[i]))
    f0 <- rbind(f0, tab)
  }
}

# CREAR UNA TABLA DINAMICA PERO PRIMERO HACE LA CONDICIONES COMO SON
# FILTRAR POR LAS FECHAS ESTABLECIDAS
# CONSIDERA LAS DIMENSIONES
# TABLA TOTALES
# SE CREA UNA TABLA DINAMICA CON LAS CONDICIONES ANTERIORES

NumeroL <- filter(FECHA, FECHA>= x & FECHA<= h)

Numero <- dim(FECHA)[1]    

NumeroT <- dim(NumeroL)[1]+6    

Res_Atr_Max_Mes <- dcast(f0, ID+NOMBRE_CLIENTE+PROPUESTA+PRESTAMO+SUB_PRODUCTO+FECHA_LIQUIDACION~FECHA, value.var="DIAS_VENCIDOS")    

Res_Atr_Max_Mes <- mutate(Res_Atr_Max_Mes, MAX_MES =  do.call(pmax, c(Res_Atr_Max_Mes[,7:{NumeroT}], list(na.rm=TRUE))))

# ESTA PARTE HACE LA UNION DE LAS TABLAS QUE SE EJECUTARON    

f<-data.frame()

for (i in 1:nrow(FECHA)) {
  if (FECHA$FECHA[i] >= x & FECHA$FECHA[i] <= h) {
    
    tab <- get(paste0("Atraso_Dia_Total_",FECHA$FECHA[i]))
    f <- rbind(f, tab)
  }
}

# CREAR UNA TABLA DINAMICA PERO PRIMERO HACE LA CONDICIONES COMO SON
# FILTRAR POR LAS FECHAS ESTABLECIDAS
# CONSIDERA LAS DIMENSIONES
# SOLO PRODUCTOS ESPECIFICOS
# SE CREA UNA TABLA DINAMICA CON LAS CONDICIONES ANTERIORES

NumeroL <- filter(FECHA, FECHA>= x & FECHA<= h)

Numero <- dim(FECHA)[1]    

NumeroT <- dim(NumeroL)[1]+6    

Res_Atr_Max_Mes_Emp <- filter(f, SUB_PRODUCTO == "EMCV" | SUB_PRODUCTO == "EMPP" | SUB_PRODUCTO == "EMCE")

Res_Atr_Max_Mes_Emp <- dcast(Res_Atr_Max_Mes_Emp, ID+NOMBRE_CLIENTE+PROPUESTA+PRESTAMO+SUB_PRODUCTO+FECHA_LIQUIDACION~FECHA, value.var="DIAS_VENCIDOS")    

# ESTA PARTE HACE LA UNION DE LAS TABLAS QUE SE EJECUTARON    

r0<-data.frame()

for (i in 1:nrow(FECHA)) {
  if (FECHA$FECHA[i] >= x & FECHA$FECHA[i] <= h) {
    
    tab <- get(paste0("Vencido_Dia_",FECHA$FECHA[i]))
    r0 <- rbind(r0, tab)
  }
}

# CREAR UNA TABLA DINAMICA PERO PRIMERO HACE LA CONDICIONES COMO SON
# FILTRAR POR LAS FECHAS ESTABLECIDAS
# CONSIDERA LAS DIMENSIONES
# SOLO PRODUCTOS ESPECIFICOS
# SE CREA UNA TABLA DINAMICA CON LAS CONDICIONES ANTERIORES

NumeroL <- filter(FECHA, FECHA>= x & FECHA<= h)

Numero <- dim(FECHA)[1]    

NumeroT <- dim(NumeroL)[1]+6    

Res_Ven_Max_Mes <- dcast(r0, ID+NOMBRE_CLIENTE+PROPUESTA+PRESTAMO+SUB_PRODUCTO+FECHA_LIQUIDACION~FECHA, value.var="DIAS_VENCIDOS")    

Res_Ven_Max_Mes <- mutate(Res_Ven_Max_Mes, MAX_MES =  do.call(pmax, c(Res_Ven_Max_Mes[,7:{NumeroT}], list(na.rm=TRUE))))

# ESTA PARTE HACE LA UNION DE LAS TABLAS QUE SE EJECUTARON    

r<-data.frame()

for (i in 1:nrow(FECHA)) {
  if (FECHA$FECHA[i] >= x & FECHA$FECHA[i] <= h) {
    
    tab <- get(paste0("Vencido_Dia_Total_",FECHA$FECHA[i]))
    r <- rbind(r, tab)
  }
}

# CREAR UNA TABLA DINAMICA PERO PRIMERO HACE LA CONDICIONES COMO SON
# FILTRAR POR LAS FECHAS ESTABLECIDAS
# CONSIDERA LAS DIMENSIONES
# SOLO PRODUCTOS ESPECIFICOS
# SE CREA UNA TABLA DINAMICA CON LAS CONDICIONES ANTERIORES

NumeroL <- filter(FECHA, FECHA>= x & FECHA<= h)

Numero <- dim(FECHA)[1]    

NumeroT <- dim(NumeroL)[1]+6    

Res_Ven_Max_Mes_Emp <- filter(r, SUB_PRODUCTO == "EMCV" | SUB_PRODUCTO == "EMPP" | SUB_PRODUCTO == "EMCE")

# DEPENDE DE SI EXISTE UNA TABLA

Res_Ven_Max_Mes_Emp <- dcast(Res_Ven_Max_Mes_Emp, ID+NOMBRE_CLIENTE+PROPUESTA+PRESTAMO+SUB_PRODUCTO+FECHA_LIQUIDACION~FECHA, value.var="DIAS_VENCIDOS")    

# Res_Ven_Max_Mes_Emp <- mutate(Res_Ven_Max_Mes_Emp, MAX_MES =  do.call(pmax, c(Res_Ven_Max_Mes_Emp[,7:{NumeroT}], list(na.rm=TRUE))))







