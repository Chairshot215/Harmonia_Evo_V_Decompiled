.class public Lcom/htc/android/epst/nvitem/DM_NVI_ID_DIAL_I;
.super Lcom/htc/android/epst/nvitem/NvItemBase;
.source "DM_NVI_ID_DIAL_I.java"


# static fields
.field public static final NV_MAX_DIAL_DIGITS:I = 0x20

.field public static final NV_MAX_LTRS:I = 0xc


# instance fields
.field private DIGITS:Ljava/lang/String;

.field private INDEX:Ljava/lang/String;

.field private LETTERS:Ljava/lang/String;

.field private NUM_DIGITS:Ljava/lang/String;

.field private STATUS:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/htc/android/epst/nvitem/NvItemBase;-><init>()V

    .line 13
    const-string v0, "00"

    iput-object v0, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_DIAL_I;->INDEX:Ljava/lang/String;

    .line 14
    const-string v0, "03"

    iput-object v0, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_DIAL_I;->STATUS:Ljava/lang/String;

    .line 15
    const-string v0, "00"

    iput-object v0, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_DIAL_I;->NUM_DIGITS:Ljava/lang/String;

    .line 16
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_DIAL_I;->DIGITS:Ljava/lang/String;

    .line 17
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_DIAL_I;->LETTERS:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public generateCmdData()Ljava/lang/String;
    .locals 4

    .prologue
    .line 54
    iget-object v2, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_DIAL_I;->DIGITS:Ljava/lang/String;

    invoke-static {v2}, Lcom/htc/android/epst/Utility;->ASCIIToString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 55
    .local v0, ReverseName:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_DIAL_I;->INDEX:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_DIAL_I;->STATUS:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_DIAL_I;->NUM_DIGITS:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_DIAL_I;->mCurrentCmdData:Ljava/lang/String;

    .line 56
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_DIAL_I;->DIGITS:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    rsub-int/lit8 v2, v2, 0x20

    if-ge v1, v2, :cond_0

    .line 57
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_DIAL_I;->mCurrentCmdData:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "00"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_DIAL_I;->mCurrentCmdData:Ljava/lang/String;

    .line 56
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 59
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_DIAL_I;->mCurrentCmdData:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_DIAL_I;->LETTERS:Ljava/lang/String;

    invoke-static {v3}, Lcom/htc/android/epst/Utility;->ASCIIToString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "00"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_DIAL_I;->mCurrentCmdData:Ljava/lang/String;

    .line 60
    iget-object v2, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_DIAL_I;->mCurrentCmdData:Ljava/lang/String;

    return-object v2
.end method

.method public getDIGITS()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_DIAL_I;->DIGITS:Ljava/lang/String;

    return-object v0
.end method

.method public getLETTERS()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_DIAL_I;->LETTERS:Ljava/lang/String;

    return-object v0
.end method

.method public getNUM_DIGITS()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_DIAL_I;->NUM_DIGITS:Ljava/lang/String;

    return-object v0
.end method

.method public read()V
    .locals 8

    .prologue
    const/4 v7, 0x6

    const/4 v6, 0x4

    const/4 v5, 0x2

    .line 42
    iget-object v3, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_DIAL_I;->mCmdToBeParsed:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_DIAL_I;->INDEX:Ljava/lang/String;

    .line 43
    iget-object v3, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_DIAL_I;->mCmdToBeParsed:Ljava/lang/String;

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 44
    .local v2, nStatus:Ljava/lang/String;
    iget-object v3, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_DIAL_I;->mCmdToBeParsed:Ljava/lang/String;

    invoke-virtual {v3, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_DIAL_I;->NUM_DIGITS:Ljava/lang/String;

    .line 45
    iget-object v3, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_DIAL_I;->NUM_DIGITS:Ljava/lang/String;

    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    .line 46
    .local v1, length:I
    iget-object v3, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_DIAL_I;->mCmdToBeParsed:Ljava/lang/String;

    mul-int/lit8 v4, v1, 0x2

    add-int/lit8 v4, v4, 0x6

    invoke-virtual {v3, v7, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/android/epst/Utility;->StringToASCII(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_DIAL_I;->DIGITS:Ljava/lang/String;

    .line 47
    const/16 v0, 0x46

    .line 48
    .local v0, LetterBeginIdx:I
    iget-object v3, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_DIAL_I;->mCmdToBeParsed:Ljava/lang/String;

    const/16 v4, 0x5e

    invoke-virtual {v3, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/htc/android/epst/Utility;->StringToASCII(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_DIAL_I;->LETTERS:Ljava/lang/String;

    .line 51
    return-void
.end method

.method public setDIGITS(Ljava/lang/String;)V
    .locals 0
    .parameter "digits"

    .prologue
    .line 30
    iput-object p1, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_DIAL_I;->DIGITS:Ljava/lang/String;

    .line 31
    return-void
.end method

.method public setLETTERS(Ljava/lang/String;)V
    .locals 0
    .parameter "letters"

    .prologue
    .line 37
    iput-object p1, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_DIAL_I;->LETTERS:Ljava/lang/String;

    .line 38
    return-void
.end method

.method public setNUM_DIGITS(Ljava/lang/String;)V
    .locals 0
    .parameter "num_digits"

    .prologue
    .line 23
    iput-object p1, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_DIAL_I;->NUM_DIGITS:Ljava/lang/String;

    .line 24
    return-void
.end method
