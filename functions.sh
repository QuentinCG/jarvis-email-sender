#!/usr/bin/env bash

# Send Email
# $1 (string): To addresses (example: "[[\"receiver1@domain.com\", \"receiver 1\"], [\"receiver2@domain.com\", \"receiver 2\"]]")
# $2 (string): Subject
# $3 (string): Message
# $4 (string): Attachement files (example: "[\"/tmp/test.pdf\", \"/tmp/test2.avi\")
# $5 (bool, optional): Silent ("True" for no Jarvis response, "False" or no value for Jarvis response)
#
# return (int): 0 if success, 1 if failed
jv_pg_es_send_email()
{
  # Send request to SMTP server
  local dir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
  local result=`python3 $dir/script/send_email.py --host "$var_jv_pg_es_host" --port $var_jv_pg_es_port --usingTls "$var_jv_pg_es_using_tls" --username "$var_jv_pg_es_username" --password "$var_jv_pg_es_password" --fromAddr "$var_jv_pg_es_from_address" --fromName "$var_jv_pg_es_from_name" --toAddressesAndNames "$1" --subject "$2" --message "$3" --attachements "$4"`

  # Show the result to user (if requested)
  if [[ $result =~ "Send email: True" ]]; then
    if [[ ! $5 =~ "True" ]]; then
      say "$(jv_pg_es_lang send_email_success)"
    fi
    return 0
  else
    if [[ ! $5 =~ "True" ]]; then
      say "$(jv_pg_es_lang send_email_failed)"
    fi
  fi

  return 1
}
