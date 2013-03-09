.class public Lcom/android/phone/DataUsage;
.super Lcom/htc/preference/HtcPreferenceActivity;
.source "DataUsage.java"


# instance fields
.field private mCurrentUsagePref:Lcom/htc/preference/HtcPreference;

.field private mDataUsageListener:Lcom/android/phone/DataUsageListener;

.field private mHelpPref:Lcom/htc/preference/HtcPreference;

.field private mHelpUri:Ljava/lang/String;

.field private mThrottleManager:Landroid/net/ThrottleManager;

.field private mThrottleRatePref:Lcom/htc/preference/HtcPreference;

.field private mTimeFramePref:Lcom/htc/preference/HtcPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/htc/preference/HtcPreferenceActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "icicle"

    .prologue
    .line 58
    invoke-super {p0, p1}, Lcom/htc/preference/HtcPreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 60
    const-string v0, "throttle"

    invoke-virtual {p0, v0}, Lcom/android/phone/DataUsage;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ThrottleManager;

    iput-object v0, p0, Lcom/android/phone/DataUsage;->mThrottleManager:Landroid/net/ThrottleManager;

    .line 62
    const v0, 0x7f05000a

    invoke-virtual {p0, v0}, Lcom/android/phone/DataUsage;->addPreferencesFromResource(I)V

    .line 64
    const-string v0, "throttle_current_usage"

    invoke-virtual {p0, v0}, Lcom/android/phone/DataUsage;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/DataUsage;->mCurrentUsagePref:Lcom/htc/preference/HtcPreference;

    .line 65
    const-string v0, "throttle_time_frame"

    invoke-virtual {p0, v0}, Lcom/android/phone/DataUsage;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/DataUsage;->mTimeFramePref:Lcom/htc/preference/HtcPreference;

    .line 66
    const-string v0, "throttle_rate"

    invoke-virtual {p0, v0}, Lcom/android/phone/DataUsage;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/DataUsage;->mThrottleRatePref:Lcom/htc/preference/HtcPreference;

    .line 67
    const-string v0, "throttle_help"

    invoke-virtual {p0, v0}, Lcom/android/phone/DataUsage;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/DataUsage;->mHelpPref:Lcom/htc/preference/HtcPreference;

    .line 69
    iget-object v0, p0, Lcom/android/phone/DataUsage;->mThrottleManager:Landroid/net/ThrottleManager;

    invoke-virtual {v0}, Landroid/net/ThrottleManager;->getHelpUri()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/DataUsage;->mHelpUri:Ljava/lang/String;

    .line 70
    iget-object v0, p0, Lcom/android/phone/DataUsage;->mHelpUri:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 71
    invoke-virtual {p0}, Lcom/android/phone/DataUsage;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/DataUsage;->mHelpPref:Lcom/htc/preference/HtcPreference;

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 76
    :goto_0
    new-instance v0, Lcom/android/phone/DataUsageListener;

    iget-object v1, p0, Lcom/android/phone/DataUsage;->mCurrentUsagePref:Lcom/htc/preference/HtcPreference;

    iget-object v2, p0, Lcom/android/phone/DataUsage;->mTimeFramePref:Lcom/htc/preference/HtcPreference;

    iget-object v3, p0, Lcom/android/phone/DataUsage;->mThrottleRatePref:Lcom/htc/preference/HtcPreference;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/phone/DataUsageListener;-><init>(Landroid/content/Context;Lcom/htc/preference/HtcPreference;Lcom/htc/preference/HtcPreference;Lcom/htc/preference/HtcPreference;)V

    iput-object v0, p0, Lcom/android/phone/DataUsage;->mDataUsageListener:Lcom/android/phone/DataUsageListener;

    .line 78
    return-void

    .line 73
    :cond_0
    iget-object v0, p0, Lcom/android/phone/DataUsage;->mHelpPref:Lcom/htc/preference/HtcPreference;

    const v1, 0x7f0e02ed

    invoke-virtual {p0, v1}, Lcom/android/phone/DataUsage;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 88
    invoke-super {p0}, Lcom/htc/preference/HtcPreferenceActivity;->onPause()V

    .line 89
    iget-object v0, p0, Lcom/android/phone/DataUsage;->mDataUsageListener:Lcom/android/phone/DataUsageListener;

    invoke-virtual {v0}, Lcom/android/phone/DataUsageListener;->pause()V

    .line 90
    return-void
.end method

.method public onPreferenceTreeClick(Lcom/htc/preference/HtcPreferenceScreen;Lcom/htc/preference/HtcPreference;)Z
    .locals 3
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    .line 100
    iget-object v1, p0, Lcom/android/phone/DataUsage;->mHelpPref:Lcom/htc/preference/HtcPreference;

    if-ne p2, v1, :cond_0

    .line 102
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    iget-object v2, p0, Lcom/android/phone/DataUsage;->mHelpUri:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 103
    .local v0, myIntent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/android/phone/DataUsage;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    .end local v0           #myIntent:Landroid/content/Intent;
    :cond_0
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 104
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 82
    invoke-super {p0}, Lcom/htc/preference/HtcPreferenceActivity;->onResume()V

    .line 83
    iget-object v0, p0, Lcom/android/phone/DataUsage;->mDataUsageListener:Lcom/android/phone/DataUsageListener;

    invoke-virtual {v0}, Lcom/android/phone/DataUsageListener;->resume()V

    .line 84
    return-void
.end method
