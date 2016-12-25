require(phangorn)

write.p4sims <- function(simfile, nsims = 10){
	     simlines <- readLines(simfile)
	     locusf <- gsub("make", "sim", simfile)
	     for(i in 1:nsims){
	     	   newf <- gsub("py", paste0(i, ".nex"), locusf)
		   #simlines[4] <- gsub("[.]tre", paste0("_", i, ".tre"), simlines[4])
	     	   simlines[23] <- paste0('t.data.writeNexus(fName="', newf, '", writeDataBlock=1, interleave=0, flat=1, append=0)')
	     	   writeLines(simlines, con = simfile)
	     	   system(paste("python ", simfile))
		   dat <- read.nexus.data(newf)
		   write.dna(as.DNAbin(dat), file = gsub("nex", "phy", newf))
		   #simlines[4] <- gsub(paste0("_", i, "[.]tre"), ".tre", simlines[4])
		   writeLines(simlines, con = simfile)
	     }
	     
}
