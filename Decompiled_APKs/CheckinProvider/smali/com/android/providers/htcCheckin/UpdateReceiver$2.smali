.class Lcom/android/providers/htcCheckin/UpdateReceiver$2;
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
    .line 346
    iput-object p1, p0, Lcom/android/providers/htcCheckin/UpdateReceiver$2;->this$0:Lcom/android/providers/htcCheckin/UpdateReceiver;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 349
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/providers/htcCheckin/UpdateReceiver$InstallRunner;

    iget-object v2, p0, Lcom/android/providers/htcCheckin/UpdateReceiver$2;->this$0:Lcom/android/providers/htcCheckin/UpdateReceiver;

    invoke-direct {v1, v2, p1, p2}, Lcom/android/providers/htcCheckin/UpdateReceiver$InstallRunner;-><init>(Lcom/android/providers/htcCheckin/UpdateReceiver;Landroid/content/Context;Landroid/content/Intent;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 350
    return-void
.end method
