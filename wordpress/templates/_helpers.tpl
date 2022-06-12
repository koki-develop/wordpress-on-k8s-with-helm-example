{{- define "wordpress.labels" }}
app: wordpress
{{- end }}

{{- define "wordpress.frontend.labels" }}
{{- include "wordpress.labels" . }}
tier: frontend
{{- end }}

{{- define "wordpress.mysql.labels" }}
{{- include "wordpress.labels" . }}
tier: mysql
{{- end }}
