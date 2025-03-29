# Authors: Sebastião Rosalino, Flávio Pinheiro, António Curado


# Load the necessary libraries and configurations
set.seed(18)
library(backbone)
sessionInfo()[["otherPkgs"]][["backbone"]][["Version"]]
  

# Entire term
agents_and_artifacts_entire_term = read.csv("../matrices_and_networks/entire_term/agents_and_artifacts_entire_term.csv", row.names = 1, header = TRUE)
agents_and_artifacts_entire_term = as.matrix(agents_and_artifacts_entire_term)

# Edgelist
edgelist_entire_term <- sdsm(agents_and_artifacts_entire_term, alpha = 0.01, narrative = TRUE, class = "edgelist")

write.csv(edgelist_entire_term, file = "../matrices_and_networks/entire_term/edgelist_entire_term.csv", row.names = FALSE)


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


# SECONDARY SUBJECTS -----------------------------------------------------------


# 1 - Budget of the Union
agents_and_artifacts_secondary_1 = read.csv("../matrices_and_networks/secondary_subjects/budget_of_the_union/agents_and_artifacts_secondary_1.csv", row.names=1, header=TRUE)
agents_and_artifacts_secondary_1 = as.matrix(agents_and_artifacts_secondary_1)

# Edgelist
edgelist_secondary_1 <- sdsm(agents_and_artifacts_secondary_1, alpha = 0.01, narrative = TRUE, class = "edgelist")

write.csv(edgelist_secondary_1, file = "../matrices_and_networks/secondary_subjects/budget_of_the_union/edgelist_secondary_1.csv", row.names = FALSE)


# ------------------------------------------------------------------------------


# 2 - Common foreign and security policy (CFSP)
agents_and_artifacts_secondary_2 = read.csv("../matrices_and_networks/secondary_subjects/common_foreign_and_security_policy/agents_and_artifacts_secondary_2.csv", row.names=1, header=TRUE)
agents_and_artifacts_secondary_2 = as.matrix(agents_and_artifacts_secondary_2)

# Edgelist
edgelist_secondary_2 <- sdsm(agents_and_artifacts_secondary_2, alpha = 0.01, narrative = TRUE, class = "edgelist")

write.csv(edgelist_secondary_2, file = "../matrices_and_networks/secondary_subjects/common_foreign_and_security_policy/edgelist_secondary_2.csv", row.names = FALSE)


# ------------------------------------------------------------------------------


# 3 - Environmental policy
agents_and_artifacts_secondary_3 = read.csv("../matrices_and_networks/secondary_subjects/environmental_policy/agents_and_artifacts_3.csv", row.names=1, header=TRUE)
agents_and_artifacts_secondary_3 = as.matrix(agents_and_artifacts_secondary_3)

# Edgelist
edgelist_secondary_3 <- sdsm(agents_and_artifacts_secondary_3, alpha = 0.01, narrative = TRUE, class = "edgelist")

write.csv(edgelist_secondary_3, file = "../matrices_and_networks/secondary_subjects/environmental_policy/edgelist_secondary_3.csv", row.names = FALSE)


# ------------------------------------------------------------------------------


# 4 - Social policy, social charter and protocol
agents_and_artifacts_secondary_4 = read.csv("../matrices_and_networks/secondary_subjects/social_policy_social_charter_and_protocol/agents_and_artifacts_4.csv", row.names=1, header=TRUE)
agents_and_artifacts_secondary_4 = as.matrix(agents_and_artifacts_secondary_4)

# Edgelist
edgelist_secondary_4 <- sdsm(agents_and_artifacts_secondary_4, alpha = 0.01, narrative = TRUE, class = "edgelist")

write.csv(edgelist_secondary_4, file = "../matrices_and_networks/secondary_subjects/social_policy_social_charter_and_protocol/edgelist_secondary_4.csv", row.names = FALSE)


# ------------------------------------------------------------------------------


# 5 - Agricultural policy and economies
agents_and_artifacts_secondary_5 = read.csv("../matrices_and_networks/secondary_subjects/agricultural_policy_and_economies/agents_and_artifacts_5.csv", row.names=1, header=TRUE)
agents_and_artifacts_secondary_5 = as.matrix(agents_and_artifacts_secondary_5)

# Edgelist
edgelist_secondary_5 <- sdsm(agents_and_artifacts_secondary_5, alpha = 0.01, narrative = TRUE, class = "edgelist")

write.csv(edgelist_secondary_5, file = "../matrices_and_networks/secondary_subjects/agricultural_policy_and_economies/edgelist_secondary_5.csv", row.names = FALSE)


# ------------------------------------------------------------------------------


# 6 - Relations with third countries
agents_and_artifacts_secondary_6 = read.csv("../matrices_and_networks/secondary_subjects/relations_with_third_countries/agents_and_artifacts_6.csv", row.names=1, header=TRUE)
agents_and_artifacts_secondary_6 = as.matrix(agents_and_artifacts_secondary_6)

# Edgelist
edgelist_secondary_6 <- sdsm(agents_and_artifacts_secondary_6, alpha = 0.01, narrative = TRUE, class = "edgelist")

write.csv(edgelist_secondary_6, file = "../matrices_and_networks/secondary_subjects/relations_with_third_countries/edgelist_secondary_6.csv", row.names = FALSE)


# ------------------------------------------------------------------------------


# 7 - Common commercial policy in general
agents_and_artifacts_secondary_7 = read.csv("../matrices_and_networks/secondary_subjects/common_commercial_policy_in_general/agents_and_artifacts_7.csv", row.names=1, header=TRUE)
agents_and_artifacts_secondary_7 = as.matrix(agents_and_artifacts_secondary_7)

# Edgelist
edgelist_secondary_7 <- sdsm(agents_and_artifacts_secondary_7, alpha = 0.01, narrative = TRUE, class = "edgelist")

write.csv(edgelist_secondary_7, file = "../matrices_and_networks/secondary_subjects/common_commercial_policy_in_general/edgelist_secondary_7.csv", row.names = FALSE)


# ------------------------------------------------------------------------------


# 8 - Information and communications in general
agents_and_artifacts_secondary_8 = read.csv("../matrices_and_networks/secondary_subjects/information_and_communications_in_general/agents_and_artifacts_8.csv", row.names=1, header=TRUE)
agents_and_artifacts_secondary_8 = as.matrix(agents_and_artifacts_secondary_8)

# Edgelist
edgelist_secondary_8 <- sdsm(agents_and_artifacts_secondary_8, alpha = 0.01, narrative = TRUE, class = "edgelist")

write.csv(edgelist_secondary_8, file = "../matrices_and_networks/secondary_subjects/information_and_communications_in_general/edgelist_secondary_8.csv", row.names = FALSE)


# ------------------------------------------------------------------------------
