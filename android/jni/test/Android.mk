
LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE    := test4apr

#testmmap.c
#testpipe.c
#testsock.c

LOCAL_SRC_FILES := 	\
	abts.c	\
	testutil.c	\
	testtime.c	\
	teststr.c	\
	testvsn.c	\
	testipsub.c	\
	testshm.c	\
	testud.c	\
	testtable.c	\
	testsleep.c	\
	testpools.c	\
	testfmt.c	\
	testfile.c	\
	testdir.c	\
	testfileinfo.c	\
	testrand.c	\
	testdso.c	\
	testoc.c	\
	testdup.c	\
	testsockets.c	\
	testproc.c	\
	testpoll.c	\
	testlock.c	\
	testsockopt.c	\
	testthread.c	\
	testhash.c	\
	testargs.c	\
	testnames.c	\
	testuser.c	\
	testpath.c	\
	testenv.c	\
	testprocmutex.c	\
	testfnmatch.c	\
	testatomic.c	\
	testflock.c	\
	testglobalmutex.c	\
	teststrnatcmp.c	\
	testfilecopy.c	\
	testtemp.c	\
	testlfs.c	\
	testcond.c	\
	testescape.c

LOCAL_CFLAGS += -DHAVE_CONFIG_H  -DLINUX -D_REENTRANT -D_GNU_SOURCE
LOCAL_CFLAGS +=	\
	-I$(LOCAL_PATH)/../apr/include \
        -I$(LOCAL_PATH)/../apr/include/arch/unix       \
        -I$(LOCAL_PATH)/../apr/include/private \
        -I$(LOCAL_PATH)/../apr/include/arch/unix

LOCAL_SHARED_LIBRARIES := apr4android 

include $(BUILD_EXECUTABLE)

