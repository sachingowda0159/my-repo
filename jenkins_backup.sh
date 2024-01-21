#!/bin/bash

#Get the current date and time
date = $(date +%D/%T)

#Create backup folder
backup_file = $("backupfile/path/file")

#Take backup from jenkins
zip -r $backup_file $JENKINS_HOME/config.xml $JENKINS_HOME/plugins
