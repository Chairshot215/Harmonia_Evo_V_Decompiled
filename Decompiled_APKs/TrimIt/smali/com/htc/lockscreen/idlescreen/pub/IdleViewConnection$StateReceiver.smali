.class Lcom/htc/lockscreen/idlescreen/pub/IdleViewConnection$StateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "IdleViewConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/lockscreen/idlescreen/pub/IdleViewConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StateReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/lockscreen/idlescreen/pub/IdleViewConnection;


# direct methods
.method private constructor <init>(Lcom/htc/lockscreen/idlescreen/pub/IdleViewConnection;)V
    .locals 0
    .parameter

    .prologue
    .line 84
    iput-object p1, p0, Lcom/htc/lockscreen/idlescreen/pub/IdleViewConnection$StateReceiver;->this$0:Lcom/htc/lockscreen/idlescreen/pub/IdleViewConnection;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/lockscreen/idlescreen/pub/IdleViewConnection;Lcom/htc/lockscreen/idlescreen/pub/IdleViewConnection$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 84
    invoke-direct {p0, p1}, Lcom/htc/lockscreen/idlescreen/pub/IdleViewConnection$StateReceiver;-><init>(Lcom/htc/lockscreen/idlescreen/pub/IdleViewConnection;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 88
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 89
    .local v0, action:Ljava/lang/String;
    const-string v2, "HtcLockScreen_ADD"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 90
    const-string v2, "HtcLockScreen_RESULT"

    const/4 v3, -0x1

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 92
    .local v1, result:I
    iget-object v2, p0, Lcom/htc/lockscreen/idlescreen/pub/IdleViewConnection$StateReceiver;->this$0:Lcom/htc/lockscreen/idlescreen/pub/IdleViewConnection;

    #getter for: Lcom/htc/lockscreen/idlescreen/pub/IdleViewConnection;->mListener:Lcom/htc/lockscreen/idlescreen/pub/IdleViewConnection$StateListener;
    invoke-static {v2}, Lcom/htc/lockscreen/idlescreen/pub/IdleViewConnection;->access$100(Lcom/htc/lockscreen/idlescreen/pub/IdleViewConnection;)Lcom/htc/lockscreen/idlescreen/pub/IdleViewConnection$StateListener;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 93
    iget-object v2, p0, Lcom/htc/lockscreen/idlescreen/pub/IdleViewConnection$StateReceiver;->this$0:Lcom/htc/lockscreen/idlescreen/pub/IdleViewConnection;

    #getter for: Lcom/htc/lockscreen/idlescreen/pub/IdleViewConnection;->mListener:Lcom/htc/lockscreen/idlescreen/pub/IdleViewConnection$StateListener;
    invoke-static {v2}, Lcom/htc/lockscreen/idlescreen/pub/IdleViewConnection;->access$100(Lcom/htc/lockscreen/idlescreen/pub/IdleViewConnection;)Lcom/htc/lockscreen/idlescreen/pub/IdleViewConnection$StateListener;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/htc/lockscreen/idlescreen/pub/IdleViewConnection$StateListener;->onResult(I)V

    .line 94
    :cond_0
    iget-object v2, p0, Lcom/htc/lockscreen/idlescreen/pub/IdleViewConnection$StateReceiver;->this$0:Lcom/htc/lockscreen/idlescreen/pub/IdleViewConnection;

    const/4 v3, 0x0

    #calls: Lcom/htc/lockscreen/idlescreen/pub/IdleViewConnection;->wakeLock(Z)V
    invoke-static {v2, v3}, Lcom/htc/lockscreen/idlescreen/pub/IdleViewConnection;->access$200(Lcom/htc/lockscreen/idlescreen/pub/IdleViewConnection;Z)V

    .line 106
    .end local v1           #result:I
    :cond_1
    return-void
.end method
