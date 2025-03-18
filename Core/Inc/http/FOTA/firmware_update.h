/*
 * firmware_update.h
 *
 *  Created on: Mar 18, 2025
 *      Author: yam
 */

#ifndef INC_HTTP_FOTA_FIRMWARE_UPDATE_H_
#define INC_HTTP_FOTA_FIRMWARE_UPDATE_H_

#include "mongoose.h"


void handle_firmware_upload(struct mg_connection *c, struct mg_http_message *hm);

#endif /* INC_HTTP_FOTA_FIRMWARE_UPDATE_H_ */
