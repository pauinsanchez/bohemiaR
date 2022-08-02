Dime_Latino <- function(){
  # leer el archivo de citas base
  citas_latino <- subset(citas, PERSONAJE == "Don Latino")

  citas_latino$ESCENA <- paste0("(", citas_latino$ESCENA, ")")

  # asignar un número a cada cita
  citas_latino$idx <- seq.int(nrow(citas_latino))

  # escoger una cita aleatoria
  rand_citas_latino <- sample(citas_latino$idx, 1)

  cita_latino <- citas_latino[c(rand_citas_latino),]

  # confeccionar la cita
  cita <- paste(cita_latino$PERSONAJE, paste(cita_latino$CITA, cita_latino$ESCENA, sep = "\n"), sep = ": ")

  cat(cita)

  invisible(cita)
}
