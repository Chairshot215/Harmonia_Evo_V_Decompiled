.class Lcom/htc/lockscreen/HtcLSViewConnection$StateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "HtcLSViewConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/lockscreen/HtcLSViewConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StateReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/lockscreen/HtcLSViewConnection;


# direct methods
.method private constructor <init>(Lcom/htc/lockscreen/HtcLSViewConnection;)V
    .locals 0
    .parameter

    .prologue
    .line 84
    iput-object p1, p0, Lcom/htc/lockscreen/HtcLSViewConnection$StateReceiver;->this$0:Lcom/htc/lockscreen/HtcLSViewConnection;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/lockscreen/HtcLSViewConnection;Lcom/htc/lockscreen/HtcLSViewConnection$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 84
    invoke-direct {p0, p1}, Lcom/htc/lockscreen/HtcLSViewConnection$StateReceiver;-><init>(Lcom/htc/lockscreen/HtcLSViewConnection;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 89
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 90
    .local v0, action:Ljava/lang/String;
    const-string v2, "HtcLockScreen_Update"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 91
    const-string v2, "HtcLockScreen_RESULT"

    const/4 v3, -0x1

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 92
    .local v1, result:I
    iget-object v2, p0, Lcom/htc/lockscreen/HtcLSViewConnection$StateReceiver;->this$0:Lcom/htc/lockscreen/HtcLSViewConnection;

    #getter for: Lcom/htc/lockscreen/HtcLSViewConnection;->mListener:Lcom/htc/lockscreen/HtcLSViewConnection$StateListener;
    invoke-static {v2}, Lcom/htc/lockscreen/HtcLSViewConnection;->access$100(Lcom/htc/lockscreen/HtcLSViewConnection;)Lcom/htc/lockscreen/HtcLSViewConnection$StateListener;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 93
    iget-object v2, p0, Lcom/htc/lockscreen/HtcLSViewConnection$StateReceiver;->this$0:Lcom/htc/lockscreen/HtcLSViewConnection;

    #getter for: Lcom/htc/lockscreen/HtcLSViewConnection;->mListener:Lcom/htc/lockscreen/HtcLSViewConnection$StateListener;
    invoke-static {v2}, Lcom/htc/lockscreen/HtcLSViewConnection;->access$100(Lcom/htc/lockscreen/HtcLSViewConnection;)Lcom/htc/lockscreen/HtcLSViewConnection$StateListener;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/htc/lockscreen/HtcLSViewConnection$StateListener;->onUpdate(I)V

    .line 94
    :cond_0
    iget-object v2, p0, Lcom/htc/lockscreen/HtcLSViewConnection$StateReceiver;->this$0:Lcom/htc/lockscreen/HtcLSViewConnection;

    const/4 v3, 0x0

    #calls: Lcom/htc/lockscreen/HtcLSViewConnection;->wakeLock(Z)V
    invoke-static {v2, v3}, Lcom/htc/lockscreen/HtcLSViewConnection;->access$200(Lcom/htc/lockscreen/HtcLSViewConnection;Z)V

    .line 114
    .end local v1           #result:I
    :cond_1
    return-void
.end method
