# Deployment steps for Docker Container

1. Build Docker image.

2. Test that image in isolation.

3. Push that image to the in-house image registry.

4. Pull all images you need to deploy linked.

5. Deploy them to a test environment.

6. Run automated tests against the container system.

7. At same time, upload service configuration to Consul API (if changed).

8. Deploy the containers to all hosts, tagged with the offline colour.

9. Wait until they are all responding and passing automated checks.

10. Flip environment alias to point at the offline colour.

11. The new build is now online.
