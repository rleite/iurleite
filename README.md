# iurleite
Personal website

## Deploy (Cloudflare R2 via GitHub Actions)

The static site in `site/` is deployed automatically when code is pushed to `master` using:

- `.github/workflows/deploy-r2.yml`

### Required GitHub repository secrets

In GitHub, go to `Settings` -> `Secrets and variables` -> `Actions` and add:

- `R2_ACCESS_KEY_ID`
- `R2_SECRET_ACCESS_KEY`
- `R2_BUCKET_NAME`
- `CF_ACCOUNT_ID`

### Notes

- The workflow runs `aws s3 sync site s3://$R2_BUCKET_NAME --delete`.
- It uses the Cloudflare R2 endpoint `https://$CF_ACCOUNT_ID.r2.cloudflarestorage.com`.
