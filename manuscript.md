---
author-meta:
- John Doe
- Jane Roe
date-meta: '2019-11-13'
keywords:
- markdown
- publishing
- manubot
lang: en-US
title: Hetnet connectivity search provides rapid insights into how two biomedical
  entities are related
...






<small><em>
This manuscript
([permalink](https://greenelab.github.io/connectivity-search-manuscript/v/63e27cdff28336807f57fef04f9ac3b4c48ddd61/))
was automatically generated
from [greenelab/connectivity-search-manuscript@63e27cd](https://github.com/greenelab/connectivity-search-manuscript/tree/63e27cdff28336807f57fef04f9ac3b4c48ddd61)
on November 13, 2019.
</em></small>

## Authors



+ **John Doe**<br>
    ![ORCID icon](images/orcid.svg){.inline_icon}
    [XXXX-XXXX-XXXX-XXXX](https://orcid.org/XXXX-XXXX-XXXX-XXXX)
    · ![GitHub icon](images/github.svg){.inline_icon}
    [johndoe](https://github.com/johndoe)
    · ![Twitter icon](images/twitter.svg){.inline_icon}
    [johndoe](https://twitter.com/johndoe)<br>
  <small>
     Department of Something, University of Whatever
     · Funded by Grant XXXXXXXX
  </small>

+ **Jane Roe**<br>
    ![ORCID icon](images/orcid.svg){.inline_icon}
    [XXXX-XXXX-XXXX-XXXX](https://orcid.org/XXXX-XXXX-XXXX-XXXX)
    · ![GitHub icon](images/github.svg){.inline_icon}
    [janeroe](https://github.com/janeroe)<br>
  <small>
     Department of Something, University of Whatever; Department of Whatever, University of Something
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

The algorithm behind connectivity search identifies types of paths that occur more frequently than would be expected by chance (based on node degree alone). We implemented the method on Hetionet and provide an online interface at <https://het.io/search>. Several optimizations were required to precompute significant instances of node connectivity at scale. We provide an open source implementation of these methods in our new Python package named hetmatpy.

To validate the method, we show that it identifies much of the same evidence for specific instances of drug repurposing as the previous supervised approach, but without requiring a training set.



## References {.page_break_before}

<!-- Explicitly insert bibliography here -->
<div id="refs"></div>
