.class Lcom/htc/lockscreen/app/ctrl/NtfCtrl$MyNtfReceiver;
.super Landroid/content/BroadcastReceiver;
.source "NtfCtrl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/lockscreen/app/ctrl/NtfCtrl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyNtfReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/lockscreen/app/ctrl/NtfCtrl;


# direct methods
.method private constructor <init>(Lcom/htc/lockscreen/app/ctrl/NtfCtrl;)V
    .locals 0
    .parameter

    .prologue
    .line 399
    iput-object p1, p0, Lcom/htc/lockscreen/app/ctrl/NtfCtrl$MyNtfReceiver;->this$0:Lcom/htc/lockscreen/app/ctrl/NtfCtrl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/lockscreen/app/ctrl/NtfCtrl;Lcom/htc/lockscreen/app/ctrl/NtfCtrl$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 399
    invoke-direct {p0, p1}, Lcom/htc/lockscreen/app/ctrl/NtfCtrl$MyNtfReceiver;-><init>(Lcom/htc/lockscreen/app/ctrl/NtfCtrl;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, -0x1

    .line 404
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 405
    .local v0, action:Ljava/lang/String;
    const-string v6, "NtfCtrl"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "BroadcastReceiver receive "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/lockscreen/app/debug/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 406
    const-string v6, "android.intent.action.NOTIFICATION_ADD"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "android.intent.action.NOTIFICATION_UPDATE"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 408
    :cond_0
    const-string v6, "id"

    invoke-virtual {p2, v6, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 409
    .local v2, id:I
    const-string v6, "pkg"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 410
    .local v5, pkg:Ljava/lang/String;
    const-string v6, "NtfCtrl"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "notification add or update pkg:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " id:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/lockscreen/app/debug/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    const-string v6, "notification"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/app/Notification;

    .line 412
    .local v4, notification:Landroid/app/Notification;
    iget-object v6, p0, Lcom/htc/lockscreen/app/ctrl/NtfCtrl$MyNtfReceiver;->this$0:Lcom/htc/lockscreen/app/ctrl/NtfCtrl;

    invoke-virtual {v6, v5, v2, v4}, Lcom/htc/lockscreen/app/ctrl/NtfCtrl;->updateNotification(Ljava/lang/String;ILandroid/app/Notification;)Lcom/htc/lockscreen/app/ctrl/NtfCtrl$MyNotification;

    move-result-object v3

    .line 415
    .local v3, myNtf:Lcom/htc/lockscreen/app/ctrl/NtfCtrl$MyNotification;
    if-eqz v3, :cond_1

    .line 416
    iget-object v6, p0, Lcom/htc/lockscreen/app/ctrl/NtfCtrl$MyNtfReceiver;->this$0:Lcom/htc/lockscreen/app/ctrl/NtfCtrl;

    invoke-virtual {v6, v10, v3}, Lcom/htc/lockscreen/app/ctrl/NtfCtrl;->notifyLister(ILjava/lang/Object;)V

    .line 443
    .end local v2           #id:I
    .end local v3           #myNtf:Lcom/htc/lockscreen/app/ctrl/NtfCtrl$MyNotification;
    .end local v4           #notification:Landroid/app/Notification;
    .end local v5           #pkg:Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 418
    :cond_2
    const-string v6, "android.intent.action.NOTIFICATION_REMOVE"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 419
    const-string v6, "id"

    invoke-virtual {p2, v6, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 420
    .restart local v2       #id:I
    const-string v6, "pkg"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 421
    .restart local v5       #pkg:Ljava/lang/String;
    iget-object v6, p0, Lcom/htc/lockscreen/app/ctrl/NtfCtrl$MyNtfReceiver;->this$0:Lcom/htc/lockscreen/app/ctrl/NtfCtrl;

    invoke-virtual {v6, v5, v2}, Lcom/htc/lockscreen/app/ctrl/NtfCtrl;->removeNotification(Ljava/lang/String;I)Z

    move-result v1

    .line 424
    .local v1, bRemoved:Z
    if-eqz v1, :cond_1

    .line 425
    iget-object v6, p0, Lcom/htc/lockscreen/app/ctrl/NtfCtrl$MyNtfReceiver;->this$0:Lcom/htc/lockscreen/app/ctrl/NtfCtrl;

    invoke-virtual {v6, v11, v12}, Lcom/htc/lockscreen/app/ctrl/NtfCtrl;->notifyLister(ILjava/lang/Object;)V

    goto :goto_0

    .line 427
    .end local v1           #bRemoved:Z
    .end local v2           #id:I
    .end local v5           #pkg:Ljava/lang/String;
    :cond_3
    const-string v6, "HtcLockScreenSetNotification"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 428
    const-string v6, "id"

    invoke-virtual {p2, v6, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 429
    .restart local v2       #id:I
    const-string v6, "PackageName"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 430
    .restart local v5       #pkg:Ljava/lang/String;
    const-string v6, "notification"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Lcom/htc/lockscreen/ntf/HtcLSNotification;

    .line 431
    .local v4, notification:Lcom/htc/lockscreen/ntf/HtcLSNotification;
    iget-object v6, p0, Lcom/htc/lockscreen/app/ctrl/NtfCtrl$MyNtfReceiver;->this$0:Lcom/htc/lockscreen/app/ctrl/NtfCtrl;

    invoke-virtual {v6, v5, v2, v4}, Lcom/htc/lockscreen/app/ctrl/NtfCtrl;->updateNotification(Ljava/lang/String;ILcom/htc/lockscreen/ntf/HtcLSNotification;)Lcom/htc/lockscreen/app/ctrl/NtfCtrl$MyNotification;

    move-result-object v3

    .line 433
    .restart local v3       #myNtf:Lcom/htc/lockscreen/app/ctrl/NtfCtrl$MyNotification;
    if-eqz v3, :cond_1

    .line 434
    iget-object v6, p0, Lcom/htc/lockscreen/app/ctrl/NtfCtrl$MyNtfReceiver;->this$0:Lcom/htc/lockscreen/app/ctrl/NtfCtrl;

    invoke-virtual {v6, v10, v3}, Lcom/htc/lockscreen/app/ctrl/NtfCtrl;->notifyLister(ILjava/lang/Object;)V

    goto :goto_0

    .line 436
    .end local v2           #id:I
    .end local v3           #myNtf:Lcom/htc/lockscreen/app/ctrl/NtfCtrl$MyNotification;
    .end local v4           #notification:Lcom/htc/lockscreen/ntf/HtcLSNotification;
    .end local v5           #pkg:Ljava/lang/String;
    :cond_4
    const-string v6, "HtcLockScreenRemoveNotfiication"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 437
    const-string v6, "id"

    invoke-virtual {p2, v6, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 438
    .restart local v2       #id:I
    const-string v6, "PackageName"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 439
    .restart local v5       #pkg:Ljava/lang/String;
    iget-object v6, p0, Lcom/htc/lockscreen/app/ctrl/NtfCtrl$MyNtfReceiver;->this$0:Lcom/htc/lockscreen/app/ctrl/NtfCtrl;

    invoke-virtual {v6, v5, v2}, Lcom/htc/lockscreen/app/ctrl/NtfCtrl;->removeNotification(Ljava/lang/String;I)Z

    .line 441
    iget-object v6, p0, Lcom/htc/lockscreen/app/ctrl/NtfCtrl$MyNtfReceiver;->this$0:Lcom/htc/lockscreen/app/ctrl/NtfCtrl;

    invoke-virtual {v6, v11, v12}, Lcom/htc/lockscreen/app/ctrl/NtfCtrl;->notifyLister(ILjava/lang/Object;)V

    goto :goto_0
.end method
