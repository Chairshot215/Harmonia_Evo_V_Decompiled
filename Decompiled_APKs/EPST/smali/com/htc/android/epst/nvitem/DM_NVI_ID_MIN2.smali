.class public Lcom/htc/android/epst/nvitem/DM_NVI_ID_MIN2;
.super Lcom/htc/android/epst/nvitem/NvItemBase;
.source "DM_NVI_ID_MIN2.java"

# interfaces
.implements Lcom/htc/android/epst/internal/DataChangeListener;


# instance fields
.field private ANALOG_MIN2:Ljava/lang/String;

.field private CDMA_MIN2:Ljava/lang/String;

.field private NAM:Ljava/lang/String;

.field private mListener:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/android/epst/internal/DataChangeListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/htc/android/epst/nvitem/NvItemBase;-><init>()V

    .line 17
    const-string v0, "00"

    iput-object v0, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_MIN2;->NAM:Ljava/lang/String;

    .line 18
    const-string v0, "0000"

    iput-object v0, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_MIN2;->ANALOG_MIN2:Ljava/lang/String;

    .line 19
    const-string v0, "0000"

    iput-object v0, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_MIN2;->CDMA_MIN2:Ljava/lang/String;

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_MIN2;->mListener:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public changeRegistStructData(Lcom/htc/android/epst/nvitem/NvItemBase;)V
    .locals 2
    .parameter "data"

    .prologue
    .line 75
    iget-object v1, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_MIN2;->mListener:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    .line 76
    .local v0, itr:Ljava/util/ListIterator;,"Ljava/util/ListIterator<Lcom/htc/android/epst/internal/DataChangeListener;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 77
    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/android/epst/internal/DataChangeListener;

    invoke-interface {v1, p1}, Lcom/htc/android/epst/internal/DataChangeListener;->onDataChange(Ljava/lang/Object;)V

    goto :goto_0

    .line 79
    :cond_0
    return-void
.end method

.method public generateCmdData()Ljava/lang/String;
    .locals 13

    .prologue
    const-wide/16 v11, 0x3

    const/4 v10, 0x4

    .line 55
    iget-object v8, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_MIN2;->ANALOG_MIN2:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 56
    .local v2, dwAnalogMin2:J
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/htc/android/epst/Utility;->EncodeBCD(Ljava/lang/Long;Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 57
    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v6

    .line 58
    .local v6, strHexAnalogMin2:Ljava/lang/String;
    invoke-static {v6, v10}, Lcom/htc/android/epst/Utility;->pendZero(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    .line 59
    invoke-static {v6}, Lcom/htc/android/epst/Utility;->ReverseByte(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 61
    .local v0, analogMin2:Ljava/lang/String;
    iget-object v8, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_MIN2;->CDMA_MIN2:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 62
    .local v4, dwCdmaMin2:J
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/htc/android/epst/Utility;->EncodeBCD(Ljava/lang/Long;Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 63
    invoke-static {v4, v5}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v7

    .line 64
    .local v7, strHexCdmaMin2:Ljava/lang/String;
    invoke-static {v7, v10}, Lcom/htc/android/epst/Utility;->pendZero(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    .line 65
    invoke-static {v7}, Lcom/htc/android/epst/Utility;->ReverseByte(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 68
    .local v1, cdmaMin2:Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_MIN2;->NAM:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_MIN2;->mCurrentCmdData:Ljava/lang/String;

    .line 70
    iget-object v8, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_MIN2;->mCurrentCmdData:Ljava/lang/String;

    return-object v8
.end method

.method public getCdmaMin2()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_MIN2;->CDMA_MIN2:Ljava/lang/String;

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
    .line 94
    iget-object v0, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_MIN2;->mListener:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public onDataChange(Ljava/lang/Object;)V
    .locals 0
    .parameter "data"

    .prologue
    .line 90
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

    .line 34
    invoke-static {}, Lcom/htc/android/epst/internal/CmdParser;->getSingleton()Lcom/htc/android/epst/internal/CmdParser;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_MIN2;->mCmdToBeParsed:Ljava/lang/String;

    invoke-virtual {v2, v3, v7, v4}, Lcom/htc/android/epst/internal/CmdParser;->getResult(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_MIN2;->NAM:Ljava/lang/String;

    .line 36
    iget-object v2, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_MIN2;->mCmdToBeParsed:Ljava/lang/String;

    invoke-virtual {v2, v4, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/htc/android/epst/Utility;->ReverseByte(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v0

    .line 39
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

    iput-object v2, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_MIN2;->ANALOG_MIN2:Ljava/lang/String;

    .line 41
    iget-object v2, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_MIN2;->mCmdToBeParsed:Ljava/lang/String;

    const/16 v3, 0xa

    invoke-virtual {v2, v9, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/htc/android/epst/Utility;->ReverseByte(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v0

    .line 44
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

    iput-object v2, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_MIN2;->CDMA_MIN2:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public registerListener(Lcom/htc/android/epst/internal/DataChangeListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_MIN2;->mListener:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 85
    return-void
.end method

.method public returnGenerateCmdData()Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    const/4 v0, 0x0

    return-object v0
.end method

.method public setCdmaMin2(Ljava/lang/String;)V
    .locals 0
    .parameter "data"

    .prologue
    .line 23
    iput-object p1, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_MIN2;->CDMA_MIN2:Ljava/lang/String;

    .line 25
    return-void
.end method

.method public write()V
    .locals 0

    .prologue
    .line 49
    invoke-virtual {p0}, Lcom/htc/android/epst/nvitem/DM_NVI_ID_MIN2;->read()V

    .line 50
    return-void
.end method
