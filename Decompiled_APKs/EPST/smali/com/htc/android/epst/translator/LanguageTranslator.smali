.class public Lcom/htc/android/epst/translator/LanguageTranslator;
.super Ljava/lang/Object;
.source "LanguageTranslator.java"

# interfaces
.implements Lcom/htc/android/epst/translator/Translator;


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "LanguageTranslator"


# instance fields
.field private DBG:Z

.field private gLanguageID:Ljava/lang/String;

.field private mUpdater:Lcom/htc/android/epst/SettingValueUpdater;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/android/epst/translator/LanguageTranslator;->DBG:Z

    .line 27
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/android/epst/translator/LanguageTranslator;->gLanguageID:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getInputFilters()[Landroid/text/InputFilter;
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x0

    return-object v0
.end method

.method public getInputVerifier()Lcom/htc/android/epst/InputVerifier;
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSettingValue()Ljava/lang/String;
    .locals 2

    .prologue
    .line 46
    const-string v0, "persist.sys.language"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/epst/translator/LanguageTranslator;->gLanguageID:Ljava/lang/String;

    .line 47
    iget-object v0, p0, Lcom/htc/android/epst/translator/LanguageTranslator;->gLanguageID:Ljava/lang/String;

    const-string v1, "en"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 48
    const-string v0, "ENG"

    iput-object v0, p0, Lcom/htc/android/epst/translator/LanguageTranslator;->gLanguageID:Ljava/lang/String;

    .line 66
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/htc/android/epst/translator/LanguageTranslator;->gLanguageID:Ljava/lang/String;

    return-object v0

    .line 49
    :cond_1
    iget-object v0, p0, Lcom/htc/android/epst/translator/LanguageTranslator;->gLanguageID:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 50
    const-string v0, "ENG"

    iput-object v0, p0, Lcom/htc/android/epst/translator/LanguageTranslator;->gLanguageID:Ljava/lang/String;

    goto :goto_0
.end method

.method public getTypedInfo()Ljava/util/List;
    .locals 3

    .prologue
    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 40
    .local v0, ret:Ljava/util/List;
    new-instance v1, Ljava/lang/Integer;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 41
    return-object v0
.end method

.method public refreshGroupSettings()V
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/htc/android/epst/translator/LanguageTranslator;->mUpdater:Lcom/htc/android/epst/SettingValueUpdater;

    invoke-interface {v0}, Lcom/htc/android/epst/SettingValueUpdater;->updateAllSettings()V

    .line 86
    return-void
.end method

.method public requestReadSettingValue(ILcom/htc/android/epst/SettingValueUpdater;)V
    .locals 0
    .parameter "itemId"
    .parameter "updater"

    .prologue
    .line 89
    iput-object p2, p0, Lcom/htc/android/epst/translator/LanguageTranslator;->mUpdater:Lcom/htc/android/epst/SettingValueUpdater;

    .line 90
    invoke-virtual {p0, p1}, Lcom/htc/android/epst/translator/LanguageTranslator;->sendReadRequest(I)V

    .line 91
    return-void
.end method

.method public requestWriteSettingValue(Lcom/htc/android/epst/SettingItem;Lcom/htc/android/epst/SettingValueUpdater;)V
    .locals 0
    .parameter "modifiedValue"
    .parameter "updater"

    .prologue
    .line 94
    iput-object p2, p0, Lcom/htc/android/epst/translator/LanguageTranslator;->mUpdater:Lcom/htc/android/epst/SettingValueUpdater;

    .line 95
    invoke-virtual {p0, p1}, Lcom/htc/android/epst/translator/LanguageTranslator;->sendWriteRequest(Lcom/htc/android/epst/SettingItem;)V

    .line 96
    return-void
.end method

.method public retrieveItemAndUpdate(II)V
    .locals 2
    .parameter "itemId"
    .parameter "status"

    .prologue
    .line 99
    invoke-virtual {p0}, Lcom/htc/android/epst/translator/LanguageTranslator;->getSettingValue()Ljava/lang/String;

    move-result-object v0

    .line 100
    .local v0, value:Ljava/lang/String;
    iget-object v1, p0, Lcom/htc/android/epst/translator/LanguageTranslator;->mUpdater:Lcom/htc/android/epst/SettingValueUpdater;

    invoke-interface {v1, p1, p2, v0}, Lcom/htc/android/epst/SettingValueUpdater;->update(IILjava/lang/String;)V

    .line 101
    return-void
.end method

.method public sendReadRequest(I)V
    .locals 3
    .parameter "itemId"

    .prologue
    .line 70
    iget-boolean v0, p0, Lcom/htc/android/epst/translator/LanguageTranslator;->DBG:Z

    if-eqz v0, :cond_0

    .line 71
    const-string v0, "Joe_Shih"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendReadRequest gLanguageID:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/epst/translator/LanguageTranslator;->gLanguageID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/htc/android/epst/translator/LanguageTranslator;->retrieveItemAndUpdate(II)V

    .line 74
    return-void
.end method

.method public sendWriteRequest(Lcom/htc/android/epst/SettingItem;)V
    .locals 3
    .parameter "modifiedValue"

    .prologue
    .line 77
    iget-boolean v0, p0, Lcom/htc/android/epst/translator/LanguageTranslator;->DBG:Z

    if-eqz v0, :cond_0

    .line 78
    const-string v0, "Joe_Shih"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendWriteRequest gLanguageID:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/epst/translator/LanguageTranslator;->gLanguageID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    :cond_0
    invoke-virtual {p1}, Lcom/htc/android/epst/SettingItem;->getId()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/htc/android/epst/translator/LanguageTranslator;->retrieveItemAndUpdate(II)V

    .line 81
    invoke-virtual {p0}, Lcom/htc/android/epst/translator/LanguageTranslator;->refreshGroupSettings()V

    .line 82
    return-void
.end method
