# Local Deploy
Install dependencies:
`npm install`
Run tests:
`npm run test`
Build:
`npm run build`
Deploy:
`npm start`
Navigate to `http://localhost:8080` to view the app.

# Docker Deploy
`docker build -t button . && docker run -p 8080:8080 button`
Navigate to `http://localhost:8080` to view the app.
