# Schedule Calendar

## Getting started


<!-- Project setup -->
### Project setup

1. Clone the repo
   ```bash
   git clone https://github.com/adrianojec/schedule_calendar.git
   ```
2. Update dependencies:

   ```bash
   flutter pub get
   ```

   
<!-- Airtable setup -->
### Airtable setup

1. Create an airtable account and [login](https://airtable.com/login)
2. Access the base [Schedule Calendar](https://airtable.com/invite/l?inviteId=invK7DI1WLSkp4oHp&inviteToken=baffa1f25880ae4640112f59e89d9638080d26305dc47d5f2e1af0c4a43a9610&utm_medium=email&utm_source=product_team&utm_content=transactional-alerts)


<!-- Create token -->
### Create token

1. Go to [Create token page](https://airtable.com/create/tokens).
2. Click `Create token`.
3. Name your token and add these scopes:

   ```
   - data.records:read
   - data.records:write
   ```

4. A modal will pop and make sure copy your `token` as this will be your `API_KEY`.


<!-- Get base id -->
### Get base ID

1. Select your base [Schedule Calendar](https://airtable.com/).
2. Click `Help` on the top-right nav.
3. Select the `API Documentation` from the sidebar.
4. On the `Introduction` tab, look for: `The ID of this base is ...`.
5. Make sure to copy as this will your `SCHEMA_ID`.


<!-- Environment variables -->
### Environment variables

1. Create a file named `.env` at the root of the project.
2. You can check `.env.example` as your guide.
3. Populate necessary keys from previous steps:

   ```
   BASE_URL=https://api.airtable.com/v0
   API_KEY=your-api-key
   SCHEMA_ID=your-schema-id
   ```

   
<!-- Run the project -->
### Run the project

1. Choose an simulator
2. Run:

   ```bash
   flutter run
   ```
