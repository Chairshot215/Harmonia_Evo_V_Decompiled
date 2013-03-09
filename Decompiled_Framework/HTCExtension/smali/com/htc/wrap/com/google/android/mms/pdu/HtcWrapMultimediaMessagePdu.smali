.class public Lcom/htc/wrap/com/google/android/mms/pdu/HtcWrapMultimediaMessagePdu;
.super Ljava/lang/Object;
.source "HtcWrapMultimediaMessagePdu.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getContentType(Lcom/google/android/mms/pdu/MultimediaMessagePdu;)[B
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/mms/pdu/MultimediaMessagePdu;->getContentType()[B

    move-result-object v0

    return-object v0
.end method

.method public static setContentType(Lcom/google/android/mms/pdu/MultimediaMessagePdu;[B)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/mms/pdu/MultimediaMessagePdu;->setContentType([B)V

    return-void
.end method
