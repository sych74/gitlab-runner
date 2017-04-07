FROM jelastic/docker-ce
RUN curl -s https://packages.gitlab.com/install/repositories/runner/gitlab-ci-multi-runner/script.rpm.sh | sudo bash
RUN yum install gitlab-ci-multi-runner-1.8.8-1.x86_64 -y
RUN usermod -aG docker gitlab-runner
