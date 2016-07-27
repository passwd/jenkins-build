# Jenkins Build Script

This script will allow you to run builds and monitor progress from the command line.

## Install

Create a config file in your local user folder:

    vim ~/.jenkins-config

Fill in the blanks and save

    JENKINS_SSL="" #Use SSL (true or false)
    JENKINS_PORT="" #Port Jenkins is running on
    JENKINS_HOSTNAME="" #Jenkins host name
    JENKINS_USERNAME="" #Jenkins user name
    JENKINS_APIKEY="" #Jenkins api key
    JENKINS_BUILDTOKEN="" #Jenkins build token (requires buildByToken plugin)
    JENKINS_BUILDPREFIX="" #Prefix all build names with this string

To finish the install just copy the script to your local bin.

    sudo bash ./install.sh

## Usage

    -v Verbose output, shows the jenkins console output
    -b Jenkins project ID

    $ jenkins -v -b myapp-production