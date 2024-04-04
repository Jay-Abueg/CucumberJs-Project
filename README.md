# CucumberJs-Project

this is a demo test for a simple login scenarios
- Test Case 1: Test successful login.
- Test Case 2: Test login with incorrect credentials.
- Test Case 3: Test login with empty username and password fields.
- Test Case 4: Test login with empty password field.

To execute the feature file just run below command on the terminal
"**npm run test**"

Make sure to do the npm install after cloning this project

**Cause of flaky test**
  - **Unstable environment**: Lets face it ot all environments are created equal a DEV environment , Test environment and/or UAT environment may differ in specs and network speeds may cause some slowness on each environment
  - **Insufficient assertions**: When there is a low coverage on test if can result for false positives or negatives.

**To minimize and fix the issue of a flaky test I suggest the below steps**
  - **Running tests in different environments**:
      If a test passes in one environment but fails in another with different settings, configurations, or resources, it may suggest an unstable environment issue.
  - **Analyzing test results and logs**:
      If a test produces inconsistent results or logs across different runs, it may imply undetermined behavior or an insufficient assertion issues.
