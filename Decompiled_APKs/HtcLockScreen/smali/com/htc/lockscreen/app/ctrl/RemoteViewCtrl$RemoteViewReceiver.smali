.class Lcom/htc/lockscreen/app/ctrl/RemoteViewCtrl$RemoteViewReceiver;
.super Landroid/content/BroadcastReceiver;
.source "RemoteViewCtrl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/lockscreen/app/ctrl/RemoteViewCtrl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RemoteViewReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/lockscreen/app/ctrl/RemoteViewCtrl;


# direct methods
.method private constructor <init>(Lcom/htc/lockscreen/app/ctrl/RemoteViewCtrl;)V
    .locals 0
    .parameter

    .prologue
    .line 69
    iput-object p1, p0, Lcom/htc/lockscreen/app/ctrl/RemoteViewCtrl$RemoteViewReceiver;->this$0:Lcom/htc/lockscreen/app/ctrl/RemoteViewCtrl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/lockscreen/app/ctrl/RemoteViewCtrl;Lcom/htc/lockscreen/app/ctrl/RemoteViewCtrl$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/htc/lockscreen/app/ctrl/RemoteViewCtrl$RemoteViewReceiver;-><init>(Lcom/htc/lockscreen/app/ctrl/RemoteViewCtrl;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 72
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 73
    .local v0, action:Ljava/lang/String;
    const-string v4, "RemoteViewCtrl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "RemoteViewReceiver:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/lockscreen/app/debug/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    const-string v4, "HtcLockScreenSetView_P"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 77
    const-string v4, "View"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/htc/lockscreen/idlescreen/pub/IdlePubView;

    .line 78
    .local v2, idleView:Lcom/htc/lockscreen/idlescreen/pub/IdlePubView;
    const-string v4, "PackageName"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 79
    .local v3, packageName:Ljava/lang/String;
    const-string v4, "id"

    const/4 v5, 0x0

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 80
    .local v1, id:I
    iget-object v4, p0, Lcom/htc/lockscreen/app/ctrl/RemoteViewCtrl$RemoteViewReceiver;->this$0:Lcom/htc/lockscreen/app/ctrl/RemoteViewCtrl;

    #calls: Lcom/htc/lockscreen/app/ctrl/RemoteViewCtrl;->addView(Ljava/lang/String;ILcom/htc/lockscreen/idlescreen/pub/IdlePubView;)V
    invoke-static {v4, v3, v1, v2}, Lcom/htc/lockscreen/app/ctrl/RemoteViewCtrl;->access$100(Lcom/htc/lockscreen/app/ctrl/RemoteViewCtrl;Ljava/lang/String;ILcom/htc/lockscreen/idlescreen/pub/IdlePubView;)V

    .line 91
    .end local v1           #id:I
    .end local v2           #idleView:Lcom/htc/lockscreen/idlescreen/pub/IdlePubView;
    .end local v3           #packageName:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 82
    :cond_1
    const-string v4, "HtcLockScreenRemoveView"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 84
    const-string v4, "PackageName"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 85
    .restart local v3       #packageName:Ljava/lang/String;
    const-string v4, "id"

    const/4 v5, -0x1

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 86
    .restart local v1       #id:I
    if-ltz v1, :cond_0

    .line 87
    iget-object v4, p0, Lcom/htc/lockscreen/app/ctrl/RemoteViewCtrl$RemoteViewReceiver;->this$0:Lcom/htc/lockscreen/app/ctrl/RemoteViewCtrl;

    invoke-virtual {v4, v3, v1}, Lcom/htc/lockscreen/app/ctrl/RemoteViewCtrl;->removeIdleView(Ljava/lang/String;I)Lcom/htc/lockscreen/app/ctrl/IdlePubViewWrap;

    goto :goto_0
.end method
