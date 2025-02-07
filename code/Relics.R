
<!--
  Hell with kable
```{r}
kbl(stx_compact_total %>% group_by(stx)) 
kableExtra::kable(stx_compact_total, 
                  caption = "Table 2: Stx genes and stx subtypes identified in human and non-human sources.",
                  format = "latex", booktabs = TRUE) %>%
  kable_styling(font_size = 12) %>%
  kableExtra::pack_rows(group_label = "stx", colnum = 1,
                        index = table(stx_compact_total$stx.subtype))

#| html-table-processing: none

summary_by_day %>%
  select(-proj_detail) %>%
  kbl(., caption = sprintf("Summary %s-%s", 
                           min(summary_by_day$day), 
                           max(summary_by_day$day))
  ) %>%
  column_spec(1, bold = T) %>%
  collapse_rows(columns = 1, valign = "top") %>%
  kable_material(c("striped", "hover",  "condensed", "responsive"), 
                 font_size = 10) %>%
  scroll_box(width = "100%", height = "600px")
```
--> 
  
  
  
  # 
  # ggplot(aes(x=Country, fill=`Source Group`)) + 
  # geom_bar(aes(y = (..count..))) +
  # geom_text(aes(y = (..count..),label = (..count..)), 
  #           stat = "count", 
  #           check_overlap = FALSE, 
  #           position = position_stack(vjust = 0.5)
  #           ) 
  
  # There is some problem in order of labels   
  # https://stackoverflow.com/questions/40775947/ggplot2-geom-text-and-order
  # Now with GG repel
  # data %>%
  #   ggplot(aes(x=Country, fill=`Source Group`)) + 
  #   #geom_bar(position="stack", stat="count") +
  #   geom_bar(aes(y = (..count..))) +
  #   geom_text_repel(
  #     aes(y = (..count..), label = (..count..)),
  #     stat = "count",
  #     position = position_stack(vjust = 0.5),
  #     min.segment.length = 0, # Adjust as needed to control segment length
  #     box.padding = 0.25,      # Adjust padding around text
  #     point.padding = 0.25,     # Adjust padding around points (if any)
  #     direction = "y"         # Important for vertical repulsion
  #   ) +
  # 