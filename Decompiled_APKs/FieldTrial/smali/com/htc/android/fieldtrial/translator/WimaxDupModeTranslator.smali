.class public Lcom/htc/android/fieldtrial/translator/WimaxDupModeTranslator;
.super Lcom/htc/android/fieldtrial/translator/Translator;
.source "WimaxDupModeTranslator.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/htc/android/fieldtrial/translator/Translator;-><init>()V

    return-void
.end method


# virtual methods
.method protected getSettingValue(I)Ljava/lang/String;
    .locals 2
    .parameter "itemId"

    .prologue
    .line 13
    invoke-static {}, Lcom/htc/android/fieldtrial/Utility;->getSingleton()Lcom/htc/android/fieldtrial/Utility;

    move-result-object v0

    const v1, 0x7f050016

    invoke-virtual {v0, v1}, Lcom/htc/android/fieldtrial/Utility;->getResourceString(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected sendRequest(I)V
    .locals 1
    .parameter "itemId"

    .prologue
    .line 18
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/htc/android/fieldtrial/translator/WimaxDupModeTranslator;->retrieveItemAndUpdate(II)V

    .line 19
    return-void
.end method
