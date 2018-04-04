module.exports = {
  // See <http://truffleframework.com/docs/advanced/configuration>
  // for more about customizing your Truffle configuration!
  networks: {
    development: {
      host: "127.0.0.1",
      // host: "192.168.1.135",
      port: 7545,
      network_id: "*" // Match any network id
    }
  }
};