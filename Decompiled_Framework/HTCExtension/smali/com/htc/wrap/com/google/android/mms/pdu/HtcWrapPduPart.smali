.class public Lcom/htc/wrap/com/google/android/mms/pdu/HtcWrapPduPart;
.super Ljava/lang/Object;
.source "HtcWrapPduPart.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getExtraUri(Lcom/google/android/mms/pdu/PduPart;)Landroid/net/Uri;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/mms/pdu/PduPart;->getExtraUri()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static getVcalEnd(Lcom/google/android/mms/pdu/PduPart;)J
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/mms/pdu/PduPart;->getVcalEnd()J

    move-result-wide v0

    return-wide v0
.end method

.method public static getVcalStart(Lcom/google/android/mms/pdu/PduPart;)J
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/mms/pdu/PduPart;->getVcalStart()J

    move-result-wide v0

    return-wide v0
.end method

.method public static setExtraUri(Lcom/google/android/mms/pdu/PduPart;Landroid/net/Uri;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/mms/pdu/PduPart;->setExtraUri(Landroid/net/Uri;)V

    return-void
.end method

.method public static setVcalEnd(Lcom/google/android/mms/pdu/PduPart;J)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/google/android/mms/pdu/PduPart;->setVcalEnd(J)V

    return-void
.end method

.method public static setVcalStart(Lcom/google/android/mms/pdu/PduPart;J)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/google/android/mms/pdu/PduPart;->setVcalStart(J)V

    return-void
.end method
