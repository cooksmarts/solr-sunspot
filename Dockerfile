FROM solr:7.7-alpine

USER root

COPY schema.xml /opt/solr/server/solr/configsets/_default/conf/schema.xml
COPY solrconfig.xml /opt/solr/server/solr/configsets/_default/conf/solrconfig.xml

RUN chown solr:solr /opt/solr/server/solr/configsets/_default/conf/*.xml
RUN chmod 0644 /opt/solr/server/solr/configsets/_default/conf/*.xml

USER solr

# Create single core
# ENTRYPOINT ["docker-entrypoint.sh", "precreate-core", "development"

# Create multiple cores
ENTRYPOINT ["bash", "-c", "precreate-core development; precreate-core test; exec solr -f"]
