const proxy = require('http-proxy-middleware');

module.exports = function(app) {

    /*app.use(proxy('/api', { target: 'http://localhost:8080/' }));
    app.use(proxy('/account', { target: 'http://localhost:8081/' })); */
	
	/*app.use(proxy('/api', { target: 'http://172.19.0.2:8080/' }));
	app.use(proxy('/account', { target: 'http://172.19.0.3:8081/' })); */

    app.use(proxy('/api', { target: 'http://10.110.250.46:8080/' }));
    app.use(proxy('/account', { target: 'http://10.101.248.213:8081/' })); 

};