.class public Lcom/htc/android/epst/nvitem/DM_NVI_ID_IMSI_T_S2;
.super Lcom/htc/android/epst/nvitem/NvItemBase;
.source "DM_NVI_ID_IMSI_T_S2.java"

# interfaces
.implements Lcom/htc/android/epst/internal/DataChangeListener;


# instance fields
.field private ANALOG_TMIN2:Ljava/lang/String;

.field private CDMA_TMIN2:Ljava/lang/String;

.field private NAM:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/htc/android/epst/nvitem/NvItemBase;-><init>()V

    .line 13
    const-string v0, "00"

    iput-object v0, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_IMSI_T_S2;->NAM:Ljava/lang/String;

    .line 14
    const-string v0, "0000"

    iput-object v0, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_IMSI_T_S2;->ANALOG_TMIN2:Ljava/lang/String;

    .line 15
    const-string v0, "0000"

    iput-object v0, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_IMSI_T_S2;->CDMA_TMIN2:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public generateCmdData()Ljava/lang/String;
    .locals 13

    .prologue
    const-wide/16 v11, 0x3

    const/4 v10, 0x4

    .line 48
    iget-object v8, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_IMSI_T_S2;->ANALOG_TMIN2:Ljava/lang/String;

    if-nez v8, :cond_0

    .line 49
    const-string v8, "000"

    iput-object v8, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_IMSI_T_S2;->ANALOG_TMIN2:Ljava/lang/String;

    .line 51
    :cond_0
    iget-object v8, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_IMSI_T_S2;->ANALOG_TMIN2:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 52
    .local v2, dwAnalogTMin2:J
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/htc/android/epst/Utility;->EncodeBCD(Ljava/lang/Long;Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 53
    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v6

    .line 54
    .local v6, strHexAnalogTMin2:Ljava/lang/String;
    invoke-static {v6, v10}, Lcom/htc/android/epst/Utility;->pendZero(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    .line 55
    invoke-static {v6}, Lcom/htc/android/epst/Utility;->ReverseByte(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 57
    .local v0, analogTMin2:Ljava/lang/String;
    iget-object v8, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_IMSI_T_S2;->CDMA_TMIN2:Ljava/lang/String;

    if-nez v8, :cond_1

    .line 58
    const-string v8, "000"

    iput-object v8, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_IMSI_T_S2;->ANALOG_TMIN2:Ljava/lang/String;

    .line 60
    :cond_1
    iget-object v8, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_IMSI_T_S2;->CDMA_TMIN2:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 61
    .local v4, dwCdmaTMin2:J
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/htc/android/epst/Utility;->EncodeBCD(Ljava/lang/Long;Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 62
    invoke-static {v4, v5}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v7

    .line 63
    .local v7, strHexCdmaTMin2:Ljava/lang/String;
    invoke-static {v7, v10}, Lcom/htc/android/epst/Utility;->pendZero(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    .line 64
    invoke-static {v7}, Lcom/htc/android/epst/Utility;->ReverseByte(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 67
    .local v1, cdmaTMin2:Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_IMSI_T_S2;->NAM:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_IMSI_T_S2;->mCurrentCmdData:Ljava/lang/String;

    .line 69
    iget-object v8, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_IMSI_T_S2;->mCurrentCmdData:Ljava/lang/String;

    return-object v8
.end method

.method public getCdmaTMin2()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_IMSI_T_S2;->CDMA_TMIN2:Ljava/lang/String;

    return-object v0
.end method

.method public onDataChange(Ljava/lang/Object;)V
    .locals 1
    .parameter "data"

    .prologue
    .line 87
    check-cast p1, Lcom/htc/android/epst/nvitem/DM_NVI_ID_MIN2;

    .end local p1
    invoke-virtual {p1}, Lcom/htc/android/epst/nvitem/DM_NVI_ID_MIN2;->getCdmaMin2()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_IMSI_T_S2;->CDMA_TMIN2:Ljava/lang/String;

    .line 88
    return-void
.end method

.method public read()V
    .locals 11

    .prologue
    const/16 v10, 0x10

    const/4 v9, 0x6

    const/4 v4, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 29
    invoke-static {}, Lcom/htc/android/epst/internal/CmdParser;->getSingleton()Lcom/htc/android/epst/internal/CmdParser;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_IMSI_T_S2;->mCmdToBeParsed:Ljava/lang/String;

    invoke-virtual {v2, v3, v7, v4}, Lcom/htc/android/epst/internal/CmdParser;->getResult(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_IMSI_T_S2;->NAM:Ljava/lang/String;

    .line 31
    iget-object v2, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_IMSI_T_S2;->mCmdToBeParsed:Ljava/lang/String;

    invoke-virtual {v2, v4, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/htc/android/epst/Utility;->ReverseByte(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v0

    .line 34
    .local v0, dwMin2:J
    const-string v2, "%03d"

    new-array v3, v8, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-wide/16 v5, 0x3

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/android/epst/Utility;->DecodeBCD(Ljava/lang/Long;Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_IMSI_T_S2;->ANALOG_TMIN2:Ljava/lang/String;

    .line 36
    iget-object v2, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_IMSI_T_S2;->mCmdToBeParsed:Ljava/lang/String;

    const/16 v3, 0xa

    invoke-virtual {v2, v9, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/htc/android/epst/Utility;->ReverseByte(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v0

    .line 39
    const-string v2, "%03d"

    new-array v3, v8, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-wide/16 v5, 0x3

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/android/epst/Utility;->DecodeBCD(Ljava/lang/Long;Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_IMSI_T_S2;->CDMA_TMIN2:Ljava/lang/String;

    .line 40
    return-void
.end method

.method public setCdmaTMin2(Ljava/lang/String;)V
    .locals 0
    .parameter "data"

    .prologue
    .line 18
    iput-object p1, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_IMSI_T_S2;->CDMA_TMIN2:Ljava/lang/String;

    .line 20
    return-void
.end method

.method public write()V
    .locals 0

    .prologue
    .line 44
    invoke-virtual {p0}, Lcom/htc/android/epst/nvitem/DM_NVI_ID_IMSI_T_S2;->read()V

    .line 45
    return-void
.end method
