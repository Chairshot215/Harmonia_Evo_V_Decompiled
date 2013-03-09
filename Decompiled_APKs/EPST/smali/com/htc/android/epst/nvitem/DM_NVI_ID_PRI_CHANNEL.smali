.class public Lcom/htc/android/epst/nvitem/DM_NVI_ID_PRI_CHANNEL;
.super Lcom/htc/android/epst/nvitem/NvItemBase;
.source "DM_NVI_ID_PRI_CHANNEL.java"


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

    iput-object v0, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_PRI_CHANNEL;->NAM:Ljava/lang/String;

    .line 13
    const-string v0, "0000"

    iput-object v0, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_PRI_CHANNEL;->CHANNEL_A:Ljava/lang/String;

    .line 14
    const-string v0, "0000"

    iput-object v0, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_PRI_CHANNEL;->CHANNEL_B:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public generateCmdData()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x4

    .line 49
    iget-object v3, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_PRI_CHANNEL;->CHANNEL_A:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 50
    .local v2, convert:I
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    .line 51
    .local v0, channelA:Ljava/lang/String;
    invoke-static {v0, v4}, Lcom/htc/android/epst/Utility;->pendZero(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 52
    invoke-static {v0}, Lcom/htc/android/epst/Utility;->ReverseByte(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 54
    iget-object v3, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_PRI_CHANNEL;->CHANNEL_B:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 55
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    .line 56
    .local v1, channelB:Ljava/lang/String;
    invoke-static {v1, v4}, Lcom/htc/android/epst/Utility;->pendZero(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 57
    invoke-static {v1}, Lcom/htc/android/epst/Utility;->ReverseByte(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 59
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_PRI_CHANNEL;->NAM:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_PRI_CHANNEL;->mCurrentCmdData:Ljava/lang/String;

    .line 61
    iget-object v3, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_PRI_CHANNEL;->mCurrentCmdData:Ljava/lang/String;

    return-object v3
.end method

.method public getPriChannelA()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_PRI_CHANNEL;->CHANNEL_A:Ljava/lang/String;

    return-object v0
.end method

.method public getPriChannelB()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_PRI_CHANNEL;->CHANNEL_B:Ljava/lang/String;

    return-object v0
.end method

.method public read()V
    .locals 7

    .prologue
    const/16 v6, 0x10

    const/4 v5, 0x6

    const/4 v4, 0x2

    .line 35
    invoke-static {}, Lcom/htc/android/epst/internal/CmdParser;->getSingleton()Lcom/htc/android/epst/internal/CmdParser;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_PRI_CHANNEL;->mCmdToBeParsed:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/htc/android/epst/internal/CmdParser;->getResult(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_PRI_CHANNEL;->NAM:Ljava/lang/String;

    .line 36
    invoke-static {}, Lcom/htc/android/epst/internal/CmdParser;->getSingleton()Lcom/htc/android/epst/internal/CmdParser;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_PRI_CHANNEL;->mCmdToBeParsed:Ljava/lang/String;

    invoke-virtual {v1, v2, v4, v5}, Lcom/htc/android/epst/internal/CmdParser;->getResult(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    .line 37
    .local v0, tmp:Ljava/lang/String;
    invoke-static {v0, v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_PRI_CHANNEL;->CHANNEL_A:Ljava/lang/String;

    .line 38
    invoke-static {}, Lcom/htc/android/epst/internal/CmdParser;->getSingleton()Lcom/htc/android/epst/internal/CmdParser;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_PRI_CHANNEL;->mCmdToBeParsed:Ljava/lang/String;

    const/16 v3, 0xa

    invoke-virtual {v1, v2, v5, v3}, Lcom/htc/android/epst/internal/CmdParser;->getResult(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    .line 39
    invoke-static {v0, v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_PRI_CHANNEL;->CHANNEL_B:Ljava/lang/String;

    .line 40
    return-void
.end method

.method public setPriChannelA(Ljava/lang/String;)V
    .locals 0
    .parameter "val"

    .prologue
    .line 17
    iput-object p1, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_PRI_CHANNEL;->CHANNEL_A:Ljava/lang/String;

    .line 18
    return-void
.end method

.method public setPriChannelB(Ljava/lang/String;)V
    .locals 0
    .parameter "val"

    .prologue
    .line 25
    iput-object p1, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_PRI_CHANNEL;->CHANNEL_B:Ljava/lang/String;

    .line 26
    return-void
.end method

.method public write()V
    .locals 0

    .prologue
    .line 44
    invoke-virtual {p0}, Lcom/htc/android/epst/nvitem/DM_NVI_ID_PRI_CHANNEL;->read()V

    .line 45
    return-void
.end method
