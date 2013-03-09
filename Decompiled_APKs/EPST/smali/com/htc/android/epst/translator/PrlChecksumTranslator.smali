.class public Lcom/htc/android/epst/translator/PrlChecksumTranslator;
.super Ljava/lang/Object;
.source "PrlChecksumTranslator.java"

# interfaces
.implements Lcom/htc/android/epst/translator/Translator;


# instance fields
.field private mController:Lcom/htc/android/epst/nvitem/NvItemController;

.field private mUpdater:Lcom/htc/android/epst/SettingValueUpdater;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    invoke-static {}, Lcom/htc/android/epst/nvitem/NvItemController;->getSingleton()Lcom/htc/android/epst/nvitem/NvItemController;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/epst/translator/PrlChecksumTranslator;->mController:Lcom/htc/android/epst/nvitem/NvItemController;

    return-void
.end method


# virtual methods
.method public getInputFilters()[Landroid/text/InputFilter;
    .locals 1

    .prologue
    .line 24
    const/4 v0, 0x0

    return-object v0
.end method

.method public getInputVerifier()Lcom/htc/android/epst/InputVerifier;
    .locals 1

    .prologue
    .line 29
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTypedInfo()Ljava/util/List;
    .locals 1

    .prologue
    .line 35
    const/4 v0, 0x0

    return-object v0
.end method

.method public refreshGroupSettings()V
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/htc/android/epst/translator/PrlChecksumTranslator;->mUpdater:Lcom/htc/android/epst/SettingValueUpdater;

    invoke-interface {v0}, Lcom/htc/android/epst/SettingValueUpdater;->updateAllSettings()V

    .line 41
    return-void
.end method

.method public requestReadSettingValue(ILcom/htc/android/epst/SettingValueUpdater;)V
    .locals 3
    .parameter "itemId"
    .parameter "updater"

    .prologue
    .line 45
    iput-object p2, p0, Lcom/htc/android/epst/translator/PrlChecksumTranslator;->mUpdater:Lcom/htc/android/epst/SettingValueUpdater;

    .line 46
    invoke-static {}, Lcom/htc/android/epst/Port;->getSingleton()Lcom/htc/android/epst/Port;

    move-result-object v0

    const/16 v1, 0x26

    const/16 v2, 0x1f50

    invoke-virtual {v0, v1, v2, p1, p0}, Lcom/htc/android/epst/Port;->RequestRead(IIILcom/htc/android/epst/translator/Translator;)V

    .line 48
    return-void
.end method

.method public requestWriteSettingValue(Lcom/htc/android/epst/SettingItem;Lcom/htc/android/epst/SettingValueUpdater;)V
    .locals 0
    .parameter "modifiedValue"
    .parameter "updater"

    .prologue
    .line 54
    return-void
.end method

.method public retrieveItemAndUpdate(II)V
    .locals 4
    .parameter "itemId"
    .parameter "status"

    .prologue
    .line 58
    const-string v1, ""

    .line 59
    .local v1, value:Ljava/lang/String;
    if-nez p2, :cond_0

    .line 60
    iget-object v2, p0, Lcom/htc/android/epst/translator/PrlChecksumTranslator;->mController:Lcom/htc/android/epst/nvitem/NvItemController;

    const/16 v3, 0x1f50

    invoke-virtual {v2, v3}, Lcom/htc/android/epst/nvitem/NvItemController;->getStruct(I)Lcom/htc/android/epst/nvitem/NvItemBase;

    move-result-object v0

    check-cast v0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_PRI_INFO;

    .line 61
    .local v0, prl:Lcom/htc/android/epst/nvitem/DM_NVI_ID_PRI_INFO;
    invoke-virtual {v0}, Lcom/htc/android/epst/nvitem/DM_NVI_ID_PRI_INFO;->getChecksum()Ljava/lang/String;

    move-result-object v1

    .line 63
    .end local v0           #prl:Lcom/htc/android/epst/nvitem/DM_NVI_ID_PRI_INFO;
    :cond_0
    iget-object v2, p0, Lcom/htc/android/epst/translator/PrlChecksumTranslator;->mUpdater:Lcom/htc/android/epst/SettingValueUpdater;

    invoke-interface {v2, p1, p2, v1}, Lcom/htc/android/epst/SettingValueUpdater;->update(IILjava/lang/String;)V

    .line 64
    return-void
.end method
