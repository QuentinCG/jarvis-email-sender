#!/usr/bin/env bash

jv_pg_es_lang()
{
  case "$1" in
    send_email_success) echo "Mail envoyé.";;
    send_email_failed) echo "Echec de l'envoi du mail.";;

    *) jv_error "Erreur: Clef de traduction '$1' non reconnue. Merci de contacter le concepteur de ce plugin.";;
  esac
}
