.class public abstract Lcom/htc/android/epst/translator/OptionBasedTranslator;
.super Ljava/lang/Object;
.source "OptionBasedTranslator.java"

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
.method public abstract getAvailableOptions()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public final getInputFilters()[Landroid/text/InputFilter;
    .locals 1

    .prologue
    .line 18
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getInputVerifier()Lcom/htc/android/epst/InputVerifier;
    .locals 1

    .prologue
    .line 22
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract getSettingValue()Ljava/lang/String;
.end method

.method public final getTypedInfo()Ljava/util/List;
    .locals 3

    .prologue
    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 28
    .local v0, ret:Ljava/util/List;
    new-instance v1, Ljava/lang/Integer;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 29
    invoke-virtual {p0}, Lcom/htc/android/epst/translator/OptionBasedTranslator;->getAvailableOptions()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 30
    return-object v0
.end method

.method public final refreshGroupSettings()V
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/htc/android/epst/translator/OptionBasedTranslator;->mUpdater:Lcom/htc/android/epst/SettingValueUpdater;

    invoke-interface {v0}, Lcom/htc/android/epst/SettingValueUpdater;->updateAllSettings()V

    .line 37
    return-void
.end method

.method public final requestReadSettingValue(ILcom/htc/android/epst/SettingValueUpdater;)V
    .locals 0
    .parameter "itemId"
    .parameter "updater"

    .prologue
    .line 40
    iput-object p2, p0, Lcom/htc/android/epst/translator/OptionBasedTranslator;->mUpdater:Lcom/htc/android/epst/SettingValueUpdater;

    .line 41
    invoke-virtual {p0, p1}, Lcom/htc/android/epst/translator/OptionBasedTranslator;->sendReadRequest(I)V

    .line 42
    return-void
.end method

.method public final requestWriteSettingValue(Lcom/htc/android/epst/SettingItem;Lcom/htc/android/epst/SettingValueUpdater;)V
    .locals 0
    .parameter "modifiedValue"
    .parameter "updater"

    .prologue
    .line 53
    iput-object p2, p0, Lcom/htc/android/epst/translator/OptionBasedTranslator;->mUpdater:Lcom/htc/android/epst/SettingValueUpdater;

    .line 54
    invoke-virtual {p0, p1}, Lcom/htc/android/epst/translator/OptionBasedTranslator;->sendWriteRequest(Lcom/htc/android/epst/SettingItem;)V

    .line 55
    return-void
.end method

.method public final retrieveItemAndUpdate(II)V
    .locals 2
    .parameter "itemId"
    .parameter "status"

    .prologue
    .line 65
    const-string v0, ""

    .line 66
    .local v0, value:Ljava/lang/String;
    if-nez p2, :cond_0

    .line 67
    invoke-virtual {p0}, Lcom/htc/android/epst/translator/OptionBasedTranslator;->getSettingValue()Ljava/lang/String;

    move-result-object v0

    .line 69
    :cond_0
    iget-object v1, p0, Lcom/htc/android/epst/translator/OptionBasedTranslator;->mUpdater:Lcom/htc/android/epst/SettingValueUpdater;

    invoke-interface {v1, p1, p2, v0}, Lcom/htc/android/epst/SettingValueUpdater;->update(IILjava/lang/String;)V

    .line 70
    return-void
.end method

.method public abstract sendReadRequest(I)V
.end method

.method public sendWriteRequest(Lcom/htc/android/epst/SettingItem;)V
    .locals 0
    .parameter "modifiedValue"

    .prologue
    .line 62
    return-void
.end method
