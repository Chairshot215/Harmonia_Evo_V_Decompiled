.class public abstract Lcom/htc/android/epst/translator/StringBasedTranslator;
.super Ljava/lang/Object;
.source "StringBasedTranslator.java"

# interfaces
.implements Lcom/htc/android/epst/translator/Translator;


# instance fields
.field protected mUpdater:Lcom/htc/android/epst/SettingValueUpdater;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getInputFilters()[Landroid/text/InputFilter;
    .locals 1

    .prologue
    .line 27
    const/4 v0, 0x0

    return-object v0
.end method

.method public getInputVerifier()Lcom/htc/android/epst/InputVerifier;
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract getSettingValue()Ljava/lang/String;
.end method

.method public final getTypedInfo()Ljava/util/List;
    .locals 3

    .prologue
    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 42
    .local v0, ret:Ljava/util/List;
    new-instance v1, Ljava/lang/Integer;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 43
    return-object v0
.end method

.method public final refreshGroupSettings()V
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/htc/android/epst/translator/StringBasedTranslator;->mUpdater:Lcom/htc/android/epst/SettingValueUpdater;

    invoke-interface {v0}, Lcom/htc/android/epst/SettingValueUpdater;->updateAllSettings()V

    .line 48
    return-void
.end method

.method public final requestReadSettingValue(ILcom/htc/android/epst/SettingValueUpdater;)V
    .locals 0
    .parameter "itemId"
    .parameter "updater"

    .prologue
    .line 51
    iput-object p2, p0, Lcom/htc/android/epst/translator/StringBasedTranslator;->mUpdater:Lcom/htc/android/epst/SettingValueUpdater;

    .line 52
    invoke-virtual {p0, p1}, Lcom/htc/android/epst/translator/StringBasedTranslator;->sendReadRequest(I)V

    .line 53
    return-void
.end method

.method public final requestWriteSettingValue(Lcom/htc/android/epst/SettingItem;Lcom/htc/android/epst/SettingValueUpdater;)V
    .locals 0
    .parameter "modifiedValue"
    .parameter "updater"

    .prologue
    .line 64
    iput-object p2, p0, Lcom/htc/android/epst/translator/StringBasedTranslator;->mUpdater:Lcom/htc/android/epst/SettingValueUpdater;

    .line 65
    invoke-virtual {p0, p1}, Lcom/htc/android/epst/translator/StringBasedTranslator;->sendWriteRequest(Lcom/htc/android/epst/SettingItem;)V

    .line 66
    return-void
.end method

.method public final retrieveItemAndUpdate(II)V
    .locals 2
    .parameter "itemId"
    .parameter "status"

    .prologue
    .line 76
    const-string v0, ""

    .line 77
    .local v0, value:Ljava/lang/String;
    if-nez p2, :cond_0

    .line 78
    invoke-virtual {p0}, Lcom/htc/android/epst/translator/StringBasedTranslator;->getSettingValue()Ljava/lang/String;

    move-result-object v0

    .line 80
    :cond_0
    iget-object v1, p0, Lcom/htc/android/epst/translator/StringBasedTranslator;->mUpdater:Lcom/htc/android/epst/SettingValueUpdater;

    invoke-interface {v1, p1, p2, v0}, Lcom/htc/android/epst/SettingValueUpdater;->update(IILjava/lang/String;)V

    .line 81
    return-void
.end method

.method public abstract sendReadRequest(I)V
.end method

.method public sendWriteRequest(Lcom/htc/android/epst/SettingItem;)V
    .locals 0
    .parameter "modifiedValue"

    .prologue
    .line 73
    return-void
.end method
