#!/usr/bin/env bash

# Send Email
# $1 (string): To addresses
# $2 (string): Subject
# $3 (string): Message
jv_pg_es_send_email()
{
  # Send request to SMTP server
  result="$(python plugins/jarvis-email-sender/script/send_email.py --host $var_jv_pg_es_host --port $var_jv_pg_es_port --using_tls $var_jv_pg_es_using_tls --username $var_jv_pg_es_username --password $var_jv_pg_es_password --fromAddr $var_jv_pg_es_from_address --fromName $var_jv_pg_es_from_name --toAddressesAndNames $1 --subject $2 --message $3)"

  # Show the result to user
  if [[ $result =~ "True" ]]; then
    say "$(jv_pg_es_lang send_email_success)"
  else
    say "$(jv_pg_es_lang send_email_failed)"
  fi
}
