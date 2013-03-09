.class public Lcom/htc/android/epst/nvitem/DM_NVI_ID_PAP_PASSWORD_I;
.super Lcom/htc/android/epst/nvitem/NvItemBase;
.source "DM_NVI_ID_PAP_PASSWORD_I.java"


# static fields
.field public static final DM_NVI_MAX_PAP_PASSWORD_LENGTH:I = 0x40


# instance fields
.field public final LOG_TAG:Ljava/lang/String;

.field private gPW:Ljava/lang/String;

.field private gPWLen:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 5
    invoke-direct {p0}, Lcom/htc/android/epst/nvitem/NvItemBase;-><init>()V

    .line 7
    const-string v0, "DM_NVI_ID_PAP_PASSWORD_I"

    iput-object v0, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_PAP_PASSWORD_I;->LOG_TAG:Ljava/lang/String;

    .line 9
    const-string v0, "00"

    iput-object v0, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_PAP_PASSWORD_I;->gPWLen:Ljava/lang/String;

    .line 10
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_PAP_PASSWORD_I;->gPW:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public generateCmdData()Ljava/lang/String;
    .locals 5

    .prologue
    .line 43
    iget-object v3, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_PAP_PASSWORD_I;->gPWLen:Ljava/lang/String;

    iput-object v3, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_PAP_PASSWORD_I;->mCurrentCmdData:Ljava/lang/String;

    .line 44
    iget-object v3, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_PAP_PASSWORD_I;->gPW:Ljava/lang/String;

    invoke-static {v3}, Lcom/htc/android/epst/Utility;->ASCIIToString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 45
    .local v2, nPWString:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    rsub-int/lit8 v0, v3, 0x40

    .line 47
    .local v0, appendLen:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 48
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "00"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 47
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 51
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_PAP_PASSWORD_I;->mCurrentCmdData:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_PAP_PASSWORD_I;->mCurrentCmdData:Ljava/lang/String;

    .line 53
    iget-object v3, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_PAP_PASSWORD_I;->mCurrentCmdData:Ljava/lang/String;

    return-object v3
.end method

.method public getPAPPW()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_PAP_PASSWORD_I;->gPW:Ljava/lang/String;

    return-object v0
.end method

.method public read()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 14
    iget-object v1, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_PAP_PASSWORD_I;->mCmdToBeParsed:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_PAP_PASSWORD_I;->gPWLen:Ljava/lang/String;

    .line 15
    iget-object v1, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_PAP_PASSWORD_I;->gPWLen:Ljava/lang/String;

    const/16 v2, 0x10

    invoke-static {v1, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    .line 17
    .local v0, len:I
    const/16 v1, 0x40

    if-le v0, v1, :cond_0

    .line 18
    const/16 v0, 0x40

    .line 19
    const-string v1, "DM_NVI_ID_PAP_PASSWORD_I"

    const-string v2, "Get length of PAP password is larger than max limit.Set max limit to the length."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    :cond_0
    if-lez v0, :cond_1

    .line 22
    iget-object v1, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_PAP_PASSWORD_I;->mCmdToBeParsed:Ljava/lang/String;

    mul-int/lit8 v2, v0, 0x2

    add-int/lit8 v2, v2, 0x2

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/android/epst/Utility;->StringToASCII(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_PAP_PASSWORD_I;->gPW:Ljava/lang/String;

    .line 27
    :goto_0
    const-string v1, "DM_NVI_ID_PAP_PASSWORD_I"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "read.gPW:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_PAP_PASSWORD_I;->gPW:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " len:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_PAP_PASSWORD_I;->gPWLen:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    return-void

    .line 24
    :cond_1
    const-string v1, ""

    iput-object v1, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_PAP_PASSWORD_I;->gPW:Ljava/lang/String;

    goto :goto_0
.end method

.method public setPAPPW(Ljava/lang/String;)V
    .locals 4
    .parameter "iVal"

    .prologue
    .line 35
    iput-object p1, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_PAP_PASSWORD_I;->gPW:Ljava/lang/String;

    .line 36
    const-string v0, "%02X"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_PAP_PASSWORD_I;->gPW:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_PAP_PASSWORD_I;->gPWLen:Ljava/lang/String;

    .line 38
    return-void
.end method
