
# Figure 1
cp content/media/rephetio/metagraph-and-features.eps content/media/gigascience/giad047_f1.eps

# Figure 2 and 3
# see https://github.com/greenelab/connectivity-search-manuscript/issues/7
# confirm that the source is not vector, hence an EPS version would not make sense
# Figure 2 content/media/webapp/v3/b.metapaths-expanded.png
# Figure 3 content/media/webapp/v3/webapp.png
# Failed approach below:
# https://cloudconvert.com/psd-to-eps output was bad
# the following failed due to STDIN - is not in ppmraw or pbmraw format
# cat content/media/webapp/v3/webapp.psd | ps2eps > content/media/gigascience/giad047_f3.eps

# Figure 4
curl --location --silent https://github.com/greenelab/connectivity-search-analyses/raw/15f1925c0481d8e6bab8b0931f48f2fad388c68c/explore/degree-group-analyses.pdf > content/media/gigascience/giad047_f4.pdf
pdftops content/media/gigascience/giad047_f4.pdf content/media/gigascience/giad047_f4.eps

# Figure 5
curl --location --silent https://github.com/greenelab/connectivity-search-analyses/raw/1c6827ce2544c17cef42bbccf098a312f2c44f97/explore/gamma-hurdle/gamma-hurdle-distributions.pdf > content/media/gigascience/giad047_f5.pdf
pdftops content/media/gigascience/giad047_f5.pdf content/media/gigascience/giad047_f5.eps

# Figure 6
curl --location --silent https://github.com/greenelab/connectivity-search-backend/raw/752b423a4b7b57575d66ce0b797b0a84c23267a6/media/models-schema.pdf > content/media/gigascience/giad047_f6.pdf
pdftops content/media/gigascience/giad047_f6.pdf content/media/gigascience/giad047_f6.eps

# Figure 7
# content/media/website/website-homepage.png has raster source
