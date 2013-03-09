.class public Lcom/android/settings/framework/activity/system/HtcAndroidDatabase;
.super Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;
.source "HtcAndroidDatabase.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;-><init>()V

    return-void
.end method

.method private doPlugin()V
    .locals 3

    .prologue
    .line 28
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/system/HtcAndroidDatabase;->getPreferenceManager()Lcom/htc/preference/HtcPreferenceManager;

    move-result-object v0

    .line 29
    .local v0, preferenceManager:Lcom/htc/preference/HtcPreferenceManager;
    invoke-virtual {v0, p0}, Lcom/htc/preference/HtcPreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v1

    .line 30
    .local v1, root:Lcom/htc/preference/HtcPreferenceScreen;
    const-string v2, "Android database"

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcPreferenceScreen;->setTitle(Ljava/lang/CharSequence;)V

    .line 31
    invoke-virtual {p0, v1}, Lcom/android/settings/framework/activity/system/HtcAndroidDatabase;->setPreferenceScreen(Lcom/htc/preference/HtcPreferenceScreen;)V

    .line 34
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 13
    invoke-super {p0, p1}, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 16
    :try_start_0
    invoke-direct {p0}, Lcom/android/settings/framework/activity/system/HtcAndroidDatabase;->doPlugin()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    :goto_0
    return-void

    .line 17
    :catch_0
    move-exception v0

    .line 18
    .local v0, e:Ljava/lang/RuntimeException;
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_0
.end method
