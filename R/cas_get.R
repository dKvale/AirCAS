#' Filter air toxics information by CAS number.
#' 
#' This function will return a dataframe for the entered CAS numbers.  
#' @param 
#'   \code{cas} A list of CAS numbers. Defaults to \code{NA}.
#'   \code{chem} Option to return the chemical properties for the entered CAS numbers. Defaults to \code{TRUE}.
#'   \code{risk} Option to return the risk values. Defaults to \code{TRUE}.
#' @keywords cas air toxics
#' @usage 
#'   cas_get(cas = "50-00-0", chem = TRUE, risk = TRUE)  
#'   cas_get(cas = c("50-00-0","7440-38-2"), chem = TRUE, risk = FALSE)
#' @importFrom dplyr filter
#' @export
#' @return cas_get returns a tbl_df.
#' @examples formaldehyde_facts <-  cas_get(cas = "50-00-0")

cas_get <- function(cas = NA, chem = TRUE) {
  
  air_tox_table <- filter(Air_Toxics_Chem_Params, is.na(cas) || CAS %in% cas)
  
  return(air_tox_table)
  
}