.class public Lcom/htc/wrap/com/google/android/mms/pdu/HtcWrapPduPart;
.super Ljava/lang/Object;
.source "HtcWrapPduPart.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getExtraUri(Lcom/google/android/mms/pdu/PduPart;)Landroid/net/Uri;
    .locals 1
    .parameter "obj"

    .prologue
    .line 24
    invoke-virtual {p0}, Lcom/google/android/mms/pdu/PduPart;->getExtraUri()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static getVcalEnd(Lcom/google/android/mms/pdu/PduPart;)J
    .locals 2
    .parameter "obj"

    .prologue
    .line 40
    invoke-virtual {p0}, Lcom/google/android/mms/pdu/PduPart;->getVcalEnd()J

    move-result-wide v0

    return-wide v0
.end method

.method public static getVcalStart(Lcom/google/android/mms/pdu/PduPart;)J
    .locals 2
    .parameter "obj"

    .prologue
    .line 32
    invoke-virtual {p0}, Lcom/google/android/mms/pdu/PduPart;->getVcalStart()J

    move-result-wide v0

    return-wide v0
.end method

.method public static setExtraUri(Lcom/google/android/mms/pdu/PduPart;Landroid/net/Uri;)V
    .locals 0
    .parameter "obj"
    .parameter "uri"

    .prologue
    .line 15
    invoke-virtual {p0, p1}, Lcom/google/android/mms/pdu/PduPart;->setExtraUri(Landroid/net/Uri;)V

    .line 16
    return-void
.end method

.method public static setVcalEnd(Lcom/google/android/mms/pdu/PduPart;J)V
    .locals 0
    .parameter "obj"
    .parameter "value"

    .prologue
    .line 36
    invoke-virtual {p0, p1, p2}, Lcom/google/android/mms/pdu/PduPart;->setVcalEnd(J)V

    .line 37
    return-void
.end method

.method public static setVcalStart(Lcom/google/android/mms/pdu/PduPart;J)V
    .locals 0
    .parameter "obj"
    .parameter "value"

    .prologue
    .line 28
    invoke-virtual {p0, p1, p2}, Lcom/google/android/mms/pdu/PduPart;->setVcalStart(J)V

    .line 29
    return-void
.end method
