.class public Lcom/htc/android/epst/nvitem/DM_NVI_ID_IMSI_11_12;
.super Lcom/htc/android/epst/nvitem/NvItemBase;
.source "DM_NVI_ID_IMSI_11_12.java"

# interfaces
.implements Lcom/htc/android/epst/internal/DataChangeListener;


# instance fields
.field private IMSI_11_12:Ljava/lang/String;

.field private NAM:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/htc/android/epst/nvitem/NvItemBase;-><init>()V

    .line 13
    const-string v0, "00"

    iput-object v0, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_IMSI_11_12;->NAM:Ljava/lang/String;

    .line 14
    const-string v0, "00"

    iput-object v0, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_IMSI_11_12;->IMSI_11_12:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public generateCmdData()Ljava/lang/String;
    .locals 6

    .prologue
    .line 45
    iget-object v3, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_IMSI_11_12;->IMSI_11_12:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 46
    .local v0, mnc:J
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-wide/16 v4, 0x2

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/android/epst/Utility;->EncodeBCD(Ljava/lang/Long;Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 47
    invoke-static {v0, v1}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v2

    .line 48
    .local v2, strMnc:Ljava/lang/String;
    const/4 v3, 0x2

    invoke-static {v2, v3}, Lcom/htc/android/epst/Utility;->pendZero(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 49
    invoke-static {v2}, Lcom/htc/android/epst/Utility;->ReverseByte(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 51
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_IMSI_11_12;->NAM:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_IMSI_11_12;->mCurrentCmdData:Ljava/lang/String;

    .line 53
    iget-object v3, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_IMSI_11_12;->mCurrentCmdData:Ljava/lang/String;

    return-object v3
.end method

.method public getMnc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_IMSI_11_12;->IMSI_11_12:Ljava/lang/String;

    return-object v0
.end method

.method public onDataChange(Ljava/lang/Object;)V
    .locals 0
    .parameter "data"

    .prologue
    .line 58
    return-void
.end method

.method public read()V
    .locals 9

    .prologue
    const/4 v8, 0x2

    .line 27
    invoke-static {}, Lcom/htc/android/epst/internal/CmdParser;->getSingleton()Lcom/htc/android/epst/internal/CmdParser;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_IMSI_11_12;->mCmdToBeParsed:Ljava/lang/String;

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7, v8}, Lcom/htc/android/epst/internal/CmdParser;->getResult(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_IMSI_11_12;->NAM:Ljava/lang/String;

    .line 28
    invoke-static {}, Lcom/htc/android/epst/internal/CmdParser;->getSingleton()Lcom/htc/android/epst/internal/CmdParser;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_IMSI_11_12;->mCmdToBeParsed:Ljava/lang/String;

    const/4 v7, 0x4

    invoke-virtual {v5, v6, v8, v7}, Lcom/htc/android/epst/internal/CmdParser;->getResult(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v2

    .line 29
    .local v2, nonDecode:Ljava/lang/String;
    const/16 v5, 0x10

    invoke-static {v2, v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v3

    .line 30
    .local v3, nonDecodeVal:J
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const-wide/16 v6, 0x2

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/android/epst/Utility;->DecodeBCD(Ljava/lang/Long;Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 31
    .local v0, decodeVal:J
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_IMSI_11_12;->IMSI_11_12:Ljava/lang/String;

    .line 32
    iget-object v5, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_IMSI_11_12;->IMSI_11_12:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v5, v8, :cond_0

    .line 33
    iget-object v5, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_IMSI_11_12;->IMSI_11_12:Ljava/lang/String;

    invoke-static {v5, v8}, Lcom/htc/android/epst/Utility;->pendZero(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_IMSI_11_12;->IMSI_11_12:Ljava/lang/String;

    .line 35
    :cond_0
    return-void
.end method

.method public returnGenerateCmdData()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    const/4 v0, 0x0

    return-object v0
.end method

.method public setMnc(Ljava/lang/String;)V
    .locals 0
    .parameter "val"

    .prologue
    .line 21
    iput-object p1, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_IMSI_11_12;->IMSI_11_12:Ljava/lang/String;

    .line 22
    return-void
.end method

.method public write()V
    .locals 0

    .prologue
    .line 39
    invoke-virtual {p0}, Lcom/htc/android/epst/nvitem/DM_NVI_ID_IMSI_11_12;->read()V

    .line 40
    return-void
.end method
