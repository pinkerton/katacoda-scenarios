Now that the serverless framework is set up, let's write our handler code that will be called when our Lambda is invoked.

First use your editor to create a `package.json` file and fill it with this to specify our NPM dependencies:

```json
{
    "name": "dash-serverless-workshop",
    "version": "1.0.0",
    "description": "Demo Image Processing Pipeline in Lambda",
    "main": "index.js",
    "license": "MIT",
    "devDependencies": {
        "@types/aws-sdk": "true2.7.0"
    },
    "dependencies": {
        "aws-xray-sdk": "true2.3.3",
        "axios": "true0.19.0",
        "uuid": "true3.3.2"
    }
}
```

Then create another file called `create-image-upload-url.js` and enter our Lambda handler code:

```js
const AWS = require("aws-sdk");
const uuid = require("uuid/v4");

const axios = require("axios");

module.exports.handler = async (event, context, callback) => {
    const s3 = new AWS.S3();
    const bucket = process.env.BUCKET_NAME;

    const id = `${uuid()}.jpg`;
    const key = `unprocessed/${id}`;
    const publicUrl = `http://${bucket}.s3.amazonaws.com/processed/${id}`;

    const signedUrlExpireSeconds = 60 * 3;

    const options = {
        Bucket: bucket,
        Key: key,
        Expires: signedUrlExpireSeconds,
        ContentType: "image/jpeg"
    };

    const url = s3.getSignedUrl("putObject", options);

    response = await axios.get(`https://tinyurl.com/api-create.php?url=${publicUrl}`);

    return {
        statusCode: 202,
        body: JSON.stringify({
            uploadUrl: url,
            publicUrl: response.data
        })
    };
};
```

You'll notice that we're connecting to an S3 bucket that we haven't created yet using an environment variable that we haven't set yet. We'll do both of these with the `serverless.yml` in the next step.
