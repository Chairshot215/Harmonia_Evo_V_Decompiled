.class Lcom/google/android/videochat/CallManager$NetworkStateReceiver$1;
.super Ljava/lang/Object;
.source "CallManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/videochat/CallManager$NetworkStateReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/videochat/CallManager$NetworkStateReceiver;


# direct methods
.method constructor <init>(Lcom/google/android/videochat/CallManager$NetworkStateReceiver;)V
    .locals 0
    .parameter

    .prologue
    .line 1577
    iput-object p1, p0, Lcom/google/android/videochat/CallManager$NetworkStateReceiver$1;->this$1:Lcom/google/android/videochat/CallManager$NetworkStateReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1580
    iget-object v0, p0, Lcom/google/android/videochat/CallManager$NetworkStateReceiver$1;->this$1:Lcom/google/android/videochat/CallManager$NetworkStateReceiver;

    #getter for: Lcom/google/android/videochat/CallManager$NetworkStateReceiver;->mConnected:Z
    invoke-static {v0}, Lcom/google/android/videochat/CallManager$NetworkStateReceiver;->access$1300(Lcom/google/android/videochat/CallManager$NetworkStateReceiver;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1582
    const-string v0, "vclib:CallManager"

    const-string v1, "We still don\'t have a connection after 5 seconds. Terminate the call"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1585
    iget-object v0, p0, Lcom/google/android/videochat/CallManager$NetworkStateReceiver$1;->this$1:Lcom/google/android/videochat/CallManager$NetworkStateReceiver;

    iget-object v0, v0, Lcom/google/android/videochat/CallManager$NetworkStateReceiver;->this$0:Lcom/google/android/videochat/CallManager;

    #calls: Lcom/google/android/videochat/CallManager;->postFatalNetworkLoss()V
    invoke-static {v0}, Lcom/google/android/videochat/CallManager;->access$1400(Lcom/google/android/videochat/CallManager;)V

    .line 1587
    :cond_0
    return-void
.end method
