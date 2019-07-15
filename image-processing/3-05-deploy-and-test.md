Let's deploy our functions again.

```
sls deploy --stage="your-stage-name" --api-key=""
```

Now, it's time to test our new function

```bash
./upload.sh "your-stage-name" datadoge.jpg
```

Give s3 a few seconds to process, and then open up the url printed out by the upload script.
