library(DESeq2)
library(airway)
data(airway)
dds <- DESeqDataSet(airway, design = ~ dex)
keep <- rowSums(counts(dds) >= 10) >= 4
dds <- dds[keep,]
dds <- DESeq(dds)
res <- results(dds)
head(res[order(res$padj), ])
