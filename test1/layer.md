Add the following Datadog Lambda layer to our Lambda function.

```
arn:aws:lambda:us-east-1:464622532012:layer:Datadog-Node10-x:2
```

Set the following environment variables:

# DD_KMS_API_KEY
# DD_FLUSH_TO_LOG	

[Learn more](https://docs.datadoghq.com/integrations/amazon_lambda/?tab=node#installing-and-using-the-datadog-layer)