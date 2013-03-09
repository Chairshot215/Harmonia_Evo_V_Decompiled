.class public Lcom/htc/wrap/com/google/android/mms/pdu/HtcWrapSendReq;
.super Lcom/google/android/mms/pdu/SendReq;
.source "HtcWrapSendReq.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/mms/pdu/SendReq;-><init>()V

    return-void
.end method

.method public constructor <init>([BLcom/google/android/mms/pdu/EncodedStringValue;I[B)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/InvalidHeaderValueException;
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/mms/pdu/SendReq;-><init>([BLcom/google/android/mms/pdu/EncodedStringValue;I[B)V

    return-void
.end method

.method public static getContentTypeApplicationId(Lcom/google/android/mms/pdu/SendReq;)[B
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/mms/pdu/SendReq;->getContentTypeApplicationId()[B

    move-result-object v0

    return-object v0
.end method

.method public static getContentTypeReplyToApplicationId(Lcom/google/android/mms/pdu/SendReq;)[B
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/mms/pdu/SendReq;->getContentTypeReplyToApplicationId()[B

    move-result-object v0

    return-object v0
.end method

.method public static getDeliveryTime(Lcom/google/android/mms/pdu/SendReq;)J
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/mms/pdu/SendReq;->getDeliveryTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public static getFrom(Lcom/google/android/mms/pdu/SendReq;)Lcom/google/android/mms/pdu/EncodedStringValue;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/mms/pdu/SendReq;->getFrom()Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v0

    return-object v0
.end method

.method public static setContentTypeApplicationId(Lcom/google/android/mms/pdu/SendReq;[B)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/mms/pdu/SendReq;->setContentTypeApplicationId([B)V

    return-void
.end method

.method public static setContentTypeReplyToApplicationId(Lcom/google/android/mms/pdu/SendReq;[B)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/mms/pdu/SendReq;->setContentTypeReplyToApplicationId([B)V

    return-void
.end method

.method public static setDeliveryTime(Lcom/google/android/mms/pdu/SendReq;J)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/google/android/mms/pdu/SendReq;->setDeliveryTime(J)V

    return-void
.end method

.method public static setFrom(Lcom/google/android/mms/pdu/SendReq;Lcom/google/android/mms/pdu/EncodedStringValue;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/mms/pdu/SendReq;->setFrom(Lcom/google/android/mms/pdu/EncodedStringValue;)V

    return-void
.end method
