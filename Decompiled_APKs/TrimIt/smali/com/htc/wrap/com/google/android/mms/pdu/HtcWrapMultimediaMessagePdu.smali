.class public Lcom/htc/wrap/com/google/android/mms/pdu/HtcWrapMultimediaMessagePdu;
.super Ljava/lang/Object;
.source "HtcWrapMultimediaMessagePdu.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getContentType(Lcom/google/android/mms/pdu/MultimediaMessagePdu;)[B
    .locals 1
    .parameter "obj"

    .prologue
    .line 23
    invoke-virtual {p0}, Lcom/google/android/mms/pdu/MultimediaMessagePdu;->getContentType()[B

    move-result-object v0

    return-object v0
.end method

.method public static setContentType(Lcom/google/android/mms/pdu/MultimediaMessagePdu;[B)V
    .locals 0
    .parameter "obj"
    .parameter "value"

    .prologue
    .line 14
    invoke-virtual {p0, p1}, Lcom/google/android/mms/pdu/MultimediaMessagePdu;->setContentType([B)V

    .line 15
    return-void
.end method
