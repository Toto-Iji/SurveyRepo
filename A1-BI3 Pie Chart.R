library(ggplot2)

# Create Pie Chart for A1-A4
A_data <- list(
  A1 = data.frame(Response = c("Yes", "No", "Neutral"),
                  Frequency = c(sum(A1 == "Yes"), sum(A1 == "No"), sum(A1 == "Neutral"))),
  
  A2 = data.frame(Response = c("Yes", "No", "Neutral"),
                  Frequency = c(sum(A2 == "Yes"), sum(A2 == "No"), sum(A2 == "Neutral"))),
  
  A3 = data.frame(Response = c("Yes", "No", "Neutral"),
                  Frequency = c(sum(A3 == "Yes"), sum(A3 == "No"), sum(A3 == "Neutral"))),
  
  A4 = data.frame(Response = c("Yes", "No", "Neutral"),
                  Frequency = c(sum(A4 == "Yes"), sum(A4 == "No"), sum(A4 == "Neutral")))
)

A_plots <- lapply(names(A_data), function(name) {
  data <- A_data[[name]]
  ggplot(data, aes(x = "", y = Frequency, fill = Response)) +
    geom_bar(stat = "identity") +
    coord_polar("y", start = 0) +
    labs(title = name,
         fill = "Response") +
    theme_void() +
    theme(legend.position = "bottom")
})

grid.arrange(grobs = A_plots, ncol = 2, top = "Attitude toward using Digital Music Streaming Platform")

#-------------------------------------------------------------------------------------------------------------
# Define data for Social Influence statements (SI1 to SI3)
SI_data <- list(
  SI1 = data.frame(Response = c("Yes", "No", "Neutral"),
                   Frequency = c(sum(SI1 == "Yes"), sum(SI1 == "No"), sum(SI1 == "Neutral"))),
  
  SI2 = data.frame(Response = c("Yes", "No", "Neutral"),
                   Frequency = c(sum(SI2 == "Yes"), sum(SI2 == "No"), sum(SI2 == "Neutral"))),
  
  SI3 = data.frame(Response = c("Yes", "No", "Neutral"),
                   Frequency = c(sum(SI3 == "Yes"), sum(SI3 == "No"), sum(SI3 == "Neutral")))
)

# Create pie charts for Social Influence statements with a general title "Social Influence"
SI_plots <- lapply(names(SI_data), function(name) {
  data <- SI_data[[name]]
  ggplot(data, aes(x = "", y = Frequency, fill = Response)) +
    geom_bar(stat = "identity") +
    coord_polar("y", start = 0) +
    labs(title = name,
         fill = "Response") +
    theme_void() +
    theme(legend.position = "bottom")
})

# Combine all pie charts into a single plot with a general title "Social Influence"
grid.arrange(grobs = SI_plots, ncol = 2, top = "Social Influence")

#------------------------------------------------------------------------------------------------

# Define data for Facilitating Conditions statements (FC2 to FCO1)
FC_data <- list(
  FC2 = data.frame(Response = c("Yes", "No", "Neutral"),
                   Frequency = c(sum(FC2 == "Yes"), sum(FC2 == "No"), sum(FC2 == "Neutral"))),
  
  FC3 = data.frame(Response = c("Yes", "No", "Neutral"),
                   Frequency = c(sum(FC3 == "Yes"), sum(FC3 == "No"), sum(FC3 == "Neutral"))),
  
  FCO1 = data.frame(Response = c("Yes", "No", "Neutral"),
                    Frequency = c(sum(FCO1 == "Yes"), sum(FCO1 == "No"), sum(FCO1 == "Neutral")))
)

# Create pie charts for Facilitating Conditions statements with a general title "Facilitating Conditions"
FC_plots <- lapply(names(FC_data), function(name) {
  data <- FC_data[[name]]
  ggplot(data, aes(x = "", y = Frequency, fill = Response)) +
    geom_bar(stat = "identity") +
    coord_polar("y", start = 0) +
    labs(title = name,
         fill = "Response") +
    theme_void() +
    theme(legend.position = "bottom")
})

# Combine all pie charts into a single plot with a general title "Facilitating Conditions"
grid.arrange(grobs = FC_plots, ncol = 2, top = "Facilitating Conditions")

