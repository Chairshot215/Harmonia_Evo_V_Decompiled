.class public Lcom/htc/android/epst/translator/PrlCapabilityPreferTranslator;
.super Lcom/htc/android/epst/translator/StringBasedTranslator;
.source "PrlCapabilityPreferTranslator.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "PrlCapabilityPreferTranslator"


# instance fields
.field private mRawData:Lcom/htc/android/epst/dmcmd/DM_CMD_CODE_PRL_READ;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/htc/android/epst/translator/StringBasedTranslator;-><init>()V

    .line 12
    invoke-static {}, Lcom/htc/android/epst/dmcmd/DmCmdController;->getSingleton()Lcom/htc/android/epst/dmcmd/DmCmdController;

    move-result-object v0

    const/16 v1, 0x49

    invoke-virtual {v0, v1}, Lcom/htc/android/epst/dmcmd/DmCmdController;->getStruct(I)Lcom/htc/android/epst/dmcmd/DmCmdBase;

    move-result-object v0

    check-cast v0, Lcom/htc/android/epst/dmcmd/DM_CMD_CODE_PRL_READ;

    iput-object v0, p0, Lcom/htc/android/epst/translator/PrlCapabilityPreferTranslator;->mRawData:Lcom/htc/android/epst/dmcmd/DM_CMD_CODE_PRL_READ;

    return-void
.end method


# virtual methods
.method public getSettingValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/htc/android/epst/translator/PrlCapabilityPreferTranslator;->mRawData:Lcom/htc/android/epst/dmcmd/DM_CMD_CODE_PRL_READ;

    invoke-virtual {v0}, Lcom/htc/android/epst/dmcmd/DM_CMD_CODE_PRL_READ;->getPrlPreferOnly()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public sendReadRequest(I)V
    .locals 3
    .parameter "itemId"

    .prologue
    .line 22
    invoke-static {}, Lcom/htc/android/epst/Port;->getSingleton()Lcom/htc/android/epst/Port;

    move-result-object v0

    const/16 v1, 0x49

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1, p0}, Lcom/htc/android/epst/Port;->RequestRead(IIILcom/htc/android/epst/translator/Translator;)V

    .line 24
    return-void
.end method
