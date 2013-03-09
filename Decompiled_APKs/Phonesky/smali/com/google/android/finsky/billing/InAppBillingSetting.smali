.class public Lcom/google/android/finsky/billing/InAppBillingSetting;
.super Ljava/lang/Object;
.source "InAppBillingSetting.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getSharedPreference(Ljava/lang/String;)Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;
    .locals 6
    .parameter "account"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/finsky/config/PreferenceFile$SharedPreference",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 44
    invoke-static {}, Lcom/google/android/finsky/utils/VendingPreferences;->getMainPrefs()Lcom/google/android/finsky/config/PreferenceFile;

    move-result-object v3

    .line 47
    .local v3, prefs:Lcom/google/android/finsky/config/PreferenceFile;
    :try_start_0
    const-string v4, "UTF-8"

    invoke-static {p0, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 48
    .local v1, encoded:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IAB_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 49
    .local v2, key:Ljava/lang/String;
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Lcom/google/android/finsky/config/PreferenceFile;->value(Ljava/lang/String;Ljava/lang/Boolean;)Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    return-object v4

    .line 50
    .end local v1           #encoded:Ljava/lang/String;
    .end local v2           #key:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 51
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    new-instance v4, Ljava/lang/UnsupportedOperationException;

    const-string v5, "Caught exception while encoding IAB status."

    invoke-direct {v4, v5, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method

.method public static isEnabled(Ljava/lang/String;)Z
    .locals 3
    .parameter "account"

    .prologue
    .line 22
    if-nez p0, :cond_0

    .line 23
    const/4 v1, 0x0

    .line 32
    :goto_0
    return v1

    .line 26
    :cond_0
    invoke-static {p0}, Lcom/google/android/finsky/billing/InAppBillingSetting;->getSharedPreference(Ljava/lang/String;)Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    move-result-object v0

    .line 27
    .local v0, sharedPref:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;,"Lcom/google/android/finsky/config/PreferenceFile$SharedPreference<Ljava/lang/Boolean;>;"
    invoke-virtual {v0}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 30
    new-instance v1, Lcom/google/android/finsky/activities/GetMarketMetadataAction;

    invoke-direct {v1}, Lcom/google/android/finsky/activities/GetMarketMetadataAction;-><init>()V

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v2

    invoke-virtual {v1, v2, p0}, Lcom/google/android/finsky/activities/GetMarketMetadataAction;->runBlocking(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;

    .line 32
    :cond_1
    invoke-virtual {v0}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_0
.end method

.method public static setEnabled(Ljava/lang/String;Z)V
    .locals 2
    .parameter "account"
    .parameter "enabled"

    .prologue
    .line 36
    invoke-static {p0}, Lcom/google/android/finsky/billing/InAppBillingSetting;->getSharedPreference(Ljava/lang/String;)Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    move-result-object v0

    .line 38
    .local v0, sharedPref:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;,"Lcom/google/android/finsky/config/PreferenceFile$SharedPreference<Ljava/lang/Boolean;>;"
    if-eqz v0, :cond_0

    .line 39
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->put(Ljava/lang/Object;)V

    .line 41
    :cond_0
    return-void
.end method
