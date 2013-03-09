.class public Lcom/htc/android/epst/translator/EHRPDPrivateUIDTranslator;
.super Lcom/htc/android/epst/translator/StringBasedTranslator;
.source "EHRPDPrivateUIDTranslator.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "EHRPDPrivateUIDTranslator"


# instance fields
.field private DBG:Z

.field private mRawData:Lcom/htc/android/epst/dmcmd/DM_CMD_CODE_EHRPD;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/htc/android/epst/translator/StringBasedTranslator;-><init>()V

    .line 16
    sget-boolean v0, Lcom/htc/android/epst/EntryEPSTInfo;->DBG:Z

    iput-boolean v0, p0, Lcom/htc/android/epst/translator/EHRPDPrivateUIDTranslator;->DBG:Z

    .line 18
    invoke-static {}, Lcom/htc/android/epst/dmcmd/DmCmdController;->getSingleton()Lcom/htc/android/epst/dmcmd/DmCmdController;

    move-result-object v0

    const/16 v1, 0xf6

    invoke-virtual {v0, v1}, Lcom/htc/android/epst/dmcmd/DmCmdController;->getStruct(I)Lcom/htc/android/epst/dmcmd/DmCmdBase;

    move-result-object v0

    check-cast v0, Lcom/htc/android/epst/dmcmd/DM_CMD_CODE_EHRPD;

    iput-object v0, p0, Lcom/htc/android/epst/translator/EHRPDPrivateUIDTranslator;->mRawData:Lcom/htc/android/epst/dmcmd/DM_CMD_CODE_EHRPD;

    return-void
.end method


# virtual methods
.method public getSettingValue()Ljava/lang/String;
    .locals 2

    .prologue
    .line 23
    iget-object v1, p0, Lcom/htc/android/epst/translator/EHRPDPrivateUIDTranslator;->mRawData:Lcom/htc/android/epst/dmcmd/DM_CMD_CODE_EHRPD;

    invoke-virtual {v1}, Lcom/htc/android/epst/dmcmd/DM_CMD_CODE_EHRPD;->getEHRPDPrivateUID()Ljava/lang/String;

    move-result-object v0

    .line 24
    .local v0, value:Ljava/lang/String;
    return-object v0
.end method

.method public sendReadRequest(I)V
    .locals 3
    .parameter "itemId"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/htc/android/epst/translator/EHRPDPrivateUIDTranslator;->mRawData:Lcom/htc/android/epst/dmcmd/DM_CMD_CODE_EHRPD;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/htc/android/epst/dmcmd/DM_CMD_CODE_EHRPD;->AssignOption(I)V

    .line 31
    iget-boolean v0, p0, Lcom/htc/android/epst/translator/EHRPDPrivateUIDTranslator;->DBG:Z

    if-eqz v0, :cond_0

    .line 32
    const-string v0, "EHRPDPrivateUIDTranslator"

    const-string v1, "sendReadRequest.assign option:DmCmdDefine.DM_CMD_OPT_EHRPD_PRIVATE_UID:2"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    :cond_0
    invoke-static {}, Lcom/htc/android/epst/Port;->getSingleton()Lcom/htc/android/epst/Port;

    move-result-object v0

    const/16 v1, 0xf6

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1, p0}, Lcom/htc/android/epst/Port;->RequestRead(IIILcom/htc/android/epst/translator/Translator;)V

    .line 36
    return-void
.end method
