#!/bin/sh

supabase login
supabase link --project-ref $PLUGIN_PROJECT_ID -p $PLUGIN_DB_PASSWD
supabase db push -p $PLUGIN_DB_PASSWD
