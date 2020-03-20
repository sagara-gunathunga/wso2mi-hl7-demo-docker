# wso2mi-hl7-demo-docker

## How to run 

### The hard way

```
docker run -it --rm -p 8280:8280  -p 9292:9292 -p 8290:8290 -p 20000:20000 -p 9393:9393 -p 9494:9494 -p 9595:9595 -e HL7_BE_URL=hl7://host.docker.internal:9988 -e HTTP_BE_URL=http://host.docker.internal:8080/patientmgt/  registry.ingress.staging.caas.com.prt.cloudcreator.co.nz/customer-three/wso2mi-hl7-demo-docker:latest
```

### The easy way
```
cd deployment

docker-compose up
```

### The K8s way
```
cd deployment
kubectl apply -f wso2mi-hl7-demo-docker-deployment.yaml
```

## How to test

[How to test the samples](https://github.com/sagara-gunathunga/hl7-wso2-integration-samples/blob/master/README.md#how-to-test)