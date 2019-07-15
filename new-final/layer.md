Add the following Datadog Lambda layer to our Lambda function.


```yaml
functions:
  create-image-upload-url:
    layers:
      - arn:aws:lambda:us-east-1:464622532012:layer:Datadog-Node10-x:2
```

Set the following environment variables:

# DD_KMS_API_KEY
# DD_FLUSH_TO_LOG

```yaml
    environment:
        DD_KMS_API_KEY: AQICAHhVJsuxt0lgupy14saydoOwaUFR42sBl/Vc7SaPx4HaHAENRpN9DgcHnzcBtSoPGeY4AAAAfjB8BgkqhkiG9w0BBwagbzBtAgEAMGgGCSqGSIb3DQEHATAeBglghkgBZQMEAS4wEQQMGNpbM3jhuUorwP25AgEQgDvOIV0UwpjKHQyfIiDxQ6/cT6xd6kiyM564aa58FWDu4WOY/qVmttRBLBKNROCUGe+FVyt+rq3MXo0fhw==
        DD_FLUSH_TO_LOG: True
```

[Learn more](https://docs.datadoghq.com/integrations/amazon_lambda/?tab=node#installing-and-using-the-datadog-layer)