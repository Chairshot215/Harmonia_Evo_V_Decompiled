.class public Lcom/htc/android/epst/nvitem/NV_HTC_VORA_SIP_MSG_DIGEST_PWD_I;
.super Lcom/htc/android/epst/nvitem/NvItemBase;
.source "NV_HTC_VORA_SIP_MSG_DIGEST_PWD_I.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "NV_HTC_VORA_SIP_MSG_DIGEST_PWD_I"

.field public static final NV_MAX_SIZE:I = 0x20


# instance fields
.field private DATA:Ljava/lang/String;

.field private LENGTH:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 6
    invoke-direct {p0}, Lcom/htc/android/epst/nvitem/NvItemBase;-><init>()V

    .line 17
    const-string v0, "00"

    iput-object v0, p0, Lcom/htc/android/epst/nvitem/NV_HTC_VORA_SIP_MSG_DIGEST_PWD_I;->LENGTH:Ljava/lang/String;

    .line 18
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/android/epst/nvitem/NV_HTC_VORA_SIP_MSG_DIGEST_PWD_I;->DATA:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public generateCmdData()Ljava/lang/String;
    .locals 3

    .prologue
    .line 49
    iget-object v1, p0, Lcom/htc/android/epst/nvitem/NV_HTC_VORA_SIP_MSG_DIGEST_PWD_I;->DATA:Ljava/lang/String;

    invoke-static {v1}, Lcom/htc/android/epst/Utility;->ASCIIToString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 50
    .local v0, ReverseName:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/htc/android/epst/nvitem/NV_HTC_VORA_SIP_MSG_DIGEST_PWD_I;->LENGTH:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/epst/nvitem/NV_HTC_VORA_SIP_MSG_DIGEST_PWD_I;->mCurrentCmdData:Ljava/lang/String;

    .line 51
    iget-object v1, p0, Lcom/htc/android/epst/nvitem/NV_HTC_VORA_SIP_MSG_DIGEST_PWD_I;->mCurrentCmdData:Ljava/lang/String;

    return-object v1
.end method

.method public getData()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/htc/android/epst/nvitem/NV_HTC_VORA_SIP_MSG_DIGEST_PWD_I;->DATA:Ljava/lang/String;

    return-object v0
.end method

.method public getLength()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/htc/android/epst/nvitem/NV_HTC_VORA_SIP_MSG_DIGEST_PWD_I;->LENGTH:Ljava/lang/String;

    return-object v0
.end method

.method public read()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 36
    iget-object v1, p0, Lcom/htc/android/epst/nvitem/NV_HTC_VORA_SIP_MSG_DIGEST_PWD_I;->mCmdToBeParsed:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/epst/nvitem/NV_HTC_VORA_SIP_MSG_DIGEST_PWD_I;->LENGTH:Ljava/lang/String;

    .line 37
    iget-object v1, p0, Lcom/htc/android/epst/nvitem/NV_HTC_VORA_SIP_MSG_DIGEST_PWD_I;->LENGTH:Ljava/lang/String;

    const/16 v2, 0x10

    invoke-static {v1, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    .line 39
    .local v0, length:I
    const/16 v1, 0x20

    if-le v0, v1, :cond_0

    .line 40
    const/16 v0, 0x20

    .line 42
    :cond_0
    if-lez v0, :cond_1

    .line 43
    iget-object v1, p0, Lcom/htc/android/epst/nvitem/NV_HTC_VORA_SIP_MSG_DIGEST_PWD_I;->mCmdToBeParsed:Ljava/lang/String;

    mul-int/lit8 v2, v0, 0x2

    add-int/lit8 v2, v2, 0x2

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/android/epst/Utility;->StringToASCII(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/epst/nvitem/NV_HTC_VORA_SIP_MSG_DIGEST_PWD_I;->DATA:Ljava/lang/String;

    .line 44
    sget-boolean v1, Lcom/htc/android/epst/EntryEPSTInfo;->DBG:Z

    if-eqz v1, :cond_1

    const-string v1, "NV_HTC_VORA_SIP_MSG_DIGEST_PWD_I"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NV_HTC_VORA_SIP_MSG_DIGEST_PWD_I:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/android/epst/nvitem/NV_HTC_VORA_SIP_MSG_DIGEST_PWD_I;->DATA:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " length:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    :cond_1
    return-void
.end method

.method public setData(Ljava/lang/String;)V
    .locals 0
    .parameter "iData"

    .prologue
    .line 31
    iput-object p1, p0, Lcom/htc/android/epst/nvitem/NV_HTC_VORA_SIP_MSG_DIGEST_PWD_I;->DATA:Ljava/lang/String;

    .line 32
    return-void
.end method

.method public setLength(Ljava/lang/String;)V
    .locals 0
    .parameter "pwdLength"

    .prologue
    .line 24
    iput-object p1, p0, Lcom/htc/android/epst/nvitem/NV_HTC_VORA_SIP_MSG_DIGEST_PWD_I;->LENGTH:Ljava/lang/String;

    .line 25
    return-void
.end method
