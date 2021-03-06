# Eureka service
Component used to provide dependencies, default configuration and code for connection to Eureka service.

## Usage
* How to enable Eureka:
    ** add ro.rasel:eureka-client-component dependency
    ** include EurekaClientComponent class in SpringApplication.run() source classes
    ** include eureka profile in configuration file

## Example services using Eureka
* bookmark-service
* contact-service
* passport-service
* client-service
* client-service-light
* security-sso-ui

## How to get details about services
* get details about all applications
curl http://localhost:8761/eureka/apps -H "Accept:application/json"
* get details about a specific service:
curl http://localhost:8761/eureka/apps/bookmark-service -H "Accept:application/json"

This can be used to access details from a client service (e.g. angular/javascrip client) and then forward the request to where the service you are looking for is located.
