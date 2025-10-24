# WAF

This project is based on using AWS WAF to help insure compliance with the OWASP top 10. AWS WAF is used to protect your Cloud environment from DDOS attacks.
A DDOS attack is when threat actor (APT group) sends illegitimate request to your servers by flooding them with Bot traffic, making it impossibe for legit users to access your network. AWS WAF provides protection of the Open System Interphase (OSI) application layer 7 for HTTP/HTTPS protocol. WAF can protect to your Elastic Load Balancers (ELB's), Global Accelerator, Cloud Front (CDN) and your API Gateways. WAF logs can be sent to 3rd party analytical environments such as Splunk, Snowlake, Sumo Logic, Dynatrace, AWS S3. WAF logs can also be sent to AWS Cloud Watch Events for log aggregation and analysis.

OWASP Top 10
1. Insufficient logging and monitoring
2. Security group misconfiguration
3. Broken access control
4. broken authentication
5. SQL injection
6. insecure deserialization
7. Sensitive Data exposure
8. Using components with known vulnerabilities
9. Cross site scripting
10. XML external entities

An AWS Auto Scaling group will help your servers scale due to changes on ingress traffic following in your cloud environment. 

AWS DynamoDB Accelerator (DAX) node cluster and was configured in the backend private subnet of the US-east-1 region to avoid downtime and prevent regional outages. Similar to the US-east-1 region outage on 10/22/2025 where the DNS record in Route 53 was emptied causing a cascade failure effecting the backend databases causing downtime. 


![image alt](https://github.com/DMayrant/WAFv2-Logs/blob/main/WAFv2_logs.jpeg?raw=true)
