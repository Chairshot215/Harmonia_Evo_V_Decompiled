.class public Lcom/android/settings/framework/activity/system/HtcJVMEnvironmentVaribales;
.super Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;
.source "HtcJVMEnvironmentVaribales.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;-><init>()V

    return-void
.end method

.method private doPlugin()V
    .locals 6

    .prologue
    .line 32
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/system/HtcJVMEnvironmentVaribales;->getPreferenceManager()Lcom/htc/preference/HtcPreferenceManager;

    move-result-object v2

    .line 33
    .local v2, preferenceManager:Lcom/htc/preference/HtcPreferenceManager;
    invoke-virtual {v2, p0}, Lcom/htc/preference/HtcPreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v3

    .line 34
    .local v3, root:Lcom/htc/preference/HtcPreferenceScreen;
    const-string v4, "JVM environment variables"

    invoke-virtual {v3, v4}, Lcom/htc/preference/HtcPreferenceScreen;->setTitle(Ljava/lang/CharSequence;)V

    .line 35
    invoke-virtual {p0, v3}, Lcom/android/settings/framework/activity/system/HtcJVMEnvironmentVaribales;->setPreferenceScreen(Lcom/htc/preference/HtcPreferenceScreen;)V

    .line 38
    invoke-static {}, Ljava/lang/System;->getenv()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 41
    .local v1, itr:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 42
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 44
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {p0, v3, v4, v5}, Lcom/android/settings/framework/preference/HtcPreferencePluginManager;->pluginStatusPreference(Landroid/content/Context;Lcom/htc/preference/HtcPreferenceGroup;Ljava/lang/String;Ljava/lang/String;)Lcom/android/settings/framework/preference/HtcStatusPreference;

    goto :goto_0

    .line 47
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 17
    invoke-super {p0, p1}, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 20
    :try_start_0
    invoke-direct {p0}, Lcom/android/settings/framework/activity/system/HtcJVMEnvironmentVaribales;->doPlugin()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    :goto_0
    return-void

    .line 21
    :catch_0
    move-exception v0

    .line 22
    .local v0, e:Ljava/lang/RuntimeException;
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_0
.end method
