.class public Lcom/htc/android/fieldtrial/dmcmd/DM_RADIO_INFO;
.super Lcom/htc/android/fieldtrial/dmcmd/DmCmdBase;
.source "DM_RADIO_INFO.java"


# instance fields
.field private DBG:Z

.field private LOG_TAG:Ljava/lang/String;

.field private mAMSS:Ljava/lang/String;

.field private mChipset:Ljava/lang/String;

.field private mRadioInfo:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/htc/android/fieldtrial/dmcmd/DmCmdBase;-><init>()V

    .line 10
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_RADIO_INFO;->mChipset:Ljava/lang/String;

    .line 11
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_RADIO_INFO;->mAMSS:Ljava/lang/String;

    .line 12
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_RADIO_INFO;->mRadioInfo:Ljava/lang/String;

    .line 13
    const-string v0, "DM_RADIO_INFO"

    iput-object v0, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_RADIO_INFO;->LOG_TAG:Ljava/lang/String;

    .line 14
    sget-boolean v0, Lcom/htc/android/fieldtrial/FieldTrial;->DBG:Z

    iput-boolean v0, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_RADIO_INFO;->DBG:Z

    return-void
.end method


# virtual methods
.method public getAMSS()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_RADIO_INFO;->mAMSS:Ljava/lang/String;

    return-object v0
.end method

.method public getChipset()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_RADIO_INFO;->mChipset:Ljava/lang/String;

    return-object v0
.end method

.method public getRadioInfo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_RADIO_INFO;->mRadioInfo:Ljava/lang/String;

    return-object v0
.end method

.method public read()V
    .locals 6

    .prologue
    .line 17
    invoke-static {}, Lcom/htc/android/fieldtrial/internal/CmdParser;->getSingleton()Lcom/htc/android/fieldtrial/internal/CmdParser;

    move-result-object v2

    .line 29
    .local v2, parser:Lcom/htc/android/fieldtrial/internal/CmdParser;
    iget-object v3, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_RADIO_INFO;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mRadioInfo:mCmdToBeParsed:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_RADIO_INFO;->mCmdToBeParsed:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    const-string v3, ""

    iput-object v3, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_RADIO_INFO;->mChipset:Ljava/lang/String;

    .line 31
    const-string v3, ""

    iput-object v3, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_RADIO_INFO;->mAMSS:Ljava/lang/String;

    .line 33
    :try_start_0
    iget-object v3, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_RADIO_INFO;->mCmdToBeParsed:Ljava/lang/String;

    const/16 v4, 0x16

    const/16 v5, 0x42

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/htc/android/fieldtrial/Utility;->StringToASCII(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_RADIO_INFO;->mRadioInfo:Ljava/lang/String;

    .line 34
    iget-object v3, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_RADIO_INFO;->mRadioInfo:Ljava/lang/String;

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 35
    .local v1, nRadioInfo:[Ljava/lang/String;
    array-length v3, v1

    const/4 v4, 0x3

    if-eq v3, v4, :cond_1

    .line 36
    iget-object v3, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_RADIO_INFO;->LOG_TAG:Ljava/lang/String;

    const-string v4, "nRadioInfo.length!=3"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    .end local v1           #nRadioInfo:[Ljava/lang/String;
    :goto_0
    iget-boolean v3, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_RADIO_INFO;->DBG:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_RADIO_INFO;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mRadioInfo:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_RADIO_INFO;->mRadioInfo:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mChipset:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_RADIO_INFO;->mChipset:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mAMSS:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_RADIO_INFO;->mAMSS:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    :cond_0
    return-void

    .line 38
    .restart local v1       #nRadioInfo:[Ljava/lang/String;
    :cond_1
    const/4 v3, 0x0

    :try_start_1
    aget-object v3, v1, v3

    iput-object v3, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_RADIO_INFO;->mChipset:Ljava/lang/String;

    .line 39
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x1

    aget-object v4, v1, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x2

    aget-object v4, v1, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_RADIO_INFO;->mAMSS:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 41
    .end local v1           #nRadioInfo:[Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 42
    .local v0, e:Ljava/lang/Exception;
    iget-object v3, p0, Lcom/htc/android/fieldtrial/dmcmd/DM_RADIO_INFO;->LOG_TAG:Ljava/lang/String;

    const-string v4, "Can\'t get Chipset or AMSS correctly.Please check!!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
