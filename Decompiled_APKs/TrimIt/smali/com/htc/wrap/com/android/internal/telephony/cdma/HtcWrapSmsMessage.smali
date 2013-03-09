.class public Lcom/htc/wrap/com/android/internal/telephony/cdma/HtcWrapSmsMessage;
.super Ljava/lang/Object;
.source "HtcWrapSmsMessage.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static calculateLength(Ljava/lang/CharSequence;ZI)Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    .locals 1
    .parameter "messageBody"
    .parameter "use7bitOnly"
    .parameter "nli"

    .prologue
    .line 35
    invoke-static {p0, p1, p2}, Lcom/android/internal/telephony/cdma/SmsMessage;->calculateLength(Ljava/lang/CharSequence;ZI)Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;

    move-result-object v0

    return-object v0
.end method

.method public static calculateLengthForCSIM(Ljava/lang/String;Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;)Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    .locals 1
    .parameter "msgBody"
    .parameter "address"
    .parameter "callback"

    .prologue
    .line 41
    invoke-static {p0, p1, p2}, Lcom/android/internal/telephony/cdma/SmsMessage;->calculateLengthForCSIM(Ljava/lang/String;Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;)Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;

    move-result-object v0

    return-object v0
.end method

.method public static getDeliveryPdu(Ljava/lang/String;JLcom/android/internal/telephony/cdma/sms/UserData;ZLandroid/os/Bundle;)Lcom/htc/wrap/android/telephony/HtcWrapSmsMessage$DeliveryPdu;
    .locals 2
    .parameter "sOriginatorAddress"
    .parameter "lTimeMilli"
    .parameter "userData"
    .parameter "bIs7Bit"
    .parameter "bundle"

    .prologue
    .line 47
    new-instance v0, Lcom/htc/wrap/android/telephony/HtcWrapSmsMessage$DeliveryPdu;

    invoke-static/range {p0 .. p5}, Lcom/android/internal/telephony/cdma/SmsMessage;->getDeliveryPdu(Ljava/lang/String;JLcom/android/internal/telephony/cdma/sms/UserData;ZLandroid/os/Bundle;)Landroid/telephony/SmsMessage$DeliveryPdu;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/htc/wrap/android/telephony/HtcWrapSmsMessage$DeliveryPdu;-><init>(Landroid/telephony/SmsMessage$DeliveryPdu;)V

    return-object v0
.end method

.method public static getSubmitPdu(Ljava/lang/String;Lcom/android/internal/telephony/cdma/sms/UserData;ZILjava/lang/String;J)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    .locals 1
    .parameter "destAddr"
    .parameter "userData"
    .parameter "statusReportRequested"
    .parameter "priority"
    .parameter "callback"
    .parameter "lTimeMilli"

    .prologue
    .line 29
    invoke-static/range {p0 .. p6}, Lcom/android/internal/telephony/cdma/SmsMessage;->getSubmitPdu(Ljava/lang/String;Lcom/android/internal/telephony/cdma/sms/UserData;ZILjava/lang/String;J)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v0

    return-object v0
.end method
