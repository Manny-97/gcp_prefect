# gcp_prefect

## Components
1. GitHub Actions (CI/CD): Automates deployment of Prefect workflows.
- Pulls code from the GitHub repository.
- Deploys Prefect workflows on GCP infrastructure.
2. Prefect Orchestrator: Manages the data pipeline workflow.
- Executes data extraction, transformation, and loading tasks.
3. GCP Cloud Storage: Stores processed data or intermediate files.
- Acts as the pipeline's storage layer.