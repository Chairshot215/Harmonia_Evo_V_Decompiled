.class public Lcom/android/settings/framework/activity/search/HtcSearchSettings;
.super Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;
.source "HtcSearchSettings.java"


# static fields
.field private static final ACTION_QUICK_SEARCH_BOX:Ljava/lang/String; = "android.search.action.SEARCH_SETTINGS"

.field private static final ACTION_SEARCH_ANYWHERE:Ljava/lang/String; = "com.htc.searchanywhere.settings.SETTINGS"

.field private static final ENGINE_QUICK_SEARCH_BOX:Ljava/lang/String; = "android.search.action.GLOBAL_SEARCH"

.field private static final ENGINE_SEARCH_ANYWHERE:Ljava/lang/String; = "com.htc.searchanywhere.START"


# instance fields
.field private mHardwareSearchKey:Lcom/htc/preference/HtcPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/framework/activity/search/HtcSearchSettings;)Lcom/htc/preference/HtcPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 13
    iget-object v0, p0, Lcom/android/settings/framework/activity/search/HtcSearchSettings;->mHardwareSearchKey:Lcom/htc/preference/HtcPreference;

    return-object v0
.end method

.method private doPlugin()V
    .locals 4

    .prologue
    .line 69
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/search/HtcSearchSettings;->getPreferenceManager()Lcom/htc/preference/HtcPreferenceManager;

    move-result-object v1

    .line 70
    .local v1, pm:Lcom/htc/preference/HtcPreferenceManager;
    invoke-virtual {v1, p0}, Lcom/htc/preference/HtcPreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v2

    .line 71
    .local v2, root:Lcom/htc/preference/HtcPreferenceScreen;
    const v3, 0x7f0c09c0

    invoke-virtual {v2, v3}, Lcom/htc/preference/HtcPreferenceScreen;->setTitle(I)V

    .line 72
    invoke-virtual {p0, v2}, Lcom/android/settings/framework/activity/search/HtcSearchSettings;->setPreferenceScreen(Lcom/htc/preference/HtcPreferenceScreen;)V

    .line 75
    invoke-virtual {v1, p0}, Lcom/htc/preference/HtcPreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v0

    .line 76
    .local v0, p:Lcom/htc/preference/HtcPreference;
    const v3, 0x7f0c00b7

    invoke-virtual {v0, v3}, Lcom/htc/preference/HtcPreferenceScreen;->setTitle(I)V

    .line 77
    const-string v3, "com.htc.searchanywhere.settings.SETTINGS"

    invoke-virtual {v0, v3}, Lcom/htc/preference/HtcPreference;->setAction(Ljava/lang/String;)V

    .line 78
    invoke-virtual {v2, v0}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 81
    invoke-virtual {v1, p0}, Lcom/htc/preference/HtcPreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v0

    .line 82
    const v3, 0x7f0c00b8

    invoke-virtual {v0, v3}, Lcom/htc/preference/HtcPreferenceScreen;->setTitle(I)V

    .line 83
    const-string v3, "android.search.action.SEARCH_SETTINGS"

    invoke-virtual {v0, v3}, Lcom/htc/preference/HtcPreference;->setAction(Ljava/lang/String;)V

    .line 84
    invoke-virtual {v2, v0}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 87
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcSearchFeatureFlags;->supportHardwareSearchKey()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 88
    invoke-virtual {v1, p0}, Lcom/htc/preference/HtcPreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v0

    .line 89
    const v3, 0x7f0c00b9

    invoke-virtual {v0, v3}, Lcom/htc/preference/HtcPreferenceScreen;->setTitle(I)V

    .line 90
    const-string v3, "com.htc.launcher.SearchPickerActivity"

    invoke-virtual {v0, v3}, Lcom/htc/preference/HtcPreference;->setAction(Ljava/lang/String;)V

    .line 91
    iput-object v0, p0, Lcom/android/settings/framework/activity/search/HtcSearchSettings;->mHardwareSearchKey:Lcom/htc/preference/HtcPreference;

    invoke-virtual {v2, v0}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 93
    :cond_0
    return-void
.end method

.method private getSearchEngineName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 104
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/search/HtcSearchSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "SearchEngine"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 107
    .local v0, engine:Ljava/lang/String;
    const-string v2, "com.htc.searchanywhere.START"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 108
    const v1, 0x7f0c00b7

    .line 115
    .local v1, resID:I
    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/settings/framework/activity/search/HtcSearchSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 109
    .end local v1           #resID:I
    :cond_0
    const-string v2, "android.search.action.GLOBAL_SEARCH"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 110
    const v1, 0x7f0c00b8

    .restart local v1       #resID:I
    goto :goto_0

    .line 113
    .end local v1           #resID:I
    :cond_1
    const v1, 0x7f0c00b7

    .restart local v1       #resID:I
    goto :goto_0
.end method


# virtual methods
.method public onCreateInBackground(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 34
    :try_start_0
    invoke-direct {p0}, Lcom/android/settings/framework/activity/search/HtcSearchSettings;->doPlugin()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    :goto_0
    return-void

    .line 35
    :catch_0
    move-exception v0

    .line 36
    .local v0, e:Ljava/lang/RuntimeException;
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_0
.end method

.method public onResumeInBackground()V
    .locals 5

    .prologue
    .line 46
    iget-object v2, p0, Lcom/android/settings/framework/activity/search/HtcSearchSettings;->mHardwareSearchKey:Lcom/htc/preference/HtcPreference;

    if-eqz v2, :cond_0

    .line 47
    const v0, 0x7f0c00ba

    .line 48
    .local v0, resID:I
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/android/settings/framework/activity/search/HtcSearchSettings;->getSearchEngineName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v0, v2}, Lcom/android/settings/framework/activity/search/HtcSearchSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 54
    .local v1, summary:Ljava/lang/String;
    new-instance v2, Lcom/android/settings/framework/activity/search/HtcSearchSettings$1;

    invoke-direct {v2, p0, v1}, Lcom/android/settings/framework/activity/search/HtcSearchSettings$1;-><init>(Lcom/android/settings/framework/activity/search/HtcSearchSettings;Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/android/settings/framework/activity/search/HtcSearchSettings;->runInUIThread(Ljava/lang/Runnable;)V

    .line 60
    .end local v0           #resID:I
    .end local v1           #summary:Ljava/lang/String;
    :cond_0
    return-void
.end method
