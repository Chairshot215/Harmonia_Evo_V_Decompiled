.class public Lcom/htc/android/epst/nvitem/DM_NVI_ID_ACCOLC;
.super Lcom/htc/android/epst/nvitem/NvItemBase;
.source "DM_NVI_ID_ACCOLC.java"


# instance fields
.field private ANALOG_CLASS:Ljava/lang/String;

.field private CDMA_CLASS:Ljava/lang/String;

.field private NAM:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/htc/android/epst/nvitem/NvItemBase;-><init>()V

    .line 12
    const-string v0, "00"

    iput-object v0, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_ACCOLC;->NAM:Ljava/lang/String;

    .line 13
    const-string v0, "00"

    iput-object v0, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_ACCOLC;->ANALOG_CLASS:Ljava/lang/String;

    .line 15
    const-string v0, "00"

    iput-object v0, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_ACCOLC;->CDMA_CLASS:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public generateCmdData()Ljava/lang/String;
    .locals 3

    .prologue
    .line 41
    iget-object v1, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_ACCOLC;->CDMA_CLASS:Ljava/lang/String;

    const/4 v2, 0x2

    invoke-static {v1, v2}, Lcom/htc/android/epst/Utility;->pendZero(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 43
    .local v0, CH:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_ACCOLC;->NAM:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_ACCOLC;->ANALOG_CLASS:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_ACCOLC;->mCurrentCmdData:Ljava/lang/String;

    .line 44
    iget-object v1, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_ACCOLC;->mCurrentCmdData:Ljava/lang/String;

    return-object v1
.end method

.method public getCdmaClass()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_ACCOLC;->CDMA_CLASS:Ljava/lang/String;

    return-object v0
.end method

.method public read()V
    .locals 5

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x2

    .line 29
    invoke-static {}, Lcom/htc/android/epst/internal/CmdParser;->getSingleton()Lcom/htc/android/epst/internal/CmdParser;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_ACCOLC;->mCmdToBeParsed:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/android/epst/internal/CmdParser;->getResult(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_ACCOLC;->NAM:Ljava/lang/String;

    .line 30
    invoke-static {}, Lcom/htc/android/epst/internal/CmdParser;->getSingleton()Lcom/htc/android/epst/internal/CmdParser;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_ACCOLC;->mCmdToBeParsed:Ljava/lang/String;

    invoke-virtual {v0, v1, v3, v4}, Lcom/htc/android/epst/internal/CmdParser;->getResult(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_ACCOLC;->ANALOG_CLASS:Ljava/lang/String;

    .line 31
    invoke-static {}, Lcom/htc/android/epst/internal/CmdParser;->getSingleton()Lcom/htc/android/epst/internal/CmdParser;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_ACCOLC;->mCmdToBeParsed:Ljava/lang/String;

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v4, v2}, Lcom/htc/android/epst/internal/CmdParser;->getResult(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_ACCOLC;->CDMA_CLASS:Ljava/lang/String;

    .line 32
    return-void
.end method

.method public setCdmaClass(Ljava/lang/String;)V
    .locals 0
    .parameter "val"

    .prologue
    .line 22
    iput-object p1, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_ACCOLC;->CDMA_CLASS:Ljava/lang/String;

    .line 23
    return-void
.end method

.method public write()V
    .locals 0

    .prologue
    .line 36
    invoke-virtual {p0}, Lcom/htc/android/epst/nvitem/DM_NVI_ID_ACCOLC;->read()V

    .line 37
    return-void
.end method
