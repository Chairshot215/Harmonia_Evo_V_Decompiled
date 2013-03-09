.class public interface abstract Lcom/android/mms/wsp/EventHandler;
.super Ljava/lang/Object;
.source "EventHandler.java"


# static fields
.field public static final ERROR_AUTH:I = 0xe

.field public static final ERROR_CONNECT:I = 0x2

.field public static final ERROR_HTTPS_PRO_OVER_HTTP_PORT:I = 0x10

.field public static final ERROR_INIT_HTTP:I = 0xc

.field public static final ERROR_INVALID_PARAMETER:I = 0x9

.field public static final ERROR_MEMORY:I = 0x6

.field public static final ERROR_NO_SRC:I = 0xd

.field public static final ERROR_OMA_DL_NO_INSTALL_URL:I = 0xf

.field public static final ERROR_OPEN_FILE:I = 0xb

.field public static final ERROR_OTHER:I = 0x7

.field public static final ERROR_OVER_MAX_BUFFER_SIZE:I = 0x8

.field public static final ERROR_QUERYIP:I = 0x1

.field public static final ERROR_RECEIVE:I = 0x4

.field public static final ERROR_SEND:I = 0x3

.field public static final ERROR_TIMEOUT:I = 0x5

.field public static final ERROR_UNSUPPORTED_TLS:I = 0xa

.field public static final SUCCESS:I


# virtual methods
.method public abstract onData([BI)V
.end method

.method public abstract onEndData()V
.end method

.method public abstract onError(ILjava/lang/String;)V
.end method

.method public abstract onHeaders(Lcom/android/mms/wsp/Headers;)V
.end method

.method public abstract onSentProgress(II)V
.end method

.method public abstract onStatus(ILjava/lang/String;)V
.end method
