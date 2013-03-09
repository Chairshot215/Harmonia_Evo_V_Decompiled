.class Lcom/htc/idlescreen/base/ctrl/NtfMonitor$MyNtfReceiver;
.super Landroid/content/BroadcastReceiver;
.source "NtfMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/idlescreen/base/ctrl/NtfMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyNtfReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/idlescreen/base/ctrl/NtfMonitor;


# direct methods
.method private constructor <init>(Lcom/htc/idlescreen/base/ctrl/NtfMonitor;)V
    .locals 0
    .parameter

    .prologue
    .line 345
    iput-object p1, p0, Lcom/htc/idlescreen/base/ctrl/NtfMonitor$MyNtfReceiver;->this$0:Lcom/htc/idlescreen/base/ctrl/NtfMonitor;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/idlescreen/base/ctrl/NtfMonitor;Lcom/htc/idlescreen/base/ctrl/NtfMonitor$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 345
    invoke-direct {p0, p1}, Lcom/htc/idlescreen/base/ctrl/NtfMonitor$MyNtfReceiver;-><init>(Lcom/htc/idlescreen/base/ctrl/NtfMonitor;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 350
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    .line 351
    .local v6, action:Ljava/lang/String;
    const-string v1, "NtfMonitor"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "BroadcastReceiver receive "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Lcom/htc/idlescreen/base/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    iget-object v1, p0, Lcom/htc/idlescreen/base/ctrl/NtfMonitor$MyNtfReceiver;->this$0:Lcom/htc/idlescreen/base/ctrl/NtfMonitor;

    iget-boolean v1, v1, Lcom/htc/idlescreen/base/ctrl/NtfMonitor;->mStart:Z

    if-nez v1, :cond_1

    .line 390
    :cond_0
    :goto_0
    return-void

    .line 355
    :cond_1
    const-string v1, "HtcLockScreenSetNotification"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 356
    const-string v1, "id"

    const/4 v8, -0x1

    invoke-virtual {p2, v1, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 357
    .local v3, id:I
    const-string v1, "PackageName"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 358
    .local v2, pkg:Ljava/lang/String;
    const-string v1, "notification"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Lcom/htc/lockscreen/ntf/HtcLSNotification;

    .line 359
    .local v5, notification:Lcom/htc/lockscreen/ntf/HtcLSNotification;
    if-eqz v5, :cond_0

    .line 360
    const-string v1, "NtfMonitor"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "LOCKSCREEN_NTF_SET getTitle:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v5}, Lcom/htc/lockscreen/ntf/HtcLSNotification;->getTitle()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " getDescript:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v5}, Lcom/htc/lockscreen/ntf/HtcLSNotification;->getDescript()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Lcom/htc/idlescreen/base/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    iget-object v1, p0, Lcom/htc/idlescreen/base/ctrl/NtfMonitor$MyNtfReceiver;->this$0:Lcom/htc/idlescreen/base/ctrl/NtfMonitor;

    #calls: Lcom/htc/idlescreen/base/ctrl/NtfMonitor;->getNotificationType(Ljava/lang/String;I)I
    invoke-static {v1, v2, v3}, Lcom/htc/idlescreen/base/ctrl/NtfMonitor;->access$100(Lcom/htc/idlescreen/base/ctrl/NtfMonitor;Ljava/lang/String;I)I

    move-result v4

    .line 364
    .local v4, type:I
    if-lez v4, :cond_0

    .line 365
    new-instance v0, Lcom/htc/idlescreen/base/ctrl/NtfMonitor$MyNotification;

    iget-object v1, p0, Lcom/htc/idlescreen/base/ctrl/NtfMonitor$MyNtfReceiver;->this$0:Lcom/htc/idlescreen/base/ctrl/NtfMonitor;

    invoke-direct/range {v0 .. v5}, Lcom/htc/idlescreen/base/ctrl/NtfMonitor$MyNotification;-><init>(Lcom/htc/idlescreen/base/ctrl/NtfMonitor;Ljava/lang/String;IILcom/htc/lockscreen/ntf/HtcLSNotification;)V

    .line 367
    .local v0, myNtf:Lcom/htc/idlescreen/base/ctrl/NtfMonitor$MyNotification;
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v7

    .line 368
    .local v7, msg:Landroid/os/Message;
    iput-object v0, v7, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 369
    const/16 v1, 0x7d1

    iput v1, v7, Landroid/os/Message;->what:I

    .line 370
    iget-object v1, p0, Lcom/htc/idlescreen/base/ctrl/NtfMonitor$MyNtfReceiver;->this$0:Lcom/htc/idlescreen/base/ctrl/NtfMonitor;

    iget-object v1, v1, Lcom/htc/idlescreen/base/ctrl/BaseCtrl;->mBGHandler:Landroid/os/Handler;

    const/16 v8, 0x7d4

    invoke-static {v1, v8}, Lcom/htc/idlescreen/base/util/MyUtil;->removeMessage(Landroid/os/Handler;I)V

    .line 371
    iget-object v1, p0, Lcom/htc/idlescreen/base/ctrl/NtfMonitor$MyNtfReceiver;->this$0:Lcom/htc/idlescreen/base/ctrl/NtfMonitor;

    iget-object v1, v1, Lcom/htc/idlescreen/base/ctrl/BaseCtrl;->mBGHandler:Landroid/os/Handler;

    const/16 v8, 0x7d2

    invoke-static {v1, v8}, Lcom/htc/idlescreen/base/util/MyUtil;->removeMessage(Landroid/os/Handler;I)V

    .line 372
    iget-object v1, p0, Lcom/htc/idlescreen/base/ctrl/NtfMonitor$MyNtfReceiver;->this$0:Lcom/htc/idlescreen/base/ctrl/NtfMonitor;

    iget-object v1, v1, Lcom/htc/idlescreen/base/ctrl/BaseCtrl;->mBGHandler:Landroid/os/Handler;

    const/16 v8, 0x7d1

    invoke-static {v1, v8}, Lcom/htc/idlescreen/base/util/MyUtil;->removeMessage(Landroid/os/Handler;I)V

    .line 373
    iget-object v1, p0, Lcom/htc/idlescreen/base/ctrl/NtfMonitor$MyNtfReceiver;->this$0:Lcom/htc/idlescreen/base/ctrl/NtfMonitor;

    iget-object v1, v1, Lcom/htc/idlescreen/base/ctrl/BaseCtrl;->mBGHandler:Landroid/os/Handler;

    const-wide/16 v8, 0x1f4

    invoke-static {v1, v7, v8, v9}, Lcom/htc/idlescreen/base/util/MyUtil;->sendMessage(Landroid/os/Handler;Landroid/os/Message;J)V

    goto/16 :goto_0

    .line 378
    .end local v0           #myNtf:Lcom/htc/idlescreen/base/ctrl/NtfMonitor$MyNotification;
    .end local v2           #pkg:Ljava/lang/String;
    .end local v3           #id:I
    .end local v4           #type:I
    .end local v5           #notification:Lcom/htc/lockscreen/ntf/HtcLSNotification;
    .end local v7           #msg:Landroid/os/Message;
    :cond_2
    const-string v1, "HtcLockScreenRemoveNotfiication"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 379
    const-string v1, "id"

    const/4 v8, -0x1

    invoke-virtual {p2, v1, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 380
    .restart local v3       #id:I
    const-string v1, "PackageName"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 382
    .restart local v2       #pkg:Ljava/lang/String;
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v7

    .line 383
    .restart local v7       #msg:Landroid/os/Message;
    iput v3, v7, Landroid/os/Message;->arg1:I

    .line 384
    iput-object v2, v7, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 385
    const/16 v1, 0x7d2

    iput v1, v7, Landroid/os/Message;->what:I

    .line 386
    iget-object v1, p0, Lcom/htc/idlescreen/base/ctrl/NtfMonitor$MyNtfReceiver;->this$0:Lcom/htc/idlescreen/base/ctrl/NtfMonitor;

    iget-object v1, v1, Lcom/htc/idlescreen/base/ctrl/BaseCtrl;->mBGHandler:Landroid/os/Handler;

    const/16 v8, 0x7d2

    invoke-static {v1, v8}, Lcom/htc/idlescreen/base/util/MyUtil;->removeMessage(Landroid/os/Handler;I)V

    .line 387
    iget-object v1, p0, Lcom/htc/idlescreen/base/ctrl/NtfMonitor$MyNtfReceiver;->this$0:Lcom/htc/idlescreen/base/ctrl/NtfMonitor;

    iget-object v1, v1, Lcom/htc/idlescreen/base/ctrl/BaseCtrl;->mBGHandler:Landroid/os/Handler;

    const/16 v8, 0x7d1

    invoke-static {v1, v8}, Lcom/htc/idlescreen/base/util/MyUtil;->removeMessage(Landroid/os/Handler;I)V

    .line 388
    iget-object v1, p0, Lcom/htc/idlescreen/base/ctrl/NtfMonitor$MyNtfReceiver;->this$0:Lcom/htc/idlescreen/base/ctrl/NtfMonitor;

    iget-object v1, v1, Lcom/htc/idlescreen/base/ctrl/BaseCtrl;->mBGHandler:Landroid/os/Handler;

    const-wide/16 v8, 0x1f4

    invoke-static {v1, v7, v8, v9}, Lcom/htc/idlescreen/base/util/MyUtil;->sendMessage(Landroid/os/Handler;Landroid/os/Message;J)V

    goto/16 :goto_0
.end method
