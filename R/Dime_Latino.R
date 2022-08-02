#' Dime Latino
#'
#' Pide a don Latino de Híspalis que te deleite con una de sus frases de la obra
#'
#' @return Una cadena de caracteres con una cita de don Latino, con indicación de la escena de la obra en la que aparece
#' @export
#'
#' @examples
#' Dime_Latino()
Dime_Latino <- function(){
  # leer el archivo de citas base
  citas <- as.data.frame(citas)

  citas_latino <- subset(citas, citas$PERSONAJE == "Don Latino")

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
