# Spring Boot → Docker → ECR → ECS (Fargate) via CodePipeline/CodeBuild

A tiny Spring Boot app deployed on **Amazon ECS Fargate**. CI builds a Docker image, pushes to **Amazon ECR**, and CD updates the ECS service using the `imagedefinitions.json` artifact.

## What’s here
- `/src` – minimal Spring Boot REST app
- `Dockerfile` – multi-stage build (Maven → JRE)
- `buildspec.yml` – builds/pushes image and emits `imagedefinitions.json`
- Endpoint: `GET /` → simple greeting with container hostname
- Health: `GET /healthz` (or use Spring Actuator `/actuator/health`)

See the chat response for complete AWS setup steps.
