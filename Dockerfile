FROM risserlin/bcb420-base-image:winter2024

RUN R -e "install.packages('DESeq2')"
RUN R -e "install.packages('pheatmap')"
RUN R -e "install.packages('enrichplot')"

RUN useradd -m -s /bin/bash fressia && echo "fressia:rstudio" | chpasswd

