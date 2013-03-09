.class public Lcom/android/settings/framework/activity/personalize/HtcPersonalizeSettingsProxy;
.super Landroid/app/Activity;
.source "HtcPersonalizeSettingsProxy.java"


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
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 15
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 17
    invoke-static {}, Lcom/android/settings/framework/flag/HtcSkuFlags;->getSenseVersion()F

    move-result v1

    .line 18
    .local v1, senseVersion:F
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 21
    .local v0, intent:Landroid/content/Intent;
    sget-boolean v2, Lcom/android/settings/framework/flag/HtcProjectFlags;->isT0004:Z

    if-eqz v2, :cond_0

    .line 22
    const-class v2, Lcom/android/settings/framework/activity/personalize/HtcGlacierPersonalizeSettings;

    invoke-virtual {v0, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 30
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/settings/framework/activity/personalize/HtcPersonalizeSettingsProxy;->startActivity(Landroid/content/Intent;)V

    .line 31
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/personalize/HtcPersonalizeSettingsProxy;->finish()V

    .line 32
    return-void

    .line 23
    :cond_0
    const/high16 v2, 0x4000

    cmpg-float v2, v1, v2

    if-gez v2, :cond_1

    .line 24
    const-class v2, Lcom/android/settings/PersonalSettings;

    invoke-virtual {v0, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto :goto_0

    .line 26
    :cond_1
    const-string v2, "android.intent.category.HOME"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 27
    const-string v2, "open_personalize"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_0
.end method
