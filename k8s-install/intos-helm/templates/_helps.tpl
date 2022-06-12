{{- define "imagePullSecret" }}
{{- printf "{\"auths\": {\"%s\": {\"auth\": \"%s\"}}}" .Values.imageRegistry (printf "%s:%s" .Values.imageUsername .Values.imagePass | b64enc) | b64enc }}
{{- end }}

