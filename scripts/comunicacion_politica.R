library(polArverse)
library(polAr)
library(rtweet)



discursos_disponibles <- discursAr::show_available_speech()


discursAr::show_available_speech(viewer = T)

peron52_tidy <- discursAr::get_speech(year = 1952)


 peron52_crudo <- discursAr::get_speech(year = 1952, raw = T)

 
 
 peron52_crudo$discurso # Rbase
 
 
 peron52_crudo %>% 
   dplyr::pull(discurso)
 
 
 
 polAr::plot_speech(peron52_tidy)
 
 

 
 ### TWITTER
 
s <-  rtweet::search_tweets(q = "tuqmano")



 
### OPINAR
library(opinAr)

datosICG <- haven::read_dta("https://github.com/PoliticaArgentina/data_warehouse/raw/master/opinAr/data_raw/icg.dta")  #get_icg_raw()

library(dplyr)

icgK <- opinAr::show_waves(datosICG) %>% 
 filter(ano > 2002 & ano < 2016) 


datosICG %>% 
  filter(ola %in% icgK$ola) %>% 

 