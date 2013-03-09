.class public Lcom/htc/android/fieldtrial/translator/WimaxStateTranslator;
.super Lcom/htc/android/fieldtrial/translator/Translator;
.source "WimaxStateTranslator.java"


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
    .locals 3
    .parameter "itemId"

    .prologue
    .line 14
    invoke-static {}, Lcom/htc/android/fieldtrial/wimax/WimaxInfoFT;->getSingleton()Lcom/htc/android/fieldtrial/wimax/WimaxInfoFT;

    move-result-object v2

    .line 33
    .local v2, wimaxInfo:Lcom/htc/android/fieldtrial/wimax/WimaxInfoFT;
    invoke-virtual {v2}, Lcom/htc/android/fieldtrial/wimax/WimaxInfoFT;->GetState()I

    move-result v0

    .line 34
    .local v0, nResult:I
    const-string v1, ""

    .line 43
    .local v1, strResult:Ljava/lang/String;
    return-object v1
.end method

.method protected sendRequest(I)V
    .locals 1
    .parameter "itemId"

    .prologue
    .line 48
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/htc/android/fieldtrial/translator/WimaxStateTranslator;->retrieveItemAndUpdate(II)V

    .line 49
    return-void
.end method
