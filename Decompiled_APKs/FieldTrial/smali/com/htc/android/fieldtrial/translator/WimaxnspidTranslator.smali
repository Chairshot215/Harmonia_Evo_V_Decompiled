.class public Lcom/htc/android/fieldtrial/translator/WimaxnspidTranslator;
.super Lcom/htc/android/fieldtrial/translator/Translator;
.source "WimaxnspidTranslator.java"


# instance fields
.field private LOG_TAG:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/htc/android/fieldtrial/translator/Translator;-><init>()V

    .line 12
    const-string v0, "WimaxnspidTranslator"

    iput-object v0, p0, Lcom/htc/android/fieldtrial/translator/WimaxnspidTranslator;->LOG_TAG:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected getSettingValue(I)Ljava/lang/String;
    .locals 5
    .parameter "itemId"

    .prologue
    .line 16
    invoke-static {}, Lcom/htc/android/fieldtrial/wimax/WimaxInfoFT;->getSingleton()Lcom/htc/android/fieldtrial/wimax/WimaxInfoFT;

    move-result-object v2

    .line 17
    .local v2, wimaxInfo:Lcom/htc/android/fieldtrial/wimax/WimaxInfoFT;
    invoke-virtual {v2}, Lcom/htc/android/fieldtrial/wimax/WimaxInfoFT;->GetBSID()Ljava/lang/String;

    move-result-object v0

    .line 18
    .local v0, nBSID:Ljava/lang/String;
    invoke-static {}, Lcom/htc/android/fieldtrial/Utility;->getSingleton()Lcom/htc/android/fieldtrial/Utility;

    move-result-object v3

    const v4, 0x7f050015

    invoke-virtual {v3, v4}, Lcom/htc/android/fieldtrial/Utility;->getResourceString(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 19
    .local v1, nNSPID:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x11

    if-eq v3, v4, :cond_1

    .line 20
    :cond_0
    iget-object v3, p0, Lcom/htc/android/fieldtrial/translator/WimaxnspidTranslator;->LOG_TAG:Ljava/lang/String;

    const-string v4, "BS ID length is error.Please check."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    :goto_0
    return-object v1

    .line 22
    :cond_1
    const/4 v3, 0x0

    const/16 v4, 0x8

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method protected sendRequest(I)V
    .locals 1
    .parameter "itemId"

    .prologue
    .line 29
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/htc/android/fieldtrial/translator/WimaxnspidTranslator;->retrieveItemAndUpdate(II)V

    .line 30
    return-void
.end method
