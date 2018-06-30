```bash
docker run -d -p 8073:7001 --name dubbo-admin -e dubbo.registry.address=zookeeper://123.207.119.211:2181 -e dubbo.admin.root.password=root logr/dubbo-admin java -jar dubbo-admin.jar
```