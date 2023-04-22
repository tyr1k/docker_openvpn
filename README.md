<!DOCTYPE html>
<html>

<head>
  <meta charset="UTF-8">
  <title>Dockerfile for OpenVPN in a container</title>
</head>

<body>
  <h1>Dockerfile for OpenVPN in a container</h1>

  <h2>Description</h2>
  <p>This Dockerfile installs and configures OpenVPN in a container.</p>

  <h2>Usage</h2>
  <ol>
    <li>Make sure Docker is installed on your system.</li>
    <li>Clone this repository.</li>
    <li>Navigate to the directory containing the Dockerfile and configuration files.</li>
    <li>Build the Docker image with the following command: <code>docker build -t openvpn .</code></li>
    <li>Run the container with the following command: <code>docker run --privileged --rm -it openvpn</code></li>
  </ol>

  <h2>Contents</h2>
  <ul>
    <li><code>Dockerfile</code>: the Dockerfile for building the image.</li>
    <li><code>openvpn.conf</code>: the configuration file for OpenVPN.</li>
    <li><code>client.ovpn</code>: the client configuration file for OpenVPN.</li>
  </ul>

  <h2>Credits</h2>
  <p>This Dockerfile was created by tyr1k and is available at https://github.com/tyr1k</p>
</body>

</html>
