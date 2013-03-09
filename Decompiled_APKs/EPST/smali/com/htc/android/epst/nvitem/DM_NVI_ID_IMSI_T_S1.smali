.class public Lcom/htc/android/epst/nvitem/DM_NVI_ID_IMSI_T_S1;
.super Lcom/htc/android/epst/nvitem/NvItemBase;
.source "DM_NVI_ID_IMSI_T_S1.java"

# interfaces
.implements Lcom/htc/android/epst/internal/DataChangeListener;


# instance fields
.field private ANALOG_TMIN1:Ljava/lang/String;

.field private CDMA_TMIN1:Ljava/lang/String;

.field private NAM:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/htc/android/epst/nvitem/NvItemBase;-><init>()V

    .line 15
    const-string v0, "00"

    iput-object v0, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_IMSI_T_S1;->NAM:Ljava/lang/String;

    .line 16
    const-string v0, "00000000"

    iput-object v0, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_IMSI_T_S1;->ANALOG_TMIN1:Ljava/lang/String;

    .line 17
    const-string v0, "00000000"

    iput-object v0, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_IMSI_T_S1;->CDMA_TMIN1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public changeRegistStructData(Lcom/htc/android/epst/nvitem/NvItemBase;)V
    .locals 0
    .parameter "data"

    .prologue
    .line 57
    return-void
.end method

.method public generateCmdData()Ljava/lang/String;
    .locals 10

    .prologue
    const/16 v9, 0x8

    .line 61
    iget-object v8, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_IMSI_T_S1;->ANALOG_TMIN1:Ljava/lang/String;

    if-nez v8, :cond_0

    .line 62
    const-string v8, "0000000"

    iput-object v8, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_IMSI_T_S1;->ANALOG_TMIN1:Ljava/lang/String;

    .line 64
    :cond_0
    iget-object v8, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_IMSI_T_S1;->ANALOG_TMIN1:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->toCharArray()[C

    move-result-object v8

    invoke-static {v8}, Lcom/htc/android/epst/Utility;->EncodeBCD_Min1([C)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 65
    .local v2, dwAnalogTMin1:J
    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v6

    .line 66
    .local v6, strHexAnalogTMin1:Ljava/lang/String;
    invoke-static {v6, v9}, Lcom/htc/android/epst/Utility;->pendZero(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    .line 67
    invoke-static {v6}, Lcom/htc/android/epst/Utility;->ReverseByte(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 69
    .local v0, analogTMin1:Ljava/lang/String;
    iget-object v8, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_IMSI_T_S1;->CDMA_TMIN1:Ljava/lang/String;

    if-nez v8, :cond_1

    .line 70
    const-string v8, "0000000"

    iput-object v8, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_IMSI_T_S1;->CDMA_TMIN1:Ljava/lang/String;

    .line 72
    :cond_1
    iget-object v8, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_IMSI_T_S1;->CDMA_TMIN1:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->toCharArray()[C

    move-result-object v8

    invoke-static {v8}, Lcom/htc/android/epst/Utility;->EncodeBCD_Min1([C)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 73
    .local v4, dwCdmaTMin1:J
    invoke-static {v4, v5}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v7

    .line 74
    .local v7, strHexCdmaTMin1:Ljava/lang/String;
    invoke-static {v7, v9}, Lcom/htc/android/epst/Utility;->pendZero(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    .line 75
    invoke-static {v7}, Lcom/htc/android/epst/Utility;->ReverseByte(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 77
    .local v1, cdmaTMin1:Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_IMSI_T_S1;->NAM:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_IMSI_T_S1;->mCurrentCmdData:Ljava/lang/String;

    .line 79
    iget-object v8, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_IMSI_T_S1;->mCurrentCmdData:Ljava/lang/String;

    return-object v8
.end method

.method public getCdmaTMin1()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_IMSI_T_S1;->CDMA_TMIN1:Ljava/lang/String;

    return-object v0
.end method

.method public getRegisterCallback()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/htc/android/epst/internal/DataChangeListener;",
            ">;"
        }
    .end annotation

    .prologue
    .line 84
    const/4 v0, 0x0

    return-object v0
.end method

.method public onDataChange(Ljava/lang/Object;)V
    .locals 1
    .parameter "data"

    .prologue
    .line 48
    check-cast p1, Lcom/htc/android/epst/nvitem/DM_NVI_ID_MIN1;

    .end local p1
    invoke-virtual {p1}, Lcom/htc/android/epst/nvitem/DM_NVI_ID_MIN1;->getCdmaMin1()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_IMSI_T_S1;->CDMA_TMIN1:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public read()V
    .locals 7

    .prologue
    const/16 v6, 0x10

    const/16 v5, 0xa

    const/4 v4, 0x2

    .line 32
    invoke-static {}, Lcom/htc/android/epst/internal/CmdParser;->getSingleton()Lcom/htc/android/epst/internal/CmdParser;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_IMSI_T_S1;->mCmdToBeParsed:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/htc/android/epst/internal/CmdParser;->getResult(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_IMSI_T_S1;->NAM:Ljava/lang/String;

    .line 33
    iget-object v1, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_IMSI_T_S1;->mCmdToBeParsed:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/android/epst/Utility;->ReverseByte(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 35
    .local v0, dwMin1:Ljava/lang/Long;
    invoke-static {v0}, Lcom/htc/android/epst/Utility;->DecodeBCD_Min1(Ljava/lang/Long;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_IMSI_T_S1;->ANALOG_TMIN1:Ljava/lang/String;

    .line 37
    iget-object v1, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_IMSI_T_S1;->mCmdToBeParsed:Ljava/lang/String;

    const/16 v2, 0x12

    invoke-virtual {v1, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/android/epst/Utility;->ReverseByte(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 39
    invoke-static {v0}, Lcom/htc/android/epst/Utility;->DecodeBCD_Min1(Ljava/lang/Long;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x7

    invoke-static {v1, v2}, Lcom/htc/android/epst/Utility;->pendZero(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_IMSI_T_S1;->CDMA_TMIN1:Ljava/lang/String;

    .line 40
    return-void
.end method

.method public registerListener(Lcom/htc/android/epst/internal/DataChangeListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 53
    return-void
.end method

.method public setCdmaTMin1(Ljava/lang/String;)V
    .locals 0
    .parameter "data"

    .prologue
    .line 21
    iput-object p1, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_IMSI_T_S1;->CDMA_TMIN1:Ljava/lang/String;

    .line 23
    return-void
.end method

.method public write()V
    .locals 0

    .prologue
    .line 43
    invoke-virtual {p0}, Lcom/htc/android/epst/nvitem/DM_NVI_ID_IMSI_T_S1;->read()V

    .line 44
    return-void
.end method
