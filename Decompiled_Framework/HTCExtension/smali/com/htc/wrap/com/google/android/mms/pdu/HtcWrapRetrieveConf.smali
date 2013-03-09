.class public Lcom/htc/wrap/com/google/android/mms/pdu/HtcWrapRetrieveConf;
.super Ljava/lang/Object;
.source "HtcWrapRetrieveConf.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getApplicationID(Lcom/google/android/mms/pdu/RetrieveConf;)[B
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/mms/pdu/RetrieveConf;->getApplicationID()[B

    move-result-object v0

    return-object v0
.end method

.method public static getReplyToApplicationID(Lcom/google/android/mms/pdu/RetrieveConf;)[B
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/mms/pdu/RetrieveConf;->getReplyToApplicationID()[B

    move-result-object v0

    return-object v0
.end method

.method public static setApplicationID(Lcom/google/android/mms/pdu/RetrieveConf;[B)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/mms/pdu/RetrieveConf;->setApplicationID([B)V

    return-void
.end method

.method public static setReplyToApplicationID(Lcom/google/android/mms/pdu/RetrieveConf;[B)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/mms/pdu/RetrieveConf;->setReplyToApplicationID([B)V

    return-void
.end method
