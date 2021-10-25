comb_files <- function(ext) {
  data_path <- ".\data_folder"
  file_list <- list.files(path = data_path)
  first_file <- read.csv(file = paste0(data_path, file_name))
  result_file <- first_file 
  
  for (file_name in file_list) {
    if (which(file_name == file_list) != 1) {
      input_file <- read.csv(file = paste0(data_path, file_name))
      result_file <- rbind(result_file, input_file) 
    }
  }
  return(result_file)
} 

out_dataframe <- comb_files("csv")