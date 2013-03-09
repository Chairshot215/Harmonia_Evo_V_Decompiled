.class Lcom/android/providers/htcCheckin/UpdateReceiver$4;
.super Landroid/content/BroadcastReceiver;
.source "UpdateReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/htcCheckin/UpdateReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/providers/htcCheckin/UpdateReceiver;


# direct methods
.method constructor <init>(Lcom/android/providers/htcCheckin/UpdateReceiver;)V
    .locals 0
    .parameter

    .prologue
    .line 417
    iput-object p1, p0, Lcom/android/providers/htcCheckin/UpdateReceiver$4;->this$0:Lcom/android/providers/htcCheckin/UpdateReceiver;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 420
    iget-object v0, p0, Lcom/android/providers/htcCheckin/UpdateReceiver$4;->this$0:Lcom/android/providers/htcCheckin/UpdateReceiver;

    #calls: Lcom/android/providers/htcCheckin/UpdateReceiver;->IsHtcCheckin(Landroid/content/Intent;)Z
    invoke-static {v0, p2}, Lcom/android/providers/htcCheckin/UpdateReceiver;->access$000(Lcom/android/providers/htcCheckin/UpdateReceiver;Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 421
    const-string v0, "htcCheckinService"

    const-string v1, "Receive cancel Intent, but not by htc"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    :goto_0
    return-void

    .line 425
    :cond_0
    const-string v0, "htcCheckinService"

    const-string v1, "mCancelReceiver() remove all downloads"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    #calls: Lcom/android/providers/htcCheckin/UpdateReceiver;->removeAllDownloads(Landroid/content/Context;)V
    invoke-static {p1}, Lcom/android/providers/htcCheckin/UpdateReceiver;->access$400(Landroid/content/Context;)V

    .line 428
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/providers/htcCheckin/UpdateReceiver;->access$102(Landroid/content/Intent;)Landroid/content/Intent;

    goto :goto_0
.end method
