
# UNION DE LAS BASES

NHA <- rbind(HISTORICO_ATRA,f0)    

# GUARDAR LA INFORMACION

write.xlsx(NHA, 'Historico_Atraso.xlsx')

# UNION DE LAS BASES

NHV <- rbind(HISTORICO_VENC,r0)    

# GUARDAR LA INFORMACION

write.xlsx(NHV, 'Historico_Vencido.xlsx')

# GUARDAR LA INFORMACION

write.xlsx(Res_Atr_Max_Mes, 'Maximo_Mes_Atraso.xlsx')

write.xlsx(Res_Ven_Max_Mes, 'Maximo_Mes_Vencido.xlsx')

write.xlsx(Res_Ven_Max_Mes_Emp, 'Maximo_Mes_Vencido_Empleados.xlsx')

write.xlsx(Res_Atr_Max_Mes_Emp, 'Maximo_Mes_Atraso_Empleados.xlsx')


