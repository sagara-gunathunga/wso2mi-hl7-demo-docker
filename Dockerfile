
# --gitlab copy --
FROM wso2/micro-integrator:1.1.0
COPY src/main/synapse-config/ /home/wso2carbon/wso2mi-1.1.0/repository/deployment/server/synapse-configs/default/
COPY build/conf/* /home/wso2carbon/wso2mi-1.1.0/conf/
COPY build/lib/*.jar /home/wso2carbon/wso2mi-1.1.0/lib/
ENV HL7_BE_URL=hl7://host.docker.internal:9989
ENV HTTP_BE_URL=http://host.docker.internal:8080/patientmgt/

#  -- local copy -- 
# FROM wso2/micro-integrator:latest
# COPY src/main/synapse-config/ /home/wso2carbon/wso2mi/repository/deployment/server/synapse-configs/default/
# COPY build/conf/* /home/wso2carbon/wso2mi/conf/
# COPY build/lib/*.jar /home/wso2carbon/wso2mi/lib/
# ENV HL7_BE_URL=hl7://host.docker.internal:9989
