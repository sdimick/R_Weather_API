library(gmailr)
library(yaml)

gm_auth_configure(path = "config.json")

test_email <-
  gm_mime() %>%
  gm_to("dimicks2010@gmail.com") %>%
  gm_from("seth.dimick@gmail.com") %>%
  gm_subject("gmailr test 2") %>%
  gm_text_body("Can you still hear me?")

# If all is good with your draft, then you can send it
gm_send_message(test_email)

