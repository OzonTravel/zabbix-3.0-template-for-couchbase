# zabbix 3.0 template for couchbase

This template is one of the easiest ways to organize couchbase monitoring in zabbix 3.0. After installation, the main items will be added to the current cluster node. Also, some items will be added for each existing bucket using autodiscovery rule.
<br>

# Installation

1) We need to place get_bucket.sh and get_stats.sh scripts to /opt/couchbase/ 

>chown zabbix get_bucket.sh get_stats.sh

>chgrp zabbix get_bucket.sh get_stats.sh

>chmod +x get_bucket.sh get_stats.sh

2) And couchbase.conf we place to /etc/zabbix/zabbix_agentd.d/ or place contents of the file in the zabbix agent configuration file.

3) For JSON processing we will use jq:

>yum install jq

4) Import zbx_export_templates.xml in zabbix template window.

Enjoy it.
