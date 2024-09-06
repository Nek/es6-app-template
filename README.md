
# ES6 App Template (No Bundler)

This project serves as a template for creating a modern JavaScript application using ES6 modules without relying on a bundler.

## Features

- Pure ES6 JavaScript
- No bundler required
- Uses native ES modules
- Caddy server for local development with HTTPS and Cross-Origin Isolation (COI)
- Live reloading for rapid development
- Access to powerful client-side APIs enabled by HTTPS and COI

## Why HTTPS and Cross-Origin Isolation?

1. **HTTPS**: Enables secure communication and is required for many modern web APIs.
2. **Cross-Origin Isolation**: Allows the use of powerful APIs that require additional security guarantees.

### Enabled Client-Side APIs

With HTTPS and Cross-Origin Isolation, you can use the following powerful APIs:

- `SharedArrayBuffer`
- `performance.measureUserAgentSpecificMemory()`
- High-resolution timer APIs
- `navigator.hardwareConcurrency` with full precision
- `performance.now()` with microsecond precision
- `Atomics` API for thread synchronization
- WebAssembly threads
- `navigator.deviceMemory` with full precision
- `navigator.connection` with full information
- WebRTC's `RTCPeerConnection` with full features
- Gamepad API with low-latency polling

## Getting Started

1. Clone this repository
2. Ensure you have [Caddy](https://caddyserver.com/) and [Node.js](https://nodejs.org/) installed
3. Run the development script with sudo:
   ```
   sudo ./dev.sh
   ```
   (Sudo is required because Caddy needs to work with system root certificates to enable HTTPS on localhost)
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
