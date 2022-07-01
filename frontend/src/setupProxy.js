const proxy = require("http-proxy-middleware");

module.exports = app => {
  app.use(
    "/api",
    proxy({
      target: "http://20.93.175.149.nip.io",
      changeOrigin: true
    })
  );
};
