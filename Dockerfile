#
# WSO2 Governance Registry 4.6.0
#
FROM java:7
MAINTAINER Massimo Danieli, massimo@massimodanieli.com

RUN wget -P /opt --user-agent="testuser" --referer="http://connect.wso2.com/wso2/getform/reg/new_product_download" http://product-dist.wso2.com/products/governance-registry/5.0.0/wso2greg-5.0.0.zip && \
apt-get update && \
    apt-get install -y zip && \
    apt-get clean && \
    unzip /opt/wso2greg-5.0.0.zip -d /opt && \
    rm /opt//wso2greg-5.0.0.zip

ENV JAVA_HOME /usr/lib/jvm/java-7-openjdk-amd64
EXPOSE 9443 
CMD ["/opt//wso2greg-5.0.0/bin/wso2server.sh"]
