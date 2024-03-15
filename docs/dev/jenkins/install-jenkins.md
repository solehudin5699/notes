Step by step install jenkins with docker

```bash title="Clone repository"
git clone https://github.com/solehudin5699/jenkins-setup.git
cd jenkins-setup
```

### Create bridge network

This is usefull if we use docker as cloud agent of jenkins.

```bash
docker network create jenkins
```

### Build image, create & run container jenkins

> Build and assign name image, example "solehudin5699/jenkins-blueocean:2.440.1-1"

```bash title="Build image"
docker build -t solehudin5699/jenkins-blueocean:2.440.1-1 .

# Or pull from my registry
docker pull solehudin5699/jenkins-blueocean:2.440.1-1
```

```bash title="Create & run container jenkins"
docker run \
  --name jenkins-blueocean \
  --restart=on-failure \
  --detach \
  --network jenkins \
  --env DOCKER_HOST=tcp://docker:2375 \
  --env DOCKER_CERT_PATH=/certs/client \
  --env DOCKER_TLS_VERIFY=1 \
  --publish 8080:8080 \
  --publish 50000:50000 \
  --volume jenkins-data:/var/jenkins_home \
  --volume jenkins-docker-certs:/certs/client:ro \
  solehudin5699/jenkins-blueocean:2.440.1-1
```

---

### Post-installation setup

1. Browse to http://127.0.0.1:8080/

   > <img src="/assets/images/unlock-jenkins.png"/>

In terminal:

```bash
# get password
docker exec jenkins-blueocean cat /var/jenkins_home/secrets/initialAdminPassword
```

Copy paste password to continue the setup wizard.

2. Install sugested plugins

> <img src="/assets/images/customize-jenkins.png"/>

3. Create admin user

   > <img src="/assets/images/create-admin.png"/>

4. Input jenkins url (e.g: http:127.0.0.1:8080/ or https://jenkins.yourdomain.com/). Save & restart configuration.
   > <img src="/assets/images/instance-config.png"/>
