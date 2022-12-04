#!/bin/bash

package=xclip
recipient="c0011865@hallam.shu.ac.uk"

sudo apt install $package >> package_install_results.log

if [ $? -eq 0 ]

then

  echo "The installation of $package was successful."

else

  echo "$package failed to install." >> package_install_failure.log
  echo "SUBJECT: FAILURE, the package failed to install." | sendmail $recipient

fi
