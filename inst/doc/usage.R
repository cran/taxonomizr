## ----eval=FALSE---------------------------------------------------------------
#  library(taxonomizr)
#  #note this will require a lot of hard drive space, bandwidth and time to process all the data from NCBI
#  prepareDatabase('accessionTaxa.sql')
#  blastAccessions<-c("Z17430.1","Z17429.1","X62402.1")
#  ids<-accessionToTaxa(blastAccessions,'accessionTaxa.sql')
#  getTaxonomy(ids,'accessionTaxa.sql')

## ---- eval=FALSE--------------------------------------------------------------
#  install.packages("taxonomizr")

## ---- eval=FALSE--------------------------------------------------------------
#  devtools::install_github("sherrillmix/taxonomizr")

## -----------------------------------------------------------------------------
library(taxonomizr)

## ----eval=FALSE---------------------------------------------------------------
#  prepareDatabase('accessionTaxa.sql')

## ----eval=FALSE---------------------------------------------------------------
#  prepareDatabase('accessionTaxa.sql')

## ----eval=FALSE---------------------------------------------------------------
#  prepareDatabase(getAccessions=FALSE)

## ----eval=FALSE---------------------------------------------------------------
#  prepareDatabase(types='prot')

## ----eval=FALSE---------------------------------------------------------------
#  blastResults<-read.table('XXXX.blast',header=FALSE,stringsAsFactors=FALSE)
#  #grab the 4th |-separated field from the reference name in the second column
#  accessions<-sapply(strsplit(blastResults[,2],'\\|'),'[',4)

## ----eval=FALSE---------------------------------------------------------------
#  taxaId<-accessionToTaxa(c("LN847353.1","AL079352.3"),"accessionTaxa.sql")
#  print(taxaId)

## ----eval=FALSE---------------------------------------------------------------
#  getTaxonomy(taxaId,'accessionTaxa.sql')

## ----eval=FALSE---------------------------------------------------------------
#  taxaId<-accessionToTaxa(c("LN847353","AL079352"),"accessionTaxa.sql")
#  print(taxaId)

## ----eval=FALSE---------------------------------------------------------------
#  taxaId<-accessionToTaxa(c("LN847353","AL079352"),"accessionTaxa.sql",version='base')
#  print(taxaId)

## ----eval=FALSE---------------------------------------------------------------
#  taxaId<-getId(c('Homo sapiens','Bos taurus','Homo','Alces alces'),'accessionTaxa.sql')
#  print(taxaId)

## ----eval=FALSE---------------------------------------------------------------
#  taxa<-getTaxonomy(taxaId,'accessionTaxa.sql')
#  print(taxa)

## ----eval=FALSE---------------------------------------------------------------
#  getDescendants(207598,'accessionTaxa.sql')

## ----eval=FALSE---------------------------------------------------------------
#  getDescendants(207598,'accessionTaxa.sql','genus')

## ----eval=FALSE---------------------------------------------------------------
#  getCommon(c(9913,9606),'accessionTaxa.sql')

## ----eval=FALSE---------------------------------------------------------------
#  getCommon(c(9913,9606,9894),'accessionTaxa.sql',c('genbank common name','common name'))

## ----eval=FALSE---------------------------------------------------------------
#  taxonomizr::getNamesAndNodes()
#  taxonomizr::read.names.sql('names.dmp','nameNode.sqlite',overwrite=TRUE)

## ----eval=FALSE---------------------------------------------------------------
#  condenseTaxa(taxa)

## ----eval=FALSE---------------------------------------------------------------
#  groupings<-c('read1','read2','read1','read2')
#  condenseTaxa(taxa,groupings)

## ----eval=FALSE---------------------------------------------------------------
#  getRawTaxonomy(c(9606,9913),'accessionTaxa.sql')

## ----eval=FALSE---------------------------------------------------------------
#  raw<-getRawTaxonomy(c(9606,9913),'accessionTaxa.sql')
#  normalizeTaxa(raw)

## ----eval=FALSE---------------------------------------------------------------
#  read.accession2taxid(list.files('.','accession2taxid.gz$'),'accessionTaxa.sql',indexTaxa=TRUE,overwrite=TRUE)

## ----eval=FALSE---------------------------------------------------------------
#  getAccessions(3702,'accessionTaxa.sql',limit=10)

## ----echo=FALSE---------------------------------------------------------------
taxa<-matrix(c('Eukaryota','Chordata','Mammalia','Primates','Hominidae','Homo','Eukaryota','Chordata','Mammalia','Primates','Hominidae','Pan','Eukaryota','Chordata','Mammalia',NA,'Cervidae','Alces'),nrow=3,byrow=TRUE)

## -----------------------------------------------------------------------------
taxa
makeNewick(taxa)

## -----------------------------------------------------------------------------
makeNewick(taxa,quote="'")

## -----------------------------------------------------------------------------
taxa[3,3:6]<-NA
print(taxa)
makeNewick(taxa)

## -----------------------------------------------------------------------------
makeNewick(taxa,excludeTerminalNAs=TRUE)

## ----eval=FALSE---------------------------------------------------------------
#  getNamesAndNodes()

## ----eval=FALSE---------------------------------------------------------------
#  #this is a big download
#  getAccession2taxid()

## ----eval=FALSE---------------------------------------------------------------
#  #this is a big download
#  getAccession2taxid(types='prot')

## ----eval=FALSE---------------------------------------------------------------
#  read.names.sql('names.dmp','accessionTaxa.sql')
#  read.nodes.sql('nodes.dmp','accessionTaxa.sql')

## ----eval=FALSE---------------------------------------------------------------
#  read.accession2taxid(list.files('.','accession2taxid.gz$'),'accessionTaxa.sql')

