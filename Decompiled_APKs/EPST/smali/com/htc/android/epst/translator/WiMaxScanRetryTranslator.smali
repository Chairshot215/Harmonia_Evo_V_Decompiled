.class public Lcom/htc/android/epst/translator/WiMaxScanRetryTranslator;
.super Ljava/lang/Object;
.source "WiMaxScanRetryTranslator.java"

# interfaces
.implements Lcom/htc/android/epst/translator/Translator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/android/epst/translator/WiMaxScanRetryTranslator$STVerifier;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "WiMaxScanRetryTranslator"


# instance fields
.field private DBG:Z

.field private mScanRetry:Ljava/lang/String;

.field private mUpdater:Lcom/htc/android/epst/SettingValueUpdater;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/android/epst/translator/WiMaxScanRetryTranslator;->mScanRetry:Ljava/lang/String;

    .line 32
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/android/epst/translator/WiMaxScanRetryTranslator;->DBG:Z

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
    new-instance v0, Lcom/htc/android/epst/translator/WiMaxScanRetryTranslator$STVerifier;

    invoke-direct {v0, p0}, Lcom/htc/android/epst/translator/WiMaxScanRetryTranslator$STVerifier;-><init>(Lcom/htc/android/epst/translator/WiMaxScanRetryTranslator;)V

    return-object v0
.end method

.method public getSettingValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/htc/android/epst/translator/WiMaxScanRetryTranslator;->mScanRetry:Ljava/lang/String;

    return-object v0
.end method

.method public getTypedInfo()Ljava/util/List;
    .locals 3

    .prologue
    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 69
    .local v0, ret:Ljava/util/List;
    new-instance v1, Ljava/lang/Integer;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    return-object v0
.end method

.method public refreshGroupSettings()V
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/htc/android/epst/translator/WiMaxScanRetryTranslator;->mUpdater:Lcom/htc/android/epst/SettingValueUpdater;

    invoke-interface {v0}, Lcom/htc/android/epst/SettingValueUpdater;->updateAllSettings()V

    .line 106
    return-void
.end method

.method public requestReadSettingValue(ILcom/htc/android/epst/SettingValueUpdater;)V
    .locals 0
    .parameter "itemId"
    .parameter "updater"

    .prologue
    .line 109
    iput-object p2, p0, Lcom/htc/android/epst/translator/WiMaxScanRetryTranslator;->mUpdater:Lcom/htc/android/epst/SettingValueUpdater;

    .line 110
    invoke-virtual {p0, p1}, Lcom/htc/android/epst/translator/WiMaxScanRetryTranslator;->sendReadRequest(I)V

    .line 111
    return-void
.end method

.method public requestWriteSettingValue(Lcom/htc/android/epst/SettingItem;Lcom/htc/android/epst/SettingValueUpdater;)V
    .locals 0
    .parameter "modifiedValue"
    .parameter "updater"

    .prologue
    .line 114
    iput-object p2, p0, Lcom/htc/android/epst/translator/WiMaxScanRetryTranslator;->mUpdater:Lcom/htc/android/epst/SettingValueUpdater;

    .line 115
    invoke-virtual {p0, p1}, Lcom/htc/android/epst/translator/WiMaxScanRetryTranslator;->sendWriteRequest(Lcom/htc/android/epst/SettingItem;)V

    .line 116
    return-void
.end method

.method public retrieveItemAndUpdate(II)V
    .locals 2
    .parameter "itemId"
    .parameter "status"

    .prologue
    .line 119
    invoke-virtual {p0}, Lcom/htc/android/epst/translator/WiMaxScanRetryTranslator;->getSettingValue()Ljava/lang/String;

    move-result-object v0

    .line 120
    .local v0, value:Ljava/lang/String;
    iget-object v1, p0, Lcom/htc/android/epst/translator/WiMaxScanRetryTranslator;->mUpdater:Lcom/htc/android/epst/SettingValueUpdater;

    invoke-interface {v1, p1, p2, v0}, Lcom/htc/android/epst/SettingValueUpdater;->update(IILjava/lang/String;)V

    .line 121
    return-void
.end method

