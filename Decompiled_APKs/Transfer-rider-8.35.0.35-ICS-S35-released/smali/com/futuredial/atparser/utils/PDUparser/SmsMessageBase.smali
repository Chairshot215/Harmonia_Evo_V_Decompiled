.class public abstract Lcom/futuredial/atparser/utils/PDUparser/SmsMessageBase;
.super Ljava/lang/Object;
.source "SmsMessageBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/futuredial/atparser/utils/PDUparser/SmsMessageBase$SubmitPduBase;,
        Lcom/futuredial/atparser/utils/PDUparser/SmsMessageBase$TextEncodingDetails;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "SMS"


# instance fields
.field protected emailBody:Ljava/lang/String;

.field protected emailFrom:Ljava/lang/String;

.field protected indexOnIcc:I

.field protected isEmail:Z

.field protected isMwi:Z

.field protected mPdu:[B

.field protected messageBody:Ljava/lang/String;

.field public messageRef:I

.field protected mwiDontStore:Z

.field protected mwiSense:Z

.field protected originatingAddress:Lcom/futuredial/atparser/utils/PDUparser/SmsAddress;

.field protected pseudoSubject:Ljava/lang/String;

.field protected scAddress:Ljava/lang/String;

.field protected scTimeMillis:J

.field protected statusOnIcc:I

.field protected userData:[B

.field protected userDataHeader:Lcom/futuredial/atparser/utils/PDUparser/SmsHeader;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput v0, p0, Lcom/futuredial/atparser/utils/PDUparser/SmsMessageBase;->statusOnIcc:I

    .line 83
    iput v0, p0, Lcom/futuredial/atparser/utils/PDUparser/SmsMessageBase;->indexOnIcc:I

    .line 131
    return-void
.end method


# virtual methods
.method protected extractEmailAddressFromMessageBody()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 384
    iget-object v1, p0, Lcom/futuredial/atparser/utils/PDUparser/SmsMessageBase;->messageBody:Ljava/lang/String;

    const-string v2, "( /)|( )"

    invoke-virtual {v1, v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 385
    .local v0, parts:[Ljava/lang/String;
    array-length v1, v0

    if-ge v1, v4, :cond_0

    .line 389
    :goto_0
    return-void

    .line 386
    :cond_0
    const/4 v1, 0x0

    aget-object v1, v0, v1

    iput-object v1, p0, Lcom/futuredial/atparser/utils/PDUparser/SmsMessageBase;->emailFrom:Ljava/lang/String;

    .line 387
    aget-object v1, v0, v3

    iput-object v1, p0, Lcom/futuredial/atparser/utils/PDUparser/SmsMessageBase;->emailBody:Ljava/lang/String;

    .line 388
    iput-boolean v3, p0, Lcom/futuredial/atparser/utils/PDUparser/SmsMessageBase;->isEmail:Z

    goto :goto_0
.end method

.method public getDisplayMessageBody()Ljava/lang/String;
    .locals 1

    .prologue
    .line 194
    iget-boolean v0, p0, Lcom/futuredial/atparser/utils/PDUparser/SmsMessageBase;->isEmail:Z

    if-eqz v0, :cond_0

    .line 195
    iget-object v0, p0, Lcom/futuredial/atparser/utils/PDUparser/SmsMessageBase;->emailBody:Ljava/lang/String;

    .line 197
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/futuredial/atparser/utils/PDUparser/SmsMessageBase;->getMessageBody()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getDisplayOriginatingAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 169
    iget-boolean v0, p0, Lcom/futuredial/atparser/utils/PDUparser/SmsMessageBase;->isEmail:Z

    if-eqz v0, :cond_0

    .line 170
    iget-object v0, p0, Lcom/futuredial/atparser/utils/PDUparser/SmsMessageBase;->emailFrom:Ljava/lang/String;

    .line 172
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/futuredial/atparser/utils/PDUparser/SmsMessageBase;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getEmailBody()Ljava/lang/String;
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Lcom/futuredial/atparser/utils/PDUparser/SmsMessageBase;->emailBody:Ljava/lang/String;

    return-object v0
.end method

.method public getEmailFrom()Ljava/lang/String;
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Lcom/futuredial/atparser/utils/PDUparser/SmsMessageBase;->emailFrom:Ljava/lang/String;

    return-object v0
.end method

.method public getIndexOnIcc()I
    .locals 1

    .prologue
    .line 353
    iget v0, p0, Lcom/futuredial/atparser/utils/PDUparser/SmsMessageBase;->indexOnIcc:I

    return v0
.end method

.method public getMessageBody()Ljava/lang/String;
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/futuredial/atparser/utils/PDUparser/SmsMessageBase;->messageBody:Ljava/lang/String;

    return-object v0
.end method

.method public abstract getMessageClass()Landroid/telephony/SmsMessage$MessageClass;
.end method

.method public getOriginatingAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/futuredial/atparser/utils/PDUparser/SmsMessageBase;->originatingAddress:Lcom/futuredial/atparser/utils/PDUparser/SmsAddress;

    if-nez v0, :cond_0

    .line 157
    const/4 v0, 0x0

    .line 160
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/futuredial/atparser/utils/PDUparser/SmsMessageBase;->originatingAddress:Lcom/futuredial/atparser/utils/PDUparser/SmsAddress;

    invoke-virtual {v0}, Lcom/futuredial/atparser/utils/PDUparser/SmsAddress;->getAddressString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getPdu()[B
    .locals 1

    .prologue
    .line 307
    iget-object v0, p0, Lcom/futuredial/atparser/utils/PDUparser/SmsMessageBase;->mPdu:[B

    return-object v0
.end method

.method public abstract getProtocolIdentifier()I
.end method

.method public getPseudoSubject()Ljava/lang/String;
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lcom/futuredial/atparser/utils/PDUparser/SmsMessageBase;->pseudoSubject:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/futuredial/atparser/utils/PDUparser/SmsMessageBase;->pseudoSubject:Ljava/lang/String;

    goto :goto_0
.end method

.method public getServiceCenterAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/futuredial/atparser/utils/PDUparser/SmsMessageBase;->scAddress:Ljava/lang/String;

    return-object v0
.end method

.method public abstract getStatus()I
.end method

.method public getStatusOnIcc()I
    .locals 1

    .prologue
    .line 344
    iget v0, p0, Lcom/futuredial/atparser/utils/PDUparser/SmsMessageBase;->statusOnIcc:I

    return v0
.end method

.method public getTimestampMillis()J
    .locals 2

    .prologue
    .line 213
    iget-wide v0, p0, Lcom/futuredial/atparser/utils/PDUparser/SmsMessageBase;->scTimeMillis:J

    return-wide v0
.end method

.method public getUserData()[B
    .locals 1

    .prologue
    .line 284
    iget-object v0, p0, Lcom/futuredial/atparser/utils/PDUparser/SmsMessageBase;->userData:[B

    return-object v0
.end method

.method public getUserDataHeader()Lcom/futuredial/atparser/utils/PDUparser/SmsHeader;
    .locals 1

    .prologue
    .line 293
    iget-object v0, p0, Lcom/futuredial/atparser/utils/PDUparser/SmsMessageBase;->userDataHeader:Lcom/futuredial/atparser/utils/PDUparser/SmsHeader;

    return-object v0
.end method

.method public abstract isCphsMwiMessage()Z
.end method

.method public isEmail()Z
    .locals 1

    .prologue
    .line 223
    iget-boolean v0, p0, Lcom/futuredial/atparser/utils/PDUparser/SmsMessageBase;->isEmail:Z

    return v0
.end method

.method public abstract isMWIClearMessage()Z
.end method

.method public abstract isMWISetMessage()Z
.end method

.method public abstract isMwiDontStore()Z
.end method

.method public abstract isReplace()Z
.end method

.method public abstract isReplyPathPresent()Z
.end method

.method public abstract isStatusReportMessage()Z
.end method

.method protected parseMessageBody()V
    .locals 1

    .prologue
    .line 359
    iget-object v0, p0, Lcom/futuredial/atparser/utils/PDUparser/SmsMessageBase;->originatingAddress:Lcom/futuredial/atparser/utils/PDUparser/SmsAddress;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/futuredial/atparser/utils/PDUparser/SmsMessageBase;->originatingAddress:Lcom/futuredial/atparser/utils/PDUparser/SmsAddress;

    invoke-virtual {v0}, Lcom/futuredial/atparser/utils/PDUparser/SmsAddress;->couldBeEmailGateway()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 360
    invoke-virtual {p0}, Lcom/futuredial/atparser/utils/PDUparser/SmsMessageBase;->extractEmailAddressFromMessageBody()V

    .line 362
    :cond_0
    return-void
.end method
