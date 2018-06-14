#include <errno.h>
#include <stdatomic.h>
#include <stdlib.h>
#include <string.h>
#include <sys/time.h>

#ifdef __BIONIC__
#include <android/set_abort_message.h>
#endif

#include <log/event_tag_map.h>
#include <log/log_transport.h>
#include <private/android_filesystem_config.h>
#include <private/android_logger.h>

int __android_log_print(int prio, const char* tag, const char* fmt, ...) {
  // Goodix: please don't spam that much!
  return 0;
}
