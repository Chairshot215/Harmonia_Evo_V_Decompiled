.class public Lcom/htc/android/epst/nvitem/NV_HTC_VORA_EMPA_SUPPORTED_I;
.super Lcom/htc/android/epst/nvitem/NvItemBase;
.source "NV_HTC_VORA_EMPA_SUPPORTED_I.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "NV_HTC_VORA_EMPA_SUPPORTED_I"


# instance fields
.field private DATA:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/htc/android/epst/nvitem/NvItemBase;-><init>()V

    .line 16
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/android/epst/nvitem/NV_HTC_VORA_EMPA_SUPPORTED_I;->DATA:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public generateCmdData()Ljava/lang/String;
    .locals 5

    .prologue
    .line 41
    iget-object v2, p0, Lcom/htc/android/epst/nvitem/NV_HTC_VORA_EMPA_SUPPORTED_I;->DATA:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 42
    .local v0, convert:I
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    .line 43
    .local v1, data:Ljava/lang/String;
    const/4 v2, 0x4

    invoke-static {v1, v2}, Lcom/htc/android/epst/Utility;->pendZero(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 44
    invoke-static {v1}, Lcom/htc/android/epst/Utility;->ReverseByte(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 45
    iput-object v1, p0, Lcom/htc/android/epst/nvitem/NV_HTC_VORA_EMPA_SUPPORTED_I;->mCurrentCmdData:Ljava/lang/String;

    .line 46
    sget-boolean v2, Lcom/htc/android/epst/EntryEPSTInfo;->DBG:Z

    if-eqz v2, :cond_0

    const-string v2, "NV_HTC_VORA_EMPA_SUPPORTED_I"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "generateCmdData.data:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    :cond_0
    iget-object v2, p0, Lcom/htc/android/epst/nvitem/NV_HTC_VORA_EMPA_SUPPORTED_I;->mCurrentCmdData:Ljava/lang/String;

    return-object v2
.end method

.method public getData()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/htc/android/epst/nvitem/NV_HTC_VORA_EMPA_SUPPORTED_I;->DATA:Ljava/lang/String;

    return-object v0
.end method

.method public read()V
    .locals 5

    .prologue
    .line 29
    invoke-static {}, Lcom/htc/android/epst/internal/CmdParser;->getSingleton()Lcom/htc/android/epst/internal/CmdParser;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/epst/nvitem/NV_HTC_VORA_EMPA_SUPPORTED_I;->mCmdToBeParsed:Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x4

    invoke-virtual {v1, v2, v3, v4}, Lcom/htc/android/epst/internal/CmdParser;->getResult(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    .line 30
    .local v0, tmp:Ljava/lang/String;
    const/16 v1, 0x10

    invoke-static {v0, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/epst/nvitem/NV_HTC_VORA_EMPA_SUPPORTED_I;->DATA:Ljava/lang/String;

    .line 31
    return-void
.end method

.method public setData(Ljava/lang/String;)V
    .locals 0
    .parameter "val"

    .prologue
    .line 19
    iput-object p1, p0, Lcom/htc/android/epst/nvitem/NV_HTC_VORA_EMPA_SUPPORTED_I;->DATA:Ljava/lang/String;

    .line 20
    return-void
.end method

.method public write()V
    .locals 0

    .prologue
    .line 35
    invoke-virtual {p0}, Lcom/htc/android/epst/nvitem/NV_HTC_VORA_EMPA_SUPPORTED_I;->read()V

    .line 36
    return-void
.end method
