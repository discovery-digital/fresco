#!/bin/bash

rm -rf $HOME/.gradle/caches
rm -rf .gradle
./gradlew clean allclean build -P repositoryUrl=https://nexus-prod-mercury.dnitv.net/repository/maven-snapshots repositoryUsername=$GITHUB_USERNAME repositoryPassword=$GITHUB_ACCESS_TOKEN uploadArchives