.method public sendReadRequest(I)V
    .locals 6
    .parameter "itemId"

    .prologue
    const/4 v5, 0x0

    .line 79
    invoke-static {}, Lcom/htc/android/epst/wimax/WiMaxController;->getSingleton()Lcom/htc/android/epst/wimax/WiMaxController;

    move-result-object v2

    sget-object v3, Lcom/htc/android/epst/wimax/WiMaxProperty;->WIMAX_PROPERTY:[Ljava/lang/String;

    sget v4, Lcom/htc/android/epst/wimax/WiMaxProperty;->WIMAX_SCAN_RETRY:I

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Lcom/htc/android/epst/wimax/WiMaxController;->getWiMaxValueByID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 80
    .local v1, nValueSec:Ljava/lang/String;
    const-string v2, "WiMaxScanRetryTranslator"

    invoke-static {v1, v5, v2}, Lcom/htc/android/epst/Utility;->parseIntSafely(Ljava/lang/String;ILjava/lang/String;)I

    move-result v0

    .line 81
    .local v0, nSec:I
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/android/epst/translator/WiMaxScanRetryTranslator;->mScanRetry:Ljava/lang/String;

    .line 82
    iget-boolean v2, p0, Lcom/htc/android/epst/translator/WiMaxScanRetryTranslator;->DBG:Z

    if-eqz v2, :cond_0

    const-string v2, "WiMaxScanRetryTranslator"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendReadRequest scan retry:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/android/epst/translator/WiMaxScanRetryTranslator;->mScanRetry:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    :cond_0
    invoke-virtual {p0, p1, v5}, Lcom/htc/android/epst/translator/WiMaxScanRetryTranslator;->retrieveItemAndUpdate(II)V

    .line 85
    return-void
.end method

.method public sendWriteRequest(Lcom/htc/android/epst/SettingItem;)V
    .locals 8
    .parameter "modifiedValue"

    .prologue
    const/4 v7, 0x0

    .line 89
    invoke-virtual {p1}, Lcom/htc/android/epst/SettingItem;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 91
    .local v1, nValue:Ljava/lang/String;
    const-string v4, "WiMaxScanRetryTranslator"

    invoke-static {v1, v7, v4}, Lcom/htc/android/epst/Utility;->parseIntSafely(Ljava/lang/String;ILjava/lang/String;)I

    move-result v3

    .line 92
    .local v3, standbyTime:I
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 93
    .local v2, nValueSec:Ljava/lang/String;
    invoke-static {}, Lcom/htc/android/epst/wimax/WiMaxController;->getSingleton()Lcom/htc/android/epst/wimax/WiMaxController;

    move-result-object v4

    sget-object v5, Lcom/htc/android/epst/wimax/WiMaxProperty;->WIMAX_PROPERTY:[Ljava/lang/String;

    sget v6, Lcom/htc/android/epst/wimax/WiMaxProperty;->WIMAX_SCAN_RETRY:I

    aget-object v5, v5, v6

    invoke-virtual {v4, v5, v2}, Lcom/htc/android/epst/wimax/WiMaxController;->storeModifiedProperty(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 94
    .local v0, bResult:Z
    if-nez v0, :cond_0

    .line 95
    const-string v4, "WiMaxScanRetryTranslator"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "WimaxNative.setWimaxProp (persist.wimax.Scan_Retry):"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    :cond_0
    iget-boolean v4, p0, Lcom/htc/android/epst/translator/WiMaxScanRetryTranslator;->DBG:Z

    if-eqz v4, :cond_1

    const-string v4, "WiMaxScanRetryTranslator"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sendWriteRequest Scan retry:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/android/epst/translator/WiMaxScanRetryTranslator;->mScanRetry:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " result:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    :cond_1
    invoke-virtual {p1}, Lcom/htc/android/epst/SettingItem;->getId()I

    move-result v4

    invoke-virtual {p0, v4, v7}, Lcom/htc/android/epst/translator/WiMaxScanRetryTranslator;->retrieveItemAndUpdate(II)V

    .line 100
    invoke-virtual {p0}, Lcom/htc/android/epst/translator/WiMaxScanRetryTranslator;->refreshGroupSettings()V

    .line 102
    return-void
.end method
