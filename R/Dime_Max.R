#' Dime Max
#'
#' Pide a Max Estrella que te deleite con una de sus frases de la obra
#'
#' @return Una cadena de caracteres con una cita de Max Estrella, con indicación de la escena de la obra en la que aparece
#' @export
#'
#' @examples
#' Dime_Max()
Dime_Max <- function(){
  # leer el archivo de citas base
  usethis::use_data(citas, internal = TRUE)

  citas_max <- subset(citas, citas$PERSONAJE == "Max Estrella")

  citas_max$ESCENA <- paste0("(", citas_max$ESCENA, ")")

  # asignar un número a cada cita
  citas_max$idx <- seq.int(nrow(citas_max))

  # escoger una cita aleatoria
  rand_citas_max <- sample(citas_max$idx, 1)

  cita_max <- citas_max[c(rand_citas_max),]

  # confeccionar la cita
  cita <- paste(cita_max$PERSONAJE, paste(cita_max$CITA, cita_max$ESCENA, sep = "\n"), sep = ": ")

  cat(cita)

  invisible(cita)
}
