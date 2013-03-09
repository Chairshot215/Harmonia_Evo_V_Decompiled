.class public Lcom/android/updater/UpdaterCustomizeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "UpdaterCustomizeReceiver.java"


# static fields
.field private static final ACTION_CUSTOMIZATION_FORCE:Ljava/lang/String; = "android.htc.intent.action.CUSTOMIZATION_FORCE_CHANGE"

.field private static final LOG:Z = false

.field private static final TAG:Ljava/lang/String; = "UpdaterAPK | UpdaterCustomizeReceiver"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 18
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 19
    .local v1, action:Ljava/lang/String;
    const-string v3, "CID"

    const/4 v4, 0x0

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 22
    .local v0, CID:Z
    if-eqz v0, :cond_0

    const-string v3, "android.htc.intent.action.CUSTOMIZATION_FORCE_CHANGE"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 23
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 24
    .local v2, startInitIntent:Landroid/content/Intent;
    const-class v3, Lcom/android/updater/service/UpdaterInitService;

    invoke-virtual {v2, p1, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 25
    const-string v3, "customize_change"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 26
    invoke-virtual {p1, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 28
    .end local v2           #startInitIntent:Landroid/content/Intent;
    :cond_0
    return-void
.end method
