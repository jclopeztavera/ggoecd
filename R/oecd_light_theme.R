#' oecd_light_theme
#'
#' @param gridx
#' @param gridy
#'
#' @return
#' @export
#'
#' @examples
oecd_light_theme <- function(gridx = TRUE, gridy = !gridx) {
  ggplot2::theme_void() +
    ggplot2::theme(
      text = element_text(
        family = "Helvetica",
        face = "plain",
        size = 12,
        colour = "#727272"
      ),
      plot.margin = margin(12, 14, 12, 14),
      axis.line = element_line(
        size = 0.5,
        linetype = 1,
        lineend = "butt",
        arrow = FALSE,
        inherit.blank = TRUE
      ),
      panel.grid.major.x = element_line(
        size = 0.25,
        colour = "grey60",
        inherit.blank = !gridx
      ),
      panel.grid.major.y = element_line(
        size = 0.25,
        colour = "grey60",
        inherit.blank = !gridy
      ),
      title = element_text(
        face = "bold",
        hjust = 0,
        vjust = 0.5,
        size = 16,
        margin = margin(12, 6, 6, 6)
      ),
      plot.subtitle = element_text(
        face = "plain",
        hjust = 0,
        vjust = 0.5,
        size = 14,
        margin = margin(6, 6, 12, 6)
      ),
      axis.title = element_text(
        size = 13,
        face = "plain",
        hjust = 0.5,
        vjust = 0.5,
        margin = margin(6, 6, 12, 6)
      ),
      plot.caption = element_text(
        size = 11,
        vjust = 0,
        hjust = 1,
        face = "plain"
      ),
      axis.text = element_text(
        size = 12,
        face = "plain",
        hjust = 0.5,
        vjust = 0
      ),
      legend.text = element_text(size = 12),
      legend.title = element_text(
        size = 13,
        face = "bold",
        hjust = 0.5,
        vjust = 0.5
      )

    )
}
