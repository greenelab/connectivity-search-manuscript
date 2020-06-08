---
author-meta:
- Daniel S. Himmelstein
bibliography:
- content/manual-references.json
date-meta: '2020-06-08'
header-includes: '<!--

  Manubot generated metadata rendered from header-includes-template.html.

  Suggest improvements at https://github.com/manubot/manubot/blob/master/manubot/process/header-includes-template.html

  -->

  <meta name="dc.format" content="text/html" />

  <meta name="dc.title" content="Hetnet connectivity search provides rapid insights into how two biomedical entities are related" />

  <meta name="citation_title" content="Hetnet connectivity search provides rapid insights into how two biomedical entities are related" />

  <meta property="og:title" content="Hetnet connectivity search provides rapid insights into how two biomedical entities are related" />

  <meta property="twitter:title" content="Hetnet connectivity search provides rapid insights into how two biomedical entities are related" />

  <meta name="dc.date" content="2020-06-08" />

  <meta name="citation_publication_date" content="2020-06-08" />

  <meta name="dc.language" content="en-US" />

  <meta name="citation_language" content="en-US" />

  <meta name="dc.relation.ispartof" content="Manubot" />

  <meta name="dc.publisher" content="Manubot" />

  <meta name="citation_journal_title" content="Manubot" />

  <meta name="citation_technical_report_institution" content="Manubot" />

  <meta name="citation_author" content="Daniel S. Himmelstein" />

  <meta name="citation_author_institution" content="Department of Systems Pharmacology and Translational Therapeutics, University of Pennsylvania, Philadelphia, Pennsylvania, United States of America" />

  <meta name="citation_author_orcid" content="0000-0002-3012-7446" />

  <meta name="twitter:creator" content="@dhimmel" />

  <link rel="canonical" href="https://greenelab.github.io/connectivity-search-manuscript/" />

  <meta property="og:url" content="https://greenelab.github.io/connectivity-search-manuscript/" />

  <meta property="twitter:url" content="https://greenelab.github.io/connectivity-search-manuscript/" />

  <meta name="citation_fulltext_html_url" content="https://greenelab.github.io/connectivity-search-manuscript/" />

  <meta name="citation_pdf_url" content="https://greenelab.github.io/connectivity-search-manuscript/manuscript.pdf" />

  <link rel="alternate" type="application/pdf" href="https://greenelab.github.io/connectivity-search-manuscript/manuscript.pdf" />

  <link rel="alternate" type="text/html" href="https://greenelab.github.io/connectivity-search-manuscript/v/0622e9d5e41de7d70fe1e59244238ff5bd31828d/" />

  <meta name="manubot_html_url_versioned" content="https://greenelab.github.io/connectivity-search-manuscript/v/0622e9d5e41de7d70fe1e59244238ff5bd31828d/" />

  <meta name="manubot_pdf_url_versioned" content="https://greenelab.github.io/connectivity-search-manuscript/v/0622e9d5e41de7d70fe1e59244238ff5bd31828d/manuscript.pdf" />

  <meta property="og:type" content="article" />

  <meta property="twitter:card" content="summary_large_image" />

  <link rel="icon" type="image/png" sizes="192x192" href="https://manubot.org/favicon-192x192.png" />

  <link rel="mask-icon" href="https://manubot.org/safari-pinned-tab.svg" color="#ad1457" />

  <meta name="theme-color" content="#ad1457" />

  <!-- end Manubot generated metadata -->'
keywords:
- hetnets
- networks
- connectivity
- search
- hetionet
- knowledge graphs
- algorithms
- nodes
- bioinformatics
- biomedical informatics
lang: en-US
manubot-clear-requests-cache: false
manubot-output-bibliography: output/references.json
manubot-output-citekeys: output/citations.tsv
manubot-requests-cache-path: ci/cache/requests-cache
title: Hetnet connectivity search provides rapid insights into how two biomedical entities are related
...






