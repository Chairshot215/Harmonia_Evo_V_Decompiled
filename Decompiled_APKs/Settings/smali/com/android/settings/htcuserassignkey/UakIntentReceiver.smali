.class public Lcom/android/settings/htcuserassignkey/UakIntentReceiver;
.super Landroid/content/BroadcastReceiver;
.source "UakIntentReceiver.java"


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
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 16
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 17
    .local v0, action:Ljava/lang/String;
    const-string v1, "ACTION_UAK_TRIGGLE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 18
    invoke-static {p1, p2}, Lcom/android/settings/framework/request/HtcUakRequest;->onHandleUakEvent(Landroid/content/Context;Landroid/content/Intent;)V

    .line 20
    :cond_0
    return-void
.end method
