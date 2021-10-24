comb_files <- function(ext) {
  file_list <- list.files(path = ".\\data_folder\\")
  if (length(file_list) > 0) {
    first_file <- tryCatch(read.csv(file = paste0(".\\data_folder\\", file_list[1])))
    print(file_list[1])
    result_file <- first_file
    for (file_name in file_list) {
      if (which(file_name == file_list) != 1) {
        input_file <- tryCatch(read.csv(file = paste0(".\\data_folder\\", file_name)))
        print(file_name)
        result_file <- rbind(result_file, input_file)
      }
    }
    return(result_file)
  }
}



out_dataframe <- comb_files("csv")

