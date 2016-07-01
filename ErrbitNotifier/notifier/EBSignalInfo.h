//
//  EBSignalInfo.h
//  H-Farm
//
//  Created by Simone Pozzobon on 23/03/16.
//  Copyright © 2016 Moku SRL. All rights reserved.
//

#ifndef EBSignalInfo_h
#define EBSignalInfo_h
// notice info
typedef struct eb_signal_info_t {
  
  // file name used for a signal notice
  const char *notice_path;
  
  // notice payload
  unsigned long notice_payload_length;
  void *notice_payload;
  
  // environment info
  unsigned long user_data_length;
  void *user_data;
  
} eb_signal_info_t;
eb_signal_info_t eb_signal_info;

#endif /* EBSignalInfo_h */
