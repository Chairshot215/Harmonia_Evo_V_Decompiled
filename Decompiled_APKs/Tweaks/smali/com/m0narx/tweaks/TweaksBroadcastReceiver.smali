.class public Lcom/m0narx/tweaks/TweaksBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "TweaksBroadcastReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "mContext"
    .parameter "mStartIntent"

    .prologue
    .line 14
    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    .line 20
    :cond_0
    :goto_0
    return-void

    .line 16
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    goto :goto_0
.end method
