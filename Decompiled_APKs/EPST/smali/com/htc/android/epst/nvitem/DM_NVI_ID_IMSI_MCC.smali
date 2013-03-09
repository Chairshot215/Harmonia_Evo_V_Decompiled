.class public Lcom/htc/android/epst/nvitem/DM_NVI_ID_IMSI_MCC;
.super Lcom/htc/android/epst/nvitem/NvItemBase;
.source "DM_NVI_ID_IMSI_MCC.java"

# interfaces
.implements Lcom/htc/android/epst/internal/DataChangeListener;


# instance fields
.field private IMSI_MCC:Ljava/lang/String;

.field private NAM:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/htc/android/epst/nvitem/NvItemBase;-><init>()V

    .line 11
    const-string v0, "00"

    iput-object v0, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_IMSI_MCC;->NAM:Ljava/lang/String;

    .line 12
    const-string v0, "0000"

    iput-object v0, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_IMSI_MCC;->IMSI_MCC:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public generateCmdData()Ljava/lang/String;
    .locals 6

    .prologue
    .line 40
    iget-object v3, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_IMSI_MCC;->IMSI_MCC:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 41
    .local v0, mcc:J
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-wide/16 v4, 0x3

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/android/epst/Utility;->EncodeBCD(Ljava/lang/Long;Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 42
    invoke-static {v0, v1}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v2

    .line 43
    .local v2, strMcc:Ljava/lang/String;
    const/4 v3, 0x4

    invoke-static {v2, v3}, Lcom/htc/android/epst/Utility;->pendZero(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 44
    invoke-static {v2}, Lcom/htc/android/epst/Utility;->ReverseByte(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 46
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_IMSI_MCC;->NAM:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_IMSI_MCC;->mCurrentCmdData:Ljava/lang/String;

    .line 48
    iget-object v3, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_IMSI_MCC;->mCurrentCmdData:Ljava/lang/String;

    return-object v3
.end method

.method public getMcc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_IMSI_MCC;->IMSI_MCC:Ljava/lang/String;

    return-object v0
.end method

.method public onDataChange(Ljava/lang/Object;)V
    .locals 0
    .parameter "data"

    .prologue
    .line 54
    return-void
.end method

.method public read()V
    .locals 9

    .prologue
    const/4 v8, 0x2

    .line 25
    invoke-static {}, Lcom/htc/android/epst/internal/CmdParser;->getSingleton()Lcom/htc/android/epst/internal/CmdParser;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_IMSI_MCC;->mCmdToBeParsed:Ljava/lang/String;

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7, v8}, Lcom/htc/android/epst/internal/CmdParser;->getResult(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_IMSI_MCC;->NAM:Ljava/lang/String;

    .line 26
    invoke-static {}, Lcom/htc/android/epst/internal/CmdParser;->getSingleton()Lcom/htc/android/epst/internal/CmdParser;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_IMSI_MCC;->mCmdToBeParsed:Ljava/lang/String;

    const/4 v7, 0x6

    invoke-virtual {v5, v6, v8, v7}, Lcom/htc/android/epst/internal/CmdParser;->getResult(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v2

    .line 27
    .local v2, nonDecode:Ljava/lang/String;
    const/16 v5, 0x10

    invoke-static {v2, v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v3

    .line 28
    .local v3, nonDecodeVal:J
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const-wide/16 v6, 0x3

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/android/epst/Utility;->DecodeBCD(Ljava/lang/Long;Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 29
    .local v0, decodeVal:J
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x3

    invoke-static {v5, v6}, Lcom/htc/android/epst/Utility;->pendZero(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_IMSI_MCC;->IMSI_MCC:Ljava/lang/String;

    .line 30
    return-void
.end method

.method public returnGenerateCmdData()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x0

    return-object v0
.end method

.method public setMcc(Ljava/lang/String;)V
    .locals 1
    .parameter "val"

    .prologue
    .line 15
    const/4 v0, 0x3

    invoke-static {p1, v0}, Lcom/htc/android/epst/Utility;->pendZero(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_IMSI_MCC;->IMSI_MCC:Ljava/lang/String;

    .line 16
    return-void
.end method

.method public write()V
    .locals 0

    .prologue
    .line 34
    invoke-virtual {p0}, Lcom/htc/android/epst/nvitem/DM_NVI_ID_IMSI_MCC;->read()V

    .line 35
    return-void
.end method