#------------------------------------------------------------------------------------------------
# Define data for Self-Efficacy statements (SE1 to SE3)
SE_data <- list(
  SE1 = data.frame(Response = c("Yes", "No", "Maybe"),
                   Frequency = c(sum(SE1 == "Yes"), sum(SE1 == "No"), sum(SE1 == "Maybe"))),
  
  SE2 = data.frame(Response = c("Yes", "No", "Maybe"),
                   Frequency = c(sum(SE2 == "Yes"), sum(SE2 == "No"), sum(SE2 == "Maybe"))),
  
  SE3 = data.frame(Response = c("Yes", "No", "Maybe"),
                   Frequency = c(sum(SE3 == "Yes"), sum(SE3 == "No"), sum(SE3 == "Maybe")))
)

# Create pie charts for Self-Efficacy statements with a general title "Self-Efficacy"
SE_plots <- lapply(names(SE_data), function(name) {
  data <- SE_data[[name]]
  ggplot(data, aes(x = "", y = Frequency, fill = Response)) +
    geom_bar(stat = "identity") +
    coord_polar("y", start = 0) +
    labs(title = name,
         fill = "Response") +
    theme_void() +
    theme(legend.position = "bottom")
})

# Combine all pie charts into a single plot with a general title "Self-Efficacy"
grid.arrange(grobs = SE_plots, ncol = 2, top = "Self-Efficacy")

#------------------------------------------------------------------------------------------------
# Define data for Anxiety statements (AX1 to AX3)
AX_data <- list(
  AX1 = data.frame(Response = c("Yes", "No", "Neutral"),
                   Frequency = c(sum(AX1 == "Yes"), sum(AX1 == "No"), sum(AX1 == "Neutral"))),
  
  AX2 = data.frame(Response = c("Yes", "No", "Neutral"),
                   Frequency = c(sum(AX2 == "Yes"), sum(AX2 == "No"), sum(AX2 == "Neutral"))),
  
  AX3 = data.frame(Response = c("Yes", "No", "Neutral"),
                   Frequency = c(sum(AX3 == "Yes"), sum(AX3 == "No"), sum(AX3 == "Neutral")))
)

# Create pie charts for Anxiety statements with a general title "Anxiety"
AX_plots <- lapply(names(AX_data), function(name) {
  data <- AX_data[[name]]
  ggplot(data, aes(x = "", y = Frequency, fill = Response)) +
    geom_bar(stat = "identity") +
    coord_polar("y", start = 0) +
    labs(title = name,
         fill = "Response") +
    theme_void() +
    theme(legend.position = "bottom")
})

# Combine all pie charts into a single plot with a general title "Anxiety"
grid.arrange(grobs = AX_plots, ncol = 2, top = "Anxiety")

#------------------------------------------------------------------------------------------------
# Define data for Behavioral Intention statements (BI1 to BI3)
BI_data <- list(
  BI1 = data.frame(Response = c("Yes", "No", "Maybe"),
                   Frequency = c(sum(BI1 == "Yes"), sum(BI1 == "No"), sum(BI1 == "Maybe"))),
  
  BI2 = data.frame(Response = c("Yes", "No", "Maybe"),
                   Frequency = c(sum(BI2 == "Yes"), sum(BI2 == "No"), sum(BI2 == "Maybe"))),
  
  BI3 = data.frame(Response = c("Yes", "No", "Maybe"),
                   Frequency = c(sum(BI3 == "Yes"), sum(BI3 == "No"), sum(BI3 == "Maybe")))
)

# Create pie charts for Behavioral Intention statements with a general title "Behavioral Intention"
BI_plots <- lapply(names(BI_data), function(name) {
  data <- BI_data[[name]]
  ggplot(data, aes(x = "", y = Frequency, fill = Response)) +
    geom_bar(stat = "identity") +
    coord_polar("y", start = 0) +
    labs(title = name,
         fill = "Response") +
    theme_void() +
    theme(legend.position = "bottom")
})

# Combine all pie charts into a single plot with a general title "Behavioral Intention"
grid.arrange(grobs = BI_plots, ncol = 2, top = "Behavioral Intention")
