# WAFv2-Logs

This project is based on compliance with the OWASP top 10. AWS WAF is used to protect your Cloud environment from DDOS attacks.
A DDOS attack is when threat actor (APT group) sends illegitimate request to your servers by flooding them with Bot traffic, making it impossibe for legit users to access your network. AWS WAF provides protection of the Open System Interphase (OSI) layer for HTTP/HTTPS protocol. WAF can protect to your Elastic Load Balancers (ELB's), Global Accelerator, Cloud Front (CDN) and your API Gateways. WAF logs can be sent to 3rd party analytical environments such as Splunk, Snowlake, Sumo Logic, Dynatrace, AWS S3. WAF logs can also be sent to AWS Cloud Watch Events for log aggregation. 

![image alt](https://github.com/DMayrant/WAFv2-Logs/blob/main/WAFv2_logs.jpeg?raw=true)