<small><em>
This manuscript
([permalink](https://greenelab.github.io/connectivity-search-manuscript/v/0622e9d5e41de7d70fe1e59244238ff5bd31828d/))
was automatically generated
from [greenelab/connectivity-search-manuscript@0622e9d](https://github.com/greenelab/connectivity-search-manuscript/tree/0622e9d5e41de7d70fe1e59244238ff5bd31828d)
on June 8, 2020.
</em></small>

## Authors

<!-- include the Font Awesome library, per: https://fontawesome.com/start -->
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.2/css/all.css">
[
[]{.fas .fa-info-circle .fa-lg} **Manuscript in preparation**<br>
The authorship information below is incomplete and preliminary.
This notice will be updated once all contributors meeting [authorship criteria](https://github.com/greenelab/onboarding/blob/master/onboarding.md "Greene Lab Onboarding. See Authorship section") have added themselves to [`metadata.yaml`](https://github.com/greenelab/connectivity-search-manuscript/blob/master/content/metadata.yaml).
]{.banner .lightpurple}



+ **Daniel S. Himmelstein**<br>
    ![ORCID icon](images/orcid.svg){.inline_icon}
    [0000-0002-3012-7446](https://orcid.org/0000-0002-3012-7446)
    · ![GitHub icon](images/github.svg){.inline_icon}
    [dhimmel](https://github.com/dhimmel)
    · ![Twitter icon](images/twitter.svg){.inline_icon}
    [dhimmel](https://twitter.com/dhimmel)<br>
  <small>
     Department of Systems Pharmacology and Translational Therapeutics, University of Pennsylvania, Philadelphia, Pennsylvania, United States of America
     · Funded by GBMF4552
  </small>



## Abstract {.page_break_before}

Hetnets, short for “heterogeneous networks”, contain multiple node and relationship types and offer a way to encode biomedical knowledge.
For example, Hetionet connects 11 types of nodes — including genes, diseases, drugs, pathways, and anatomical structures — with over 2 million edges of 24 types.
Previously, we trained a classifier to repurpose drugs using features extracted from Hetionet.
The model identified types of paths between a drug and disease that occurred more frequently between known treatments.

For many applications however, a training set of known relationships does not exist;
Yet researchers would still like to know how two nodes are meaningfully connected.
For example, users may want to know not only how metformin is related to breast cancer, but also how the GJA1 gene might be involved in insomnia.
Therefore, we developed hetnet connectivity search to propose the most important paths between any two nodes.

The algorithm behind connectivity search identifies types of paths that occur more frequently than would be expected by chance (based on node degree alone).
We implemented the method on Hetionet and provide an online interface at <https://het.io/search>.
Several optimizations were required to precompute significant instances of node connectivity at scale.
We provide an open source implementation of these methods in our new Python package named [hetmatpy](https://github.com/hetio/hetmatpy "Python package for matrix storage and operations on hetnets").

To validate the method, we show that it identifies much of the same evidence for specific instances of drug repurposing as the previous supervised approach, but without requiring a training set.


## Introduction {.page_break_before}

A *network* (also known as a [graph](https://en.wikipedia.org/wiki/Graph_(discrete_mathematics))) is a conceptual representation of a group of entities — called *nodes* — and the relationships between them — called *edges*.
Typically, a network has only one type of node and one type of edge.
But in many cases, it is necessary to be able to distinguish between different types of entities and relationships.

### Hetnets

A *hetnet* (short for **het**erogeneous information **net**work [@doi:10.15363/thinklab.d104]) is a network where nodes and edges have type.
The ability to differentiate between different types of entities and relationships allows a hetnet to accurately describe more complex data.
Hetnets are particularly useful in biomedicine, where it is important to capture the conceptual distinctions between various concepts,
such as genes and diseases, or upregulation and binding.

The types of nodes and edges in a hetnet are defined by a schema, referred to as a metagraph.
The metagraph consists of metanodes (types of nodes) and metaedges (types of edges).
Note that the prefix *meta* is used to refer to type (e.g. compound),
as opposed to a specific node/edge/path itself (e.g. acetaminophen).

### Hetionet

[Hetionet](https://het.io/about/) is a knowledge graph of human biology, disease, and medicine, integrating information from millions of studies and decades of research.
Hetionet v1.0 combines information from [29 public databases](https://git.dhimmel.com/rephetio-manuscript/#tbl:resources).
The network contains 47,031 nodes of [11 types](https://git.dhimmel.com/rephetio-manuscript/#tbl:metanodes) (Table @tbl:metanodes) and 2,250,197 edges of [24 types](https://git.dhimmel.com/rephetio-manuscript/#tbl:metaedges).

| Metanode | Abbr | Nodes | Description |
| --- | --- | --- | --- |
| Anatomy | A | 402 | Anatomical structures, excluding structures that are known not to be found in humans. From [Uberon](http://uberon.github.io/). |
| Biological Process | BP | 11381 | Larger processes or biological programs accomplished by multiple molecular activities. From [Gene Ontology](http://geneontology.org/). |
| Cellular Component | CC | 1391 | The locations relative to cellular structures in which a gene product performs a function. From [Gene Ontology](http://geneontology.org/). |
| Compound | C | 1552 | Approved small molecule compounds with documented chemical structures. From [DrugBank](https://www.drugbank.ca/). |
| Disease | D | 137 | Complex diseases, selected to be distinct and specific enough to be clinically relevant yet general enough to be well annotated. From [Disease Ontology](http://disease-ontology.org/). |
| Gene | G | 20945 | Protein-coding human genes. From [Entrez Gene](https://www.ncbi.nlm.nih.gov/gene). |
| Molecular Function | MF | 2884 | Activities that occur at the molecular level, such as "catalysis" or "transport". From [Gene Ontology](http://geneontology.org/). |
| Pathway | PW | 1822 | A series of actions among molecules in a cell that leads to a certain product or change in the cell. From [WikiPathways](https://www.wikipathways.org/index.php/WikiPathways), [Reactome](https://reactome.org/), and Pathway Interaction Database. |
| Pharmacologic Class | PC | 345 | "Chemical/Ingredient", "Mechanism of Action", and "Physiologic Effect" FDA class types. From [DrugCentral](http://drugcentral.org/). |
| Side Effect | SE | 5734 | Adverse drug reactions. From [SIDER](http://sideeffects.embl.de/)/[UMLS](https://www.nlm.nih.gov/research/umls/). |
| Symptom | S | 438 | Signs and Symptoms (i.e. clinical abnormalities that can indicate a medical condition). From the [MeSH ontology](https://www.nlm.nih.gov/mesh/meshhome.html). |

Table: **Node types in Hetionet**
The abbreviation, number of nodes, and description for each of the 11 metanodes in Hetionet v1.0.
{#tbl:metanodes}

Hetionet provides a foundation for building hetnet applications.
It unifies data from several different, disparate sources into a single, comprehensive, accessible, common-format network.
The database is publicly accessible without login at <https://neo4j.het.io>.
The Neo4j graph database enables querying Hetionet using the Cypher language,
which was designed to interact with networks where nodes and edges have both types and properties.

One limitation that restricts the applicability of Hetionet is incompleteness.
In many cases, Hetionet v1.0 includes only a subset of the nodes from a given resource.
For example, the Disease Ontology contains over 9,000 diseases [@doi:10.1093/nar/gky1032], while Hetionet includes only 137 diseases [@doi:10.15363/thinklab.d44].
Nodes were excluded to avoid redundant or overly specific nodes, while ensuring a minimum level of connectivity for compounds and diseases.
See the [Project Rephetio methods](https://git.dhimmel.com/rephetio-manuscript/#nodes) for more details [@rephetio].
Nonetheless, Hetionet v1.0 remains one of the most comprehensive and integrative networks that consolidates biomedical knowledge into a manageable number of node and edge types.
Other integrative resources, some still under development, include [Wikidata](https://www.wikidata.org) [@doi:10.7554/eLife.52614], [SemMedDB](https://skr3.nlm.nih.gov/SemMedDB/) [@doi:10.1093/bioinformatics/bts591; @doi:10.1109/BIBM.2018.8621568; @doi:10.1186/s12859-019-3297-0], [SPOKE](https://spoke.ucsf.edu/), and [DRKG](https://github.com/gnn4dr/DRKG).

### Rephetio



### Unsupervised connectivity search

## Results {.page_break_before}



### Hetmatpy Package

### DWPC null distribution

### Enriched metapaths

### Enriched paths

### Comparison to Rephetio

### Detecting Mechanisms of Action for Indications

Assess ability to predict paths in <https://github.com/SuLab/DrugMechDB>

### Connectivity Search Webapp

### Use cases

## Discussion {.page_break_before}



## Methods {.page_break_before}

### Computing DWPCs with matrix multiplication

### Permuted hetnets

### Degree-grouping of node pairs

### Gamma-hurdle distribution

### Prioritizing metapaths for database storage

### Rest API & backend

### Webapp & Frontend

### Realtime open science

### Software & data availability


## References {.page_break_before}

<!-- Explicitly insert bibliography here -->
<div id="refs"></div>
