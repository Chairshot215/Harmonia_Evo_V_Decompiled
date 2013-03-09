.class public Lcom/htc/android/epst/translator/CHFrequencyTranslator;
.super Ljava/lang/Object;
.source "CHFrequencyTranslator.java"

# interfaces
.implements Lcom/htc/android/epst/translator/Translator;


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "CHFrequencyTranslator"


# instance fields
.field private DBG:Z

.field private gCHFrequency:Ljava/lang/String;

.field private mUpdater:Lcom/htc/android/epst/SettingValueUpdater;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/android/epst/translator/CHFrequencyTranslator;->gCHFrequency:Ljava/lang/String;

    .line 26
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/android/epst/translator/CHFrequencyTranslator;->DBG:Z

    return-void
.end method


# virtual methods
.method public getInputFilters()[Landroid/text/InputFilter;
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x0

    return-object v0
.end method

.method public getInputVerifier()Lcom/htc/android/epst/InputVerifier;
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSettingValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/htc/android/epst/translator/CHFrequencyTranslator;->gCHFrequency:Ljava/lang/String;

    return-object v0
.end method

.method public getTypedInfo()Ljava/util/List;
    .locals 3

    .prologue
    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 38
    .local v0, ret:Ljava/util/List;
    new-instance v1, Ljava/lang/Integer;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 39
    return-object v0
.end method

.method public refreshGroupSettings()V
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/htc/android/epst/translator/CHFrequencyTranslator;->mUpdater:Lcom/htc/android/epst/SettingValueUpdater;

    invoke-interface {v0}, Lcom/htc/android/epst/SettingValueUpdater;->updateAllSettings()V

    .line 62
    return-void
.end method

.method public requestReadSettingValue(ILcom/htc/android/epst/SettingValueUpdater;)V
    .locals 0
    .parameter "itemId"
    .parameter "updater"

    .prologue
    .line 65
    iput-object p2, p0, Lcom/htc/android/epst/translator/CHFrequencyTranslator;->mUpdater:Lcom/htc/android/epst/SettingValueUpdater;

    .line 66
    invoke-virtual {p0, p1}, Lcom/htc/android/epst/translator/CHFrequencyTranslator;->sendReadRequest(I)V

    .line 67
    return-void
.end method

.method public requestWriteSettingValue(Lcom/htc/android/epst/SettingItem;Lcom/htc/android/epst/SettingValueUpdater;)V
    .locals 0
    .parameter "modifiedValue"
    .parameter "updater"

    .prologue
    .line 70
    iput-object p2, p0, Lcom/htc/android/epst/translator/CHFrequencyTranslator;->mUpdater:Lcom/htc/android/epst/SettingValueUpdater;

    .line 71
    invoke-virtual {p0, p1}, Lcom/htc/android/epst/translator/CHFrequencyTranslator;->sendWriteRequest(Lcom/htc/android/epst/SettingItem;)V

    .line 72
    return-void
.end method

.method public retrieveItemAndUpdate(II)V
    .locals 2
    .parameter "itemId"
    .parameter "status"

    .prologue
    .line 75
    invoke-virtual {p0}, Lcom/htc/android/epst/translator/CHFrequencyTranslator;->getSettingValue()Ljava/lang/String;

    move-result-object v0

    .line 76
    .local v0, value:Ljava/lang/String;
    iget-object v1, p0, Lcom/htc/android/epst/translator/CHFrequencyTranslator;->mUpdater:Lcom/htc/android/epst/SettingValueUpdater;

    invoke-interface {v1, p1, p2, v0}, Lcom/htc/android/epst/SettingValueUpdater;->update(IILjava/lang/String;)V

    .line 77
    return-void
.end method

.method public sendReadRequest(I)V
    .locals 3
    .parameter "itemId"

    .prologue
    .line 48
    const-string v0, "Non-Standard"

    iput-object v0, p0, Lcom/htc/android/epst/translator/CHFrequencyTranslator;->gCHFrequency:Ljava/lang/String;

    .line 49
    iget-boolean v0, p0, Lcom/htc/android/epst/translator/CHFrequencyTranslator;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "CHFrequencyTranslator"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendReadRequest gCHFrequency:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/epst/translator/CHFrequencyTranslator;->gCHFrequency:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/htc/android/epst/translator/CHFrequencyTranslator;->retrieveItemAndUpdate(II)V

    .line 51
    return-void
.end method

.method public sendWriteRequest(Lcom/htc/android/epst/SettingItem;)V
    .locals 3
    .parameter "modifiedValue"

    .prologue
    .line 55
    iget-boolean v0, p0, Lcom/htc/android/epst/translator/CHFrequencyTranslator;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "CHFrequencyTranslator"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendWriteRequest gCHFrequency:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/epst/translator/CHFrequencyTranslator;->gCHFrequency:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    :cond_0
    invoke-virtual {p1}, Lcom/htc/android/epst/SettingItem;->getId()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/htc/android/epst/translator/CHFrequencyTranslator;->retrieveItemAndUpdate(II)V

    .line 57
    invoke-virtual {p0}, Lcom/htc/android/epst/translator/CHFrequencyTranslator;->refreshGroupSettings()V

    .line 58
    return-void
.end method
