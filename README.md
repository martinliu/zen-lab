# zen-lab


Changed password for user apm_system
PASSWORD apm_system = yRW86oMumJGh6tRpjSnv

Changed password for user kibana_system
PASSWORD kibana_system = 91WnuOAG3iTUaY2kZHzH

Changed password for user kibana
PASSWORD kibana = 91WnuOAG3iTUaY2kZHzH

Changed password for user logstash_system
PASSWORD logstash_system = Su3fETmXYQ1iR083szoY

Changed password for user beats_system
PASSWORD beats_system = OMVwv0zCUtKPP9yf2KdT

Changed password for user remote_monitoring_user
PASSWORD remote_monitoring_user = LrHYNpUwz0ikLosmzTHK

Changed password for user elastic
PASSWORD elastic = wEzwO9ozs4PhQMHJZa4l


filebeat setup -e   --index-management   --dashboards \
  -E output.elasticsearch.hosts=['localhost:9200']   \
  -E output.elasticsearch.username=elastic   \
  -E output.elasticsearch.password=devops1234   \
  -E setup.kibana.host=localhost


sudo auditbeat setup -e \
  -E output.logstash.enabled=false \
  -E output.elasticsearch.hosts=['localhost:9200'] \
  -E output.elasticsearch.username=elastic \
  -E output.elasticsearch.password=devops1234\
  -E setup.kibana.host=http://localhost:5601