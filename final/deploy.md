Deploy with the following command.

```bash
sls deploy --stage <stage-name>
```

NOTE: Because we are deploying to a shared environment, please update `<stage-name>` to something unique, e.g., your full name, say `john-smith` to avoid collisions.

Now, it's time to test our new function

```bash
./upload.sh "<stage-name>" datadoge.jpg
```

Give s3 a few seconds to process, and then open up the url printed out by the upload script.