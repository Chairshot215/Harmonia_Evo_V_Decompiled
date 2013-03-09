.class public Lcom/htc/android/epst/nvitem/DM_NVI_ID_DIR_NUMBER;
.super Lcom/htc/android/epst/nvitem/NvItemBase;
.source "DM_NVI_ID_DIR_NUMBER.java"


# instance fields
.field private IR_NUMBER:Ljava/lang/String;

.field private NAM:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/htc/android/epst/nvitem/NvItemBase;-><init>()V

    .line 11
    const-string v0, "00"

    iput-object v0, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_DIR_NUMBER;->NAM:Ljava/lang/String;

    .line 12
    const-string v0, "00000000000000000000"

    iput-object v0, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_DIR_NUMBER;->IR_NUMBER:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public generateCmdData()Ljava/lang/String;
    .locals 3

    .prologue
    .line 36
    iget-object v1, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_DIR_NUMBER;->IR_NUMBER:Ljava/lang/String;

    invoke-static {v1}, Lcom/htc/android/epst/Utility;->ASCIIToString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 38
    .local v0, dir:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_DIR_NUMBER;->NAM:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_DIR_NUMBER;->mCurrentCmdData:Ljava/lang/String;

    .line 40
    iget-object v1, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_DIR_NUMBER;->mCurrentCmdData:Ljava/lang/String;

    return-object v1
.end method

.method public getDircetory()Ljava/lang/String;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_DIR_NUMBER;->IR_NUMBER:Ljava/lang/String;

    return-object v0
.end method

.method public read()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 25
    invoke-static {}, Lcom/htc/android/epst/internal/CmdParser;->getSingleton()Lcom/htc/android/epst/internal/CmdParser;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_DIR_NUMBER;->mCmdToBeParsed:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/android/epst/internal/CmdParser;->getResult(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_DIR_NUMBER;->NAM:Ljava/lang/String;

    .line 26
    iget-object v0, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_DIR_NUMBER;->mCmdToBeParsed:Ljava/lang/String;

    const/16 v1, 0x16

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/android/epst/Utility;->StringToASCII(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_DIR_NUMBER;->IR_NUMBER:Ljava/lang/String;

    .line 27
    return-void
.end method

.method public setDirectory(Ljava/lang/String;)V
    .locals 0
    .parameter "val"

    .prologue
    .line 19
    iput-object p1, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_DIR_NUMBER;->IR_NUMBER:Ljava/lang/String;

    .line 20
    return-void
.end method

.method public write()V
    .locals 0

    .prologue
    .line 32
    return-void
.end method
