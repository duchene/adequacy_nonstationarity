
dats <- grep(".phy", dir(), value = T)

for(i in 1:length(dats)){
      system(paste0("mkdir ", dats[i], ".folder"))
      setwd(paste0(dats[i], ".folder"))
      system(paste0("cp ../", dats[i], " ../../run.mladeq.Rscript ../../run.mladeq.sh ."))
      system("qsub run.mladeq.sh")
      setwd("..")

}