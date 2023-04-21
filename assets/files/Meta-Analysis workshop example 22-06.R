# Meta analysis - An Introduction
# Accompanying R script for the workshop example----

#.----
# Step 1: Load metafor and the data----
# install and load packages
install.packages("metafor")
library(metafor)

# Load the data. Note: check file is in your working directory.
metadata <- read.csv("Meta_Sutton_Smith.csv", header = T)

#.----
# Step 2: Calculate effect sizes using escalc()----
# This function creates variables for "yi" which is the effect size, and "vi" which is the variance of yi.  These are added to the metadata object dataframe.
# Tell the function what effect size to calculate using measure="OR","RR","RD", etc.
# We can only choose a measure that matches our data - i.e. it has a binary outcome.

meta.es <-
  escalc(measure = "OR", g1.r1, g1.r0, g0.r1, g0.r0, data = metadata)

#.----
# Step 3: create a meta-analysis summary using rma()----

meta.re <- rma(yi, vi, data = meta.es) #REML estimation by default
# Use the method argument to change estimation to Der Simonian and Laird, etc.
# for example: meta.reDL <-rma(yi, vi, data = meta.es, method = "DL")
# Now convert summary estimate log(OR) to OR
meta.re.or <- exp(c(meta.re$b, meta.re$ci.lb, meta.re$ci.ub))

# For a fixed effects model, use method="FE"
meta.fe <- rma(yi, vi, data = meta.es, method = "FE")
# Now convert summary estimate log(OR) to OR
meta.fe.or <- exp(c(meta.fe$b, meta.fe$ci.lb, meta.fe$ci.ub))

# Create Forest Plots
# First plot is for Random-Effects model
forest(
  meta.re,
  header = TRUE,
  atransf = exp, #display OR on x-axis log scale
  at = log(c(0.01, 0.1, 1, 10,50)),
  xlim = c(-8, 8),
  xlab = "Random Effects Model",
  mlab = "Random Effects OR summary estimate",
  showweights = TRUE,
  pch = 15,
  border = "red",  #colour of summary diamond border
  col = "red",     #colour of summary diamond fill
  main = "The effect of cholesterol lowering interventions \n on mortality \n Sutton-Smith data"
)
op <- par(cex = 0.75, font = 2)
text(c(-2, 2), 36, c("Favours Treatment", "Favours Control"))
par(op)

# Second plot for Fixed-Effect model
forest(
  meta.fe,
  header = TRUE,
  atransf = exp, #display OR on x-axis log scale
  at = log(c(0.01, 0.1, 1, 10, 50)),
  xlim = c(-8, 8),
  xlab = "Fixed-Effect Model",
  mlab = "Fixed-Effect OR summary estimate",
  showweights = TRUE,
  pch = 15,
  border = "red",  #colour of summary diamond border
  col = "red",     #colour of summary diamond fill
  main = "The effect of cholesterol lowering interventions \n on mortality \n Sutton-Smith data"
)
op <- par(cex = 0.75, font = 2)
text(c(-2, 2), 36, c("Favours Treatment", "Favours Control"))
par(op)

#.----
# Step 4: Explore Heterogeneity ----
# Refer to the output from the rma() function for both models.
# No additional code required.

#.----
# Step 5: Publication Bias----

# Basic Funnel Plot

funnel(meta.re, main = "Random Effects Model")

# We can use trimfill(), ranktest(), regtest(), hc() as tests for bias
# Use the trimfill() function to see where "missing" studies might be

meta.tf <- trimfill(meta.re)
funnel(meta.tf, main = "Trim and Fill funnel plot \n for RE model")

# Other diagnostic plots like Radial (Galbraith) plot are available
# aslo labbe(), qqnorm(), baujat(), gosh()

# lets look at the Radial plots
radial(meta.re, main = "Random Effects model")
radial(meta.fe, main = "Fixed Effects model")

# lets look at some Q-Q plots
qqnorm(meta.re, main = "Random Effects Model")
qqnorm(meta.fe, main = "Fixed Effects Model")

# Can also produce influence statistics
infl <- influence(meta.re)
plot(infl, plotdfb = TRUE)

#.----
# Step 6: Sub-group analysis (not included for this example)----

#.----
# Final Step: report your meta-analysis----