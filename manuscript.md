---
author-meta:
- Daniel S. Himmelstein
bibliography:
- content/manual-references.json
date-meta: '2020-06-22'
header-includes: '<!--

  Manubot generated metadata rendered from header-includes-template.html.

  Suggest improvements at https://github.com/manubot/manubot/blob/master/manubot/process/header-includes-template.html

  -->

  <meta name="dc.format" content="text/html" />

  <meta name="dc.title" content="Hetnet connectivity search provides rapid insights into how two biomedical entities are related" />

  <meta name="citation_title" content="Hetnet connectivity search provides rapid insights into how two biomedical entities are related" />

  <meta property="og:title" content="Hetnet connectivity search provides rapid insights into how two biomedical entities are related" />

  <meta property="twitter:title" content="Hetnet connectivity search provides rapid insights into how two biomedical entities are related" />

  <meta name="dc.date" content="2020-06-22" />

  <meta name="citation_publication_date" content="2020-06-22" />

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

  <link rel="alternate" type="text/html" href="https://greenelab.github.io/connectivity-search-manuscript/v/c11dfd59926b85ca61937a1e61d072e0927fe7dd/" />

  <meta name="manubot_html_url_versioned" content="https://greenelab.github.io/connectivity-search-manuscript/v/c11dfd59926b85ca61937a1e61d072e0927fe7dd/" />

  <meta name="manubot_pdf_url_versioned" content="https://greenelab.github.io/connectivity-search-manuscript/v/c11dfd59926b85ca61937a1e61d072e0927fe7dd/manuscript.pdf" />

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
([permalink](https://greenelab.github.io/connectivity-search-manuscript/v/c11dfd59926b85ca61937a1e61d072e0927fe7dd/))
was automatically generated
from [greenelab/connectivity-search-manuscript@c11dfd5](https://github.com/greenelab/connectivity-search-manuscript/tree/c11dfd59926b85ca61937a1e61d072e0927fe7dd)
on June 22, 2020.
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

Project Rephetio is the name of the [study](https://git.dhimmel.com/rephetio-manuscript/) that created Hetionet and applied it repurpose drugs [@rephetio].
This project [predicted](https://het.io/repurpose/) the probability of drug efficacy for 209,168 compound–disease pairs.
The approach learned which types of paths occur more or less frequently between known treatments than non-treatments (Figure @fig:rephetio).
To train the model, Rephetio created [PharmacotherapyDB](https://doi.org/10.6084/m9.figshare.3103054), a physician-curated catalog of 755 disease-modifying treatments [@doi:10.15363/thinklab.d182].

![
**Supervised machine learning approach from Project Rephetio.**
This figure visualizes the feature matrix used by Project Rephetio to make supervised predictions.
Each row represents a compound–disease pair.
The top half of rows correspond to known treatments (i.e. positives), while the bottom half correspond to non-treatments (i.e. negatives, not known to be treatments in PharmacotherapyDB).
Here, an equal number of treatments and non-treatments are shown, but in reality the problem is heavily imbalanced.
Project Rephetio scaled models to assume a positive prevalence of 0.36% [@rephetio; @doi:10.15363/thinklab.d210].
Each column represents a metapath, labeled with its abbreviation.
<br><br>
Feature values are DWPCs (transformed and standardized), which assess the connectivity along the specified metapath between the specific compound and disease.
Maroon colored values indicate above-average connectivity,
whereas blue values indicate below average connectivity.
In general, positives have greater connectivity for the selected metapaths than negatives.
Rephetio used a logistic regression model to learn the effect of each type of connectivity (feature) on the likelihood that a compound treats a disease.
The model predicts whether a compound–disease pair is a treatment based on its features, but requires supervision in the form of known treatments.
<!-- note we might want to manually improve this figure as per https://slides.com/dhimmel/rocky2019#/11/1/3 -->
](https://github.com/dhimmel/learn/raw/7668c97b2a6f348479b70fa40c3d7db424584315/prediction/figure/example-feature-matrix.svg?sanitize=1){#fig:rephetio width="4.5in"}

### TODO: Other works

https://github.com/greenelab/hetmech/issues/56

Network embeddings edge2vec [@doi:10.1186/s12859-019-2914-2], metapath2vec [@doi:10.1145/3097983.3098036], HINE [@doi:10.1007/978-3-319-55753-3_12].

@doi:10.1145/2736277.2741123 training node pairs to important metapaths (Forward Stagewise Path Generation).
[MetaExp](https://meta-exp.github.io/) [@doi:10.1145/3184558.3186978] user selects two sets of nodes. MetaExp detects metapaths and interacts with the user to progressively refine metapaths.

### Unsupervised connectivity search

## Results {.page_break_before}

### Connectivity Search Webapp

We created the connectivity search webapp available at <https://het.io/search/>.
The tool is free to use, without any login or authentication.
The purpose is let users quickly explore how any two nodes in Hetionet v1.0 might be related.
The workflow is based around showing the user the most important metapaths and paths for a pair of query nodes.

The design guides the user through selecting a source and target node (Figure {@fig:webapp}A).
The webapp returns metapaths, scored by whether they occurred more than expected based on network degree (Figure {@fig:webapp}B).
Users can proceed by requesting the specific paths for each metapath, which are placed in a unified table sorted according to their path score (Figure {@fig:webapp}C).
Finally, the webapp produces publication-ready visualizations containing user-selected paths (Figure {@fig:webapp}D).

![
**Using the connectivity search webapp to explore the pathophysiology of Alzheimer's disease.**
This figure shows an example user workflow for <https://het.io/search/>.
\
**A.**
The user selects two nodes.
Here, the user is interested in Alzheimer's disease, so [selects this](https://het.io/search/?source=17287) as the source node.
The user limits the target node search to metanodes relating to gene function.
The target node search box suggests nodes, sorted by the number of significant metapaths.
When the user types in the target node box, the matches reorder based on search word similarity.
Here, the user becomes interested in how the circadian rhythm might relate to Alzheimer's disease.
\
**B.**
The webapp returns metapaths between Alzheimer's disease and the circadian rhythm pathway.
The user unchecks "precomputed only" to compute results for all metapaths with length ≤ 3, not just those that surpass the database inclusion threshold.
The user sorts by adjusted _p_-value and [selects](alzheimer-metapaths) 7 of the top 10 metapaths.
\
**C.**
Paths for the selected metapaths are ordered by their path score.
The user selects 7 paths to show in the graph visualization and highlights a single path involving _ARNT2_ for emphasis.
\
**D.**
A subgraph displays the previously selected paths.
The user improves on the automated layout by repositioning nodes.
Clicking an edge displays its properties, informing the user that association between Creutzfeldt-Jakob disease and _NPAS2_ was detected by GWAS.
<!--
  This example is also used at https://slides.com/dhimmel/rocky2019#/4
  More info at https://github.com/greenelab/connectivity-search-manuscript/issues/7
-->
](https://github.com/greenelab/connectivity-search-manuscript/raw/9f0f132551eeab94b3ba89ad12b5d5a2c9671420/content/media/webapp/v2/webapp.png){#fig:webapp width="5in"}

[alzheimer-metapaths]: https://het.io/search/?source=17287&target=7607&metapaths=DaGiGpPW%2CDdGiGpPW%2CDdGpPW%2CDlAeGpPW%2CDrDaGpPW%2CDrDuGpPW%2CDuGiGpPW&complete=

### Hetmatpy Package

We created the hetmatpy Python package,
available on [GitHub](https://github.com/hetio/hetmatpy) and [PyPI](https://pypi.org/project/hetmatpy/) under the permissive BSD-2-Clause Plus Patent License.
This package provides a matrix-based utilities for hetnets.

### DWPC null distribution

To assess connectivity between a source and target node, we use the DWPC (degree-weighted path count) metric.
The DWPC is similar to path count (number of paths between the source and target node along a given metapath), except that it downweights paths through high degree nodes.
Rather than using the raw DWPC for a source-metapath-target combination, we transform the DWPC across all source-target node pairs for a metapath to yield a distribution that is more compact and amenable to modeling [@doi:10.15363/thinklab.d193].

Previously, we had no technique for detecting whether a DWPC value was exceptional.
One possibility is to evaluate the DWPCs for all pairs of nodes and select the top scores (e.g. the top 5% of DWPCs).
Another possibility is to pick a transformed DWPC score as a cutoff.
The shortcomings of these methods are twofold.
First, neither the percentile nor absolute value of a DWPC has inherent meaning.
To select transformed DWPCs greater than 6, or alternatively the top 1% of DWPCs, is arbitrary.
Second, comparing DWPCs between node pairs fails to account for the situation where high-degree node pairs are likely to score higher, solely on account of their degree (TODO: figure).

To address these shortcomings, we developed a method to compute the right-tail _p_-value of a DWPC.
_p_-values have a broadly understood interpretation --- in our case, the probability that a DWPC equal to or greater than the observed DWPC could occur under a null model.
By tailoring the null distribution for a DWPC to the degree of its source and target node, we account for degree effects when determining the significance of a DWPC.


### Enriched metapaths

![
**Expanded metapath details from the connectivity search webapp.**
This is the expanded view of the [metapath table](alzheimer-metapaths) in {@fig:webapp}B.
](https://github.com/greenelab/connectivity-search-manuscript/raw/9f0f132551eeab94b3ba89ad12b5d5a2c9671420/content/media/webapp/v2/b.metapaths-expanded.png){#fig:webapp-metapaths width="100%}

Figure @fig:webapp-metapaths shows the information used to compute _p_-value for enriched metapaths.
The table includes the following columns:

- **path count**:
  The number of paths between the source and target node of the specified metapath
- **adjusted _p_-value**:
  A measure of the significance of the DWPC that indicates whether more paths were observed than expected due to random chance.
  Compares the DWPC to a null distribution of DWPCs generated from degree-preserving permuted networks.Bonferroni-adjusted for the number of metapaths with the same source metanode, target metanode, and length.
- **_p_-value**:
  A measure of the significance of the DWPC that indicates whether more paths were observed than expected due to random chance.
  Compares the DWPC to a null distribution of DWPCs generated from degree-preserving permuted networks.
  Not adjusted for multiple comparisons
  (i.e. when multiple metapaths are assessed for significant connectivity between the source and target node).
- **DWPC**:
  Degree-Weighted Path Count —
  Measures the extent of connectivity between the source and target node for the given metapath.
  Like the path count, but with less weight given to paths along high-degree nodes.
- **source degree**:
  The number of edges from the source node that are of the same type as the initial metaedge of the metapath.
- **target degree**:
  The number of edges from the target node that are of the same type as the final metaedge of the metapath.
- **# DWPCs**:
  The number of DWPCs calculated on permuted networks used to generate a null distribution for the DWPC from the real network.
  Permuted DWPCs are aggregated for all permuted node pairs with the same degrees as the source and target node.
- **# non-0 DWPCs**:
  The number of permuted DWPCs from '# of DWPCs' column that were nonzero.
  Nonzero DWPCs indicate at least one path between the source and target node existed in the permuted network.
- **non-0 mean**:
  The mean of nonzero permuted DWPCs.
  Used to generate the gamma-hurdle model of the null DWPC distribution.
- **non-0 σ**:
  The standard deviation of nonzero permuted DWPCs.
  Used to generate the gamma-hurdle model of the null DWPC distribution.
- **Neo4j Actions**:
  A Cypher query that users can run in the [Neo4j browser](https://neo4j.het.io/browser/) to show paths with the largest DWPCs for the metapath.

### Enriched paths

### Comparison to Rephetio

### Detecting Mechanisms of Action for Indications

Assess ability to predict paths in <https://github.com/SuLab/DrugMechDB>

### Use cases

## Discussion {.page_break_before}

STUB: Contributions of this work:

- search engine for hetnet connectivity between two nodes, realtime results
- interactive webapp and user interface for displaying metapaths, paths, and subgraphs.
- optimized methods for computing DWPCs using matrix multiplication
- method for estimating _p_-values for a DWPC, based on null DWPCs computed from permuted hetnets.
- the hetmatpy Python package and HetMat data structure that provide a highly-optimized computational infrastructure to make this possible.

STUB: Future work:

- node set transformations
- [improved DWPC scaling](https://github.com/hetio/hetmatpy/issues/11)
- longer metapaths
- auto-detection of informative metapaths

## Methods {.page_break_before}

### The HetMat awakens

At the core of the hetmatpy package is the HetMat data structure for storing and accessing the network.
HetMats are stored on disk as a directory, which by convention uses a `.hetmat` extension.
A HetMat directory stores a single heterogeneous network, whose data resides in the following files.

1. A `metagraph.json` file stores the schema, defining which types of nodes and edges comprise the hetnet.
   This format is defined by the [hetnetpy](https://github.com/hetio/hetnetpy) Python package.
   Hetnetpy was originally developed with the name hetio during prior studies
   [@hetio-dag; @rephetio],
   but we [renamed](https://github.com/hetio/hetnetpy/issues/40) it to het**net**py for better disambiguation from het**mat**py.
2. A `nodes` directory containing one file per node type (metanode) that defines each node.
   Currently, `.tsv` files where each row represents a node are supported.
3. An `edges` directory containing one file per edge type (metadata) that encodes the adjacency matrix. 
   The matrix can be serialized using either the Numpy dense format (`.npy`) or SciPy sparse format (`.sparse.npz`).

For node and edge files, compression is supported as detected from `.gz`, `.bz2`, `.zip`, and `.xz` extensions.
This structure of storing a hetnet supports selectively reading nodes and edges into memory.
For example, a certain computation may only require access to a subset of the node and edge types.
By only loading the required node and edge types, we reduce memory usage and read times.

Additional subdirectories, such as `path-counts` and `permutations`, store data generated from the HetMat.
By using consistent paths for generated data, we avoid recomputing data that already exists on disk.
A HetMat directory can be zipped for archiving and transfer.
Users can selectively include generated data in archives.
Since the primary application of HetMats is to generate computationally demanding measurements on hetnets, the ability to share HetMats with precomputed data is paramount.

The [`HetMat`](https://hetio.github.io/hetmatpy/reference/hetmatpy/hetmat/#hetmat) class implements the above logic.
A `hetmat_from_graph` function creates a HetMat object and directory on disk from the pre-existing `hetnetpy.hetnet.Graph` format.

We converted Hetionet v1.0 to HetMat format and uploaded the `hetionet-v1.0.hetmat.zip` archive to the [Hetionet data repository](https://github.com/hetio/hetionet/tree/master/hetnet/matrix).

### Computing DWPCs with matrix multiplication

Prior to this study, we used two implementations for computing DWPCs.
The first is a pure Python implementation available in the [`hetnetpy.pathtools.DWPC`](https://github.com/hetio/hetnetpy/blob/aa16e6a7092c039a6b175a73a35c006e53acee20/hetnetpy/pathtools.py#L8-L21) function [@hetio-dag].
The second uses a Cypher query, prepared by [`hetnetpy.neo4j.construct_dwpc_query`](https://github.com/hetio/hetnetpy/blob/aa16e6a7092c039a6b175a73a35c006e53acee20/hetnetpy/neo4j.py#L363-L393), that is executed by the Neo4j database [@rephetio; @doi:10.15363/thinklab.d112].
Both of these implementations require traversing all paths between the source and target node.
Hence, they are computationally cumbersome despite optimizations [@doi:10.15363/thinklab.d187].

An alternative approach counts paths by multiplying adjacency matrixes.
However, this approach actually counts walks,
since it includes sequences of edges that traverse a single node (i.e trail) or edge (i.e. walk) multiple times.
When computing network-based features to quantify the relationship between a source and target node,
we would like to exclude traversing duplicate nodes (i.e. paths, not trails nor walks) [@doi:10.15363/thinklab.d134].
Therefore, we invented a suite of algorithms to compute true path counts and DWPCs using matrix multiplication. 

TODO: Describe the suite of DWPC algorithms. From the categorize function, there are:

- no_repeats
- disjoint
- short_repeat
- long_repeat
- BAAB
- BABA
- repeat_around
- interior_complete_group
- disjoint_groups
- other

Include information on what lengths of metapath we have completely solved this for. Mention testing against existing methods.

Mention approximations. Also note independent approximation work at https://github.com/mmayers12/hetnet_ml

Discuss caching strategies, sequential versus recursive

Runtime comparison to show the speedup.
Rephetio computed a portion of in XX time


From [@vagelos-2017]:

> We reduced the time to compute DWPC over nearly 1200 metapaths from roughly four-and-a-half days to roughly one hour and thirty-seven minutes

175-fold, which underestimates since Rephetio did not compute the full DWPC matrix and benefited from concurrency.

<!-- references
  https://github.com/greenelab/hetmech/issues/20
  https://github.com/greenelab/hetmech/pull/70
  https://github.com/greenelab/hetmech/issues/53
  https://github.com/greenelab/hetmech/pull/67
  https://github.com/hetio/hetmatpy/blob/bc36aa9859c43a1a5fb22808cd6eb952ef9d497c/hetmatpy/degree_weight.py#L210-L239
  https://github.com/mmayers12/hetnet_ml
  https://nbviewer.jupyter.org/github/greenelab/hetmech/blob/042063fb559048e52b3dc2731b6d6c6836f698cf/7.rephetio-times.ipynb
  https://nbviewer.jupyter.org/github/greenelab/hetmech/blob/042063fb559048e52b3dc2731b6d6c6836f698cf/explore/recursive-chain/dwwc-chain-recursive.ipynb
  https://nbviewer.jupyter.org/github/greenelab/hetmech/blob/042063fb559048e52b3dc2731b6d6c6836f698cf/explore/cache-speeds.ipynb
-->

### Permuted hetnets

In order to generate a null distribution for a DWPC, we rely on DWPCs computed from permuted hetnets.
We derive permuted hetnets from the unpermuted network using the XSwap algorithm [@doi:10.1137/1.9781611972795.67].
XSwap randomizes edges while preserving node degree.
Therefore, it's ideal for generating null distributions that retain general degree effects,
but destroy the actual meaning of edges.
We adapt XSwap to hetnets by applying it separately to each metaedge [@rephetio; @doi:10.15363/thinklab.d178; @xswap].

Project Rephetio created 5 permuted hetnets [@rephetio; @doi:10.15363/thinklab.d178],
which were used to generate a null distribution of classifier performance for each metapath-based feature.
Here, we aim to create a null distribution for individual DWPCs, which requires vastly more permuted values to estimate with accuracy.
Therefore, we generated 200 permuted hetnets ([archive](https://github.com/greenelab/hetmech/blob/042063fb559048e52b3dc2731b6d6c6836f698cf/data/hetionet-v1.0-permutations.zip)).
More recently, we also developed the `xswap` Python [package](https://github.com/greenelab/xswap), whose optimized C/C++ implementation will enable future research to generate even larger sets of permuted networks [@xswap].

### Degree-grouping of node pairs

For each of the 200 permuted networks and each of the 2,205 metapaths, we computed the entire DWPC matrix (i.e. all source nodes × target nodes).
Therefore, for each actual DWPC value, we computed 200 permuted DWPC values.
Because permutation preserves only node degree, DWPC values among nodes with the same source and target degrees are equivalent to additional permutations.
We greatly increased the effective number of permutations by grouping DWPC values according to node degree, affording us a superior estimation of the DWPC null distribution.

We have applied this _degree-grouping_ approach previously when calculating the prior probability of edge existence based on the source and target node degrees [@doi:10.15363/thinklab.d201; @xswap].
But here, we apply _degree-grouping_ to null DWPCs.
The result is that the null distribution for a DWPC is based not only on permuted DWPCs for the corresponding source--metapath--target combination,
but instead on all permuted DWPCs for the source-degree--metapath--target-degree combination.

The "# DWPCs" column in Figure @fig:webapp-metapaths illustrates how degree-grouping inflates the sample size of null DWPCs.
The _p_-value for the _DaGiGpPW_ metapath relies on the minimum number of null DWPCs (200),
since no other disease besides Alzheimer's had 196 _associates_ edges (source degree) and no other pathway besides circadian rhythm had 201 _participates_ edges (target degree).
However, for other metapaths with over 5,000 null DWPCs, degree-grouping increased the size of the null distribution by a factor of 25.
In general, source--target node pairs with lower degrees receive the largest sample size multiplier from degree-grouping.
This is convenient since low degree nodes also tend to produce the highest proportion of zero DWPCs, by virtue of low connectivity.
Consequently, degree-grouping excels where it is needed most.

One final benefit of degree-grouping is that reduces the disk space required to store null DWPC summary statistics.
For example, with 20,945 genes in Hetionet v1.0, there exists 438,693,025 gene pairs.
Gene nodes have 302 distinct degrees for _interacts_ edges, resulting in 91,204 degree pairs.
This equates to an 4810-fold reduction in the number of summary statistics that need to be stored to represent the null DWPC distribution for a metapath starting and ending with a _Gene--interacts--Gene_ metaedge.

<!--
TODO: somewhere link to notebook https://github.com/greenelab/hetmech/blob/042063fb559048e52b3dc2731b6d6c6836f698cf/explore/bulk-pipeline/bulk.ipynb

Columns stored in degree-perm summary files:
source_degree target_degree n nnz sum sum_of_squares n_perms

Cite data @doi:10.5281/zenodo.1435834
-->

### Gamma-hurdle distribution

<!-- references
  https://nbviewer.jupyter.org/github/zietzm/hetmech/blob/afde1c6c2a7dea7db370ab543e0abcb992d34b0b/explore/gamma-hurdle-heatmaps/gamma-heatmaps.ipynb
  https://github.com/greenelab/hetmech/pull/157
  https://github.com/greenelab/hetmech/blob/088dc3c0852387b58880c145f265fd704eb5e5d1/explore/gamma-hurdle/parameter_estimates.ipynb
  https://github.com/greenelab/hetmech/issues/123
-->

### Empirical DWPC p-values

We [caclulate](https://github.com/hetio/hetmatpy/blob/bc36aa9859c43a1a5fb22808cd6eb952ef9d497c/hetmatpy/pipeline.py#L92-L113 "hetmatpy.pipeline.calculate_empirical_p_value source code") an empirical p-value for special cases where the gamma-hurdle model cannot be applied.
These cases include when the observed DWPC is zero or when the null DWPC distribution is all zeroes or has only a single distinct nonzero value.
The emperical _p_-value (_p~empiric~_) equals the proportion of null DPWCs ≥ the observed DWPC.

Since we don't store all null DWPC values,
we apply the following criteria to calculate _p~empiric~_ from summary statistics:

1. When the observed DWPC = 0 (no paths of the specified metapath existed between the source and target node),
   _p~empiric~_ = 1.
2. When all null DWPCs are zero but the observed DWPC is positive,
   _p~empiric~_ = 0.
3. When all nonzero null DWPCs have the same positive value (standard deviation = 0),
   _p~empiric~_ = 0 if the observed DWPC > the null DWPC else _p~empiric~_ = proportion of nonzero null DWPCs.

### Prioritizing metapaths for database storage

### Rest API & backend

<https://search-api.het.io/v1/>

### Webapp & Frontend

### Realtime open science

### Software & data availability


[@vagelos-2017]: doi:10.6084/m9.figshare.5346577
[@hetio-dag]: doi:10.1371/journal.pcbi.1004259
[@rephetio]: doi:10.7554/eLife.26726
[@xwap]: https://greenelab.github.io/xswap-manuscript/


## References {.page_break_before}

<!-- Explicitly insert bibliography here -->
<div id="refs"></div>
