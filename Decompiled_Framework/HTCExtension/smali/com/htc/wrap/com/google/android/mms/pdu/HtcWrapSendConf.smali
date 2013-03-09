.class public Lcom/htc/wrap/com/google/android/mms/pdu/HtcWrapSendConf;
.super Ljava/lang/Object;
.source "HtcWrapSendConf.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getResponseText(Lcom/google/android/mms/pdu/SendConf;)Lcom/google/android/mms/pdu/EncodedStringValue;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/mms/pdu/SendConf;->getResponseText()Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v0

    return-object v0
.end method
