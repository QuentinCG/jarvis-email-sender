#!/usr/bin/env bash

# Send Email
# $1 (string): To addresses (example: "[[\"receiver1@domain.com\", \"receiver 1\"], [\"receiver2@domain.com\", \"receiver 2\"]]")
# $2 (string): Subject
# $3 (string): Message
# $4 (string): Attachement files (example: "[\"/tmp/test.pdf\", \"/tmp/test2.avi\")
jv_pg_es_send_email()
{
  # Send request to SMTP server
  result=`python3 plugins/jarvis-email-sender/script/send_email.py --host "$var_jv_pg_es_host" --port $var_jv_pg_es_port --usingTls "$var_jv_pg_es_using_tls" --username "$var_jv_pg_es_username" --password "$var_jv_pg_es_password" --fromAddr "$var_jv_pg_es_from_address" --fromName "$var_jv_pg_es_from_name" --toAddressesAndNames "$1" --subject "$2" --message "$3" --attachements "$4"`

  # Show the result to user
  if [[ $result =~ "Send email: True" ]]; then
    say "$(jv_pg_es_lang send_email_success)"
  else
    say "$(jv_pg_es_lang send_email_failed)"
  fi
}
