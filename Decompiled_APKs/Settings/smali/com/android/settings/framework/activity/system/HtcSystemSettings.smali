.class public final Lcom/android/settings/framework/activity/system/HtcSystemSettings;
.super Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;
.source "HtcSystemSettings.java"


# instance fields
.field private mHtcNeverTurnOffPreference:Lcom/android/settings/framework/preference/display/HtcNeverTurnOffPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;-><init>()V

    return-void
.end method

.method private doPlugin()V
    .locals 4

    .prologue
    .line 43
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/system/HtcSystemSettings;->getPreferenceManager()Lcom/htc/preference/HtcPreferenceManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/htc/preference/HtcPreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v0

    .line 44
    .local v0, root:Lcom/htc/preference/HtcPreferenceScreen;
    const-string v1, "System settings"

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceScreen;->setTitle(Ljava/lang/CharSequence;)V

    .line 45
    invoke-virtual {p0, v0}, Lcom/android/settings/framework/activity/system/HtcSystemSettings;->setPreferenceScreen(Lcom/htc/preference/HtcPreferenceScreen;)V

    .line 48
    const-string v1, "Htc build flags"

    const-string v2, "com.htc.htcjavaflag.HtcBuildFlag"

    const-class v3, Lcom/android/settings/framework/activity/system/buildflags/HtcBuildFlagSettings;

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/settings/framework/activity/system/HtcSystemSettings;->pluginPreferenceScreen(Lcom/htc/preference/HtcPreferenceScreen;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    .line 53
    const-string v1, "JVM environment variables"

    const-string v2, "System.getenv()"

    const-class v3, Lcom/android/settings/framework/activity/system/HtcJVMEnvironmentVaribales;

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/settings/framework/activity/system/HtcSystemSettings;->pluginPreferenceScreen(Lcom/htc/preference/HtcPreferenceScreen;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    .line 55
    const-string v1, "JVM properties"

    const-string v2, "System.getProperties()"

    const-class v3, Lcom/android/settings/framework/activity/system/HtcJVMProperties;

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/settings/framework/activity/system/HtcSystemSettings;->pluginPreferenceScreen(Lcom/htc/preference/HtcPreferenceScreen;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    .line 57
    const-string v1, "Android properties"

    const-string v2, "getprop"

    const-class v3, Lcom/android/settings/framework/activity/system/HtcAndroidProperties;

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/settings/framework/activity/system/HtcSystemSettings;->pluginPreferenceScreen(Lcom/htc/preference/HtcPreferenceScreen;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    .line 59
    const-string v1, "Android database"

    const/4 v2, 0x0

    const-class v3, Lcom/android/settings/framework/activity/system/HtcAndroidDatabase;

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/settings/framework/activity/system/HtcSystemSettings;->pluginPreferenceScreen(Lcom/htc/preference/HtcPreferenceScreen;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    .line 62
    invoke-direct {p0, v0}, Lcom/android/settings/framework/activity/system/HtcSystemSettings;->pluginBackupCommand(Lcom/htc/preference/HtcPreferenceScreen;)V

    .line 65
    new-instance v1, Lcom/android/settings/framework/preference/display/HtcNeverTurnOffPreference;

    invoke-direct {v1, p0}, Lcom/android/settings/framework/preference/display/HtcNeverTurnOffPreference;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings/framework/activity/system/HtcSystemSettings;->mHtcNeverTurnOffPreference:Lcom/android/settings/framework/preference/display/HtcNeverTurnOffPreference;

    .line 66
    iget-object v1, p0, Lcom/android/settings/framework/activity/system/HtcSystemSettings;->mHtcNeverTurnOffPreference:Lcom/android/settings/framework/preference/display/HtcNeverTurnOffPreference;

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 68
    return-void
.end method

.method private pluginBackupCommand(Lcom/htc/preference/HtcPreferenceScreen;)V
    .locals 2
    .parameter "root"

    .prologue
    .line 94
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/system/HtcSystemSettings;->getPreferenceManager()Lcom/htc/preference/HtcPreferenceManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/htc/preference/HtcPreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v0

    .line 95
    .local v0, ps:Lcom/htc/preference/HtcPreferenceScreen;
    invoke-virtual {p1, v0}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 96
    const-string v1, "Run backup command"

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceScreen;->setTitle(Ljava/lang/CharSequence;)V

    .line 97
    const-string v1, "bmgr run"

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    .line 98
    new-instance v1, Lcom/android/settings/framework/activity/system/HtcSystemSettings$1;

    invoke-direct {v1, p0}, Lcom/android/settings/framework/activity/system/HtcSystemSettings$1;-><init>(Lcom/android/settings/framework/activity/system/HtcSystemSettings;)V

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceScreen;->setOnPreferenceClickListener(Lcom/htc/preference/HtcPreference$OnPreferenceClickListener;)V

    .line 113
    return-void
.end method

.method private pluginPreferenceScreen(Lcom/htc/preference/HtcPreferenceScreen;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V
    .locals 3
    .parameter "root"
    .parameter "title"
    .parameter "summary"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/preference/HtcPreferenceScreen;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 81
    .local p4, activityClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/system/HtcSystemSettings;->getPreferenceManager()Lcom/htc/preference/HtcPreferenceManager;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/htc/preference/HtcPreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v1

    .line 82
    .local v1, ps:Lcom/htc/preference/HtcPreferenceScreen;
    invoke-virtual {p1, v1}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 83
    invoke-virtual {v1, p2}, Lcom/htc/preference/HtcPreferenceScreen;->setTitle(Ljava/lang/CharSequence;)V

    .line 84
    invoke-virtual {v1, p3}, Lcom/htc/preference/HtcPreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    .line 86
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 87
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {v0, p0, p4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 88
    invoke-virtual {v1, v0}, Lcom/htc/preference/HtcPreferenceScreen;->setIntent(Landroid/content/Intent;)V

    .line 89
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 29
    invoke-super {p0, p1}, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 32
    :try_start_0
    invoke-direct {p0}, Lcom/android/settings/framework/activity/system/HtcSystemSettings;->doPlugin()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    :goto_0
    return-void

    .line 33
    :catch_0
    move-exception v0

    .line 34
    .local v0, e:Ljava/lang/RuntimeException;
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 72
    invoke-super {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;->onResume()V

    .line 73
    iget-object v0, p0, Lcom/android/settings/framework/activity/system/HtcSystemSettings;->mHtcNeverTurnOffPreference:Lcom/android/settings/framework/preference/display/HtcNeverTurnOffPreference;

    invoke-virtual {v0}, Lcom/android/settings/framework/preference/display/HtcNeverTurnOffPreference;->onResume()V

    .line 74
    return-void
.end method
