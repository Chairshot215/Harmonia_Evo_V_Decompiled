.class public Lcom/htc/android/epst/nvitem/NV_HTC_VORA_SLOTCYCLE_I;
.super Lcom/htc/android/epst/nvitem/NvItemBase;
.source "NV_HTC_VORA_SLOTCYCLE_I.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "NV_HTC_VORA_SLOTCYCLE_I"


# instance fields
.field private DATA1:Ljava/lang/String;

.field private DATA2:Ljava/lang/String;

.field private DATA3:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/htc/android/epst/nvitem/NvItemBase;-><init>()V

    .line 23
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/android/epst/nvitem/NV_HTC_VORA_SLOTCYCLE_I;->DATA1:Ljava/lang/String;

    .line 24
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/android/epst/nvitem/NV_HTC_VORA_SLOTCYCLE_I;->DATA2:Ljava/lang/String;

    .line 25
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/android/epst/nvitem/NV_HTC_VORA_SLOTCYCLE_I;->DATA3:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public generateCmdData()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v5, 0x4

    .line 72
    iget-object v4, p0, Lcom/htc/android/epst/nvitem/NV_HTC_VORA_SLOTCYCLE_I;->DATA1:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 73
    .local v0, convert:I
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    .line 74
    .local v1, data1:Ljava/lang/String;
    invoke-static {v1, v5}, Lcom/htc/android/epst/Utility;->pendZero(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 75
    invoke-static {v1}, Lcom/htc/android/epst/Utility;->ReverseByte(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 77
    iget-object v4, p0, Lcom/htc/android/epst/nvitem/NV_HTC_VORA_SLOTCYCLE_I;->DATA2:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 78
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    .line 79
    .local v2, data2:Ljava/lang/String;
    invoke-static {v2, v5}, Lcom/htc/android/epst/Utility;->pendZero(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 80
    invoke-static {v2}, Lcom/htc/android/epst/Utility;->ReverseByte(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 82
    iget-object v4, p0, Lcom/htc/android/epst/nvitem/NV_HTC_VORA_SLOTCYCLE_I;->DATA3:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 83
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    .line 84
    .local v3, data3:Ljava/lang/String;
    invoke-static {v3, v5}, Lcom/htc/android/epst/Utility;->pendZero(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 85
    invoke-static {v3}, Lcom/htc/android/epst/Utility;->ReverseByte(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 87
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/android/epst/nvitem/NV_HTC_VORA_SLOTCYCLE_I;->mCurrentCmdData:Ljava/lang/String;

    .line 88
    sget-boolean v4, Lcom/htc/android/epst/EntryEPSTInfo;->DBG:Z

    if-eqz v4, :cond_0

    const-string v4, "NV_HTC_VORA_SLOTCYCLE_I"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "generateCmdData.data:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/android/epst/nvitem/NV_HTC_VORA_SLOTCYCLE_I;->mCurrentCmdData:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " data1:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " data2:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " data3:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    :cond_0
    iget-object v4, p0, Lcom/htc/android/epst/nvitem/NV_HTC_VORA_SLOTCYCLE_I;->mCurrentCmdData:Ljava/lang/String;

    return-object v4
.end method

.method public getData1()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/htc/android/epst/nvitem/NV_HTC_VORA_SLOTCYCLE_I;->DATA1:Ljava/lang/String;

    return-object v0
.end method

.method public getData2()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/htc/android/epst/nvitem/NV_HTC_VORA_SLOTCYCLE_I;->DATA2:Ljava/lang/String;

    return-object v0
.end method

.method public getData3()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/htc/android/epst/nvitem/NV_HTC_VORA_SLOTCYCLE_I;->DATA3:Ljava/lang/String;

    return-object v0
.end method

.method public read()V
    .locals 7

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x4

    const/16 v4, 0x10

    .line 54
    invoke-static {}, Lcom/htc/android/epst/internal/CmdParser;->getSingleton()Lcom/htc/android/epst/internal/CmdParser;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/epst/nvitem/NV_HTC_VORA_SLOTCYCLE_I;->mCmdToBeParsed:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v5}, Lcom/htc/android/epst/internal/CmdParser;->getResult(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    .line 55
    .local v0, tmp:Ljava/lang/String;
    invoke-static {v0, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/epst/nvitem/NV_HTC_VORA_SLOTCYCLE_I;->DATA1:Ljava/lang/String;

    .line 57
    invoke-static {}, Lcom/htc/android/epst/internal/CmdParser;->getSingleton()Lcom/htc/android/epst/internal/CmdParser;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/epst/nvitem/NV_HTC_VORA_SLOTCYCLE_I;->mCmdToBeParsed:Ljava/lang/String;

    invoke-virtual {v1, v2, v5, v6}, Lcom/htc/android/epst/internal/CmdParser;->getResult(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    .line 58
    invoke-static {v0, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/epst/nvitem/NV_HTC_VORA_SLOTCYCLE_I;->DATA2:Ljava/lang/String;

    .line 60
    invoke-static {}, Lcom/htc/android/epst/internal/CmdParser;->getSingleton()Lcom/htc/android/epst/internal/CmdParser;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/epst/nvitem/NV_HTC_VORA_SLOTCYCLE_I;->mCmdToBeParsed:Ljava/lang/String;

    const/16 v3, 0xc

    invoke-virtual {v1, v2, v6, v3}, Lcom/htc/android/epst/internal/CmdParser;->getResult(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    .line 61
    invoke-static {v0, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/epst/nvitem/NV_HTC_VORA_SLOTCYCLE_I;->DATA3:Ljava/lang/String;

    .line 62
    return-void
.end method

.method public setData1(Ljava/lang/String;)V
    .locals 0
    .parameter "val"

    .prologue
    .line 28
    iput-object p1, p0, Lcom/htc/android/epst/nvitem/NV_HTC_VORA_SLOTCYCLE_I;->DATA1:Ljava/lang/String;

    .line 29
    return-void
.end method

.method public setData2(Ljava/lang/String;)V
    .locals 0
    .parameter "val"

    .prologue
    .line 36
    iput-object p1, p0, Lcom/htc/android/epst/nvitem/NV_HTC_VORA_SLOTCYCLE_I;->DATA2:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public setData3(Ljava/lang/String;)V
    .locals 0
    .parameter "val"

    .prologue
    .line 44
    iput-object p1, p0, Lcom/htc/android/epst/nvitem/NV_HTC_VORA_SLOTCYCLE_I;->DATA3:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public write()V
    .locals 0

    .prologue
    .line 66
    invoke-virtual {p0}, Lcom/htc/android/epst/nvitem/NV_HTC_VORA_SLOTCYCLE_I;->read()V

    .line 67
    return-void
.end method
