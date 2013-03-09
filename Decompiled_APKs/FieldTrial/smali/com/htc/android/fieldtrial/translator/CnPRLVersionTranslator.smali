.class public Lcom/htc/android/fieldtrial/translator/CnPRLVersionTranslator;
.super Lcom/htc/android/fieldtrial/translator/Translator;
.source "CnPRLVersionTranslator.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "CnPRLVersionTranslator"


# instance fields
.field private mRawData:Lcom/htc/android/fieldtrial/dmcmd/DM_CMD_CODE_PRL_READ;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/htc/android/fieldtrial/translator/Translator;-><init>()V

    .line 11
    invoke-static {}, Lcom/htc/android/fieldtrial/dmcmd/DmCmdController;->getSingleton()Lcom/htc/android/fieldtrial/dmcmd/DmCmdController;

    move-result-object v0

    const/16 v1, 0x49

    invoke-virtual {v0, v1}, Lcom/htc/android/fieldtrial/dmcmd/DmCmdController;->getStruct(I)Lcom/htc/android/fieldtrial/dmcmd/DmCmdBase;

    move-result-object v0

    check-cast v0, Lcom/htc/android/fieldtrial/dmcmd/DM_CMD_CODE_PRL_READ;

    iput-object v0, p0, Lcom/htc/android/fieldtrial/translator/CnPRLVersionTranslator;->mRawData:Lcom/htc/android/fieldtrial/dmcmd/DM_CMD_CODE_PRL_READ;

    return-void
.end method


# virtual methods
.method protected getSettingValue(I)Ljava/lang/String;
    .locals 2
    .parameter "itemId"

    .prologue
    .line 15
    iget-object v1, p0, Lcom/htc/android/fieldtrial/translator/CnPRLVersionTranslator;->mRawData:Lcom/htc/android/fieldtrial/dmcmd/DM_CMD_CODE_PRL_READ;

    invoke-virtual {v1}, Lcom/htc/android/fieldtrial/dmcmd/DM_CMD_CODE_PRL_READ;->getPrlId()Ljava/lang/String;

    move-result-object v0

    .line 16
    .local v0, value:Ljava/lang/String;
    return-object v0
.end method

.method protected sendRequest(I)V
    .locals 2
    .parameter "itemId"

    .prologue
    .line 21
    invoke-static {}, Lcom/htc/android/fieldtrial/Port;->getSingleton()Lcom/htc/android/fieldtrial/Port;

    move-result-object v0

    const/16 v1, 0x49

    invoke-virtual {v0, v1, p1, p0}, Lcom/htc/android/fieldtrial/Port;->requestDmCmdRead(IILcom/htc/android/fieldtrial/translator/Translator;)V

    .line 22
    return-void
.end method
