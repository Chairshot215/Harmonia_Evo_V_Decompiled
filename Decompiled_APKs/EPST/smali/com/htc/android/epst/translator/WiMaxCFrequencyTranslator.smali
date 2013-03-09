.class public Lcom/htc/android/epst/translator/WiMaxCFrequencyTranslator;
.super Ljava/lang/Object;
.source "WiMaxCFrequencyTranslator.java"

# interfaces
.implements Lcom/htc/android/epst/translator/Translator;


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "WiMaxCFrequencyTranslator"


# instance fields
.field private DBG:Z

.field private mCFrequency:Ljava/lang/String;

.field private mUpdater:Lcom/htc/android/epst/SettingValueUpdater;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/android/epst/translator/WiMaxCFrequencyTranslator;->mCFrequency:Ljava/lang/String;

    .line 32
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/android/epst/translator/WiMaxCFrequencyTranslator;->DBG:Z

    return-void
.end method


# virtual methods
.method public getInputFilters()[Landroid/text/InputFilter;
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x0

    return-object v0
.end method

.method public getInputVerifier()Lcom/htc/android/epst/InputVerifier;
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSettingValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/htc/android/epst/translator/WiMaxCFrequencyTranslator;->mCFrequency:Ljava/lang/String;

    return-object v0
.end method

.method public getTypedInfo()Ljava/util/List;
    .locals 3

    .prologue
    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 45
    .local v0, ret:Ljava/util/List;
    new-instance v1, Ljava/lang/Integer;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 46
    return-object v0
.end method

.method public refreshGroupSettings()V
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/htc/android/epst/translator/WiMaxCFrequencyTranslator;->mUpdater:Lcom/htc/android/epst/SettingValueUpdater;

    invoke-interface {v0}, Lcom/htc/android/epst/SettingValueUpdater;->updateAllSettings()V

    .line 77
    return-void
.end method

.method public requestReadSettingValue(ILcom/htc/android/epst/SettingValueUpdater;)V
    .locals 0
    .parameter "itemId"
    .parameter "updater"

    .prologue
    .line 80
    iput-object p2, p0, Lcom/htc/android/epst/translator/WiMaxCFrequencyTranslator;->mUpdater:Lcom/htc/android/epst/SettingValueUpdater;

    .line 81
    invoke-virtual {p0, p1}, Lcom/htc/android/epst/translator/WiMaxCFrequencyTranslator;->sendReadRequest(I)V

    .line 82
    return-void
.end method

.method public requestWriteSettingValue(Lcom/htc/android/epst/SettingItem;Lcom/htc/android/epst/SettingValueUpdater;)V
    .locals 0
    .parameter "modifiedValue"
    .parameter "updater"

    .prologue
    .line 85
    iput-object p2, p0, Lcom/htc/android/epst/translator/WiMaxCFrequencyTranslator;->mUpdater:Lcom/htc/android/epst/SettingValueUpdater;

    .line 86
    invoke-virtual {p0, p1}, Lcom/htc/android/epst/translator/WiMaxCFrequencyTranslator;->sendWriteRequest(Lcom/htc/android/epst/SettingItem;)V

    .line 87
    return-void
.end method

.method public retrieveItemAndUpdate(II)V
    .locals 2
    .parameter "itemId"
    .parameter "status"

    .prologue
    .line 90
    invoke-virtual {p0}, Lcom/htc/android/epst/translator/WiMaxCFrequencyTranslator;->getSettingValue()Ljava/lang/String;

    move-result-object v0

    .line 91
    .local v0, value:Ljava/lang/String;
    iget-object v1, p0, Lcom/htc/android/epst/translator/WiMaxCFrequencyTranslator;->mUpdater:Lcom/htc/android/epst/SettingValueUpdater;

    invoke-interface {v1, p1, p2, v0}, Lcom/htc/android/epst/SettingValueUpdater;->update(IILjava/lang/String;)V

    .line 92
    return-void
.end method

.method public sendReadRequest(I)V
    .locals 3
    .parameter "itemId"

    .prologue
    .line 55
    invoke-static {}, Lcom/htc/android/epst/wimax/WiMaxController;->getSingleton()Lcom/htc/android/epst/wimax/WiMaxController;

    move-result-object v0

    sget-object v1, Lcom/htc/android/epst/wimax/WiMaxProperty;->WIMAX_PROPERTY:[Ljava/lang/String;

    sget v2, Lcom/htc/android/epst/wimax/WiMaxProperty;->WIMAX_CFREQUENCY:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/htc/android/epst/wimax/WiMaxController;->getWiMaxValueByID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/epst/translator/WiMaxCFrequencyTranslator;->mCFrequency:Ljava/lang/String;

    .line 56
    iget-boolean v0, p0, Lcom/htc/android/epst/translator/WiMaxCFrequencyTranslator;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "WiMaxCFrequencyTranslator"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendReadRequest center frquency:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/epst/translator/WiMaxCFrequencyTranslator;->mCFrequency:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/htc/android/epst/translator/WiMaxCFrequencyTranslator;->retrieveItemAndUpdate(II)V

    .line 59
    return-void
.end method

.method public sendWriteRequest(Lcom/htc/android/epst/SettingItem;)V
    .locals 5
    .parameter "modifiedValue"

    .prologue
    .line 63
    invoke-virtual {p1}, Lcom/htc/android/epst/SettingItem;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 64
    .local v1, nValue:Ljava/lang/String;
    invoke-static {}, Lcom/htc/android/epst/wimax/WiMaxController;->getSingleton()Lcom/htc/android/epst/wimax/WiMaxController;

    move-result-object v2

    sget-object v3, Lcom/htc/android/epst/wimax/WiMaxProperty;->WIMAX_PROPERTY:[Ljava/lang/String;

    sget v4, Lcom/htc/android/epst/wimax/WiMaxProperty;->WIMAX_CFREQUENCY:I

    aget-object v3, v3, v4

    invoke-virtual {v2, v3, v1}, Lcom/htc/android/epst/wimax/WiMaxController;->storeModifiedProperty(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 65
    .local v0, bResult:Z
    if-nez v0, :cond_0

    .line 66
    const-string v2, "WiMaxCFrequencyTranslator"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WimaxNative.setWimaxProp (persist.wimax.CenterFrequency):"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    :cond_0
    iget-boolean v2, p0, Lcom/htc/android/epst/translator/WiMaxCFrequencyTranslator;->DBG:Z

    if-eqz v2, :cond_1

    const-string v2, "WiMaxCFrequencyTranslator"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendWriteRequest center frequency:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/android/epst/translator/WiMaxCFrequencyTranslator;->mCFrequency:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " result:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    :cond_1
    invoke-virtual {p1}, Lcom/htc/android/epst/SettingItem;->getId()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/htc/android/epst/translator/WiMaxCFrequencyTranslator;->retrieveItemAndUpdate(II)V

    .line 71
    invoke-virtual {p0}, Lcom/htc/android/epst/translator/WiMaxCFrequencyTranslator;->refreshGroupSettings()V

    .line 73
    return-void
.end method
