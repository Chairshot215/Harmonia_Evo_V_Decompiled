.class Lcom/android/providers/htcCheckin/RunAppUpdateReceiver$2;
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
    .line 241
    iput-object p1, p0, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver$2;->this$0:Lcom/android/providers/htcCheckin/RunAppUpdateReceiver;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 243
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver$2$1;

    invoke-direct {v1, p0}, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver$2$1;-><init>(Lcom/android/providers/htcCheckin/RunAppUpdateReceiver$2;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 281
    iget-object v0, p0, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver$2;->this$0:Lcom/android/providers/htcCheckin/RunAppUpdateReceiver;

    #getter for: Lcom/android/providers/htcCheckin/RunAppUpdateReceiver;->mDownloadDiscardReceiver:Landroid/content/BroadcastReceiver;
    invoke-static {v0}, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver;->access$200(Lcom/android/providers/htcCheckin/RunAppUpdateReceiver;)Landroid/content/BroadcastReceiver;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 282
    return-void
.end method
