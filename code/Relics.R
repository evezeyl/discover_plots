
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