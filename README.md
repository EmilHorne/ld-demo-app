## Usage

Want to use GitHub Pages to publish your own copy of this? You've come to the right place!

### Duplicating the repository and creating a GitHub Page

1. Fork this repository
1. Clone the new repository to your local machine, cloud editor, or whatever
1. Run `npm install` in your local root directory of the project
    1. NOTE: Due to an [outstanding issue with Webpack and version 17+ of Node](https://stackoverflow.com/questions/69692842/error-message-error0308010cdigital-envelope-routinesunsupported), you must use Node version 16.X or below.
1. In your GitHub repository, go to Settings > Pages and create a GitHub Page. Copy the URL of your GitHub Page, for use in the next section.

### Modifying variables for your own usage

1. In `src/components/qrCode.js`, modify `QRURL` to be your github pages URL
1. In `package.json`, modify the "homepage" to point to your github pages URL
1. In `src/index.js`, modify `CLIENTKEY` to be your own LaunchDarkly client-side SDK key

### Creating LaunchDarkly flags

The project [**Interactive React Demo**](https://app.launchdarkly.com/gideon-ld-react-demo/) exists on the LD Production account with all the necessary flags. You can add a new environment for yourself.

If you want to create a new project with all the right flags, then you can either use the LaunchDarkly Terraform integration to set all the flags up in one go (see below), or do it manually using the list above.

#### Creating flags with Terraform

1. Ensure that you have:
   1. An empty LaunchDarkly project, ready for some funky fresh flags
   2. An API access token with `Writer` permissions. Go to the [Authorizations](https://app.launchdarkly.com/settings/authorization) page to create it.
   3. Terraform installed
1. See the `.tfvars.example` file in the Terraform directory? Rename it to `.tfvars`.
1. Then edit the `.tfvars` file, replacing the `access_token` and `project_key` values.
1. Run: `terraform plan -var-file=".tfvars"`
1. If that ran with no errors, then run: `terraform apply -var-file=".tfvars"`
1. Go enjoy your lovely new flags!

### Testing

1. To test that it's working locally, run `npm start` in the root directory of your project
1. On your LaunchDarkly dashboard, try turning the `qrcode` flag on and off

### Deploying

1. When you're ready, `npm run deploy` to deploy to a new `gh-pages` branch of your repository
1. On your GitHub repository, go to Settings > Pages and ensure you're using the `gh-pages` branch in the `root` directory



# ORIGINAL

# Getting Started with Create React App

This project was bootstrapped with [Create React App](https://github.com/facebook/create-react-app).

## Available Scripts

In the project directory, you can run:

### `npm start`

Runs the app in the development mode.\
Open [http://localhost:3000](http://localhost:3000) to view it in your browser.

The page will reload when you make changes.\
You may also see any lint errors in the console.

### `npm test`

Launches the test runner in the interactive watch mode.\
See the section about [running tests](https://facebook.github.io/create-react-app/docs/running-tests) for more information.

### `npm run build`

Builds the app for production to the `build` folder.\
It correctly bundles React in production mode and optimizes the build for the best performance.

The build is minified and the filenames include the hashes.\
Your app is ready to be deployed!

See the section about [deployment](https://facebook.github.io/create-react-app/docs/deployment) for more information.

### `npm run eject`

**Note: this is a one-way operation. Once you `eject`, you can't go back!**

If you aren't satisfied with the build tool and configuration choices, you can `eject` at any time. This command will remove the single build dependency from your project.

Instead, it will copy all the configuration files and the transitive dependencies (webpack, Babel, ESLint, etc) right into your project so you have full control over them. All of the commands except `eject` will still work, but they will point to the copied scripts so you can tweak them. At this point you're on your own.

You don't have to ever use `eject`. The curated feature set is suitable for small and middle deployments, and you shouldn't feel obligated to use this feature. However we understand that this tool wouldn't be useful if you couldn't customize it when you are ready for it.

## Learn More

You can learn more in the [Create React App documentation](https://facebook.github.io/create-react-app/docs/getting-started).

To learn React, check out the [React documentation](https://reactjs.org/).

### Code Splitting

This section has moved here: [https://facebook.github.io/create-react-app/docs/code-splitting](https://facebook.github.io/create-react-app/docs/code-splitting)

### Analyzing the Bundle Size

This section has moved here: [https://facebook.github.io/create-react-app/docs/analyzing-the-bundle-size](https://facebook.github.io/create-react-app/docs/analyzing-the-bundle-size)

### Making a Progressive Web App

This section has moved here: [https://facebook.github.io/create-react-app/docs/making-a-progressive-web-app](https://facebook.github.io/create-react-app/docs/making-a-progressive-web-app)

### Advanced Configuration

This section has moved here: [https://facebook.github.io/create-react-app/docs/advanced-configuration](https://facebook.github.io/create-react-app/docs/advanced-configuration)

### Deployment

This section has moved here: [https://facebook.github.io/create-react-app/docs/deployment](https://facebook.github.io/create-react-app/docs/deployment)

### `npm run build` fails to minify

This section has moved here: [https://facebook.github.io/create-react-app/docs/troubleshooting#npm-run-build-fails-to-minify](https://facebook.github.io/create-react-app/docs/troubleshooting#npm-run-build-fails-to-minify)
