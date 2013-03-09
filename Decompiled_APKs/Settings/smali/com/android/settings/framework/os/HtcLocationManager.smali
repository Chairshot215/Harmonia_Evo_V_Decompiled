.class public Lcom/android/settings/framework/os/HtcLocationManager;
.super Ljava/lang/Object;
.source "HtcLocationManager.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static notifyShowMeWidget(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    .line 25
    const-string v0, "show_me_notification"

    .line 26
    .local v0, KEY:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 28
    .local v1, cr:Landroid/content/ContentResolver;
    const-string v3, "show_me_notification"

    const/4 v4, 0x0

    invoke-static {v1, v3, v4}, Lcom/htc/wrap/android/provider/HtcWrapSettings$System;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_0

    .line 29
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 32
    .local v2, intent:Landroid/content/Intent;
    const-string v3, "com.htc.showme.LOG"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 36
    const-string v3, "callingApp"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 40
    const-string v3, "actionCoverage"

    const-string v4, "topic_tag-settings-location_settings"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 43
    invoke-virtual {p0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 44
    const-string v3, "show_me_notification"

    const/4 v4, 0x1

    invoke-static {v1, v3, v4}, Lcom/htc/wrap/android/provider/HtcWrapSettings$System;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    .line 46
    .end local v2           #intent:Landroid/content/Intent;
    :cond_0
    return-void
.end method
