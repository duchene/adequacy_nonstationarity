
dats <- grep("phy$", dir(), value = T)
dirs <- list.dirs()
count <- 0
for(i in 1:length(dats)){
      if(count < 100){
      if(!paste0("./", dats[i], ".folder") %in% dirs){
      count <- count + 1
      system(paste0("mkdir ", dats[i], ".folder"))
      setwd(paste0(dats[i], ".folder"))
      system(paste0("cp ../", dats[i], " ../run.mladeq.Rscript ../run.mladeq.sh ."))
      system("qsub run.mladeq.sh")
      setwd("..")
      }
      }
}