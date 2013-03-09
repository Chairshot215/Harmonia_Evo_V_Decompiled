.class public Lcom/htc/android/epst/nvitem/DM_NVI_ID_BAND_PREF_I_16_31;
.super Lcom/htc/android/epst/nvitem/NvItemBase;
.source "DM_NVI_ID_BAND_PREF_I_16_31.java"


# instance fields
.field private BAND_16_31:Ljava/lang/String;

.field public BAND_VALUE:Ljava/lang/String;

.field private NAM:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 7
    invoke-direct {p0}, Lcom/htc/android/epst/nvitem/NvItemBase;-><init>()V

    .line 9
    const-string v0, "00"

    iput-object v0, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_BAND_PREF_I_16_31;->NAM:Ljava/lang/String;

    .line 12
    const-string v0, "0000"

    iput-object v0, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_BAND_PREF_I_16_31;->BAND_16_31:Ljava/lang/String;

    .line 13
    const-string v0, "3FFF"

    iput-object v0, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_BAND_PREF_I_16_31;->BAND_VALUE:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public generateCmdData()Ljava/lang/String;
    .locals 3

    .prologue
    .line 33
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_BAND_PREF_I_16_31;->BAND_16_31:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "00"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 34
    .local v0, nValue:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/android/epst/Utility;->ReverseByte(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_BAND_PREF_I_16_31;->mCurrentCmdData:Ljava/lang/String;

    .line 35
    iget-object v1, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_BAND_PREF_I_16_31;->mCurrentCmdData:Ljava/lang/String;

    return-object v1
.end method

.method public getBand()Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_BAND_PREF_I_16_31;->BAND_16_31:Ljava/lang/String;

    return-object v0
.end method

.method public read()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 26
    invoke-static {}, Lcom/htc/android/epst/internal/CmdParser;->getSingleton()Lcom/htc/android/epst/internal/CmdParser;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_BAND_PREF_I_16_31;->mCmdToBeParsed:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/android/epst/internal/CmdParser;->getResult(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_BAND_PREF_I_16_31;->NAM:Ljava/lang/String;

    .line 27
    invoke-static {}, Lcom/htc/android/epst/internal/CmdParser;->getSingleton()Lcom/htc/android/epst/internal/CmdParser;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_BAND_PREF_I_16_31;->mCmdToBeParsed:Ljava/lang/String;

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v3, v2}, Lcom/htc/android/epst/internal/CmdParser;->getResult(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_BAND_PREF_I_16_31;->BAND_16_31:Ljava/lang/String;

    .line 29
    return-void
.end method

.method public setBand(Ljava/lang/String;)V
    .locals 0
    .parameter "val"

    .prologue
    .line 20
    iput-object p1, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_BAND_PREF_I_16_31;->BAND_16_31:Ljava/lang/String;

    .line 21
    return-void
.end method
