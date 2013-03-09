.class public Lcom/htc/android/epst/nvitem/DM_NVI_ID_HARDWARE_VER;
.super Lcom/htc/android/epst/nvitem/NvItemBase;
.source "DM_NVI_ID_HARDWARE_VER.java"


# instance fields
.field private VERFM:Ljava/lang/String;

.field private VERHW:Ljava/lang/String;

.field private VERSW:Ljava/lang/String;

.field private VERTMP:Ljava/lang/String;

.field private gbUSE_PROPERTY_RADIO_VERSION:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/htc/android/epst/nvitem/NvItemBase;-><init>()V

    .line 9
    const-string v0, "00000000000000000000000000000000"

    iput-object v0, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_HARDWARE_VER;->VERSW:Ljava/lang/String;

    .line 10
    const-string v0, "0000000000000000"

    iput-object v0, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_HARDWARE_VER;->VERFM:Ljava/lang/String;

    .line 11
    const-string v0, "0000000000000000"

    iput-object v0, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_HARDWARE_VER;->VERHW:Ljava/lang/String;

    .line 12
    const-string v0, "000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"

    iput-object v0, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_HARDWARE_VER;->VERTMP:Ljava/lang/String;

    .line 18
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_HARDWARE_VER;->gbUSE_PROPERTY_RADIO_VERSION:Z

    return-void
.end method


# virtual methods
.method public getVerFM()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_HARDWARE_VER;->VERFM:Ljava/lang/String;

    return-object v0
.end method

.method public getVerHW()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_HARDWARE_VER;->VERHW:Ljava/lang/String;

    return-object v0
.end method

.method public getVerSW()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_HARDWARE_VER;->VERSW:Ljava/lang/String;

    return-object v0
.end method

.method public getVerTMP()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_HARDWARE_VER;->VERTMP:Ljava/lang/String;

    return-object v0
.end method

.method public read()V
    .locals 6

    .prologue
    const/16 v5, 0x40

    const/16 v4, 0x30

    const/16 v3, 0x20

    .line 25
    iget-object v1, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_HARDWARE_VER;->mCmdToBeParsed:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/android/epst/Utility;->StringToASCII(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/htc/android/epst/nvitem/DM_NVI_ID_HARDWARE_VER;->setVerSW(Ljava/lang/String;)V

    .line 29
    iget-object v1, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_HARDWARE_VER;->mCmdToBeParsed:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/android/epst/Utility;->StringToASCII(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/htc/android/epst/nvitem/DM_NVI_ID_HARDWARE_VER;->setVerFM(Ljava/lang/String;)V

    .line 33
    iget-object v1, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_HARDWARE_VER;->mCmdToBeParsed:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/android/epst/Utility;->StringToASCII(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/htc/android/epst/nvitem/DM_NVI_ID_HARDWARE_VER;->setVerHW(Ljava/lang/String;)V

    .line 38
    :try_start_0
    iget-object v1, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_HARDWARE_VER;->mCmdToBeParsed:Ljava/lang/String;

    const/16 v2, 0x40

    const/16 v3, 0x100

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/android/epst/Utility;->StringToASCII(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/htc/android/epst/nvitem/DM_NVI_ID_HARDWARE_VER;->setVerTMP(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    :goto_0
    return-void

    .line 42
    :catch_0
    move-exception v0

    .line 43
    .local v0, ex:Ljava/lang/Exception;
    const-string v1, "DM_NVI_ID_HARDWARE_VER"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", the vertmp out of bounds"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setVerFM(Ljava/lang/String;)V
    .locals 2
    .parameter "vERFM"

    .prologue
    .line 66
    iput-object p1, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_HARDWARE_VER;->VERFM:Ljava/lang/String;

    .line 67
    iget-boolean v0, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_HARDWARE_VER;->gbUSE_PROPERTY_RADIO_VERSION:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 68
    const-string v0, "ro.baseband"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_HARDWARE_VER;->VERFM:Ljava/lang/String;

    .line 70
    :cond_0
    return-void
.end method

.method public setVerHW(Ljava/lang/String;)V
    .locals 5
    .parameter "vERHW"

    .prologue
    const/4 v2, 0x1

    .line 77
    iput-object p1, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_HARDWARE_VER;->VERHW:Ljava/lang/String;

    .line 78
    iget-boolean v1, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_HARDWARE_VER;->gbUSE_PROPERTY_RADIO_VERSION:Z

    if-ne v1, v2, :cond_0

    .line 79
    const/4 v0, 0x0

    .line 80
    .local v0, iGetinNumber:I
    const-string v1, "ro.revision"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_HARDWARE_VER;->VERHW:Ljava/lang/String;

    .line 81
    iget-object v1, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_HARDWARE_VER;->VERHW:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 82
    const-string v1, "%1$04d"

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_HARDWARE_VER;->VERHW:Ljava/lang/String;

    .line 85
    .end local v0           #iGetinNumber:I
    :cond_0
    return-void
.end method

.method public setVerSW(Ljava/lang/String;)V
    .locals 2
    .parameter "vERSW"

    .prologue
    .line 55
    iput-object p1, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_HARDWARE_VER;->VERSW:Ljava/lang/String;

    .line 56
    iget-boolean v0, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_HARDWARE_VER;->gbUSE_PROPERTY_RADIO_VERSION:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 57
    const-string v0, "ro.build.description"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_HARDWARE_VER;->VERSW:Ljava/lang/String;

    .line 59
    :cond_0
    return-void
.end method

.method public setVerTMP(Ljava/lang/String;)V
    .locals 0
    .parameter "vERTMP"

    .prologue
    .line 92
    iput-object p1, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_HARDWARE_VER;->VERTMP:Ljava/lang/String;

    .line 93
    return-void
.end method
