.class public Lcom/htc/android/mail/providerinfo/HTCYahooImapInfo;
.super Lcom/htc/android/mail/providerinfo/ProviderInfo;
.source "HTCYahooImapInfo.java"


# instance fields
.field mNetworkOperator:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/htc/android/mail/providerinfo/ProviderInfo;-><init>()V

    .line 7
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/android/mail/providerinfo/HTCYahooImapInfo;->mNetworkOperator:Ljava/lang/String;

    .line 10
    invoke-virtual {p0}, Lcom/htc/android/mail/providerinfo/HTCYahooImapInfo;->loadSetting()V

    .line 11
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "networkOperator"

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/htc/android/mail/providerinfo/ProviderInfo;-><init>()V

    .line 7
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/android/mail/providerinfo/HTCYahooImapInfo;->mNetworkOperator:Ljava/lang/String;

    .line 14
    iput-object p1, p0, Lcom/htc/android/mail/providerinfo/HTCYahooImapInfo;->mNetworkOperator:Ljava/lang/String;

    .line 15
    invoke-virtual {p0}, Lcom/htc/android/mail/providerinfo/HTCYahooImapInfo;->loadSetting()V

    .line 16
    return-void
.end method


# virtual methods
.method protected loadSetting()V
    .locals 5

    .prologue
    .line 19
    invoke-super {p0}, Lcom/htc/android/mail/providerinfo/ProviderInfo;->loadSetting()V

    .line 21
    iget-object v0, p0, Lcom/htc/android/mail/providerinfo/ProviderInfo;->mSetting:Ljava/util/HashMap;

    const-string v1, "aclid"

    const-string v2, "HTC"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    iget-object v0, p0, Lcom/htc/android/mail/providerinfo/ProviderInfo;->mSetting:Ljava/util/HashMap;

    const-string v1, "aguid"

    const-string v2, "ro.serialno"

    const-string v3, "HT0123456789"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    iget-object v0, p0, Lcom/htc/android/mail/providerinfo/ProviderInfo;->mSetting:Ljava/util/HashMap;

    const-string v1, "os"

    const-string v2, "android"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    iget-object v0, p0, Lcom/htc/android/mail/providerinfo/ProviderInfo;->mSetting:Ljava/util/HashMap;

    const-string v1, "os-version"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ro.build.version.release"

    const-string v4, "2.2"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ro.build.id"

    const-string v4, "EMPTY"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    iget-object v0, p0, Lcom/htc/android/mail/providerinfo/ProviderInfo;->mSetting:Ljava/util/HashMap;

    const-string v1, "vendor"

    const-string v2, "HTC"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    iget-object v0, p0, Lcom/htc/android/mail/providerinfo/ProviderInfo;->mSetting:Ljava/util/HashMap;

    const-string v1, "device"

    const-string v2, "ro.product.model"

    const-string v3, "HTC Phone"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    iget-object v0, p0, Lcom/htc/android/mail/providerinfo/ProviderInfo;->mSetting:Ljava/util/HashMap;

    const-string v1, "mobile-net-operator"

    iget-object v2, p0, Lcom/htc/android/mail/providerinfo/HTCYahooImapInfo;->mNetworkOperator:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    return-void
.end method
