
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

- `SharedArrayBuffer`: Enables efficient memory sharing between the main thread and Web Workers, crucial for high-performance computing and parallel processing in the browser.
- `Atomics`: Provides atomic operations for data synchronization between threads, essential for building robust multi-threaded applications using SharedArrayBuffer.
- `performance.measureUserAgentSpecificMemory()`
- High-resolution timer APIs
- `navigator.hardwareConcurrency` with full precision
- `performance.now()` with microsecond precision
- WebAssembly threads
- `navigator.deviceMemory` with full precision
- `navigator.connection` with full information
- WebRTC's `RTCPeerConnection` with full features
- Gamepad API with low-latency polling

SharedArrayBuffer and Atomics are particularly important for:
- Implementing efficient parallel algorithms in JavaScript
- Developing high-performance web applications that require intense computations
- Creating web-based simulations or games with complex physics calculations
- Building applications that process large amounts of data in real-time

### Web Audio API Enhancements

The secure context provided by HTTPS and Cross-Origin Isolation enables advanced features of the Web Audio API:

- `AudioWorklet`: Allows for custom audio processing with high performance and low latency
  - Runs audio processing code in a separate thread, ensuring smooth audio output
  - Enables implementation of custom DSP algorithms directly in JavaScript
  - Provides sample-accurate scheduling and processing
  - Allows for more complex audio nodes that can be integrated into the Web Audio API graph
- Full-precision audio sample manipulation
- Consistent and precise audio timing
- Access to raw audio data for advanced audio analysis and synthesis
- Ability to implement complex audio effects and filters in real-time

AudioWorklets are particularly powerful for:
- Creating custom synthesizers
- Implementing advanced audio effects (e.g., convolution reverb, pitch shifting)
- Real-time audio analysis and visualization
- Building audio plugins for web-based Digital Audio Workstations (DAWs)
- Developing interactive music applications and games with sophisticated audio requirements

These features are crucial for developing professional-grade audio applications, music production tools, and games with sophisticated sound design directly in the browser.

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
