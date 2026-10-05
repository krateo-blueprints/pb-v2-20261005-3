{{/*
page.tierNamespace — resolve a widget tier to a namespace.
Call: {{ include "page.tierNamespace" (dict "ctx" . "tier" "common") }}
Returns .Values.tiers.<tier> if non-empty, else .Release.Namespace.
*/}}
{{- define "page.tierNamespace" -}}
{{- $ns := index (default (dict) .ctx.Values.tiers) .tier -}}
{{- if $ns -}}{{ $ns }}{{- else -}}{{ .ctx.Release.Namespace }}{{- end -}}
{{- end -}}
