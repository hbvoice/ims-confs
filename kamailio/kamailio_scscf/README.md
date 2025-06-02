To add a new S-CSCF node, do the following steps:

1. Clone the directory using Git Pull command: `git pull http://10.161.224.196:80/software-telco/scscf.git`

2. Run the container using the command: `docker run -d --restart unless-stopped --network host -v /root/volumes/scscf/:/etc/kamailio --name scscf -e IP=10.161.224.90 -e INT_IP=10.161.224.90 10.161.224.196:5000/kamailio-ngvoice` 

