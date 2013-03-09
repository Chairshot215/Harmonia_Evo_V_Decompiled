.class Lcom/android/providers/htcCheckin/RunAppUpdateReceiver$1;
.super Landroid/content/BroadcastReceiver;
.source "RunAppUpdateReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/htcCheckin/RunAppUpdateReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/providers/htcCheckin/RunAppUpdateReceiver;


# direct methods
.method constructor <init>(Lcom/android/providers/htcCheckin/RunAppUpdateReceiver;)V
    .locals 0
    .parameter

    .prologue
    .line 171
    iput-object p1, p0, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver$1;->this$0:Lcom/android/providers/htcCheckin/RunAppUpdateReceiver;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 174
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.server.checkin.APP_RUNCANCEL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 175
    const-string v0, "FOTA.AppUpdate.Run"

    const-string v1, "Handle the CANCEL case!!"

    #calls: Lcom/android/providers/htcCheckin/RunAppUpdateReceiver$FLOG;->d(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver$FLOG;->access$000(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    iget-object v0, p0, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver$1;->this$0:Lcom/android/providers/htcCheckin/RunAppUpdateReceiver;

    #getter for: Lcom/android/providers/htcCheckin/RunAppUpdateReceiver;->mRunUpdateReceiver:Landroid/content/BroadcastReceiver;
    invoke-static {v0}, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver;->access$100(Lcom/android/providers/htcCheckin/RunAppUpdateReceiver;)Landroid/content/BroadcastReceiver;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 177
    iget-object v0, p0, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver$1;->this$0:Lcom/android/providers/htcCheckin/RunAppUpdateReceiver;

    #getter for: Lcom/android/providers/htcCheckin/RunAppUpdateReceiver;->mDownloadDiscardReceiver:Landroid/content/BroadcastReceiver;
    invoke-static {v0}, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver;->access$200(Lcom/android/providers/htcCheckin/RunAppUpdateReceiver;)Landroid/content/BroadcastReceiver;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 238
    :goto_0
    return-void

    .line 181
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver$1$1;

    invoke-direct {v1, p0, p2}, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver$1$1;-><init>(Lcom/android/providers/htcCheckin/RunAppUpdateReceiver$1;Landroid/content/Intent;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 237
    iget-object v0, p0, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver$1;->this$0:Lcom/android/providers/htcCheckin/RunAppUpdateReceiver;

    #getter for: Lcom/android/providers/htcCheckin/RunAppUpdateReceiver;->mRunUpdateReceiver:Landroid/content/BroadcastReceiver;
    invoke-static {v0}, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver;->access$100(Lcom/android/providers/htcCheckin/RunAppUpdateReceiver;)Landroid/content/BroadcastReceiver;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    goto :goto_0
.end method
