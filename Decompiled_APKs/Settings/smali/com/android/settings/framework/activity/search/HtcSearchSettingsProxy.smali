.class public Lcom/android/settings/framework/activity/search/HtcSearchSettingsProxy;
.super Landroid/app/Activity;
.source "HtcSearchSettingsProxy.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method public static getTargetIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 3
    .parameter "context"

    .prologue
    .line 26
    invoke-static {}, Lcom/android/settings/framework/flag/HtcSkuFlags;->getSenseVersion()F

    move-result v1

    .line 27
    .local v1, senseVersion:F
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 29
    .local v0, intent:Landroid/content/Intent;
    const v2, 0x40066666

    cmpl-float v2, v1, v2

    if-ltz v2, :cond_0

    .line 37
    :cond_0
    sget-boolean v2, Lcom/android/settings/framework/flag/HtcDeviceFlags;->isL0003:Z

    if-eqz v2, :cond_1

    .line 39
    const-string v2, "com.microsoft.mobileexperience.bing.SETTINGS"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 44
    :goto_0
    return-object v0

    .line 42
    :cond_1
    const-string v2, "android.search.action.SEARCH_SETTINGS"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 15
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 17
    invoke-static {p0}, Lcom/android/settings/framework/activity/search/HtcSearchSettingsProxy;->getTargetIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 18
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/android/settings/framework/activity/search/HtcSearchSettingsProxy;->startActivity(Landroid/content/Intent;)V

    .line 19
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/search/HtcSearchSettingsProxy;->finish()V

    .line 20
    return-void
.end method
