---
author-meta:
- Daniel S. Himmelstein
bibliography:
- content/manual-references.json
date-meta: '2020-05-26'
header-includes: '<!--

  Manubot generated metadata rendered from header-includes-template.html.

  Suggest improvements at https://github.com/manubot/manubot/blob/master/manubot/process/header-includes-template.html

  -->

  <meta name="dc.format" content="text/html" />

  <meta name="dc.title" content="Hetnet connectivity search provides rapid insights into how two biomedical entities are related" />

  <meta name="citation_title" content="Hetnet connectivity search provides rapid insights into how two biomedical entities are related" />

  <meta property="og:title" content="Hetnet connectivity search provides rapid insights into how two biomedical entities are related" />

  <meta property="twitter:title" content="Hetnet connectivity search provides rapid insights into how two biomedical entities are related" />

  <meta name="dc.date" content="2020-05-26" />

  <meta name="citation_publication_date" content="2020-05-26" />

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

  <link rel="alternate" type="text/html" href="https://greenelab.github.io/connectivity-search-manuscript/v/ec2d568301840b6bf513c42399ceac562395770f/" />

  <meta name="manubot_html_url_versioned" content="https://greenelab.github.io/connectivity-search-manuscript/v/ec2d568301840b6bf513c42399ceac562395770f/" />

  <meta name="manubot_pdf_url_versioned" content="https://greenelab.github.io/connectivity-search-manuscript/v/ec2d568301840b6bf513c42399ceac562395770f/manuscript.pdf" />

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
([permalink](https://greenelab.github.io/connectivity-search-manuscript/v/ec2d568301840b6bf513c42399ceac562395770f/))
was automatically generated
from [greenelab/connectivity-search-manuscript@ec2d568](https://github.com/greenelab/connectivity-search-manuscript/tree/ec2d568301840b6bf513c42399ceac562395770f)
on May 26, 2020.
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

### Hetionet

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
