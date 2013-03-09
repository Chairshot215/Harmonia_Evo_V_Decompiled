.class public Lcom/htc/android/fieldtrial/translator/WimaxTxPwrTranslator;
.super Lcom/htc/android/fieldtrial/translator/Translator;
.source "WimaxTxPwrTranslator.java"


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
    .locals 5
    .parameter "itemId"

    .prologue
    .line 14
    invoke-static {}, Lcom/htc/android/fieldtrial/wimax/WimaxInfoFT;->getSingleton()Lcom/htc/android/fieldtrial/wimax/WimaxInfoFT;

    move-result-object v1

    .line 15
    .local v1, wimaxInfo:Lcom/htc/android/fieldtrial/wimax/WimaxInfoFT;
    invoke-virtual {v1}, Lcom/htc/android/fieldtrial/wimax/WimaxInfoFT;->GetTxPwr()Ljava/lang/String;

    move-result-object v0

    .line 17
    .local v0, nResult:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 18
    invoke-static {}, Lcom/htc/android/fieldtrial/Utility;->getSingleton()Lcom/htc/android/fieldtrial/Utility;

    move-result-object v2

    const v3, 0x7f050015

    invoke-virtual {v2, v3}, Lcom/htc/android/fieldtrial/Utility;->getResourceString(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 22
    :goto_0
    return-object v0

    .line 20
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/htc/android/fieldtrial/Utility;->getSingleton()Lcom/htc/android/fieldtrial/Utility;

    move-result-object v3

    const v4, 0x7f050019

    invoke-virtual {v3, v4}, Lcom/htc/android/fieldtrial/Utility;->getResourceString(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected sendRequest(I)V
    .locals 1
    .parameter "itemId"

    .prologue
    .line 27
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/htc/android/fieldtrial/translator/WimaxTxPwrTranslator;->retrieveItemAndUpdate(II)V

    .line 28
    return-void
.end method
