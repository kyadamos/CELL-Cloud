# CELL : Cloud Computing
ka7462

## Overview

This course is a walkthrough for the purposes of learning the fundamentals of configuring & designing cloud computing solutions.

This course is split up into 4 iterations:

| Iteration |  Title   |
| --------- | -------- |
|     0     | setup    |
|     1     | building on basics   |
|     2     | getting started |
|     3     | going further  |

## iteration 0: setting up

This section defines cloud computing through:
 - its function
 - its technological composition

### function

Cloud computing is the availability of computing resources without requiring the user to directly manage these resources. It achieves this by sharing resources across a distributed network of data centers, championing characteristics such as high and highly dynamic scalability, robust functionality & performance, and simple rand rapid deployment and operations. Some commonly sought-out cloud services include computing services, storage services, or networking services.

Many cloud providers follow a _utility-based computing model_, i.e. customers only pay for the portion of the cloud services that they use. This makes cloud computing attractive to small- and medium-sized businesses because they no longer need to develop, hire, and maintain a fully staffed team to manage their data. The utility-based computing model not only reduces the capital investment required of these smaller businesses in order to operate, but this model also allows all customers in general to scale up or down their costs/performance capabilities (computing, storage, etc.) as needed.

### composition

Clouds are essentially composed of high-performance data centers

```mermaid
flowchart TD
    A[Front-End Servers] --- B[Load Balancer]
    B[Load Balancer] --- C[High-Speed Network Backbone]
    D[Accounting and Biling] --- C[High-Speed Network Backbone]
    C[High-Speed Network Backbone] --- E[Surplus Storage]
    C[High-Speed Network Backbone] --- F[Surplus Farms]
    C[High-Speed Network Backbone] --- G[Deployment Server]
    C[High-Speed Network Backbone] --- H[Server Farm (physical + virtual)]
    C[High-Speed Network Backbone] --- I[Storage]
```
    
