.class public Lcom/htc/android/epst/nvitem/DM_NVI_ID_NAM_NAME;
.super Lcom/htc/android/epst/nvitem/NvItemBase;
.source "DM_NVI_ID_NAM_NAME.java"


# instance fields
.field private NAM:Ljava/lang/String;

.field private NAME:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/htc/android/epst/nvitem/NvItemBase;-><init>()V

    .line 13
    const-string v0, "00"

    iput-object v0, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_NAM_NAME;->NAM:Ljava/lang/String;

    .line 14
    const-string v0, "000000000000000000000000"

    iput-object v0, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_NAM_NAME;->NAME:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public generateCmdData()Ljava/lang/String;
    .locals 3

    .prologue
    .line 46
    iget-object v1, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_NAM_NAME;->NAME:Ljava/lang/String;

    invoke-static {v1}, Lcom/htc/android/epst/Utility;->ASCIIToString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 47
    .local v0, ReverseName:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "00"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 48
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_NAM_NAME;->NAM:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_NAM_NAME;->mCurrentCmdData:Ljava/lang/String;

    .line 49
    iget-object v1, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_NAM_NAME;->mCurrentCmdData:Ljava/lang/String;

    return-object v1
.end method

.method public getNamName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_NAM_NAME;->NAME:Ljava/lang/String;

    return-object v0
.end method

.method public read()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    .line 28
    :try_start_0
    invoke-static {}, Lcom/htc/android/epst/internal/CmdParser;->getSingleton()Lcom/htc/android/epst/internal/CmdParser;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_NAM_NAME;->mCmdToBeParsed:Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-virtual {v1, v2, v3, v4}, Lcom/htc/android/epst/internal/CmdParser;->getResult(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_NAM_NAME;->NAM:Ljava/lang/String;

    .line 29
    iget-object v1, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_NAM_NAME;->mCmdToBeParsed:Ljava/lang/String;

    const/4 v2, 0x2

    const/16 v3, 0x1a

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/htc/android/epst/Utility;->StringToASCII(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_NAM_NAME;->NAME:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    :goto_0
    return-void

    .line 30
    :catch_0
    move-exception v0

    .line 31
    .local v0, ex:Ljava/lang/StringIndexOutOfBoundsException;
    iget-object v1, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_NAM_NAME;->mCmdToBeParsed:Ljava/lang/String;

    iget-object v2, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_NAM_NAME;->mCmdToBeParsed:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/android/epst/Utility;->StringToASCII(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_NAM_NAME;->NAME:Ljava/lang/String;

    .line 32
    const-string v1, "EPST"

    invoke-virtual {v0}, Ljava/lang/StringIndexOutOfBoundsException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setNamName(Ljava/lang/String;)V
    .locals 0
    .parameter "data"

    .prologue
    .line 17
    iput-object p1, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_NAM_NAME;->NAME:Ljava/lang/String;

    .line 18
    return-void
.end method

.method public write()V
    .locals 5

    .prologue
    .line 38
    :try_start_0
    invoke-static {}, Lcom/htc/android/epst/internal/CmdParser;->getSingleton()Lcom/htc/android/epst/internal/CmdParser;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_NAM_NAME;->mCmdToBeParsed:Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-virtual {v1, v2, v3, v4}, Lcom/htc/android/epst/internal/CmdParser;->getResult(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_NAM_NAME;->NAM:Ljava/lang/String;

    .line 39
    iget-object v1, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_NAM_NAME;->mCmdToBeParsed:Ljava/lang/String;

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_NAM_NAME;->mCmdToBeParsed:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/android/epst/Utility;->StringToASCII(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_NAM_NAME;->NAME:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    :goto_0
    return-void

    .line 40
    :catch_0
    move-exception v0

    .line 41
    .local v0, ex:Ljava/lang/StringIndexOutOfBoundsException;
    const-string v1, "EPST"

    invoke-virtual {v0}, Ljava/lang/StringIndexOutOfBoundsException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
