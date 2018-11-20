parseEncodeRegions_resize = function(project, resize.width) {
  # get the data from the Project config
  url = pepr::samples(project)$remote_url[[1]]
  sampleName = pepr::samples(project)$sample_name[[1]]
  fileName = pepr::samples(project)$file_name[[1]]
  workDir = pepr::config(project)$metadata$output_dir
  # create the download dir if it does not exist
  # download the file
  bfc = BiocFileCache::BiocFileCache(cache = tempdir(),ask = FALSE)
  path = BiocFileCache::bfcrpath(x = bfc, url)
  # read it in
  df=read.table(path)
  # formatting
  colnames(df) = c('chr', 'start', 'end', 'name')
  # convert to GRanges object
  GenomicRanges::resize(x=GenomicRanges::GRanges(df), width=resize.width)
}
