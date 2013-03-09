.class public Lcom/htc/wrap/com/google/android/mms/pdu/HtcWrapPduPersister;
.super Ljava/lang/Object;
.source "HtcWrapPduPersister.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCachePdu(Lcom/google/android/mms/pdu/PduPersister;Landroid/net/Uri;)Lcom/google/android/mms/pdu/GenericPdu;
    .locals 1
    .parameter "obj"
    .parameter "uri"

    .prologue
    .line 26
    invoke-virtual {p0, p1}, Lcom/google/android/mms/pdu/PduPersister;->getCachePdu(Landroid/net/Uri;)Lcom/google/android/mms/pdu/GenericPdu;

    move-result-object v0

    return-object v0
.end method

.method public static getFromAddress(Lcom/google/android/mms/pdu/PduPersister;Landroid/net/Uri;)Lcom/google/android/mms/pdu/EncodedStringValue;
    .locals 1
    .parameter "obj"
    .parameter "uri"

    .prologue
    .line 45
    invoke-virtual {p0, p1}, Lcom/google/android/mms/pdu/PduPersister;->getFromAddress(Landroid/net/Uri;)Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v0

    return-object v0
.end method

.method public static loadAddresses(Lcom/google/android/mms/pdu/PduPersister;Landroid/net/Uri;I)[Lcom/google/android/mms/pdu/EncodedStringValue;
    .locals 1
    .parameter "obj"
    .parameter "uri"
    .parameter "field"

    .prologue
    .line 39
    invoke-virtual {p0, p1, p2}, Lcom/google/android/mms/pdu/PduPersister;->loadAddresses(Landroid/net/Uri;I)[Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v0

    return-object v0
.end method

.method public static persist(Lcom/google/android/mms/pdu/PduPersister;Lcom/google/android/mms/pdu/GenericPdu;Landroid/net/Uri;Z)Landroid/net/Uri;
    .locals 1
    .parameter "obj"
    .parameter "pdu"
    .parameter "uri"
    .parameter "forceThreadId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 72
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/mms/pdu/PduPersister;->persist(Lcom/google/android/mms/pdu/GenericPdu;Landroid/net/Uri;Z)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static updateHeaders(Lcom/google/android/mms/pdu/PduPersister;Landroid/net/Uri;Lcom/google/android/mms/pdu/SendReq;Z)V
    .locals 0
    .parameter "obj"
    .parameter "uri"
    .parameter "sendReq"
    .parameter "isSend"

    .prologue
    .line 58
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/mms/pdu/PduPersister;->updateHeaders(Landroid/net/Uri;Lcom/google/android/mms/pdu/SendReq;Z)V

    .line 59
    return-void
.end method
