library(ggplot2)
library(patchwork)

data = data.frame(Value = c(1,2,2,3,3,3,4,4,5,5,5,5));

Group = c("Group A","Group A","Group A","Group B","Group B","Group B","Group B","Group C",
          "Group C","Group D","Group D","Group D","Group D");

facet_histograms = ggplot(data,aes(x = Value)) +
  geom_histogram(
    binwidth = 1,
    fill = "lightblue",
    color="black",
    alpha=0.7,
    position="identity"
  )+
  labs (
    title = "Faceted Histograms by Group",
    x = "Values",
    y = "Frequency",
    subtitle = "Faceted Plot Example"
  )+
  theme_minimal() +
  theme (
    text=element_text(size=12,family="Arial"),
    plot.title = element_text(hjust=0.5,face="bold",size=16,color="darkblue"),
    plot.subtitle = element_text(hjust=0.5,size=12),
    axis.text = element_text(color="black",size=10),
    axis.title = element_text(face="italic",size=12),
    panel.grid.major = element_line(color="gray",size=0.2),
    panel.grid.minor = element_blank(),
    panel.background = element_rect(fill="white",color="gray"),
    legend.position = "none"
  )+ facet_wrap(~Group)

print(facet_histograms)
