.class public Lcom/htc/android/epst/nvitem/DM_NVI_ID_MIN1;
.super Lcom/htc/android/epst/nvitem/NvItemBase;
.source "DM_NVI_ID_MIN1.java"

# interfaces
.implements Lcom/htc/android/epst/internal/DataChangeListener;


# instance fields
.field private ANALOG_MIN1:Ljava/lang/String;

.field private CDMA_MIN1:Ljava/lang/String;

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

    iput-object v0, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_MIN1;->NAM:Ljava/lang/String;

    .line 18
    const-string v0, "00000000"

    iput-object v0, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_MIN1;->ANALOG_MIN1:Ljava/lang/String;

    .line 19
    const-string v0, "00000000"

    iput-object v0, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_MIN1;->CDMA_MIN1:Ljava/lang/String;

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_MIN1;->mListener:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public changeRegistStructData(Lcom/htc/android/epst/nvitem/NvItemBase;)V
    .locals 2
    .parameter "data"

    .prologue
    .line 81
    iget-object v1, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_MIN1;->mListener:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    .line 82
    .local v0, itr:Ljava/util/ListIterator;,"Ljava/util/ListIterator<Lcom/htc/android/epst/internal/DataChangeListener;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 83
    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/android/epst/internal/DataChangeListener;

    invoke-interface {v1, p1}, Lcom/htc/android/epst/internal/DataChangeListener;->onDataChange(Ljava/lang/Object;)V

    goto :goto_0

    .line 85
    :cond_0
    return-void
.end method

.method public generateCmdData()Ljava/lang/String;
    .locals 10

    .prologue
    const/16 v9, 0x8

    .line 52
    iget-object v8, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_MIN1;->ANALOG_MIN1:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->toCharArray()[C

    move-result-object v8

    invoke-static {v8}, Lcom/htc/android/epst/Utility;->EncodeBCD_Min1([C)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 53
    .local v2, dwAnalogMin1:J
    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v6

    .line 54
    .local v6, strHexAnalogMin1:Ljava/lang/String;
    invoke-static {v6, v9}, Lcom/htc/android/epst/Utility;->pendZero(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    .line 55
    invoke-static {v6}, Lcom/htc/android/epst/Utility;->ReverseByte(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 58
    .local v0, analogMin1:Ljava/lang/String;
    iget-object v8, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_MIN1;->CDMA_MIN1:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->toCharArray()[C

    move-result-object v8

    invoke-static {v8}, Lcom/htc/android/epst/Utility;->EncodeBCD_Min1([C)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 59
    .local v4, dwCdmaMin1:J
    invoke-static {v4, v5}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v7

    .line 60
    .local v7, strHexCdmaMin1:Ljava/lang/String;
    invoke-static {v7, v9}, Lcom/htc/android/epst/Utility;->pendZero(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    .line 61
    invoke-static {v7}, Lcom/htc/android/epst/Utility;->ReverseByte(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 63
    .local v1, cdmaMin1:Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_MIN1;->NAM:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_MIN1;->mCurrentCmdData:Ljava/lang/String;

    .line 65
    iget-object v8, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_MIN1;->mCurrentCmdData:Ljava/lang/String;

    return-object v8
.end method

.method public getCdmaMin1()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_MIN1;->CDMA_MIN1:Ljava/lang/String;

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
    .line 89
    iget-object v0, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_MIN1;->mListener:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public onDataChange(Ljava/lang/Object;)V
    .locals 0
    .parameter "data"

    .prologue
    .line 71
    return-void
.end method

.method public read()V
    .locals 7

    .prologue
    const/16 v6, 0x10

    const/16 v5, 0xa

    const/4 v4, 0x2

    .line 34
    invoke-static {}, Lcom/htc/android/epst/internal/CmdParser;->getSingleton()Lcom/htc/android/epst/internal/CmdParser;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_MIN1;->mCmdToBeParsed:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/htc/android/epst/internal/CmdParser;->getResult(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_MIN1;->NAM:Ljava/lang/String;

    .line 35
    iget-object v1, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_MIN1;->mCmdToBeParsed:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/android/epst/Utility;->ReverseByte(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 37
    .local v0, dwMin1:Ljava/lang/Long;
    invoke-static {v0}, Lcom/htc/android/epst/Utility;->DecodeBCD_Min1(Ljava/lang/Long;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_MIN1;->ANALOG_MIN1:Ljava/lang/String;

    .line 39
    iget-object v1, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_MIN1;->mCmdToBeParsed:Ljava/lang/String;

    const/16 v2, 0x12

    invoke-virtual {v1, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/android/epst/Utility;->ReverseByte(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 41
    invoke-static {v0}, Lcom/htc/android/epst/Utility;->DecodeBCD_Min1(Ljava/lang/Long;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_MIN1;->CDMA_MIN1:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public registerListener(Lcom/htc/android/epst/internal/DataChangeListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_MIN1;->mListener:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 77
    return-void
.end method

.method public returnGenerateCmdData()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    const/4 v0, 0x0

    return-object v0
.end method

.method public setCdmaMin1(Ljava/lang/String;)V
    .locals 0
    .parameter "str"

    .prologue
    .line 23
    iput-object p1, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_MIN1;->CDMA_MIN1:Ljava/lang/String;

    .line 25
    return-void
.end method

.method public write()V
    .locals 0

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/htc/android/epst/nvitem/DM_NVI_ID_MIN1;->read()V

    .line 47
    return-void
.end method
