.class public Lcom/htc/android/epst/nvitem/DM_NVI_ID_PKT_ORIG_STR_I;
.super Lcom/htc/android/epst/nvitem/NvItemBase;
.source "DM_NVI_ID_PKT_ORIG_STR_I.java"


# static fields
.field public static final NV_MAX_PKT_ORIG_DIGITS:I = 0x10


# instance fields
.field private DIGITS:Ljava/lang/String;

.field private NUM_DIGITS:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/htc/android/epst/nvitem/NvItemBase;-><init>()V

    .line 13
    const-string v0, "00"

    iput-object v0, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_PKT_ORIG_STR_I;->NUM_DIGITS:Ljava/lang/String;

    .line 14
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_PKT_ORIG_STR_I;->DIGITS:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public generateCmdData()Ljava/lang/String;
    .locals 3

    .prologue
    .line 40
    iget-object v1, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_PKT_ORIG_STR_I;->DIGITS:Ljava/lang/String;

    invoke-static {v1}, Lcom/htc/android/epst/Utility;->ASCIIToString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 41
    .local v0, ReverseName:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_PKT_ORIG_STR_I;->NUM_DIGITS:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_PKT_ORIG_STR_I;->mCurrentCmdData:Ljava/lang/String;

    .line 42
    iget-object v1, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_PKT_ORIG_STR_I;->mCurrentCmdData:Ljava/lang/String;

    return-object v1
.end method

.method public getDigits()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_PKT_ORIG_STR_I;->DIGITS:Ljava/lang/String;

    return-object v0
.end method

.method public getNumDigits()Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_PKT_ORIG_STR_I;->NUM_DIGITS:Ljava/lang/String;

    return-object v0
.end method

.method public read()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 32
    iget-object v1, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_PKT_ORIG_STR_I;->mCmdToBeParsed:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_PKT_ORIG_STR_I;->NUM_DIGITS:Ljava/lang/String;

    .line 34
    iget-object v1, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_PKT_ORIG_STR_I;->NUM_DIGITS:Ljava/lang/String;

    const/16 v2, 0x10

    invoke-static {v1, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    .line 36
    .local v0, length:I
    iget-object v1, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_PKT_ORIG_STR_I;->mCmdToBeParsed:Ljava/lang/String;

    mul-int/lit8 v2, v0, 0x2

    add-int/lit8 v2, v2, 0x2

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/android/epst/Utility;->StringToASCII(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_PKT_ORIG_STR_I;->DIGITS:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public setDigits(Ljava/lang/String;)V
    .locals 0
    .parameter "digits"

    .prologue
    .line 27
    iput-object p1, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_PKT_ORIG_STR_I;->DIGITS:Ljava/lang/String;

    .line 28
    return-void
.end method

.method public setNumDigits(Ljava/lang/String;)V
    .locals 0
    .parameter "numDigits"

    .prologue
    .line 20
    iput-object p1, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_PKT_ORIG_STR_I;->NUM_DIGITS:Ljava/lang/String;

    .line 21
    return-void
.end method
