.class public Lcom/htc/android/fieldtrial/translator/WimaxBWidthTranslator;
.super Lcom/htc/android/fieldtrial/translator/Translator;
.source "WimaxBWidthTranslator.java"


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
    .locals 4
    .parameter "itemId"

    .prologue
    .line 14
    invoke-static {}, Lcom/htc/android/fieldtrial/wimax/WimaxInfoFT;->getSingleton()Lcom/htc/android/fieldtrial/wimax/WimaxInfoFT;

    move-result-object v1

    .line 15
    .local v1, wimaxInfo:Lcom/htc/android/fieldtrial/wimax/WimaxInfoFT;
    invoke-virtual {v1}, Lcom/htc/android/fieldtrial/wimax/WimaxInfoFT;->GetBandwidth()Ljava/lang/String;

    move-result-object v0

    .line 16
    .local v0, nResult:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 17
    invoke-static {}, Lcom/htc/android/fieldtrial/Utility;->getSingleton()Lcom/htc/android/fieldtrial/Utility;

    move-result-object v2

    const v3, 0x7f050015

    invoke-virtual {v2, v3}, Lcom/htc/android/fieldtrial/Utility;->getResourceString(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 19
    :cond_0
    return-object v0
.end method

.method protected sendRequest(I)V
    .locals 1
    .parameter "itemId"

    .prologue
    .line 24
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/htc/android/fieldtrial/translator/WimaxBWidthTranslator;->retrieveItemAndUpdate(II)V

    .line 25
    return-void
.end method
