.class public Lcom/android/settings/framework/activity/location/HtcLocationSettingsProxy;
.super Landroid/app/Activity;
.source "HtcLocationSettingsProxy.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 15
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 17
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 19
    .local v0, intent:Landroid/content/Intent;
    sget-boolean v1, Lcom/android/settings/HtcFeatureList;->FEATURE_GPSONE_WARNING_ON_BOOT_AND_DBOULECHECK:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 27
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/settings/framework/activity/location/HtcLocationSettingsProxy;->startActivity(Landroid/content/Intent;)V

    .line 28
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/location/HtcLocationSettingsProxy;->finish()V

    .line 29
    return-void
.end method
