#!/bin/bash

# Set package and email address
package=xclip
recipient="c0011865@hallam.shu.ac.uk"

# Appending to package_install_results.log so all install code is put into the log file
sudo apt install $package >> package_install_results.log

# Returning exit code, if equal to zero then package was installed successfully
if [ $? -eq 0 ] 

then

  echo "The installation of $package was successful."

else
# If package installation fails, it appends the failure code into package_install_failure.log. Email is sent upon the failure to 'System Admin'.
  echo "$package failed to install." >> package_install_failure.log
  echo "SUBJECT: FAILURE, the package failed to install." | sendmail $recipient

fi
