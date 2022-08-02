Dime_Max <- function(){
  # leer el archivo de citas base
  citas <- read.csv("data-raw/data-citas-raw.csv", sep = ";")
  citas_max <- subset(citas, PERSONAJE == "Max Estrella")
  citas_max$ESCENA <- paste0("(", citas_max$ESCENA, ")")
  # asignar un número a cada cita
  citas_max$idx <- as.numeric(rownames(citas_max))
  # escoger una cita aleatoria
  rand_citas_max <- sample(citas_max$idx, 1)
  cita_max <- citas_max[c(rand_citas_max),]
  # confeccionar la cita
  cita <- paste(cita_max$PERSONAJE, paste(cita_max$CITA, cita_max$ESCENA, sep = "\n"), sep = ": ")
  cat(cita)
}
