#include <string.h>
#include "lwip/api.h" // For netconn functions
#include "http/routers/get_router.h"
#include "mongoose.h"






void GET_requests_router(struct mg_connection *c, struct mg_http_message *hm){
	mg_http_reply(c, 200, "", "ok get router\r\n");
//	if (strncmp(http_header_buffer, "GET /index.html", 15) == 0) {
//		netconn_write(conn, http_post_response, strlen(http_post_response), NETCONN_NOCOPY);
//	}
}
