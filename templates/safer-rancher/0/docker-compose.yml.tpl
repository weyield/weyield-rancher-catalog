version: '0'
services:
  safer:
    environment:
      - BACKUP_ROOT=${BACKUP_ROOT}
      - RANCHER_URL=${RANCHER_URL}
      - RANCHER_ACCESS_KEY=${RANCHER_ACCESS_KEY}
      - RANCHER_SECRET_KEY=${RANCHER_SECRET_KEY}
    labels:
      io.rancher.container.create_agent: true
      io.rancher.container.agent.role: environment
      io.rancher.container.pull_image: always
    tty: true
    image: weyield/safer-rancher
    stdin_open: false
    volumes:
      - /var/run/docker.sock:/var/run/docker.sock
      - ${BACKUP_ROOT}:/root/backup

