Let's add a custom metric in our lambda function.


```javascript
import { datadog } from "datadog-lambda-js";
import { sendDistributionMetric } from "datadog-lambda-js";

sendDistributionMetric(
  "create_image_upload_url.request", // Metric name
  1,                                 // Metric value
  "bucket:" + bucket,                // Metric tag
);
```	