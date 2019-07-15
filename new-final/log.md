Add the following line in `create-image-upload-url.js`.

```javascript
const id = `${uuid()}.jpg`;
const key = `unprocessed/${id}`;
const publicUrl = `http://${bucket}.s3.amazonaws.com/processed/${id}`;

console.info(`Created image id: ${id}`); // ADD THIS LINE
```