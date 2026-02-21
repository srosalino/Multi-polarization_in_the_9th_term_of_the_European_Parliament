# Authors: Sebastião Rosalino, Flávio Pinheiro, António Curado


# Load the necessary libraries and configurations
set.seed(18)
library(backbone)
sessionInfo()[["otherPkgs"]][["backbone"]][["Version"]]
  

# All subjects
agents_and_artifacts_all_subjects = read.csv("../matrices_and_networks/all_subjects/agents_and_artifacts_all_subjects.csv", row.names = 1, header = TRUE)
agents_and_artifacts_all_subjects = as.matrix(agents_and_artifacts_all_subjects)

# Edgelist
agents_and_artifacts_all_subjects <- sdsm(agents_and_artifacts_all_subjects, alpha = 0.01, narrative = TRUE, class = "edgelist")

write.csv(agents_and_artifacts_all_subjects, file = "../matrices_and_networks/all_subjects/edgelist_all_subjects.csv", row.names = FALSE)


# PRIMARY SUBJECTS -------------------------------------------------------------


# 1 - European citizenship
agents_and_artifacts_1 = read.csv("../matrices_and_networks/primary_subjects/1_european_citizenship/agents_and_artifacts_1.csv", row.names = 1, header = TRUE)
agents_and_artifacts_1 = as.matrix(agents_and_artifacts_1)

# Edgelist 
edgelist_1 <- sdsm(agents_and_artifacts_1, alpha = 0.01, narrative = TRUE, class = "edgelist")

write.csv(edgelist_1, file = "../matrices_and_networks/primary_subjects/1_european_citizenship/edgelist_1.csv", row.names = FALSE)


# ------------------------------------------------------------------------------


# 2 - Internal market, single market
agents_and_artifacts_2 = read.csv("../matrices_and_networks/primary_subjects/2_internal_market_single_market/agents_and_artifacts_2.csv", row.names = 1, header = TRUE)
agents_and_artifacts_2 = as.matrix(agents_and_artifacts_2)

# Edgelist 
edgelist_2 <- sdsm(agents_and_artifacts_2, alpha = 0.01, narrative = TRUE, class = "edgelist")

write.csv(edgelist_2, file = "../matrices_and_networks/primary_subjects/2_internal_market_single_market/edgelist_2.csv", row.names = FALSE)


# ------------------------------------------------------------------------------


# 3 - Community policies
agents_and_artifacts_3 = read.csv("../matrices_and_networks/primary_subjects/3_community_policies/agents_and_artifacts_3.csv", row.names = 1, header = TRUE)
agents_and_artifacts_3 = as.matrix(agents_and_artifacts_3)

# Edgelist 
edgelist_3 <- sdsm(agents_and_artifacts_3, alpha = 0.01, narrative = TRUE, class = "edgelist")

write.csv(edgelist_3, file = "../matrices_and_networks/primary_subjects/3_community_policies/edgelist_3.csv", row.names = FALSE)


# ------------------------------------------------------------------------------


# 4 - Economic, social and territorial cohesion
agents_and_artifacts_4 = read.csv("../matrices_and_networks/primary_subjects/4_economic_social_and_territorial_cohesion/agents_and_artifacts_4.csv", row.names = 1, header = TRUE)
agents_and_artifacts_4 = as.matrix(agents_and_artifacts_4)

# Edgelist 
edgelist_4 <- sdsm(agents_and_artifacts_4, alpha = 0.01, narrative = TRUE, class = "edgelist")

write.csv(edgelist_4, file = "../matrices_and_networks/primary_subjects/4_economic_social_and_territorial_cohesion/edgelist_4.csv", row.names = FALSE)


# ------------------------------------------------------------------------------

  
# 5 - Economic and monetary system
agents_and_artifacts_5 = read.csv("../matrices_and_networks/primary_subjects/5_economic_and_monetary_system/agents_and_artifacts_5.csv", row.names = 1, header = TRUE)
agents_and_artifacts_5 = as.matrix(agents_and_artifacts_5)

# Edgelist 
edgelist_5 <- sdsm(agents_and_artifacts_5, alpha = 0.01, narrative = TRUE, class = "edgelist")

write.csv(edgelist_5, file = "../matrices_and_networks/primary_subjects/5_economic_and_monetary_system/edgelist_5.csv", row.names = FALSE)


# ------------------------------------------------------------------------------


# 6 - External relations of the Union
agents_and_artifacts_6 = read.csv("../matrices_and_networks/primary_subjects/6_external_relations_of_the_union/agents_and_artifacts_6.csv", row.names = 1, header = TRUE)
agents_and_artifacts_6 = as.matrix(agents_and_artifacts_6)

# Edgelist 
edgelist_6 <- sdsm(agents_and_artifacts_6, alpha = 0.01, narrative = TRUE, class = "edgelist")

write.csv(edgelist_6, file = "../matrices_and_networks/primary_subjects/6_external_relations_of_the_union/edgelist_6.csv", row.names = FALSE)


# ------------------------------------------------------------------------------
  

# 7 - Area of freedom, security and justice
agents_and_artifacts_7 = read.csv("../matrices_and_networks/primary_subjects/7_area_of_freedom_security_and_justice/agents_and_artifacts_7.csv", row.names=1, header=TRUE)
agents_and_artifacts_7 = as.matrix(agents_and_artifacts_7)

# Edgelist
edgelist_7 <- sdsm(agents_and_artifacts_7, alpha = 0.01, narrative = TRUE, class = "edgelist")

write.csv(edgelist_7, file = "../matrices_and_networks/primary_subjects/7_area_of_freedom_security_and_justice/edgelist_7.csv", row.names = FALSE)


# ------------------------------------------------------------------------------


# 8 - State and evolution of the Union
agents_and_artifacts_8 = read.csv("../matrices_and_networks/primary_subjects/8_state_and_evolution_of_the_union/agents_and_artifacts_8.csv", row.names=1, header=TRUE)
agents_and_artifacts_8 = as.matrix(agents_and_artifacts_8)

# Edgelist
edgelist_8 <- sdsm(agents_and_artifacts_8, alpha = 0.01, narrative = TRUE, class = "edgelist")

write.csv(edgelist_8, file = "../matrices_and_networks/primary_subjects/8_state_and_evolution_of_the_union/edgelist_8.csv", row.names = FALSE)
