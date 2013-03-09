.class public abstract Lcom/htc/android/fieldtrial/translator/Translator;
.super Ljava/lang/Object;
.source "Translator.java"


# instance fields
.field protected mUpdater:Lcom/htc/android/fieldtrial/SettingValueUpdater;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract getSettingValue(I)Ljava/lang/String;
.end method

.method public requestReadSettingValue(ILcom/htc/android/fieldtrial/SettingValueUpdater;)V
    .locals 0
    .parameter "itemId"
    .parameter "updater"

    .prologue
    .line 23
    iput-object p2, p0, Lcom/htc/android/fieldtrial/translator/Translator;->mUpdater:Lcom/htc/android/fieldtrial/SettingValueUpdater;

    .line 24
    invoke-virtual {p0, p1}, Lcom/htc/android/fieldtrial/translator/Translator;->sendRequest(I)V

    .line 25
    return-void
.end method

.method public retrieveItemAndUpdate(II)V
    .locals 2
    .parameter "itemId"
    .parameter "status"

    .prologue
    .line 37
    const-string v0, ""

    .line 38
    .local v0, value:Ljava/lang/String;
    if-nez p2, :cond_0

    .line 39
    invoke-virtual {p0, p1}, Lcom/htc/android/fieldtrial/translator/Translator;->getSettingValue(I)Ljava/lang/String;

    move-result-object v0

    .line 41
    :cond_0
    iget-object v1, p0, Lcom/htc/android/fieldtrial/translator/Translator;->mUpdater:Lcom/htc/android/fieldtrial/SettingValueUpdater;

    invoke-interface {v1, p1, p2, v0}, Lcom/htc/android/fieldtrial/SettingValueUpdater;->update(IILjava/lang/String;)V

    .line 42
    return-void
.end method

.method protected abstract sendRequest(I)V
.end method
