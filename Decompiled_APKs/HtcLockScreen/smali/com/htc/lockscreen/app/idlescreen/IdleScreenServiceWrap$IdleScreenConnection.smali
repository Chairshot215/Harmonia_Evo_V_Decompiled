.class public Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap$IdleScreenConnection;
.super Lcom/htc/lockscreen/idlescreen/IIdleScreenConnection$Stub;
.source "IdleScreenServiceWrap.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "IdleScreenConnection"
.end annotation


# instance fields
.field mEngine:Lcom/htc/lockscreen/idlescreen/IIdleScreenEngine;

.field mInfo:Lcom/htc/lockscreen/idlescreen/IdleScreenInfo;

.field mPid:I

.field mService:Lcom/htc/lockscreen/idlescreen/IIdleScreenService;

.field final mToken:Landroid/os/Binder;

.field final synthetic this$0:Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap;


# direct methods
.method public constructor <init>(Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap;Lcom/htc/lockscreen/idlescreen/IdleScreenInfo;)V
    .locals 3
    .parameter
    .parameter "info"

    .prologue
    .line 623
    iput-object p1, p0, Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap$IdleScreenConnection;->this$0:Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap;

    invoke-direct {p0}, Lcom/htc/lockscreen/idlescreen/IIdleScreenConnection$Stub;-><init>()V

    .line 618
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap$IdleScreenConnection;->mToken:Landroid/os/Binder;

    .line 621
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap$IdleScreenConnection;->mPid:I

    .line 624
    const-string v0, "IdleScreenServiceWrap"

    const-string v1, "IdleScreenConnection~"

    invoke-static {v0, v1}, Lcom/htc/lockscreen/app/debug/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 625
    const-string v0, "IdleScreenServiceWrap"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IdleScreenConnection~ isShowUnlock:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/htc/lockscreen/idlescreen/IdleScreenInfo;->isShowUnlock()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/lockscreen/app/debug/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 626
    const-string v0, "IdleScreenServiceWrap"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IdleScreenConnection~ getPackageName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/htc/lockscreen/idlescreen/IdleScreenInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/lockscreen/app/debug/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 627
    const-string v0, "IdleScreenServiceWrap"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IdleScreenConnection~ getServiceName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/htc/lockscreen/idlescreen/IdleScreenInfo;->getServiceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/lockscreen/app/debug/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 628
    iput-object p2, p0, Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap$IdleScreenConnection;->mInfo:Lcom/htc/lockscreen/idlescreen/IdleScreenInfo;

    .line 629
    return-void
.end method


