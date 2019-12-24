# Envsubst Action 

This action allows you to substitute environment variables in a file.

## Usage

template.json
```json
{
  "version": "${VERSION}",
  "instance": "${INSTANCE}"
}
```

.github/workflows/pipeline.yaml
```yaml
- uses: danielr1996/envsubst-action@1.0.0
  with:
    input: template.json
    output: deployment.json
    env:
      VERSION: 1.2.3
      INSTANCE: staging
```


deployment.json
```json
{
  "version": "1.2.3",
  "instance": "staging"
}
```