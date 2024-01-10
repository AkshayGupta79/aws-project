AWS Continuous Integration Demo

Set up GitHub repository:
The first step in our journey is to set up a GitHub repository to store our python application’s source code. If you already have a repository, feel to skip this step. Otherwise, let's create a new repository on GitHub by following these steps:
•	Go to github.com and sign in to your account.
•	Click on the “+” button in the top-right corner and select “New repository”.
•	Give your repository a name and option based on your needs.
•	Choose the appropriate visibility option based on your needs.
•	Initialize the repository with a README.md file.
•	Click on the “create repository” button to create your new GitHub repository.
Great! Now that we have our repository set up, we can move on to the next step.

Create an AWS CodePipeline:
	In this step, we’ll create an AWS CodePipeline to automate the continuous integration process for our Python application. AWS CodePipeline will orchestrate the flow of changes from our GitHub repository to the deployment of our application. Let’s go ahead and set it up:
•	Go to the AWS management console and navigate the CodePipeline service.
•	Click on the “create pipeline” button.
•	Provide a name for your pipeline and click on the “Next button”.
•	For the source stage, select “GitHub” as the source provider.
•	Connect your GitHub account to AWS CodePipeline and select your repository.
•	In the build stage, select “AWS CodePipeline” as the build provider.
•	Create a new CodeBuild project by clicking on the “create project” button.
•	Configure the CodeBuild project with the necessary settings from your python application, such as the build environment, build commands, and artifacts.
•	Save the CodeBuild project and go back to CodePipeline.
•	Continuous configuration the pipelines stages, such as deploying your application using AWS Elastic Beanstalk or any other suitable deployment option.
•	Review the pipeline configuration and click on the “create pipeline” button to create your AWS CodePipeline.
Now, we have our pipeline ready to roll. Let’s on to the net step to set up AWS CodeBuild.

Create an AWS CodeBuild:
In this step, we’ll configure AWS CodeBuild to build our Python application based on the specifications we define. CodeBuild will take care of building and packaging our application for deployment. Follow these steps
•	In the AWS management console, navigate to the “CodeBuild” service.
•	Click on the “create build project” button.
•	Provide a name for your build project.
•	For the source provider, choose “AWS CodePipeline”. 
•	Select the pipeline you created in the previous step.
•	Configure the build environment, such as the operating system, runtime, and compute resources required for your Python application.
•	Specify the build commands, such as installing dependencies and running tests. Customize this based on your application’s requirements.
•	Review the build project setting and click on the “create build project” button to create your AWS CodeBuild project.
With AWS CodeBuild all set up, we’re now ready to witness the magic of continuous integration n action.

Trigger the CI process: 
This is final step, we’ll trigger the CI process by making a change to our GitHub repository. Let’s see how it works:
•	Go to your GitHub repository and make a change to your Python application’s source code. It could be a bug fix, a new feature, or any other change you want to introduce.
•	Commit and push you changes to the branch configured in your AWS CodePipeline.
•	Hand over to the AWS CodePipeline console and navigate to your pipeline.
•	You should see the pipeline automatically kick off as soon as it detects the changed in your repository.
•	Sit back and relax while AWS CodePipeline takes care of the rest. It will fetch the latest code, trigger the build process with AWS CodeBuild, and deploy the application if you configured the deployment stage.