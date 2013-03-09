.class public Lcom/htc/android/mail/providerinfo/SprintYahooImapInfo;
.super Lcom/htc/android/mail/providerinfo/ProviderInfo;
.source "SprintYahooImapInfo.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/htc/android/mail/providerinfo/ProviderInfo;-><init>()V

    .line 9
    invoke-virtual {p0}, Lcom/htc/android/mail/providerinfo/SprintYahooImapInfo;->loadSetting()V

    .line 10
    return-void
.end method


# virtual methods
.method protected loadSetting()V
    .locals 5

    .prologue
    .line 13
    invoke-super {p0}, Lcom/htc/android/mail/providerinfo/ProviderInfo;->loadSetting()V

    .line 15
    iget-object v0, p0, Lcom/htc/android/mail/providerinfo/ProviderInfo;->mSetting:Ljava/util/HashMap;

    const-string v1, "aclid"

    const-string v2, "Sprint"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    iget-object v0, p0, Lcom/htc/android/mail/providerinfo/ProviderInfo;->mSetting:Ljava/util/HashMap;

    const-string v1, "aguid"

    const-string v2, "ro.serialno"

    const-string v3, "HT0123456789"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    iget-object v0, p0, Lcom/htc/android/mail/providerinfo/ProviderInfo;->mSetting:Ljava/util/HashMap;

    const-string v1, "os"

    const-string v2, "android"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
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

    .line 19
    iget-object v0, p0, Lcom/htc/android/mail/providerinfo/ProviderInfo;->mSetting:Ljava/util/HashMap;

    const-string v1, "vendor"

    const-string v2, "HTC"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    iget-object v0, p0, Lcom/htc/android/mail/providerinfo/ProviderInfo;->mSetting:Ljava/util/HashMap;

    const-string v1, "device"

    const-string v2, "ro.product.model"

    const-string v3, "HTC Phone"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    iget-object v0, p0, Lcom/htc/android/mail/providerinfo/ProviderInfo;->mSetting:Ljava/util/HashMap;

    const-string v1, "carrier"

    const-string v2, "Sprint"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    return-void
.end method
