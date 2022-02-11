# TODO: Define steps using the tic DSL, see ?DSL
# get_stage("<stage name>") %>%
#   add_step(step_...(...))
get_stage("before_deploy") %>%

  add_step(step_setup_ssh()) %>%

  add_step(step_setup_push_deploy())


get_stage("deploy") %>%

  add_step(step_install_github("trendecon/trendecon")) %>%

  add_step(step_install_cran("prophet")) %>%

  add_step(step_install_cran("tibble")) %>%

  add_step(step_install_cran("httr")) %>%

  add_code_step(withr::with_package("httr", set_config(config(http_version = 0)))) %>%

  add_code_step(library(prophet)) %>%

  add_code_step(source("https://raw.githubusercontent.com/anneval/MA/main/Indicators.R")) %>%

  add_step(step_do_push_deploy())
