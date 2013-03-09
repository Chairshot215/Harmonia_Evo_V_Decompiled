.class public Lcom/htc/android/fieldtrial/translator/WimaxIPAddressTranslator;
.super Lcom/htc/android/fieldtrial/translator/Translator;
.source "WimaxIPAddressTranslator.java"


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
    .line 15
    const-string v1, "dhcp.wimax0.ipaddress"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 16
    .local v0, nResult:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 17
    invoke-static {}, Lcom/htc/android/fieldtrial/Utility;->getSingleton()Lcom/htc/android/fieldtrial/Utility;

    move-result-object v1

    const v2, 0x7f050015

    invoke-virtual {v1, v2}, Lcom/htc/android/fieldtrial/Utility;->getResourceString(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 19
    :cond_0
    return-object v0
.end method

.method protected sendRequest(I)V
    .locals 1
    .parameter "itemId"

    .prologue
    .line 25
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/htc/android/fieldtrial/translator/WimaxIPAddressTranslator;->retrieveItemAndUpdate(II)V

    .line 26
    return-void
.end method
