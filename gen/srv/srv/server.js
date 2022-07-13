const cds = require('@sap/cds');
const cors = require('cors');
const proxy = require('@sap/cds-odata-v2-adapter-proxy');

cds.on('bootstrap', (app) => {
    console.debug("Use: cors middleware");
    app.use(cors());
    app.options('*', cors());
    app.use(proxy());
})

module.exports = cds.server;