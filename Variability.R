# Load the 'variability' library for genetic variability and trait analysis
library(variability)

# Read the dataset 'data.csv' into the variable 'Data'
Data <- read.csv("data.csv")  # Ensure the CSV file is in the working directory


# View the dataset in a tabular format
# - Opens the data in RStudio's viewer for inspection and verification
View(Data)

# Perform Analysis of Covariance (ANCOVA)
# - Analyzes variance in traits (Columns 3 to 12) with respect to Variety and Replication
ancova(Data[3:12], Data$Variety, Data$Replication)

# Calculate genetic variance
# - Estimates genetic variance for traits (Columns 3 to 12) grouped by Variety and Replication
gen.var(Data[3:12], Data$Variety, Data$Replication)

# Compute genotypic correlation
# - Generates a genotypic correlation matrix for traits (Columns 3 to 12)
geno.corr(Data[3:12], Data$Variety, Data$Replication)

# Compute phenotypic correlation
# - Generates a phenotypic correlation matrix for independent traits (Columns 3 to 11)
pheno.corr(Data[3:11], Data$Variety, Data$Replication)

# Perform genotypic path analysis
# - Dependent variable: Column 12 (e.g., yield or other primary trait)
# - Independent variables: Columns 3 to 11 (e.g., contributing traits)
# - Grouped by Variety (genotype) and Replication
geno.path(Data[12], Data[3:11], Data$Variety, Data$Replication)

# Perform phenotypic path analysis
# - Similar to genotypic path analysis but focuses on phenotypic relationships
pheno.path(Data[12], Data[3:11], Data$Variety, Data$Replication)
