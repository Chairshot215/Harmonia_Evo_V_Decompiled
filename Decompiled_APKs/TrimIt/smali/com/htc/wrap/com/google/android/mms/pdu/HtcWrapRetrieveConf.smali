.class public Lcom/htc/wrap/com/google/android/mms/pdu/HtcWrapRetrieveConf;
.super Ljava/lang/Object;
.source "HtcWrapRetrieveConf.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getApplicationID(Lcom/google/android/mms/pdu/RetrieveConf;)[B
    .locals 1
    .parameter "conf"

    .prologue
    .line 13
    invoke-virtual {p0}, Lcom/google/android/mms/pdu/RetrieveConf;->getApplicationID()[B

    move-result-object v0

    return-object v0
.end method

.method public static getReplyToApplicationID(Lcom/google/android/mms/pdu/RetrieveConf;)[B
    .locals 1
    .parameter "conf"

    .prologue
    .line 22
    invoke-virtual {p0}, Lcom/google/android/mms/pdu/RetrieveConf;->getReplyToApplicationID()[B

    move-result-object v0

    return-object v0
.end method

.method public static setApplicationID(Lcom/google/android/mms/pdu/RetrieveConf;[B)V
    .locals 0
    .parameter "conf"
    .parameter "value"

    .prologue
    .line 32
    invoke-virtual {p0, p1}, Lcom/google/android/mms/pdu/RetrieveConf;->setApplicationID([B)V

    .line 33
    return-void
.end method

.method public static setReplyToApplicationID(Lcom/google/android/mms/pdu/RetrieveConf;[B)V
    .locals 0
    .parameter "conf"
    .parameter "value"

    .prologue
    .line 42
    invoke-virtual {p0, p1}, Lcom/google/android/mms/pdu/RetrieveConf;->setReplyToApplicationID([B)V

    .line 43
    return-void
.end method
