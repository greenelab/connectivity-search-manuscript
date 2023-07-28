
# Figure 1
cp content/media/rephetio/metagraph-and-features.eps content/media/gigascience/giad047_f1.eps

# Figure 2
cp content/media/webapp/v4/b.metapaths-expanded.eps content/media/gigascience/giad047_f2.eps
# pdftops had trouble with checkboxes (probably due to transparency)
# pdftops -rasterize never content/media/webapp/v4/b.metapaths-expanded.pdf content/media/gigascience/giad047_f2.eps
# rsvg-convert seemed to rasterize text
# rsvg-convert --format=eps --output=content/media/gigascience/giad047_f2.eps content/media/webapp/v4/b.metapaths-expanded.svg
# inkscape content/media/webapp/v4/b.metapaths-expanded.svg --export-type=eps --export-filename=content/media/gigascience/giad047_f2.eps

# Figure 3
cp content/media/webapp/v4/webapp.eps content/media/gigascience/giad047_f3.eps
# pdftops -rasterize never content/media/webapp/v4/webapp.pdf content/media/gigascience/giad047_f3.eps
# convert -background white -alpha remove content/media/gigascience/giad047_f3.png content/media/gigascience/giad047_f3.tiff

# Figure 4
curl --location --silent https://github.com/greenelab/connectivity-search-analyses/raw/15f1925c0481d8e6bab8b0931f48f2fad388c68c/explore/degree-group-analyses.pdf > content/media/gigascience/giad047_f4.pdf
pdftops content/media/gigascience/giad047_f4.pdf content/media/gigascience/giad047_f4.eps

# Figure 5: warning legend has transparency that is not supported  by encapsulated postscript
curl --location --silent https://github.com/greenelab/connectivity-search-analyses/raw/1c6827ce2544c17cef42bbccf098a312f2c44f97/explore/gamma-hurdle/gamma-hurdle-distributions.pdf > content/media/gigascience/giad047_f5.pdf
pdftops -rasterize never content/media/gigascience/giad047_f5.pdf content/media/gigascience/giad047_f5.eps

# Figure 6
curl --location --silent https://github.com/greenelab/connectivity-search-backend/raw/752b423a4b7b57575d66ce0b797b0a84c23267a6/media/models-schema.pdf > content/media/gigascience/giad047_f6.pdf
pdftops content/media/gigascience/giad047_f6.pdf content/media/gigascience/giad047_f6.eps

# Figure 7
cp content/media/website/website-homepage.png content/media/gigascience/giad047_f7.png
convert content/media/gigascience/giad047_f7.png content/media/gigascience/giad047_f7.jpg
convert content/media/gigascience/giad047_f7.png content/media/gigascience/giad047_f7.tif