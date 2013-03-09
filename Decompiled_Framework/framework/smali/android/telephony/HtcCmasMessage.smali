.class public Landroid/telephony/HtcCmasMessage;
.super Ljava/lang/Object;
.source "HtcCmasMessage.java"


# static fields
.field public static final CERTAINTY_LIKELY:I = 0x1

.field public static final CERTAINTY_OBSERVED:I = 0x0

.field public static final FORMAT_CDMA:I = 0x2

.field public static final FORMAT_GSM:I = 0x1

.field public static final FORMAT_UNKNOWN:I = 0x0

.field private static final LOG_TAG:Ljava/lang/String; = "SMS"

.field public static final SEVERITY_EXTREME:I = 0x0

.field public static final SEVERITY_SEVERE:I = 0x1

.field public static final URGENCY_EXPECTED:I = 0x1

.field public static final URGENCY_IMMEDIATE:I


# instance fields
.field protected alertHandling:I

.field protected alertText:[B

.field protected alertTextStr:Ljava/lang/String;

.field protected category:I

.field protected certainty:I

.field protected charSetEncoding:I

.field protected charSetEncodingSet:Z

.field protected cmasFormat:I

.field protected cmasId:I

.field protected cmasType:I

.field protected expiredMillis:J

.field protected gs:I

.field protected language:I

.field protected mPdu:[B

.field protected messageClass:Landroid/telephony/SmsMessage$MessageClass;

.field protected msgId:I

.field protected pageCount:I

.field protected pageSeg:I

.field protected protocolVersion:I

.field protected responseType:I

.field protected severity:I

.field protected sn:I

.field protected urgency:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Landroid/telephony/HtcCmasMessage;->cmasFormat:I

    iput-boolean v1, p0, Landroid/telephony/HtcCmasMessage;->charSetEncodingSet:Z

    iput v0, p0, Landroid/telephony/HtcCmasMessage;->category:I

    iput v0, p0, Landroid/telephony/HtcCmasMessage;->responseType:I

    iput v0, p0, Landroid/telephony/HtcCmasMessage;->severity:I

    iput v0, p0, Landroid/telephony/HtcCmasMessage;->urgency:I

    iput v0, p0, Landroid/telephony/HtcCmasMessage;->certainty:I

    iput v0, p0, Landroid/telephony/HtcCmasMessage;->cmasId:I

    iput v0, p0, Landroid/telephony/HtcCmasMessage;->alertHandling:I

    iput v0, p0, Landroid/telephony/HtcCmasMessage;->language:I

    sget-object v0, Landroid/telephony/SmsMessage$MessageClass;->UNKNOWN:Landroid/telephony/SmsMessage$MessageClass;

    iput-object v0, p0, Landroid/telephony/HtcCmasMessage;->messageClass:Landroid/telephony/SmsMessage$MessageClass;

    iput v1, p0, Landroid/telephony/HtcCmasMessage;->cmasType:I

    return-void
.end method

.method public static getCmaeCategory(II)Ljava/lang/String;
    .locals 1

    packed-switch p0, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :pswitch_0
    invoke-static {p1}, Lcom/android/internal/telephony/cdma/sms/CdmaCmasMessage;->getCmaeCategory(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public static getCmaeCertainty(I)Ljava/lang/String;
    .locals 2

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    packed-switch p0, :pswitch_data_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :pswitch_0
    const v1, 0x104052a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :pswitch_1
    const v1, 0x104052b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static getCmaeResponseType(II)Ljava/lang/String;
    .locals 1

    packed-switch p0, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :pswitch_0
    invoke-static {p1}, Lcom/android/internal/telephony/cdma/sms/CdmaCmasMessage;->getCmaeResponseType(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public static getCmaeSeverity(I)Ljava/lang/String;
    .locals 2

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    packed-switch p0, :pswitch_data_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :pswitch_0
    const v1, 0x1040526

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :pswitch_1
    const v1, 0x1040527

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static getCmaeUrgency(I)Ljava/lang/String;
    .locals 2

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    packed-switch p0, :pswitch_data_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :pswitch_0
    const v1, 0x1040528

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :pswitch_1
    const v1, 0x1040529

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static getCmasMessage(I[B)Landroid/telephony/HtcCmasMessage;
    .locals 1

    packed-switch p0, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :pswitch_0
    new-instance v0, Lcom/android/internal/telephony/gsm/GsmCmasMessage;

    invoke-direct {v0}, Lcom/android/internal/telephony/gsm/GsmCmasMessage;-><init>()V

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gsm/GsmCmasMessage;->parseGsmPdu([B)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static getGsmAllCmasChannelCount()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method public static getGsmAllCmasChannelListStr()Ljava/lang/String;
    .locals 1

    const-string v0, "4370,4371,4372,4373,4374,4375,4376,4377,4378,4379,4380"

    return-object v0
.end method

.method public static getGsmCmasChannelList(I)[I
    .locals 3

    const/4 v1, 0x4

    const/4 v0, 0x1

    const/4 v2, 0x0

    packed-switch p0, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :pswitch_0
    new-array v0, v0, [I

    const/16 v1, 0x1112

    aput v1, v0, v2

    goto :goto_0

    :pswitch_1
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    goto :goto_0

    :pswitch_2
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    goto :goto_0

    :pswitch_3
    new-array v0, v0, [I

    const/16 v1, 0x111b

    aput v1, v0, v2

    goto :goto_0

    :pswitch_4
    new-array v0, v0, [I

    const/16 v1, 0x111c

    aput v1, v0, v2

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    :array_0
    .array-data 0x4
        0x13t 0x11t 0x0t 0x0t
        0x14t 0x11t 0x0t 0x0t
        0x15t 0x11t 0x0t 0x0t
        0x16t 0x11t 0x0t 0x0t
    .end array-data

    :array_1
    .array-data 0x4
        0x17t 0x11t 0x0t 0x0t
        0x18t 0x11t 0x0t 0x0t
        0x19t 0x11t 0x0t 0x0t
        0x1at 0x11t 0x0t 0x0t
    .end array-data
.end method

.method public static getGsmCmasChannelListStr(I)Ljava/lang/String;
    .locals 1

    packed-switch p0, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :pswitch_0
    const-string v0, "4370"

    goto :goto_0

    :pswitch_1
    const-string v0, "4371-4374"

    goto :goto_0

    :pswitch_2
    const-string v0, "4375-4378"

    goto :goto_0

    :pswitch_3
    const-string v0, "4379"

    goto :goto_0

    :pswitch_4
    const-string v0, "4380"

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static isGsmCmas(I)Z
    .locals 1

    const/16 v0, 0x1112

    if-lt p0, v0, :cond_0

    const/16 v0, 0x111c

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getAlertHandling()I
    .locals 1

    iget v0, p0, Landroid/telephony/HtcCmasMessage;->alertHandling:I

    return v0
.end method

.method public getAlertText()[B
    .locals 1

    iget-object v0, p0, Landroid/telephony/HtcCmasMessage;->alertText:[B

    return-object v0
.end method

.method public getAlertTextStr()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/telephony/HtcCmasMessage;->alertTextStr:Ljava/lang/String;

    return-object v0
.end method

.method public getCategory()I
    .locals 1

    iget v0, p0, Landroid/telephony/HtcCmasMessage;->category:I

    return v0
.end method

.method public getCertainty()I
    .locals 1

    iget v0, p0, Landroid/telephony/HtcCmasMessage;->certainty:I

    return v0
.end method

.method public getCharSetEncoding()I
    .locals 1

    iget v0, p0, Landroid/telephony/HtcCmasMessage;->charSetEncoding:I

    return v0
.end method

.method public getCmasFormat()I
    .locals 1

    iget v0, p0, Landroid/telephony/HtcCmasMessage;->cmasFormat:I

    return v0
.end method

.method public getCmasId()I
    .locals 1

    iget v0, p0, Landroid/telephony/HtcCmasMessage;->cmasId:I

    return v0
.end method

.method public getCmasType()I
    .locals 1

    iget v0, p0, Landroid/telephony/HtcCmasMessage;->cmasType:I

    return v0
.end method

.method public getExpiredMillis()J
    .locals 2

    iget-wide v0, p0, Landroid/telephony/HtcCmasMessage;->expiredMillis:J

    return-wide v0
.end method

.method public getGs()I
    .locals 1

    iget v0, p0, Landroid/telephony/HtcCmasMessage;->gs:I

    return v0
.end method

.method public getLanguage()I
    .locals 1

    iget v0, p0, Landroid/telephony/HtcCmasMessage;->language:I

    return v0
.end method

.method public getMessageClass()Landroid/telephony/SmsMessage$MessageClass;
    .locals 1

    iget-object v0, p0, Landroid/telephony/HtcCmasMessage;->messageClass:Landroid/telephony/SmsMessage$MessageClass;

    return-object v0
.end method

.method public getMsgId()I
    .locals 1

    iget v0, p0, Landroid/telephony/HtcCmasMessage;->msgId:I

    return v0
.end method

.method public getPageCount()I
    .locals 1

    iget v0, p0, Landroid/telephony/HtcCmasMessage;->pageCount:I

    return v0
.end method

.method public getPageSeg()I
    .locals 1

    iget v0, p0, Landroid/telephony/HtcCmasMessage;->pageSeg:I

    return v0
.end method

.method public getPdu()[B
    .locals 1

    iget-object v0, p0, Landroid/telephony/HtcCmasMessage;->mPdu:[B

    return-object v0
.end method

.method public getProtocolVersion()I
    .locals 1

    iget v0, p0, Landroid/telephony/HtcCmasMessage;->protocolVersion:I

    return v0
.end method

.method public getResponseType()I
    .locals 1

    iget v0, p0, Landroid/telephony/HtcCmasMessage;->responseType:I

    return v0
.end method

.method public getSeverity()I
    .locals 1

    iget v0, p0, Landroid/telephony/HtcCmasMessage;->severity:I

    return v0
.end method

.method public getSn()I
    .locals 1

    iget v0, p0, Landroid/telephony/HtcCmasMessage;->sn:I

    return v0
.end method

.method public getUrgency()I
    .locals 1

    iget v0, p0, Landroid/telephony/HtcCmasMessage;->urgency:I

    return v0
.end method

.method public isCharSetEncodingSet()Z
    .locals 1

    iget-boolean v0, p0, Landroid/telephony/HtcCmasMessage;->charSetEncodingSet:Z

    return v0
.end method

.method public parseGsmPdu([B)V
    .locals 0

    return-void
.end method

.method public setAlertHandling(I)V
    .locals 0

    iput p1, p0, Landroid/telephony/HtcCmasMessage;->alertHandling:I

    return-void
.end method

.method public setAlertText([B)V
    .locals 0

    iput-object p1, p0, Landroid/telephony/HtcCmasMessage;->alertText:[B

    return-void
.end method

.method public setAlertTextStr(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/telephony/HtcCmasMessage;->alertTextStr:Ljava/lang/String;

    return-void
.end method

.method public setCategory(I)V
    .locals 0

    iput p1, p0, Landroid/telephony/HtcCmasMessage;->category:I

    return-void
.end method

.method public setCertainty(I)V
    .locals 0

    iput p1, p0, Landroid/telephony/HtcCmasMessage;->certainty:I

    return-void
.end method

.method public setCharSetEncoding(I)V
    .locals 0

    iput p1, p0, Landroid/telephony/HtcCmasMessage;->charSetEncoding:I

    return-void
.end method

.method public setCharSetEncodingSet(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/telephony/HtcCmasMessage;->charSetEncodingSet:Z

    return-void
.end method

.method public setCmasFormat(I)V
    .locals 0

    iput p1, p0, Landroid/telephony/HtcCmasMessage;->cmasFormat:I

    return-void
.end method

.method public setCmasId(I)V
    .locals 0

    iput p1, p0, Landroid/telephony/HtcCmasMessage;->cmasId:I

    return-void
.end method

.method public setExpiredMillis(J)V
    .locals 0

    iput-wide p1, p0, Landroid/telephony/HtcCmasMessage;->expiredMillis:J

    return-void
.end method

.method public setGs(I)V
    .locals 0

    iput p1, p0, Landroid/telephony/HtcCmasMessage;->gs:I

    return-void
.end method

.method public setLanguage(I)V
    .locals 0

    iput p1, p0, Landroid/telephony/HtcCmasMessage;->language:I

    return-void
.end method

.method public setMessageClass(Landroid/telephony/SmsMessage$MessageClass;)V
    .locals 0

    iput-object p1, p0, Landroid/telephony/HtcCmasMessage;->messageClass:Landroid/telephony/SmsMessage$MessageClass;

    return-void
.end method

.method public setMsgId(I)V
    .locals 0

    iput p1, p0, Landroid/telephony/HtcCmasMessage;->msgId:I

    return-void
.end method

.method public setPageCount(I)V
    .locals 0

    iput p1, p0, Landroid/telephony/HtcCmasMessage;->pageCount:I

    return-void
.end method

.method public setPageSeg(I)V
    .locals 0

    iput p1, p0, Landroid/telephony/HtcCmasMessage;->pageSeg:I

    return-void
.end method

.method public setProtocolVersion(I)V
    .locals 0

    iput p1, p0, Landroid/telephony/HtcCmasMessage;->protocolVersion:I

    return-void
.end method

.method public setResponseType(I)V
    .locals 0

    iput p1, p0, Landroid/telephony/HtcCmasMessage;->responseType:I

    return-void
.end method

.method public setSeverity(I)V
    .locals 0

    iput p1, p0, Landroid/telephony/HtcCmasMessage;->severity:I

    return-void
.end method

.method public setSn(I)V
    .locals 0

    iput p1, p0, Landroid/telephony/HtcCmasMessage;->sn:I

    return-void
.end method

.method public setUrgency(I)V
    .locals 0

    iput p1, p0, Landroid/telephony/HtcCmasMessage;->urgency:I

    return-void
.end method

.method public setmPdu([B)V
    .locals 0

    iput-object p1, p0, Landroid/telephony/HtcCmasMessage;->mPdu:[B

    return-void
.end method
