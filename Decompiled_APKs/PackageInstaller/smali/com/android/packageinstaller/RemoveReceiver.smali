.class public Lcom/android/packageinstaller/RemoveReceiver;
.super Landroid/content/BroadcastReceiver;
.source "RemoveReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v5, 0x0

    .line 29
    const-string v3, "android.intent.action.PACKAGE_FULLY_REMOVED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 30
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    .line 31
    .local v2, uri:Landroid/net/Uri;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    .line 32
    .local v0, pkg:Ljava/lang/String;
    :goto_0
    if-eqz v0, :cond_0

    .line 33
    const-string v3, "allowed_sources"

    invoke-virtual {p1, v3, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 36
    .local v1, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v1, v0, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 37
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 41
    .end local v0           #pkg:Ljava/lang/String;
    .end local v1           #prefs:Landroid/content/SharedPreferences;
    .end local v2           #uri:Landroid/net/Uri;
    :cond_0
    return-void

    .line 31
    .restart local v2       #uri:Landroid/net/Uri;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
