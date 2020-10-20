{{/* vim: set filetype=mustache: */}}
{{/*
Get discord bot token.
*/}}
{{- define "discord.bot.token" -}}
  {{- if .Values.discord.token -}}
    {{- printf "%s" .Values.discord.token -}}
  {{- else -}}
    {{ required "We need your discord bot token" .Values.discord.token }}
  {{- end -}}
{{- end -}}
