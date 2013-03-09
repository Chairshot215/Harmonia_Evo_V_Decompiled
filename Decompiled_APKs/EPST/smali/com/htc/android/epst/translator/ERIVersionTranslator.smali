.class public Lcom/htc/android/epst/translator/ERIVersionTranslator;
.super Lcom/htc/android/epst/translator/StringBasedTranslator;
.source "ERIVersionTranslator.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "ERIVersionTranslator"


# instance fields
.field private DBG:Z

.field private mRawData:Lcom/htc/android/epst/dmcmd/DM_CMD_CODE_FILESYS_IO;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/htc/android/epst/translator/StringBasedTranslator;-><init>()V

    .line 23
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/android/epst/translator/ERIVersionTranslator;->DBG:Z

    .line 25
    invoke-static {}, Lcom/htc/android/epst/dmcmd/DmCmdController;->getSingleton()Lcom/htc/android/epst/dmcmd/DmCmdController;

    move-result-object v0

    const/16 v1, 0x59

    invoke-virtual {v0, v1}, Lcom/htc/android/epst/dmcmd/DmCmdController;->getStruct(I)Lcom/htc/android/epst/dmcmd/DmCmdBase;

    move-result-object v0

    check-cast v0, Lcom/htc/android/epst/dmcmd/DM_CMD_CODE_FILESYS_IO;

    iput-object v0, p0, Lcom/htc/android/epst/translator/ERIVersionTranslator;->mRawData:Lcom/htc/android/epst/dmcmd/DM_CMD_CODE_FILESYS_IO;

    return-void
.end method


# virtual methods
.method public getSettingValue()Ljava/lang/String;
    .locals 2

    .prologue
    .line 30
    iget-object v1, p0, Lcom/htc/android/epst/translator/ERIVersionTranslator;->mRawData:Lcom/htc/android/epst/dmcmd/DM_CMD_CODE_FILESYS_IO;

    invoke-virtual {v1}, Lcom/htc/android/epst/dmcmd/DM_CMD_CODE_FILESYS_IO;->getERIVersion()Ljava/lang/String;

    move-result-object v0

    .line 31
    .local v0, value:Ljava/lang/String;
    return-object v0
.end method

.method public sendReadRequest(I)V
    .locals 10
    .parameter "itemId"

    .prologue
    const/16 v9, 0x1f52

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 37
    const-string v1, ""

    .line 38
    .local v1, nERILocation:Ljava/lang/String;
    sget-boolean v5, Lcom/htc/android/epst/dmcmd/DM_CMD_CODE_FILESYS_IO;->gbFixedERIPATH:Z

    if-ne v5, v7, :cond_3

    .line 40
    sget-object v1, Lcom/htc/android/epst/dmcmd/DM_CMD_CODE_FILESYS_IO;->DEFAULT_PATH:Ljava/lang/String;

    .line 54
    :cond_0
    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v3, v5, 0x1

    .line 55
    .local v3, nLenNum:I
    const-string v5, "%02X"

    new-array v6, v7, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 56
    .local v2, nLen:Ljava/lang/String;
    invoke-static {v1}, Lcom/htc/android/epst/Utility;->ASCIIToString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 57
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "00"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "00"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 59
    .local v4, nTotal:Ljava/lang/String;
    iget-boolean v5, p0, Lcom/htc/android/epst/translator/ERIVersionTranslator;->DBG:Z

    if-eqz v5, :cond_1

    .line 60
    const-string v5, "ERIVersionTranslator"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "sendReadRequest.nTotal:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    :cond_1
    iget-object v5, p0, Lcom/htc/android/epst/translator/ERIVersionTranslator;->mRawData:Lcom/htc/android/epst/dmcmd/DM_CMD_CODE_FILESYS_IO;

    const/4 v6, 0x4

    invoke-virtual {v5, v6, v4}, Lcom/htc/android/epst/dmcmd/DM_CMD_CODE_FILESYS_IO;->bAssignParameter(ILjava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 63
    const-string v5, "ERIVersionTranslator"

    const-string v6, "mRawData.bAssignParameter() == false"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    :cond_2
    invoke-static {}, Lcom/htc/android/epst/Port;->getSingleton()Lcom/htc/android/epst/Port;

    move-result-object v5

    const/16 v6, 0x59

    invoke-virtual {v5, v6, v8, p1, p0}, Lcom/htc/android/epst/Port;->RequestRead(IIILcom/htc/android/epst/translator/Translator;)V

    .line 69
    return-void

    .line 44
    .end local v2           #nLen:Ljava/lang/String;
    .end local v3           #nLenNum:I
    .end local v4           #nTotal:Ljava/lang/String;
    :cond_3
    invoke-static {}, Lcom/htc/android/epst/nvitem/NvItemController;->getSingleton()Lcom/htc/android/epst/nvitem/NvItemController;

    move-result-object v5

    invoke-virtual {v5, v9}, Lcom/htc/android/epst/nvitem/NvItemController;->getStruct(I)Lcom/htc/android/epst/nvitem/NvItemBase;

    move-result-object v0

    check-cast v0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_ERI_DESTINATION;

    .line 45
    .local v0, nERIDest:Lcom/htc/android/epst/nvitem/DM_NVI_ID_ERI_DESTINATION;
    invoke-static {}, Lcom/htc/android/epst/Port;->getSingleton()Lcom/htc/android/epst/Port;

    move-result-object v5

    const/16 v6, 0x26

    invoke-virtual {v5, v6, v9, v8, p0}, Lcom/htc/android/epst/Port;->RequestRead(IIILcom/htc/android/epst/translator/Translator;)V

    .line 47
    invoke-virtual {v0}, Lcom/htc/android/epst/nvitem/DM_NVI_ID_ERI_DESTINATION;->getERIDESTINATION()Ljava/lang/String;

    move-result-object v1

    .line 48
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_0

    .line 49
    sget-object v1, Lcom/htc/android/epst/dmcmd/DM_CMD_CODE_FILESYS_IO;->DEFAULT_PATH:Ljava/lang/String;

    goto/16 :goto_0
.end method
