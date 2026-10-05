#!/bin/bash

echo "Reiniciando base de datos GranDT"

# Configuración de credenciales de MySQL
DB_USER="5to_agbd"
DB_PASS="Trigg3rs!"

# Ejecución en orden de los archivos SQL
mysql -u "$5to_agbd" -p"$Trigg3rs!" < scripts/00_DDL.sql
mysql -u "$5to_agbd" -p"$Trigg3rs!" < scripts/01_SP.sql
mysql -u "$5to_agbd" -p"$Trigg3rs!" < scripts/02_Triggers.sql
mysql -u "$5to_agbd" -p"$Trigg3rs!" < scripts/03_Inserts.sql
mysql -u "$5to_agbd" -p"$Trigg3rs!" < scripts/04_Usuarios.sql

echo "Base de datos creada con exito."

#chmod +x init_db.sh
#./init_db.sh