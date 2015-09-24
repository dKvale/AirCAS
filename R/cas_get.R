#' Filter air toxics information by CAS number.
#' 
#' This function will return a dataframe for the entered CAS numbers.
#' @param cas List of CAS numbers. Defaults to "50-00-0".
#' @keywords cas air toxics
#' @usage cas_get(cas = "50-00-0", chem = TRUE)
#'        cas_get(cas = c("50-00-0","7440-38-2"), chem = TRUE)
#' @importFrom dplyr filter
#' @export
#' @return cas_get returns a tbl_df.
#' @examples formaldehyde_facts <-  cas_get(cas = "50-00-0")

cas_get <- function(cas = "50-00-0", chem = TRUE) {
  
  data <- get(data("Air_Toxics_Chem_Params"), pos = globalenv())
    
  data <- filter(data, CAS %in% cas)
 
  
}