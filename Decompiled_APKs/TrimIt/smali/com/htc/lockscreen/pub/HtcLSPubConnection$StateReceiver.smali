.class Lcom/htc/lockscreen/pub/HtcLSPubConnection$StateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "HtcLSPubConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/lockscreen/pub/HtcLSPubConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StateReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/lockscreen/pub/HtcLSPubConnection;


# direct methods
.method private constructor <init>(Lcom/htc/lockscreen/pub/HtcLSPubConnection;)V
    .locals 0
    .parameter

    .prologue
    .line 83
    iput-object p1, p0, Lcom/htc/lockscreen/pub/HtcLSPubConnection$StateReceiver;->this$0:Lcom/htc/lockscreen/pub/HtcLSPubConnection;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/lockscreen/pub/HtcLSPubConnection;Lcom/htc/lockscreen/pub/HtcLSPubConnection$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    invoke-direct {p0, p1}, Lcom/htc/lockscreen/pub/HtcLSPubConnection$StateReceiver;-><init>(Lcom/htc/lockscreen/pub/HtcLSPubConnection;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 87
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 88
    .local v0, action:Ljava/lang/String;
    const-string v2, "HtcLockScreen_ADD"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 89
    const-string v2, "HtcLockScreen_RESULT"

    const/4 v3, -0x1

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 91
    .local v1, result:I
    iget-object v2, p0, Lcom/htc/lockscreen/pub/HtcLSPubConnection$StateReceiver;->this$0:Lcom/htc/lockscreen/pub/HtcLSPubConnection;

    #getter for: Lcom/htc/lockscreen/pub/HtcLSPubConnection;->mListener:Lcom/htc/lockscreen/pub/HtcLSPubConnection$StateListener;
    invoke-static {v2}, Lcom/htc/lockscreen/pub/HtcLSPubConnection;->access$100(Lcom/htc/lockscreen/pub/HtcLSPubConnection;)Lcom/htc/lockscreen/pub/HtcLSPubConnection$StateListener;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 92
    iget-object v2, p0, Lcom/htc/lockscreen/pub/HtcLSPubConnection$StateReceiver;->this$0:Lcom/htc/lockscreen/pub/HtcLSPubConnection;

    #getter for: Lcom/htc/lockscreen/pub/HtcLSPubConnection;->mListener:Lcom/htc/lockscreen/pub/HtcLSPubConnection$StateListener;
    invoke-static {v2}, Lcom/htc/lockscreen/pub/HtcLSPubConnection;->access$100(Lcom/htc/lockscreen/pub/HtcLSPubConnection;)Lcom/htc/lockscreen/pub/HtcLSPubConnection$StateListener;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/htc/lockscreen/pub/HtcLSPubConnection$StateListener;->onAdd(I)V

    .line 93
    :cond_0
    iget-object v2, p0, Lcom/htc/lockscreen/pub/HtcLSPubConnection$StateReceiver;->this$0:Lcom/htc/lockscreen/pub/HtcLSPubConnection;

    const/4 v3, 0x0

    #calls: Lcom/htc/lockscreen/pub/HtcLSPubConnection;->wakeLock(Z)V
    invoke-static {v2, v3}, Lcom/htc/lockscreen/pub/HtcLSPubConnection;->access$200(Lcom/htc/lockscreen/pub/HtcLSPubConnection;Z)V

    .line 103
    .end local v1           #result:I
    :cond_1
    :goto_0
    return-void

    .line 95
    :cond_2
    const-string v2, "HtcLockScreen_DISMISS"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 96
    iget-object v2, p0, Lcom/htc/lockscreen/pub/HtcLSPubConnection$StateReceiver;->this$0:Lcom/htc/lockscreen/pub/HtcLSPubConnection;

    #getter for: Lcom/htc/lockscreen/pub/HtcLSPubConnection;->mListener:Lcom/htc/lockscreen/pub/HtcLSPubConnection$StateListener;
    invoke-static {v2}, Lcom/htc/lockscreen/pub/HtcLSPubConnection;->access$100(Lcom/htc/lockscreen/pub/HtcLSPubConnection;)Lcom/htc/lockscreen/pub/HtcLSPubConnection$StateListener;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 97
    iget-object v2, p0, Lcom/htc/lockscreen/pub/HtcLSPubConnection$StateReceiver;->this$0:Lcom/htc/lockscreen/pub/HtcLSPubConnection;

    #getter for: Lcom/htc/lockscreen/pub/HtcLSPubConnection;->mListener:Lcom/htc/lockscreen/pub/HtcLSPubConnection$StateListener;
    invoke-static {v2}, Lcom/htc/lockscreen/pub/HtcLSPubConnection;->access$100(Lcom/htc/lockscreen/pub/HtcLSPubConnection;)Lcom/htc/lockscreen/pub/HtcLSPubConnection$StateListener;

    move-result-object v2

    invoke-interface {v2}, Lcom/htc/lockscreen/pub/HtcLSPubConnection$StateListener;->onDismiss()V

    goto :goto_0

    .line 99
    :cond_3
    const-string v2, "HtcLockScreen_OVERWRITE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 100
    iget-object v2, p0, Lcom/htc/lockscreen/pub/HtcLSPubConnection$StateReceiver;->this$0:Lcom/htc/lockscreen/pub/HtcLSPubConnection;

    #getter for: Lcom/htc/lockscreen/pub/HtcLSPubConnection;->mListener:Lcom/htc/lockscreen/pub/HtcLSPubConnection$StateListener;
    invoke-static {v2}, Lcom/htc/lockscreen/pub/HtcLSPubConnection;->access$100(Lcom/htc/lockscreen/pub/HtcLSPubConnection;)Lcom/htc/lockscreen/pub/HtcLSPubConnection$StateListener;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 101
    iget-object v2, p0, Lcom/htc/lockscreen/pub/HtcLSPubConnection$StateReceiver;->this$0:Lcom/htc/lockscreen/pub/HtcLSPubConnection;

    #getter for: Lcom/htc/lockscreen/pub/HtcLSPubConnection;->mListener:Lcom/htc/lockscreen/pub/HtcLSPubConnection$StateListener;
    invoke-static {v2}, Lcom/htc/lockscreen/pub/HtcLSPubConnection;->access$100(Lcom/htc/lockscreen/pub/HtcLSPubConnection;)Lcom/htc/lockscreen/pub/HtcLSPubConnection$StateListener;

    move-result-object v2

    invoke-interface {v2}, Lcom/htc/lockscreen/pub/HtcLSPubConnection$StateListener;->onOverwrite()V

    goto :goto_0
.end method
