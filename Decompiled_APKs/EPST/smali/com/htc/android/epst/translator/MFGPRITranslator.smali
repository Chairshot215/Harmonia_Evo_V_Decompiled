.class public Lcom/htc/android/epst/translator/MFGPRITranslator;
.super Lcom/htc/android/epst/translator/StringBasedTranslator;
.source "MFGPRITranslator.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "MFGPRITranslator"


# instance fields
.field private mRawData:Lcom/htc/android/epst/dmcmd/DM_CMD_CODE_NV_OPERATION;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/htc/android/epst/translator/StringBasedTranslator;-><init>()V

    .line 16
    invoke-static {}, Lcom/htc/android/epst/dmcmd/DmCmdController;->getSingleton()Lcom/htc/android/epst/dmcmd/DmCmdController;

    move-result-object v0

    const/16 v1, 0xc9

    invoke-virtual {v0, v1}, Lcom/htc/android/epst/dmcmd/DmCmdController;->getStruct(I)Lcom/htc/android/epst/dmcmd/DmCmdBase;

    move-result-object v0

    check-cast v0, Lcom/htc/android/epst/dmcmd/DM_CMD_CODE_NV_OPERATION;

    iput-object v0, p0, Lcom/htc/android/epst/translator/MFGPRITranslator;->mRawData:Lcom/htc/android/epst/dmcmd/DM_CMD_CODE_NV_OPERATION;

    return-void
.end method


# virtual methods
.method public getSettingValue()Ljava/lang/String;
    .locals 2

    .prologue
    .line 21
    iget-object v1, p0, Lcom/htc/android/epst/translator/MFGPRITranslator;->mRawData:Lcom/htc/android/epst/dmcmd/DM_CMD_CODE_NV_OPERATION;

    invoke-virtual {v1}, Lcom/htc/android/epst/dmcmd/DM_CMD_CODE_NV_OPERATION;->getMFGPRIVersion()Ljava/lang/String;

    move-result-object v0

    .line 22
    .local v0, value:Ljava/lang/String;
    return-object v0
.end method

.method public sendReadRequest(I)V
    .locals 3
    .parameter "itemId"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/htc/android/epst/translator/MFGPRITranslator;->mRawData:Lcom/htc/android/epst/dmcmd/DM_CMD_CODE_NV_OPERATION;

    const/16 v1, 0xf0

    invoke-virtual {v0, v1}, Lcom/htc/android/epst/dmcmd/DM_CMD_CODE_NV_OPERATION;->bAssignParameter(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 29
    const-string v0, "MFGPRITranslator"

    const-string v1, "mRawData.bAssignParameter() == false"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    :cond_0
    invoke-static {}, Lcom/htc/android/epst/Port;->getSingleton()Lcom/htc/android/epst/Port;

    move-result-object v0

    const/16 v1, 0xc9

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1, p0}, Lcom/htc/android/epst/Port;->RequestRead(IIILcom/htc/android/epst/translator/Translator;)V

    .line 35
    return-void
.end method
