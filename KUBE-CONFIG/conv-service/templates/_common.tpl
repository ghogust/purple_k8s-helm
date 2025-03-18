{{- define "service.template" }}
- name: {{ .env }}
  valueFrom:
    secretRef:
        name: {{ .name }}-secret
        key: {{ .env }}
{{- end }}
{{- define "rmq.template" }}
- name: RABBITMQ_DEFAULT_USER
  valueFrom:
    secretKeyRef:
        key: {{ .env }}
        name: {{ .name }}-secret
{{- end }}
