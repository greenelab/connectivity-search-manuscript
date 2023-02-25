# Response to Reviewers

This document contains the response to reviewers for _GigaScience_ submission `GIGA-D-23-00005` received on 2023-02-20.

## Reviewer #1

> The paper is very well-written and addresses an important problem. The database appears easy to use and contains a lot of pre-computed data, which will be useful for researchers to query and generate useful insights. I only have a few minor comments, which if addressed, could further strengthen this manuscript.

### Minor comments:

> Without line and page numbers, it was a bit tricky to point out the issues.
> 
> 1. "One such application" in the introduction does not read well - just "one application"
> 2. It is nice to see that DWPCs that are not retained by the database can be generated on the fly. The para goes on to mention "while still allowing on-demand access to the full metrics for all metapaths with length ≤ 3" --- is it also possible to generate metrics for longer paths if needed?
> 3. Below Fig 2, there is a point about the adjusted p-value. I see that the discussion about FDR is presented later in the manuscript (and well justified), but there could be a pointer here to that section.
> 4. Is there a possibility to include other computations like betweenness centrality and motifs also? This kind of data looks really ripe for an excellent analysis of repeated motifs etc.
> 5. I found the Methods extremely long and may be a bit distracting for readers of this manuscript --- I was wondering if some of these can be moved to Supplementary.
> 6. In the section on "Details of matrix DWPC implementation", it is stated that "our matrix methods were validated". It is not clear where these validations have been discussed. Supplementary?
> 7. In the section on "Permuted hetnets", it is not fully clear what the parameters for XSwap algorithm was. What were the parameters, e.g. number of swaps, etc.?
> 8. In the section on "Details of the gamma-hurdle distribution", there is perhaps a missing equation below the second statement of "The probability of a draw from the distribution is"
> 9. The validation here which points to an ipynb, could be put in Supplement.
> 10. In the section on "Prioritizing enriched metapaths for database storage", what is the logic underlying the choice of parameters? "For metapaths with length ≥ 2, we chose an adjusted pvalue threshold of 5 × (nsource × ntarget)^−0.3".
> 11. Under "Visual Design", are the colours chosen "colour-blind friendly"?


## Reviewer #2:

> In this work Himmelstein and collaborators introduce a statistically controlled way of extracting significant node pairs in heterogeneous networks (hetnets) without relying on a ground truth and related training. The method "explains" why two nodes are significantly connected by extracting the metapaths most responsible for the enrichment. This is based on computing a null distribution of the DWPC, which allows assigning a P-value to each metapath joining two nodes, and then to visualize the individual paths responsible for the enrichment. The method is novel and significant, and can be in principle be applied to many hetnets, in life sciences and beyond, when a ground truth is not available or not desirable as it would introduce bias. The software tools developed appear to be readily available to other researchers.

### Major comment:

> If I understand correctly, given two nodes (say "Alzheimer disease" and "Circadian rhythm") the method extracts, in a statistically controlled way, the most significant metapaths joining the two nodes, and then the individual paths responsible for the enrichment. But this is not the most obvious question a life scientist would ask the network, which would be instead something like "Which are the pathways most significantly connected to "Alzheimer disease"? Indeed this type of question would be the one to ask when aiming for drug repurposing (possibly replacing "pathways" with "compounds" or "pharmacologic classes"). Based on Fig. 4A, the pathways are presented, or "suggested," in decreasing order of number of metapaths, but this is hardly a ranking by significance. Would it be possible to summarize the results in such a way as to rank the pathway nodes connected to a given disease node by significance (or more generally to rank the nodes of a certain type by the significance of their connection to a given node of another type)? This should be discussed.

### Minor comments

> I also have several minor concerns.
>
> (1) The authors introduce and compute a null distribution of the DWPC which takes into account node degree in a statistically controlled way when evaluating the connectivity between two nodes. However, the DWPC itself does take into account node degree, as the name implies, and contains a tunable parameter that can be optimized, at least when a ground truth is available (as in Ref 39 by the same first author). I understand such tuning is not possible when, as in the present case, no ground truth is available, but the authors should make this point more clearly.
> 
> (2) I find Fig. 1B a bit confusing:  according to the legend, the top rows are known treatments, which should have higher than expected connectivity. However, based on the colors as explained by the legend, the bottom treatment/disease pairs seem to have higher connectivity
> 
> (3) The acronym DWPC is defined after it has been used several times
> 
> (4) The legend of Figure 2 should specify that these results apply to the nodes "Alzheimer disease" and "Circadian rhythm", although this becomes clear in Fig. 4
> 
> (5) I don't think Figure 3, representing the home page of the web site, is especially useful
> 
> (6) I found Fig. 4 confusing: the sum of the path counts for the selected metapaths in panel B is way larger than the 425 results shown in Panel C. As far as I understand no path can belong to more than one metapaths, so is there some further selection here?
> 
> (7) The "Frontend" section of the Methods seems a bit too detailed for the Gigascience audience