library(gmailr)
library(yaml)

use_secret_file("config.json")
from.email <- yaml.load_file("config.yaml")$email$from
to1 <- yaml.load_file("config.yaml")$email$seths_phone
test_email <- mime(
  To = to1,
  From = from.email,
  #Subject = "Subject",
  body = "Can you hear me now?")
send_message(test_email)
