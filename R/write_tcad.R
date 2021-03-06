#' @title Write a TransCAD binary file
#'
#' @description Write a TransCAD \code{.bin} binary data file fromt the workspace.
#'
#' @param df workspace dataframe object
#'
#' @param file_name The path and name of the binary data file, e.g.
#'   \code{data/foo.bin}.
#'
#' @details If any factors exist in the data frame, then those fields are writern
#'   out with factor level (instead of actualvalue). Remove dataframe factors.
#' @details This version doesn't work well with NA's in the dataframe.
#'
#' @return The \code{DCB} dictionary file will be writern to the same
#'   folder. Prints dcb file contents to console.Need to make it a user defined
#'   option.
#'
#' @export
#' @importFrom Rcpp sourceCpp
#' @importFrom dplyr tbl_df  mutate_each_
#' @importFrom dplyr data_frame
#' @importFrom data.table, setattr

write_bin <-  function(df,file_name){
    typs <- sapply(df,typeof)
    write_df_to_binary(df,file_name,typs)
}
