.class public Lcom/htc/android/epst/translator/UpdatePRLFileTranslator;
.super Ljava/lang/Object;
.source "UpdatePRLFileTranslator.java"

# interfaces
.implements Lcom/htc/android/epst/translator/Translator;


# static fields
.field private static final DIRECTORY:Ljava/lang/String; = "/data/data/com.android.phone/files/"

.field private static final FILETYPE:Ljava/lang/String; = ".prl"


# instance fields
.field private mBrowseFile:Lcom/htc/android/epst/BrowseFile;

.field private mController:Lcom/htc/android/epst/dmcmd/DmCmdController;

.field private mFileNameList:[Ljava/lang/String;

.field private mUpdater:Lcom/htc/android/epst/SettingValueUpdater;


# direct methods
.method public constructor <init>()V
    .locals 8

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    invoke-static {}, Lcom/htc/android/epst/dmcmd/DmCmdController;->getSingleton()Lcom/htc/android/epst/dmcmd/DmCmdController;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/android/epst/translator/UpdatePRLFileTranslator;->mController:Lcom/htc/android/epst/dmcmd/DmCmdController;

    .line 28
    new-instance v5, Lcom/htc/android/epst/BrowseFile;

    const-string v6, "/data/data/com.android.phone/files/"

    const-string v7, ".prl"

    invoke-direct {v5, v6, v7}, Lcom/htc/android/epst/BrowseFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v5, p0, Lcom/htc/android/epst/translator/UpdatePRLFileTranslator;->mBrowseFile:Lcom/htc/android/epst/BrowseFile;

    .line 29
    iget-object v0, p0, Lcom/htc/android/epst/translator/UpdatePRLFileTranslator;->mBrowseFile:Lcom/htc/android/epst/BrowseFile;

    .line 30
    .local v0, browse:Lcom/htc/android/epst/BrowseFile;
    invoke-virtual {v0}, Lcom/htc/android/epst/BrowseFile;->getFileNameList()[Ljava/lang/Object;

    move-result-object v3

    .line 31
    .local v3, objectList:[Ljava/lang/Object;
    array-length v5, v3

    new-array v1, v5, [Ljava/lang/String;

    .line 32
    .local v1, fileNameList:[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v5, v3

    if-ge v2, v5, :cond_0

    .line 33
    aget-object v5, v3, v2

    check-cast v5, Ljava/lang/String;

    aput-object v5, v1, v2

    .line 32
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 35
    :cond_0
    iput-object v1, p0, Lcom/htc/android/epst/translator/UpdatePRLFileTranslator;->mFileNameList:[Ljava/lang/String;

    .line 36
    iget-object v5, p0, Lcom/htc/android/epst/translator/UpdatePRLFileTranslator;->mController:Lcom/htc/android/epst/dmcmd/DmCmdController;

    const/16 v6, 0x48

    invoke-virtual {v5, v6}, Lcom/htc/android/epst/dmcmd/DmCmdController;->getStruct(I)Lcom/htc/android/epst/dmcmd/DmCmdBase;

    move-result-object v4

    check-cast v4, Lcom/htc/android/epst/dmcmd/DM_CMD_CODE_PRL_WRITE;

    .line 38
    .local v4, prl:Lcom/htc/android/epst/dmcmd/DM_CMD_CODE_PRL_WRITE;
    const-string v5, ""

    invoke-virtual {v4, v5}, Lcom/htc/android/epst/dmcmd/DM_CMD_CODE_PRL_WRITE;->setFilePath(Ljava/lang/String;)V

    .line 39
    return-void
.end method


# virtual methods
.method public getInputFilters()[Landroid/text/InputFilter;
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x0

    return-object v0
.end method

.method public getInputVerifier()Lcom/htc/android/epst/InputVerifier;
    .locals 1

    .prologue
    .line 46
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTypedInfo()Ljava/util/List;
    .locals 3

    .prologue
    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 53
    .local v0, ret:Ljava/util/List;
    new-instance v1, Ljava/lang/Integer;

    const/4 v2, 0x5

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 57
    return-object v0
.end method

.method public refreshGroupSettings()V
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/htc/android/epst/translator/UpdatePRLFileTranslator;->mUpdater:Lcom/htc/android/epst/SettingValueUpdater;

    invoke-interface {v0}, Lcom/htc/android/epst/SettingValueUpdater;->updateAllSettings()V

    .line 62
    return-void
.end method

.method public requestReadSettingValue(ILcom/htc/android/epst/SettingValueUpdater;)V
    .locals 1
    .parameter "itemId"
    .parameter "updater"

    .prologue
    .line 65
    iput-object p2, p0, Lcom/htc/android/epst/translator/UpdatePRLFileTranslator;->mUpdater:Lcom/htc/android/epst/SettingValueUpdater;

    .line 66
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/htc/android/epst/translator/UpdatePRLFileTranslator;->retrieveItemAndUpdate(II)V

    .line 67
    return-void
.end method

.method public requestWriteSettingValue(Lcom/htc/android/epst/SettingItem;Lcom/htc/android/epst/SettingValueUpdater;)V
    .locals 6
    .parameter "modifiedValue"
    .parameter "updater"

    .prologue
    const/16 v5, 0x48

    .line 71
    invoke-virtual {p1}, Lcom/htc/android/epst/SettingItem;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 72
    .local v1, value:Ljava/lang/String;
    iget-object v2, p0, Lcom/htc/android/epst/translator/UpdatePRLFileTranslator;->mController:Lcom/htc/android/epst/dmcmd/DmCmdController;

    invoke-virtual {v2, v5}, Lcom/htc/android/epst/dmcmd/DmCmdController;->getStruct(I)Lcom/htc/android/epst/dmcmd/DmCmdBase;

    move-result-object v0

    check-cast v0, Lcom/htc/android/epst/dmcmd/DM_CMD_CODE_PRL_WRITE;

    .line 74
    .local v0, prl:Lcom/htc/android/epst/dmcmd/DM_CMD_CODE_PRL_WRITE;
    invoke-virtual {v0, v1}, Lcom/htc/android/epst/dmcmd/DM_CMD_CODE_PRL_WRITE;->setFilePath(Ljava/lang/String;)V

    .line 75
    invoke-static {}, Lcom/htc/android/epst/Port;->getSingleton()Lcom/htc/android/epst/Port;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/htc/android/epst/SettingItem;->getId()I

    move-result v4

    invoke-virtual {v2, v5, v3, v4, p0}, Lcom/htc/android/epst/Port;->RequestWrite(IIILcom/htc/android/epst/translator/Translator;)V

    .line 77
    return-void
.end method

.method public retrieveItemAndUpdate(II)V
    .locals 4
    .parameter "itemId"
    .parameter "status"

    .prologue
    .line 80
    const-string v1, ""

    .line 81
    .local v1, value:Ljava/lang/String;
    if-nez p2, :cond_0

    .line 82
    iget-object v2, p0, Lcom/htc/android/epst/translator/UpdatePRLFileTranslator;->mController:Lcom/htc/android/epst/dmcmd/DmCmdController;

    const/16 v3, 0x48

    invoke-virtual {v2, v3}, Lcom/htc/android/epst/dmcmd/DmCmdController;->getStruct(I)Lcom/htc/android/epst/dmcmd/DmCmdBase;

    move-result-object v0

    check-cast v0, Lcom/htc/android/epst/dmcmd/DM_CMD_CODE_PRL_WRITE;

    .line 84
    .local v0, prl:Lcom/htc/android/epst/dmcmd/DM_CMD_CODE_PRL_WRITE;
    invoke-virtual {v0}, Lcom/htc/android/epst/dmcmd/DM_CMD_CODE_PRL_WRITE;->getFilePath()Ljava/lang/String;

    move-result-object v1

    .line 85
    if-nez v1, :cond_0

    .line 86
    const-string v1, ""

    .line 89
    .end local v0           #prl:Lcom/htc/android/epst/dmcmd/DM_CMD_CODE_PRL_WRITE;
    :cond_0
    iget-object v2, p0, Lcom/htc/android/epst/translator/UpdatePRLFileTranslator;->mUpdater:Lcom/htc/android/epst/SettingValueUpdater;

    const/4 v3, 0x0

    invoke-interface {v2, p1, v3, v1}, Lcom/htc/android/epst/SettingValueUpdater;->update(IILjava/lang/String;)V

    .line 90
    return-void
.end method
