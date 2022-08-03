# bohemiaR

<!-- badges: start -->
[![Lifecycle: experimental](https://img.shields.io/badge/lifecycle-experimental-orange.svg)](https://lifecycle.r-lib.org/articles/stages.html#experimental)
<!-- badges: end -->

Paquete de R tan inútil como divertido que proporciona citas de la obra teatral *Luces de bohemia* (1924) del escritor gallego [Ramón María del Valle-Inclán](https://es.wikipedia.org/wiki/Ram%C3%B3n_Mar%C3%ADa_del_Valle-Incl%C3%A1n). Inspirado en paquetes como [`fortunes`](https://cran.r-project.org/web/packages/fortunes/index.html), [`centralperk`](https://github.com/Ryo-N7/centralperk), [`goodshirt`](https://github.com/adam-gruer/goodshirt) o [`dundermifflin`](https://github.com/tbradley1013/dundermifflin) (sí, existen), `bohemiaR` resulta especialmente útil para todos aquellos momentos en los que nos haga falta una buena dosis de esperpento en nuestras sesiones de trabajo con R.

## Instalación

Puedes instalar el paquete directamente desde GitHub usando una función del paquete `devtools`:

``` r
# install.packages("devtools")
devtools::install_github("pauinsanchez/bohemiaR")

library(bohemiaR)
```

## Funciones

### `Dime_Max`

Esta función devuelve una frase aleatoria de Max Estrella, con indicación de la escena en la que aparece.

``` r
Dime_Max()
#> Max Estrella: ¡Señor Centurión, yo también chanelo el sermo vulgaris!
#> (Escena cuarta)
```

### `Dime_Latino`

Esta función devuelve una frase aleatoria de don Latino de Híspalis, con indicación de la escena en la que aparece.

``` r
Dime_Latino()
#> Don Latino: ¡La verdad es que tienes una fisonomía algo rara!
#> (Escena duodécima)
```
