.class public abstract Lcom/htc/android/epst/translator/StringBasedItemTranslator;
.super Ljava/lang/Object;
.source "StringBasedItemTranslator.java"

# interfaces
.implements Lcom/htc/android/epst/translator/Translator;


# instance fields
.field protected mUpdater:Lcom/htc/android/epst/SettingValueUpdater;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getInputFilters()[Landroid/text/InputFilter;
    .locals 1

    .prologue
    .line 23
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

.method public abstract getSettingValue()Ljava/lang/String;
.end method

.method public final getTypedInfo()Ljava/util/List;
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

.method public final refreshGroupSettings()V
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/htc/android/epst/translator/StringBasedItemTranslator;->mUpdater:Lcom/htc/android/epst/SettingValueUpdater;

    invoke-interface {v0}, Lcom/htc/android/epst/SettingValueUpdater;->updateAllSettings()V

    .line 44
    return-void
.end method

.method public requestReadSettingValue(ILcom/htc/android/epst/SettingValueUpdater;)V
    .locals 0
    .parameter "itemId"
    .parameter "updater"

    .prologue
    .line 47
    iput-object p2, p0, Lcom/htc/android/epst/translator/StringBasedItemTranslator;->mUpdater:Lcom/htc/android/epst/SettingValueUpdater;

    .line 48
    return-void
.end method

.method public requestWriteSettingValue(Lcom/htc/android/epst/SettingItem;Lcom/htc/android/epst/SettingValueUpdater;)V
    .locals 0
    .parameter "modifiedValue"
    .parameter "updater"

    .prologue
    .line 52
    iput-object p2, p0, Lcom/htc/android/epst/translator/StringBasedItemTranslator;->mUpdater:Lcom/htc/android/epst/SettingValueUpdater;

    .line 53
    return-void
.end method

.method public final retrieveItemAndUpdate(II)V
    .locals 2
    .parameter "itemId"
    .parameter "status"

    .prologue
    .line 56
    const-string v0, ""

    .line 57
    .local v0, value:Ljava/lang/String;
    if-nez p2, :cond_0

    .line 58
    invoke-virtual {p0}, Lcom/htc/android/epst/translator/StringBasedItemTranslator;->getSettingValue()Ljava/lang/String;

    move-result-object v0

    .line 60
    :cond_0
    iget-object v1, p0, Lcom/htc/android/epst/translator/StringBasedItemTranslator;->mUpdater:Lcom/htc/android/epst/SettingValueUpdater;

    invoke-interface {v1, p1, p2, v0}, Lcom/htc/android/epst/SettingValueUpdater;->update(IILjava/lang/String;)V

    .line 61
    return-void
.end method
