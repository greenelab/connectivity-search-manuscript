---
author-meta:
- Daniel S. Himmelstein
date-meta: '2019-11-13'
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
title: Hetnet connectivity search provides rapid insights into how two biomedical
  entities are related
...






<small><em>
This manuscript
([permalink](https://greenelab.github.io/connectivity-search-manuscript/v/78579dd4d9d6efa6ac8334d3c8c17defb9bf8ea8/))
was automatically generated
from [greenelab/connectivity-search-manuscript@78579dd](https://github.com/greenelab/connectivity-search-manuscript/tree/78579dd4d9d6efa6ac8334d3c8c17defb9bf8ea8)
on November 13, 2019.
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



## Results {.page_break_before}



## Discussion {.page_break_before}



## Methods {.page_break_before}




## References {.page_break_before}

<!-- Explicitly insert bibliography here -->
<div id="refs"></div>
