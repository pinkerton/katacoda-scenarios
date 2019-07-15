The first thing we'll do is set up the Serverless Framework in our environment, following the steps from [their docs](https://serverless.com/framework/docs/providers/aws/guide/installation/).

1. Download and install node.js from [NodeSource](https://nodejs.org/en/download/package-manager/#debian-and-ubuntu-based-linux-distributions-enterprise-linux-fedora-and-snap-packages).
    1. `curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash -`
    2. `sudo apt-get install -y nodejs`
    3. Confirm node installed correctly with `node -v`
2. Install the Serverless framework with NPM: `npm install -g serverless`

You should now be able to `serverless -v` successfully.
