#!/bin/bash

git reset --hard

git -C "/opt/pentaho/client-tools/RepositorioPentaho/AtualizaCosmos/" pull

chmod -R 777 /opt/pentaho/client-tools/RepositorioPentaho/AtualizaCosmos/

/opt/pentaho/client-tools/data-integration/kitchen.sh -rep:PentahoGit -job:00_AtualizaCosmos -dir:/AtualizaCosmos -level:Basic >> /opt/pentaho/client-tools/logs/LogsAtualizaCosmos`date +%Y%m%d_%H%M%S`.txt

mv /opt/pentaho/client-tools/logs/Logs*.txt /media/pentaho/logs/
