.class public Lcom/android/mms/wsp/WspWrapper;
.super Ljava/lang/Object;
.source "WspWrapper.java"


# static fields
.field static final WSP_AUTHENTICATION_REQUESTED:I = -0x12

.field static final WSP_BIGGER_THAN_MOR:I = -0x5

.field static final WSP_CONNECT_FAILED:I = -0x10

.field static final WSP_DISCONNECT_SESSION:I = -0xb

.field static final WSP_ERROR_INVALID_PARAM:I = -0x9

.field static final WSP_FIND_NO_DATA:I = -0x6

.field static final WSP_INVALID_URL:I = -0x4

.field static final WSP_METHOD_ABORT:I = -0x2

.field static final WSP_METHOD_GET:I = 0x40

.field static final WSP_METHOD_POST:I = 0x60

.field static final WSP_NETWORK_ERROR:I = -0xd

.field static final WSP_NO_DATA_IN_RESPONSE:I = -0xc

.field static final WSP_RECEIVING_DATA:I = -0xa

.field static final WSP_REDIRECT_PERMANENTLY:I = -0xf

.field static final WSP_REDIRECT_TEMPORARILY:I = -0xe

.field static final WSP_RESUMING:I = -0x8

.field static final WSP_SESSION_ACTIVE:I = 0x2

.field static final WSP_SESSION_IDLE:I = 0x1

.field static final WSP_SESSION_NULL:I = 0x0

.field static final WSP_SESSION_TIMEOUT:I = 0x3

.field static final WSP_SUCCESS:I = 0x0

.field static final WSP_SUSPEND:I = -0x7

.field static final WSP_TIMEROUT:I = -0x3

.field static final WSP_USER_CANCELLED:I = -0x1

.field static final WSP_WTLS_CONNECT_FAILED:I = -0x11


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 26
    :try_start_0
    const-string v1, "wsp_jni"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    .local v0, ule:Ljava/lang/UnsatisfiedLinkError;
    :goto_0
    return-void

    .line 27
    .end local v0           #ule:Ljava/lang/UnsatisfiedLinkError;
    :catch_0
    move-exception v0

    .line 28
    .restart local v0       #ule:Ljava/lang/UnsatisfiedLinkError;
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "WARNING: Could not load library libwsp_jni.so"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method native nativeCreateWspSession(I)I
.end method

.method native nativeDeleteAllRequests(I)V
.end method

.method native nativeDeleteRequest(II)Z
.end method

.method native nativeDestroyWspSession(I)Z
.end method

.method native nativeGetGateway(I)Ljava/lang/String;
.end method

.method native nativeGetPort(I)I
.end method

.method native nativeGetReqBytesReceived(II)I
.end method

.method native nativeGetReqBytesSent(II)I
.end method

.method native nativeGetResponseHeader(IILcom/android/mms/wsp/Headers;)Z
.end method

.method native nativeGetWspState(I)I
.end method

.method native nativeOpenRequest(IILjava/lang/String;Ljava/lang/String;[BILjava/lang/String;)I
.end method

.method native nativePeekGetData(IILandroid/content/ContentValues;)I
.end method

.method native nativePeekReady(I)I
.end method

.method native nativeReopenRequestNewUrl(IILjava/lang/String;Ljava/lang/String;)I
.end method

.method native nativeSetConnectionHeaders(ILjava/lang/String;)Z
.end method

.method native nativeSetParameters(ILjava/lang/String;III)Z
.end method

.method native nativeStartLoad(I)Z
.end method

.method native nativeStopLoad(I)V
.end method
