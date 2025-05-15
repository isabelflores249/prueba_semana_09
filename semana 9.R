#semana 9 13/5/2025
#R: joins dplyr & do.call

#Entidad: Estudiantes, Matricula, Cursos
#Atributos: Carnet, Periodo, Sigla
#Entidad se relaciona a otra mediante un atributo
#ejemplo:
#Estudiantes -> Relacion (Matricula) -> Cursos 

install.packages("dplyr")
library(dplyr)

#Ejemplo de los joins

#Clientes
clientes = data.frame(
  id_cliente = c(1,2,3),
  nombre = c("Ana","Luis","Maria")
)
clientes

#Pedidos
pedidos= data.frame(
  id_cliente = c(2,3,4),
  producto = c("Libro", "Lápiz", "Cuaderno")
)
pedidos

#inner_join()
inner_join(clientes,pedidos,by= "id_cliente")

#left_joint()
left_join(clientes,pedidos,by="id_cliente")

#right_join()
right_join(clientes,pedidos,by="id_cliente")

#full_join()
full_join(clientes,pedidos, by="id_cliente")

#do.call

#combinando vectores
vectors <- list(c(1,2,3), c(4,5,6), c(7,8,9))
combined_matrix <- do.call(rbind, vectors)
combined_matrix

#aplicando operaciones a varios d

#Practica
#1
install.packages("datos")
library(datos)
#2,3
list(head(bateadores, 10), head(personas, 10), head(salarios, 10))
#4
library(datos)
install.packages("haven")
library(haven)


                    
personas %>%
 select(personas$anio_fallecimiento) %>%
  mutate(flg_fallecido = )

#14/5/2025

#colaboracion: compartir cambios mediante repositorios remotos
#clone: crear una copia exacta del repositorio reemoiro, 
#fetch: trae los cambios del reoisiitorio remoso a su repositorio local,
#merge:proceso de integrar cambios de una rama a otra , 
#pull: actualizar su repositorio local con ls cambios mas recientes (combinacion de fetch y merge), 
#commit: registro de los cambios hechos en el repositorio, push: enviar sus commits locales al repositorio remoto,
#checkout:cambiar de una rama a otra para restaurar archibos del historial a tu directorio de trabajo
