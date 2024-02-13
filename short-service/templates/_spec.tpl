{{- define "deployment-spec.template" }}
apiVersion: apps/v1
kind: Deployment
metadata:
  name: {{ .deployment }}
spec:
  replicas: {{ .replicas }}
  selector:
    matchLabels:
      app: {{ .name }}  # This should match the labels in the Pod template
  template:
    metadata:
      labels:
        app: {{ .name }}  # Labels used for Pod selection
    spec:
      containers:
        - name: {{ .containerName }}
          image: {{ .image }}:{{ .version }}
          ports:
            - containerPort: {{ .port }}
          resources:
            limits: {{ .limits | toYaml | nindent 14 }}
{{- end -}}