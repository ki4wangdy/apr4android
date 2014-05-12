
LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

#TARGET_BUILD_TYPE := debug
#LOCAL_ARM_MODE   := arm #arm or thumb

LOCAL_MODULE    := apr4android

LOCAL_SRC_FILES :=	\
	./src/threadproc/unix/signals.c	\
	./src/threadproc/unix/procsup.c	\
	./src/threadproc/unix/threadpriv.c	\
	./src/threadproc/unix/proc.c	\
	./src/threadproc/unix/thread.c	\
	./src/tables/apr_skiplist.c	\
	./src/tables/apr_tables.c	\
	./src/tables/apr_hash.c	\
	./src/misc/unix/rand.c	\
	./src/misc/unix/version.c	\
	./src/misc/unix/getopt.c	\
	./src/misc/unix/otherchild.c	\
	./src/misc/unix/charset.c	\
	./src/misc/unix/start.c	\
	./src/misc/unix/env.c	\
	./src/misc/unix/errorcodes.c	\
	./src/network_io/unix/sendrecv.c	\
	./src/network_io/unix/socket_util.c	\
	./src/network_io/unix/sockaddr.c	\
	./src/network_io/unix/sockopt.c	\
	./src/network_io/unix/sockets.c	\
	./src/network_io/unix/multicast.c	\
	./src/network_io/unix/inet_ntop.c	\
	./src/network_io/unix/inet_pton.c	\
	./src/file_io/unix/fullrw.c	\
	./src/file_io/unix/tempdir.c	\
	./src/file_io/unix/copy.c	\
	./src/file_io/unix/filestat.c	\
	./src/file_io/unix/readwrite.c	\
	./src/file_io/unix/pipe.c	\
	./src/file_io/unix/buffer.c	\
	./src/file_io/unix/flock.c	\
	./src/file_io/unix/filepath_util.c	\
	./src/file_io/unix/seek.c	\
	./src/file_io/unix/fileacc.c	\
	./src/file_io/unix/filepath.c	\
	./src/file_io/unix/dir.c	\
	./src/file_io/unix/filedup.c	\
	./src/file_io/unix/open.c	\
	./src/file_io/unix/mktemp.c	\
	./src/encoding/apr_escape.c	\
	./src/shmen/unix/shm.c	\
	./src/atomic/unix/solaris.c	\
	./src/atomic/unix/ppc.c	\
	./src/atomic/unix/mutex.c	\
	./src/atomic/unix/s390.c	\
	./src/atomic/unix/builtins.c	\
	./src/atomic/unix/ia32.c	\
	./src/random/unix/apr_random.c	\
	./src/random/unix/sha2.c	\
	./src/random/unix/sha2_glue.c	\
	./src/time/unix/time.c	\
	./src/time/unix/timestr.c	\
	./src/strings/apr_fnmatch.c	\
	./src/strings/apr_strings.c	\
	./src/strings/apr_snprintf.c	\
	./src/strings/apr_cpystrn.c	\
	./src/strings/apr_strtok.c	\
	./src/strings/apr_strnatcmp.c	\
	./src/user/unix/userinfo.c	\
	./src/user/unix/groupinfo.c	\
	./src/mmap/unix/mmap.c	\
	./src/mmap/unix/common.c	\
	./src/poll/unix/pollset.c	\
	./src/poll/unix/port.c	\
	./src/poll/unix/epoll.c	\
	./src/poll/unix/pollcb.c	\
	./src/poll/unix/poll.c	\
	./src/poll/unix/select.c	\
	./src/poll/unix/kqueue.c	\
	./src/poll/unix/z_asio.c	\
	./src/memory/unix/apr_pools.c	\
	./src/dso/unix/dso.c	\
	./src/passwd/apr_getpass.c	\
	./src/locks/unix/thread_cond.c	\
	./src/locks/unix/proc_mutex.c	\
	./src/locks/unix/thread_rwlock.c	\
	./src/locks/unix/global_mutex.c	\
	./src/locks/unix/thread_mutex.c	\
	./src/support/unix/waitio.c	


LOCAL_CFLAGS := -DHAVE_CONFIG_H  -DLINUX -D_REENTRANT -D_GNU_SOURCE
LOCAL_CFLAGS += -I$(LOCAL_PATH)/include	\
	-I$(LOCAL_PATH)/include/arch/unix	\
	-I$(LOCAL_PATH)/include/private	\
	-I$(LOCAL_PATH)/include/arch/unix

LOCAL_LDLIBS    := 

include $(BUILD_STATIC_LIBRARY)


