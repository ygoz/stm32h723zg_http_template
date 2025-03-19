
#include <string.h>
#include "lwip/api.h" // For netconn functions
#include "http/routers/post_router.h"
#include "mongoose.h"

#include "http/FOTA/firmware_update.h"




void POST_requests_router(struct mg_connection *c, struct mg_http_message *hm){

	if (mg_match(hm->uri, mg_str("/api/firmware/upload"), NULL)) {
	      handle_firmware_upload(c, hm);

	}
	else if (mg_match(hm->uri, mg_str("/api/ping"), NULL)) {
		mg_ota_commit();
		mg_http_reply(c, 200, "", "ok post router\r\n");
//		mg_device_reset();
		mg_ota_boot();
		printf("should be commited");
	   }
	else{
		mg_http_reply(c, 404, "", "this jjdcjcjdcjnj else post router\r\n");
	}
//	if (strncmp(http_header_buffer, "POST /postTest", 14) == 0) {

//		char *http_header = create_http_header(HTTP_OK, 10);
//
//		netconn_write(conn, http_header, strlen(http_header), NETCONN_COPY);
//		netconn_write(conn, message, strlen(message), NETCONN_NOCOPY);
//
//		if (http_header) {
//		    free(http_header);
//		}

//		char *content = (char *)calloc(content, sizeof(char));
//		char *content = "this is message";
//		http_write_response(conn, HTTP_OK, "this is message2");
		printf("shmoopoo post 2\r\n");
//	}
}
