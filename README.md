# Bulk RNA-Seq Differential Expression Analysis

## Project Overview

This project demonstrates a reproducible Bulk RNA-Seq analysis workflow using R and Bioconductor. The analysis focuses on differential gene expression and functional enrichment analysis using the publicly available airway dataset.

## Dataset

- Dataset: airway
- Platform: Bulk RNA-Seq
- Samples: 8
- Experimental groups: Untreated vs. Dexamethasone-treated
- Source: Bioconductor airway package

## Analysis Workflow

1. Load and inspect RNA-Seq count data
2. Construct a DESeq2 dataset
3. Filter low-count genes
4. Perform differential expression analysis
5. Apply variance stabilizing transformation (VST)
6. Generate PCA, MA, and Volcano plots
7. Identify significant differentially expressed genes (DEGs)
8. Annotate Ensembl Gene IDs with Gene Symbols
9. Perform GO Biological Process enrichment analysis
10. Compare upregulated and downregulated gene sets

## Differential Expression Criteria

- Adjusted p-value (padj) < 0.05
- Absolute log2 fold change > 1

## Results

- Total significant DEGs: 795
- Successfully annotated genes: 730
- Upregulated genes: 332
- Downregulated genes: 398

GO Biological Process enrichment was performed separately for upregulated and downregulated genes using clusterProfiler and org.Hs.eg.db.

## Repository Structure

- analysis.R
- DEG_results.csv
- DEG_results_annotated.csv
- GO_BP_upregulated.csv
- GO_BP_downregulated.csv
- README.md

## Main Tools

- R
- DESeq2
- Bioconductor
- clusterProfiler
- org.Hs.eg.db
- enrichplot

## Reproducibility

The main analysis workflow is provided in analysis.R.

The project demonstrates a reproducible transcriptomics workflow from count data through differential expression and functional enrichment analysis.

## Next Steps

- Publication-quality visualization
- Pathway enrichment analysis
- Independent GEO dataset validation
- Comparison with additional transcriptomics datasets
- Integration with Python-based bioinformatics workflows
