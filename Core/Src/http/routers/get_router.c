#include <string.h>
#include "lwip/api.h" // For netconn functions
#include "http/routers/get_router.h"
#include "mongoose.h"






void GET_requests_router(struct mg_connection *c, struct mg_http_message *hm){

	if (mg_match(hm->uri, mg_str("/api/ping"), NULL)) {
		mg_http_reply(c, 200, "", "GET ping\r\n");
		}
	else if (mg_match(hm->uri, mg_str("/api/led/get"), NULL)) {
	      mg_http_reply(c, 200, "", "%d\n", HAL_GPIO_ReadPin(GPIOB, LED_GREEN_Pin));
	    }
	else if (mg_match(hm->uri, mg_str("/api/led/toggle"), NULL)) {
		HAL_GPIO_TogglePin(GPIOB, LED_GREEN_Pin); // Can be different on your board
	      mg_http_reply(c, 200, "", "true\n");
	    }
	else{
//		mg_http_reply(c, 200, "", "ok get router\r\n");
		struct mg_http_serve_opts opts = {.root_dir = "/web_root", .fs = &mg_fs_packed};
		mg_http_serve_dir(c, hm, &opts);
//		mg_http_serve_file(c, hm, "/web_root/index.html", &opts);
	}
}
