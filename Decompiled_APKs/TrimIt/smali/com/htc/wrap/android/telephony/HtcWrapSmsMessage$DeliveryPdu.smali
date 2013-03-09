.class public Lcom/htc/wrap/android/telephony/HtcWrapSmsMessage$DeliveryPdu;
.super Ljava/lang/Object;
.source "HtcWrapSmsMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/wrap/android/telephony/HtcWrapSmsMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DeliveryPdu"
.end annotation


# instance fields
.field mDPdu:Landroid/telephony/SmsMessage$DeliveryPdu;


# direct methods
.method public constructor <init>(Landroid/telephony/SmsMessage$DeliveryPdu;)V
    .locals 0
    .parameter "obj"

    .prologue
    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 154
    iput-object p1, p0, Lcom/htc/wrap/android/telephony/HtcWrapSmsMessage$DeliveryPdu;->mDPdu:Landroid/telephony/SmsMessage$DeliveryPdu;

    .line 155
    return-void
.end method


# virtual methods
.method public getAddressLength()I
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/htc/wrap/android/telephony/HtcWrapSmsMessage$DeliveryPdu;->mDPdu:Landroid/telephony/SmsMessage$DeliveryPdu;

    invoke-virtual {v0}, Landroid/telephony/SmsMessage$DeliveryPdu;->getAddressLength()I

    move-result v0

    return v0
.end method

.method public getEncodedMessage()[B
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/htc/wrap/android/telephony/HtcWrapSmsMessage$DeliveryPdu;->mDPdu:Landroid/telephony/SmsMessage$DeliveryPdu;

    iget-object v0, v0, Landroid/telephony/SmsMessage$DeliveryPdu;->encodedMessage:[B

    return-object v0
.end method

.method public getEncodedOriginatorAddr()[B
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/htc/wrap/android/telephony/HtcWrapSmsMessage$DeliveryPdu;->mDPdu:Landroid/telephony/SmsMessage$DeliveryPdu;

    iget-object v0, v0, Landroid/telephony/SmsMessage$DeliveryPdu;->encodedOriginatorAddress:[B

    return-object v0
.end method

.method public getMessageLength()I
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/htc/wrap/android/telephony/HtcWrapSmsMessage$DeliveryPdu;->mDPdu:Landroid/telephony/SmsMessage$DeliveryPdu;

    invoke-virtual {v0}, Landroid/telephony/SmsMessage$DeliveryPdu;->getMessageLength()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/htc/wrap/android/telephony/HtcWrapSmsMessage$DeliveryPdu;->mDPdu:Landroid/telephony/SmsMessage$DeliveryPdu;

    invoke-virtual {v0}, Landroid/telephony/SmsMessage$DeliveryPdu;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
