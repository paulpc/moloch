# Welcome to WISE
For proper instructions, check out the wiki:
- general instructions: https://github.com/aol/moloch/wiki/WISE
- tagger format: how to use the intel: https://github.com/aol/moloch/wiki/TaggerFormat

# Docker
The microservice nature of Wise makes it a very good match for a container (in a container orchestration platform)

The test Docker container currently resides at: https://cloud.docker.com/u/p4ulpc/repository/docker/p4ulpc/moloch-wise

The contailer will use a volume mounted under /data/enrichment to read the intel from files as well as its settings (no need to redeploy every time you want to change config files). Check out the ./enrichmentSample for a sample config file along with a sample JSON intel file.

To try out the container run:

```bash
docker pull p4ulpc/moloch-wise:latest
docker run -v [current_folder]/enrichmentSample:/data/enrichment p4ulpc/moloch-wise:latest
```

If you decide to go the Kubernetes (in AKS) route, try out a basic sample script under kubernetesSample:
- AKS\wise-lb.yaml will create a service with an azure internal load balancer (if you're using AKS)
- AKS\wise.yaml will create a deployment with two replicas. It uses a storage account in azure to mount as the /data/enrichment to maintain the persistence.