# virtual methods
.method public attachEngine(Lcom/htc/lockscreen/idlescreen/IIdleScreenEngine;)V
    .locals 3
    .parameter "engine"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 722
    iget-object v0, p0, Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap$IdleScreenConnection;->this$0:Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap;

    #getter for: Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap;->access$000(Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 723
    :try_start_0
    invoke-static {}, Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap$IdleScreenConnection;->getCallingPid()I

    move-result v0

    iput v0, p0, Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap$IdleScreenConnection;->mPid:I

    .line 725
    iput-object p1, p0, Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap$IdleScreenConnection;->mEngine:Lcom/htc/lockscreen/idlescreen/IIdleScreenEngine;

    .line 728
    iget-object v0, p0, Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap$IdleScreenConnection;->this$0:Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap;

    #getter for: Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap;->mUIHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap;->access$100(Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap;)Landroid/os/Handler;

    move-result-object v0

    const/4 v2, 0x3

    invoke-static {v0, v2}, Lcom/htc/lockscreen/app/util/MyUtil;->removeMessage(Landroid/os/Handler;I)V

    .line 729
    iget-object v0, p0, Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap$IdleScreenConnection;->this$0:Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap;

    #getter for: Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap;->mUIHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap;->access$100(Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap;)Landroid/os/Handler;

    move-result-object v0

    const/4 v2, 0x3

    invoke-static {v0, v2}, Lcom/htc/lockscreen/app/util/MyUtil;->sendMessage(Landroid/os/Handler;I)V

    .line 730
    monitor-exit v1

    .line 731
    return-void

    .line 730
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public killIdlescreenProcess()V
    .locals 2

    .prologue
    .line 756
    monitor-enter p0

    .line 757
    :try_start_0
    iget v1, p0, Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap$IdleScreenConnection;->mPid:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lez v1, :cond_0

    .line 759
    :try_start_1
    iget v1, p0, Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap$IdleScreenConnection;->mPid:I

    invoke-static {v1}, Landroid/os/Process;->killProcess(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 764
    :goto_0
    const/4 v1, 0x0

    :try_start_2
    iput v1, p0, Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap$IdleScreenConnection;->mPid:I

    .line 784
    :cond_0
    monitor-exit p0

    .line 785
    return-void

    .line 760
    :catch_0
    move-exception v0

    .line 762
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 784
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 5
    .parameter "component"
    .parameter "service"

    .prologue
    .line 633
    iget-object v1, p0, Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap$IdleScreenConnection;->this$0:Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap;

    #getter for: Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap;->mLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap;->access$000(Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 634
    :try_start_0
    const-string v1, "IdleScreenServiceWrap"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onServiceConnected~ service:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " IdleScreenConnection:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " IdleScreenServiceWrap:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap$IdleScreenConnection;->this$0:Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/htc/lockscreen/app/debug/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 637
    iget-object v1, p0, Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap$IdleScreenConnection;->this$0:Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap;

    #getter for: Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap;->mUIHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap;->access$100(Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap;)Landroid/os/Handler;

    move-result-object v1

    const/4 v3, 0x4

    invoke-static {v1, v3}, Lcom/htc/lockscreen/app/util/MyUtil;->removeMessage(Landroid/os/Handler;I)V

    .line 638
    iget-object v1, p0, Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap$IdleScreenConnection;->this$0:Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap;

    #getter for: Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap;->mConnection:Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap$IdleScreenConnection;
    invoke-static {v1}, Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap;->access$200(Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap;)Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap$IdleScreenConnection;

    move-result-object v1

    if-eq p0, v1, :cond_1

    .line 639
    const-string v1, "IdleScreenServiceWrap"

    const-string v3, "delay connect"

    invoke-static {v1, v3}, Lcom/htc/lockscreen/app/debug/MyLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 641
    :try_start_1
    iget-object v1, p0, Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap$IdleScreenConnection;->mEngine:Lcom/htc/lockscreen/idlescreen/IIdleScreenEngine;

    if-eqz v1, :cond_0

    .line 642
    iget-object v1, p0, Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap$IdleScreenConnection;->mEngine:Lcom/htc/lockscreen/idlescreen/IIdleScreenEngine;

    invoke-interface {v1}, Lcom/htc/lockscreen/idlescreen/IIdleScreenEngine;->destroy()V

    .line 644
    :cond_0
    iget-object v1, p0, Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap$IdleScreenConnection;->this$0:Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap;

    #getter for: Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap;->access$300(Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 651
    :goto_0
    :try_start_2
    iget-object v1, p0, Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap$IdleScreenConnection;->this$0:Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap;

    #getter for: Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap;->mIWindowManager:Landroid/view/IWindowManager;
    invoke-static {v1}, Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap;->access$400(Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap;)Landroid/view/IWindowManager;

    move-result-object v1

    iget-object v3, p0, Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap$IdleScreenConnection;->mToken:Landroid/os/Binder;

    invoke-interface {v1, v3}, Landroid/view/IWindowManager;->removeWindowToken(Landroid/os/IBinder;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 656
    :goto_1
    :try_start_3
    monitor-exit v2

    .line 680
    :goto_2
    return-void

    .line 646
    :catch_0
    move-exception v0

    .line 647
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "IdleScreenServiceWrap"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "delay connect~ exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v0}, Lcom/htc/lockscreen/app/debug/MyLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0

    .line 678
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1

    .line 653
    :catch_1
    move-exception v0

    .line 654
    .restart local v0       #e:Ljava/lang/Exception;
    :try_start_4
    const-string v1, "IdleScreenServiceWrap"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "delay connect~ exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v0}, Lcom/htc/lockscreen/app/debug/MyLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1

    .line 658
    .end local v0           #e:Ljava/lang/Exception;
    :cond_1
    iget-object v1, p0, Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap$IdleScreenConnection;->this$0:Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap;

    #getter for: Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap;->mActive:Z
    invoke-static {v1}, Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap;->access$500(Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 659
    iget-object v1, p0, Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap$IdleScreenConnection;->this$0:Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap;

    #getter for: Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap;->mUIHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap;->access$100(Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap;)Landroid/os/Handler;

    move-result-object v1

    const/4 v3, 0x2

    invoke-static {v1, v3}, Lcom/htc/lockscreen/app/util/MyUtil;->removeMessage(Landroid/os/Handler;I)V

    .line 660
    invoke-static {p2}, Lcom/htc/lockscreen/idlescreen/IIdleScreenService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/htc/lockscreen/idlescreen/IIdleScreenService;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap$IdleScreenConnection;->mService:Lcom/htc/lockscreen/idlescreen/IIdleScreenService;

    .line 661
    iget-object v1, p0, Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap$IdleScreenConnection;->this$0:Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap;

    #calls: Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap;->attachServiceLocked(Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap$IdleScreenConnection;)V
    invoke-static {v1, p0}, Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap;->access$600(Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap;Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap$IdleScreenConnection;)V

    .line 662
    iget-object v1, p0, Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap$IdleScreenConnection;->this$0:Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap;

    sget-object v3, Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap$State;->CONNECTED:Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap$State;

    #setter for: Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap;->mState:Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap$State;
    invoke-static {v1, v3}, Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap;->access$702(Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap;Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap$State;)Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap$State;

    .line 678
    :cond_2
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 5
    .parameter "component"

    .prologue
    .line 685
    const-string v0, "IdleScreenServiceWrap"

    const-string v1, "onServiceDisconnected"

    invoke-static {v0, v1}, Lcom/htc/lockscreen/app/debug/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 686
    iget-object v0, p0, Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap$IdleScreenConnection;->this$0:Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap;

    #getter for: Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap;->access$000(Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 687
    :try_start_0
    const-string v0, "IdleScreenServiceWrap"

    const-string v2, "onServiceDisconnected go"

    invoke-static {v0, v2}, Lcom/htc/lockscreen/app/debug/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 688
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap$IdleScreenConnection;->mService:Lcom/htc/lockscreen/idlescreen/IIdleScreenService;

    .line 689
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap$IdleScreenConnection;->mEngine:Lcom/htc/lockscreen/idlescreen/IIdleScreenEngine;

    .line 690
    iget-object v0, p0, Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap$IdleScreenConnection;->this$0:Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap;

    #getter for: Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap;->mState:Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap$State;
    invoke-static {v0}, Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap;->access$700(Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap;)Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap$State;

    move-result-object v0

    sget-object v2, Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap$State;->CONNECTED:Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap$State;

    if-ne v0, v2, :cond_0

    .line 691
    iget-object v0, p0, Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap$IdleScreenConnection;->this$0:Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap;

    sget-object v2, Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap$State;->DISCONNECTED:Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap$State;

    #setter for: Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap;->mState:Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap$State;
    invoke-static {v0, v2}, Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap;->access$702(Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap;Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap$State;)Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap$State;

    .line 699
    :cond_0
    iget-object v0, p0, Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap$IdleScreenConnection;->this$0:Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap;

    #getter for: Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap;->mActive:Z
    invoke-static {v0}, Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap;->access$500(Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 700
    const-string v0, "IdleScreenServiceWrap"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "idleScreen service gone:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/htc/lockscreen/app/debug/MyLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 701
    iget-object v0, p0, Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap$IdleScreenConnection;->this$0:Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap;

    #getter for: Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap;->mUIHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap;->access$100(Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap;)Landroid/os/Handler;

    move-result-object v0

    const/4 v2, 0x2

    invoke-static {v0, v2}, Lcom/htc/lockscreen/app/util/MyUtil;->removeMessage(Landroid/os/Handler;I)V

    .line 702
    iget-object v0, p0, Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap$IdleScreenConnection;->this$0:Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap;

    #getter for: Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap;->mUIHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap;->access$100(Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap;)Landroid/os/Handler;

    move-result-object v0

    const/4 v2, 0x2

    const-wide/16 v3, 0x1f4

    invoke-static {v0, v2, v3, v4}, Lcom/htc/lockscreen/app/util/MyUtil;->sendMessage(Landroid/os/Handler;IJ)V

    .line 717
    :goto_0
    monitor-exit v1

    .line 718
    return-void

    .line 715
    :cond_1
    iget-object v0, p0, Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap$IdleScreenConnection;->this$0:Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap;

    const/4 v2, 0x0

    #setter for: Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap;->mListener:Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap$onServiceListener;
    invoke-static {v0, v2}, Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap;->access$802(Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap;Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap$onServiceListener;)Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap$onServiceListener;

    goto :goto_0

    .line 717
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public sendLockScreenCommand(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 7
    .parameter "action"
    .parameter "extra"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 736
    const-string v4, "IdleScreenServiceWrap"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sendLockScreenCommand action:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/lockscreen/app/debug/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 737
    const-string v4, "IdleScreenServiceWrap"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sendLockScreenCommand extra:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/lockscreen/app/debug/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 738
    const-string v4, "idleScreenReminderDismiss"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 739
    const-string v4, "Key_ReminderState"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 740
    .local v3, type:I
    const-string v4, "Key_ReminderId"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 741
    .local v0, id:J
    const-string v4, "IdleScreenServiceWrap"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sendLockScreenCommand~ dismiss type:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " id:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/lockscreen/app/debug/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 743
    .end local v0           #id:J
    .end local v3           #type:I
    :cond_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    .line 745
    .local v2, msg:Landroid/os/Message;
    const/4 v4, 0x1

    iput v4, v2, Landroid/os/Message;->what:I

    .line 746
    iput-object p1, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 747
    if-eqz p2, :cond_1

    .line 748
    invoke-virtual {v2, p2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 750
    :cond_1
    iget-object v4, p0, Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap$IdleScreenConnection;->this$0:Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap;

    #getter for: Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap;->mUIHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap;->access$100(Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap;)Landroid/os/Handler;

    move-result-object v4

    invoke-static {v4, v2}, Lcom/htc/lockscreen/app/util/MyUtil;->sendMessage(Landroid/os/Handler;Landroid/os/Message;)V

    .line 753
    return-void
.end method
