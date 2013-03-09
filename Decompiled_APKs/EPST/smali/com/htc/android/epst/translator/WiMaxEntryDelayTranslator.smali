.class public Lcom/htc/android/epst/translator/WiMaxEntryDelayTranslator;
.super Ljava/lang/Object;
.source "WiMaxEntryDelayTranslator.java"

# interfaces
.implements Lcom/htc/android/epst/translator/Translator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/android/epst/translator/WiMaxEntryDelayTranslator$STVerifier;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "WiMaxEntryDelayTranslator"


# instance fields
.field private DBG:Z

.field private mEntryDelay:Ljava/lang/String;

.field private mUpdater:Lcom/htc/android/epst/SettingValueUpdater;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/android/epst/translator/WiMaxEntryDelayTranslator;->mEntryDelay:Ljava/lang/String;

    .line 32
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/android/epst/translator/WiMaxEntryDelayTranslator;->DBG:Z

    .line 43
    return-void
.end method


# virtual methods
.method public getInputFilters()[Landroid/text/InputFilter;
    .locals 4

    .prologue
    .line 34
    const/4 v1, 0x2

    new-array v0, v1, [Landroid/text/InputFilter;

    const/4 v1, 0x0

    new-instance v2, Landroid/text/InputFilter$LengthFilter;

    const/4 v3, 0x4

    invoke-direct {v2, v3}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-static {}, Landroid/text/method/DigitsKeyListener;->getInstance()Landroid/text/method/DigitsKeyListener;

    move-result-object v2

    aput-object v2, v0, v1

    .line 35
    .local v0, filters:[Landroid/text/InputFilter;
    return-object v0
.end method

.method public getInputVerifier()Lcom/htc/android/epst/InputVerifier;
    .locals 1

    .prologue
    .line 40
    new-instance v0, Lcom/htc/android/epst/translator/WiMaxEntryDelayTranslator$STVerifier;

    invoke-direct {v0, p0}, Lcom/htc/android/epst/translator/WiMaxEntryDelayTranslator$STVerifier;-><init>(Lcom/htc/android/epst/translator/WiMaxEntryDelayTranslator;)V

    return-object v0
.end method

.method public getSettingValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/htc/android/epst/translator/WiMaxEntryDelayTranslator;->mEntryDelay:Ljava/lang/String;

    return-object v0
.end method

.method public getTypedInfo()Ljava/util/List;
    .locals 3

    .prologue
    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 71
    .local v0, ret:Ljava/util/List;
    new-instance v1, Ljava/lang/Integer;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 72
    return-object v0
.end method

.method public refreshGroupSettings()V
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/htc/android/epst/translator/WiMaxEntryDelayTranslator;->mUpdater:Lcom/htc/android/epst/SettingValueUpdater;

    invoke-interface {v0}, Lcom/htc/android/epst/SettingValueUpdater;->updateAllSettings()V

    .line 107
    return-void
.end method

.method public requestReadSettingValue(ILcom/htc/android/epst/SettingValueUpdater;)V
    .locals 0
    .parameter "itemId"
    .parameter "updater"

    .prologue
    .line 110
    iput-object p2, p0, Lcom/htc/android/epst/translator/WiMaxEntryDelayTranslator;->mUpdater:Lcom/htc/android/epst/SettingValueUpdater;

    .line 111
    invoke-virtual {p0, p1}, Lcom/htc/android/epst/translator/WiMaxEntryDelayTranslator;->sendReadRequest(I)V

    .line 112
    return-void
.end method

.method public requestWriteSettingValue(Lcom/htc/android/epst/SettingItem;Lcom/htc/android/epst/SettingValueUpdater;)V
    .locals 0
    .parameter "modifiedValue"
    .parameter "updater"

    .prologue
    .line 115
    iput-object p2, p0, Lcom/htc/android/epst/translator/WiMaxEntryDelayTranslator;->mUpdater:Lcom/htc/android/epst/SettingValueUpdater;

    .line 116
    invoke-virtual {p0, p1}, Lcom/htc/android/epst/translator/WiMaxEntryDelayTranslator;->sendWriteRequest(Lcom/htc/android/epst/SettingItem;)V

    .line 117
    return-void
.end method

.method public retrieveItemAndUpdate(II)V
    .locals 2
    .parameter "itemId"
    .parameter "status"

    .prologue
    .line 120
    invoke-virtual {p0}, Lcom/htc/android/epst/translator/WiMaxEntryDelayTranslator;->getSettingValue()Ljava/lang/String;

    move-result-object v0

    .line 121
    .local v0, value:Ljava/lang/String;
    iget-object v1, p0, Lcom/htc/android/epst/translator/WiMaxEntryDelayTranslator;->mUpdater:Lcom/htc/android/epst/SettingValueUpdater;

    invoke-interface {v1, p1, p2, v0}, Lcom/htc/android/epst/SettingValueUpdater;->update(IILjava/lang/String;)V

    .line 122
    return-void
.end method

.method public sendReadRequest(I)V
    .locals 6
    .parameter "itemId"

    .prologue
    const/4 v5, 0x0

    .line 81
    invoke-static {}, Lcom/htc/android/epst/wimax/WiMaxController;->getSingleton()Lcom/htc/android/epst/wimax/WiMaxController;

    move-result-object v2

    sget-object v3, Lcom/htc/android/epst/wimax/WiMaxProperty;->WIMAX_PROPERTY:[Ljava/lang/String;

    sget v4, Lcom/htc/android/epst/wimax/WiMaxProperty;->WIMAX_ENTRY_DELAY:I

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Lcom/htc/android/epst/wimax/WiMaxController;->getWiMaxValueByID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 82
    .local v1, nValue:Ljava/lang/String;
    const-string v2, "WiMaxEntryDelayTranslator"

    invoke-static {v1, v5, v2}, Lcom/htc/android/epst/Utility;->parseIntSafely(Ljava/lang/String;ILjava/lang/String;)I

    move-result v0

    .line 83
    .local v0, nIntValue:I
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/android/epst/translator/WiMaxEntryDelayTranslator;->mEntryDelay:Ljava/lang/String;

    .line 84
    iget-boolean v2, p0, Lcom/htc/android/epst/translator/WiMaxEntryDelayTranslator;->DBG:Z

    if-eqz v2, :cond_0

    const-string v2, "WiMaxEntryDelayTranslator"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendReadRequest entry delay:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/android/epst/translator/WiMaxEntryDelayTranslator;->mEntryDelay:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    :cond_0
    invoke-virtual {p0, p1, v5}, Lcom/htc/android/epst/translator/WiMaxEntryDelayTranslator;->retrieveItemAndUpdate(II)V

    .line 87
    return-void
.end method

.method public sendWriteRequest(Lcom/htc/android/epst/SettingItem;)V
    .locals 7
    .parameter "modifiedValue"

    .prologue
    const/4 v6, 0x0

    .line 91
    invoke-virtual {p1}, Lcom/htc/android/epst/SettingItem;->getValue()Ljava/lang/String;

    move-result-object v2

    .line 92
    .local v2, nValue:Ljava/lang/String;
    const-string v3, "WiMaxEntryDelayTranslator"

    invoke-static {v2, v6, v3}, Lcom/htc/android/epst/Utility;->parseIntSafely(Ljava/lang/String;ILjava/lang/String;)I

    move-result v1

    .line 93
    .local v1, nIntValue:I
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 94
    invoke-static {}, Lcom/htc/android/epst/wimax/WiMaxController;->getSingleton()Lcom/htc/android/epst/wimax/WiMaxController;

    move-result-object v3

    sget-object v4, Lcom/htc/android/epst/wimax/WiMaxProperty;->WIMAX_PROPERTY:[Ljava/lang/String;

    sget v5, Lcom/htc/android/epst/wimax/WiMaxProperty;->WIMAX_ENTRY_DELAY:I

    aget-object v4, v4, v5

    invoke-virtual {v3, v4, v2}, Lcom/htc/android/epst/wimax/WiMaxController;->storeModifiedProperty(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 95
    .local v0, bResult:Z
    if-nez v0, :cond_0

    .line 96
    const-string v3, "WiMaxEntryDelayTranslator"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "WimaxNative.setWimaxProp (persist.wimax.Entry_Delay):"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    :cond_0
    iget-boolean v3, p0, Lcom/htc/android/epst/translator/WiMaxEntryDelayTranslator;->DBG:Z

    if-eqz v3, :cond_1

    const-string v3, "WiMaxEntryDelayTranslator"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sendWriteRequest entry delay:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " result:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    :cond_1
    invoke-virtual {p1}, Lcom/htc/android/epst/SettingItem;->getId()I

    move-result v3

    invoke-virtual {p0, v3, v6}, Lcom/htc/android/epst/translator/WiMaxEntryDelayTranslator;->retrieveItemAndUpdate(II)V

    .line 101
    invoke-virtual {p0}, Lcom/htc/android/epst/translator/WiMaxEntryDelayTranslator;->refreshGroupSettings()V

    .line 103
    return-void
.end method
