
# ES6 App Template (No Bundler)

This project serves as a template for creating a modern JavaScript application using ES6 modules without relying on a bundler.

## Features

- Pure ES6 JavaScript
- No bundler required
- Uses native ES modules
- Caddy server for local development
- Live reloading for rapid development

## Getting Started

1. Clone this repository
2. Ensure you have [Caddy](https://caddyserver.com/) and [Node.js](https://nodejs.org/) installed
3. Run the development script with sudo:
   ```
   sudo ./dev.sh
   ```
   (Sudo is required because Caddy needs to bind to port 1234)
4. Open your browser and navigate to `https://localhost:1234`

Note: The `dev.sh` script starts both the Caddy server and a live reload server for a smoother development experience.

## Project Structure

- `html/`: Contains the main HTML and JavaScript files
  - `index.html`: The main HTML file
  - `main.mjs`: The main JavaScript module
- `Caddyfile`: Configuration for the Caddy server

## Development

Simply edit the files in the `html/` directory. The live reloading feature will automatically refresh your browser when changes are detected.

## Deployment

To deploy this application, you only need to serve the contents of the `html/` directory on a web server that supports ES6 modules.

## License

[MIT License](LICENSE)
