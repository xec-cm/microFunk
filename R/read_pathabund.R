#' read_pathabund
#'
#' @param path path
#'
#' @return tibble
#' @export
#' @autoglobal
#' @tests testthat
#' nrow <- read_pathabund(microFunk:::path_abund) %>% nrow()
#' expect_equal(nrow, 2119068)
#'
#' @examples
#' read_pathabund(microFunk:::path_abund)
read_pathabund <- function(path) {

    df <- readr::read_tsv(path, show_col_types = FALSE)

    colnames <-
        df[1, ] %>%
        purrr::flatten_chr() %>%
        .[-1] %>%
        stringr::str_c(names(df)[-1], sep = "|")

    df <-
        df[-1, ] %>%
        stats::setNames(c("feature", colnames)) %>%
        tidyr::pivot_longer(-1) %>%
        tidyr::separate_wider_delim(name, "|", names = c("focal_site", "sample_id")) %>%
        dplyr::mutate(value = as.numeric(value))
}
