.class public Lcom/htc/android/epst/nvitem/DM_NVI_ID_SEC_CHANNEL;
.super Lcom/htc/android/epst/nvitem/NvItemBase;
.source "DM_NVI_ID_SEC_CHANNEL.java"


# instance fields
.field private CHANNEL_A:Ljava/lang/String;

.field private CHANNEL_B:Ljava/lang/String;

.field private NAM:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/htc/android/epst/nvitem/NvItemBase;-><init>()V

    .line 12
    const-string v0, "00"

    iput-object v0, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_SEC_CHANNEL;->NAM:Ljava/lang/String;

    .line 13
    const-string v0, "0000"

    iput-object v0, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_SEC_CHANNEL;->CHANNEL_A:Ljava/lang/String;

    .line 14
    const-string v0, "0000"

    iput-object v0, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_SEC_CHANNEL;->CHANNEL_B:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public generateCmdData()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x4

    .line 50
    iget-object v3, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_SEC_CHANNEL;->CHANNEL_A:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 51
    .local v2, convert:I
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    .line 52
    .local v0, channelA:Ljava/lang/String;
    invoke-static {v0, v4}, Lcom/htc/android/epst/Utility;->pendZero(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 53
    invoke-static {v0}, Lcom/htc/android/epst/Utility;->ReverseByte(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 55
    iget-object v3, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_SEC_CHANNEL;->CHANNEL_B:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 56
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    .line 57
    .local v1, channelB:Ljava/lang/String;
    invoke-static {v1, v4}, Lcom/htc/android/epst/Utility;->pendZero(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 58
    invoke-static {v1}, Lcom/htc/android/epst/Utility;->ReverseByte(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 60
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_SEC_CHANNEL;->NAM:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_SEC_CHANNEL;->mCurrentCmdData:Ljava/lang/String;

    .line 62
    iget-object v3, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_SEC_CHANNEL;->mCurrentCmdData:Ljava/lang/String;

    return-object v3
.end method

.method public getSecChannelA()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_SEC_CHANNEL;->CHANNEL_A:Ljava/lang/String;

    return-object v0
.end method

.method public getSecChannelB()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_SEC_CHANNEL;->CHANNEL_B:Ljava/lang/String;

    return-object v0
.end method

.method public read()V
    .locals 7

    .prologue
    const/16 v6, 0x10

    const/4 v5, 0x6

    const/4 v4, 0x2

    .line 36
    invoke-static {}, Lcom/htc/android/epst/internal/CmdParser;->getSingleton()Lcom/htc/android/epst/internal/CmdParser;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_SEC_CHANNEL;->mCmdToBeParsed:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/htc/android/epst/internal/CmdParser;->getResult(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_SEC_CHANNEL;->NAM:Ljava/lang/String;

    .line 37
    invoke-static {}, Lcom/htc/android/epst/internal/CmdParser;->getSingleton()Lcom/htc/android/epst/internal/CmdParser;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_SEC_CHANNEL;->mCmdToBeParsed:Ljava/lang/String;

    invoke-virtual {v1, v2, v4, v5}, Lcom/htc/android/epst/internal/CmdParser;->getResult(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    .line 38
    .local v0, tmp:Ljava/lang/String;
    invoke-static {v0, v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_SEC_CHANNEL;->CHANNEL_A:Ljava/lang/String;

    .line 39
    invoke-static {}, Lcom/htc/android/epst/internal/CmdParser;->getSingleton()Lcom/htc/android/epst/internal/CmdParser;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_SEC_CHANNEL;->mCmdToBeParsed:Ljava/lang/String;

    const/16 v3, 0xa

    invoke-virtual {v1, v2, v5, v3}, Lcom/htc/android/epst/internal/CmdParser;->getResult(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    .line 40
    invoke-static {v0, v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_SEC_CHANNEL;->CHANNEL_B:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public setSecChannelA(Ljava/lang/String;)V
    .locals 0
    .parameter "val"

    .prologue
    .line 18
    iput-object p1, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_SEC_CHANNEL;->CHANNEL_A:Ljava/lang/String;

    .line 19
    return-void
.end method

.method public setSecChannelB(Ljava/lang/String;)V
    .locals 0
    .parameter "val"

    .prologue
    .line 26
    iput-object p1, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_SEC_CHANNEL;->CHANNEL_B:Ljava/lang/String;

    .line 27
    return-void
.end method

.method public write()V
    .locals 0

    .prologue
    .line 45
    invoke-virtual {p0}, Lcom/htc/android/epst/nvitem/DM_NVI_ID_SEC_CHANNEL;->read()V

    .line 46
    return-void
.end method
