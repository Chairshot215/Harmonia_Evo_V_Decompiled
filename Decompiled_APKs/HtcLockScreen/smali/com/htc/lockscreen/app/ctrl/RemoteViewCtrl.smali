.class public Lcom/htc/lockscreen/app/ctrl/RemoteViewCtrl;
.super Lcom/htc/lockscreen/app/ctrl/BaseCtrl;
.source "RemoteViewCtrl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/lockscreen/app/ctrl/RemoteViewCtrl$1;,
        Lcom/htc/lockscreen/app/ctrl/RemoteViewCtrl$RemoteViewReceiver;
    }
.end annotation


# static fields
.field private static final LOG_PREFIX:Ljava/lang/String; = "RemoteViewCtrl"

.field public static final NOTIFY_VIEW_UPDATE:I = 0x1


# instance fields
.field mEventReceiver:Landroid/content/BroadcastReceiver;

.field public mViewList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/lockscreen/app/ctrl/IdlePubViewWrap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/htc/lockscreen/app/ctrl/BaseCtrl;-><init>()V

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/lockscreen/app/ctrl/RemoteViewCtrl;->mViewList:Ljava/util/List;

    .line 69
    return-void
.end method

.method private _removeIdleView(Ljava/lang/String;I)Lcom/htc/lockscreen/app/ctrl/IdlePubViewWrap;
    .locals 5
    .parameter "packageName"
    .parameter "id"

    .prologue
    const/4 v2, 0x0

    .line 153
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-gtz v3, :cond_1

    :cond_0
    move-object v1, v2

    .line 169
    :goto_0
    return-object v1

    .line 156
    :cond_1
    iget-object v3, p0, Lcom/htc/lockscreen/app/ctrl/RemoteViewCtrl;->mViewList:Ljava/util/List;

    monitor-enter v3

    .line 157
    :try_start_0
    iget-object v4, p0, Lcom/htc/lockscreen/app/ctrl/RemoteViewCtrl;->mViewList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 158
    .local v0, i:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/htc/lockscreen/app/ctrl/IdlePubViewWrap;>;"
    const/4 v1, 0x0

    .line 159
    .local v1, idleView:Lcom/htc/lockscreen/app/ctrl/IdlePubViewWrap;
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 160
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .end local v1           #idleView:Lcom/htc/lockscreen/app/ctrl/IdlePubViewWrap;
    check-cast v1, Lcom/htc/lockscreen/app/ctrl/IdlePubViewWrap;

    .line 161
    .restart local v1       #idleView:Lcom/htc/lockscreen/app/ctrl/IdlePubViewWrap;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/htc/lockscreen/app/ctrl/IdlePubViewWrap;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v1}, Lcom/htc/lockscreen/app/ctrl/IdlePubViewWrap;->getId()I

    move-result v4

    if-ne p2, v4, :cond_2

    .line 165
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 166
    monitor-exit v3

    goto :goto_0

    .line 170
    .end local v0           #i:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/htc/lockscreen/app/ctrl/IdlePubViewWrap;>;"
    .end local v1           #idleView:Lcom/htc/lockscreen/app/ctrl/IdlePubViewWrap;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 169
    .restart local v0       #i:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/htc/lockscreen/app/ctrl/IdlePubViewWrap;>;"
    .restart local v1       #idleView:Lcom/htc/lockscreen/app/ctrl/IdlePubViewWrap;
    :cond_3
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v1, v2

    goto :goto_0
.end method

.method static synthetic access$100(Lcom/htc/lockscreen/app/ctrl/RemoteViewCtrl;Ljava/lang/String;ILcom/htc/lockscreen/idlescreen/pub/IdlePubView;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 21
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/lockscreen/app/ctrl/RemoteViewCtrl;->addView(Ljava/lang/String;ILcom/htc/lockscreen/idlescreen/pub/IdlePubView;)V

    return-void
.end method

.method private addIdleView(Lcom/htc/lockscreen/app/ctrl/IdlePubViewWrap;)V
    .locals 10
    .parameter "idleView"

    .prologue
    .line 117
    if-nez p1, :cond_0

    .line 141
    :goto_0
    return-void

    .line 120
    :cond_0
    iget-object v7, p0, Lcom/htc/lockscreen/app/ctrl/RemoteViewCtrl;->mViewList:Ljava/util/List;

    monitor-enter v7

    .line 121
    :try_start_0
    invoke-virtual {p1}, Lcom/htc/lockscreen/app/ctrl/IdlePubViewWrap;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 122
    .local v5, packageName:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/htc/lockscreen/app/ctrl/IdlePubViewWrap;->getId()I

    move-result v1

    .line 123
    .local v1, id:I
    const-string v6, "RemoteViewCtrl"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "addIdleView~ getPackageName:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/htc/lockscreen/app/debug/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    const-string v6, "RemoteViewCtrl"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "addIdleView~ getId:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/htc/lockscreen/app/debug/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    invoke-virtual {p1}, Lcom/htc/lockscreen/app/ctrl/IdlePubViewWrap;->getOrder()I

    move-result v4

    .line 126
    .local v4, order:I
    invoke-direct {p0, v5, v1}, Lcom/htc/lockscreen/app/ctrl/RemoteViewCtrl;->_removeIdleView(Ljava/lang/String;I)Lcom/htc/lockscreen/app/ctrl/IdlePubViewWrap;

    .line 128
    iget-object v6, p0, Lcom/htc/lockscreen/app/ctrl/RemoteViewCtrl;->mViewList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 129
    .local v0, i:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/htc/lockscreen/app/ctrl/IdlePubViewWrap;>;"
    const/4 v3, 0x0

    .line 130
    .local v3, lsViewInList:Lcom/htc/lockscreen/app/ctrl/IdlePubViewWrap;
    const/4 v2, 0x0

    .line 131
    .local v2, index:I
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 132
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .end local v3           #lsViewInList:Lcom/htc/lockscreen/app/ctrl/IdlePubViewWrap;
    check-cast v3, Lcom/htc/lockscreen/app/ctrl/IdlePubViewWrap;

    .line 133
    .restart local v3       #lsViewInList:Lcom/htc/lockscreen/app/ctrl/IdlePubViewWrap;
    invoke-virtual {v3}, Lcom/htc/lockscreen/app/ctrl/IdlePubViewWrap;->getOrder()I

    move-result v6

    if-lt v4, v6, :cond_2

    .line 138
    :cond_1
    iget-object v6, p0, Lcom/htc/lockscreen/app/ctrl/RemoteViewCtrl;->mViewList:Ljava/util/List;

    invoke-interface {v6, v2, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 139
    iget-object v6, p0, Lcom/htc/lockscreen/app/ctrl/BaseCtrl;->mContext:Landroid/content/Context;

    const/4 v8, 0x1

    invoke-virtual {p1, v6, v8}, Lcom/htc/lockscreen/app/ctrl/IdlePubViewWrap;->onUpdate(Landroid/content/Context;I)V

    .line 140
    monitor-exit v7

    goto :goto_0

    .end local v0           #i:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/htc/lockscreen/app/ctrl/IdlePubViewWrap;>;"
    .end local v1           #id:I
    .end local v2           #index:I
    .end local v3           #lsViewInList:Lcom/htc/lockscreen/app/ctrl/IdlePubViewWrap;
    .end local v4           #order:I
    .end local v5           #packageName:Ljava/lang/String;
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .line 136
    .restart local v0       #i:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/htc/lockscreen/app/ctrl/IdlePubViewWrap;>;"
    .restart local v1       #id:I
    .restart local v2       #index:I
    .restart local v3       #lsViewInList:Lcom/htc/lockscreen/app/ctrl/IdlePubViewWrap;
    .restart local v4       #order:I
    .restart local v5       #packageName:Ljava/lang/String;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private addView(Ljava/lang/String;ILcom/htc/lockscreen/idlescreen/pub/IdlePubView;)V
    .locals 4
    .parameter "packageName"
    .parameter "id"
    .parameter "idleView"

    .prologue
    const/4 v3, 0x1

    .line 95
    iget-object v2, p0, Lcom/htc/lockscreen/app/ctrl/BaseCtrl;->mContext:Landroid/content/Context;

    invoke-static {v2, v3}, Lcom/htc/lockscreen/app/util/WakeLockUtil;->remoteWakeLock(Landroid/content/Context;Z)V

    .line 97
    :try_start_0
    new-instance v1, Lcom/htc/lockscreen/app/ctrl/IdlePubViewWrap;

    invoke-direct {v1, p1, p2, p3}, Lcom/htc/lockscreen/app/ctrl/IdlePubViewWrap;-><init>(Ljava/lang/String;ILcom/htc/lockscreen/idlescreen/pub/IdlePubView;)V

    .line 98
    .local v1, idleViewWrap:Lcom/htc/lockscreen/app/ctrl/IdlePubViewWrap;
    if-eqz p3, :cond_0

    .line 99
    invoke-static {}, Lcom/htc/lockscreen/app/LSState;->getInstance()Lcom/htc/lockscreen/app/LSState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/lockscreen/app/LSState;->isShow()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 100
    invoke-direct {p0, v1}, Lcom/htc/lockscreen/app/ctrl/RemoteViewCtrl;->addIdleView(Lcom/htc/lockscreen/app/ctrl/IdlePubViewWrap;)V

    .line 101
    const/4 v2, 0x1

    invoke-virtual {p0, v2, v1}, Lcom/htc/lockscreen/app/ctrl/RemoteViewCtrl;->notifyLister(ILjava/lang/Object;)V

    .line 114
    .end local v1           #idleViewWrap:Lcom/htc/lockscreen/app/ctrl/IdlePubViewWrap;
    :cond_0
    :goto_0
    return-void

    .line 104
    .restart local v1       #idleViewWrap:Lcom/htc/lockscreen/app/ctrl/IdlePubViewWrap;
    :cond_1
    iget-object v2, p0, Lcom/htc/lockscreen/app/ctrl/BaseCtrl;->mContext:Landroid/content/Context;

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Lcom/htc/lockscreen/app/ctrl/IdlePubViewWrap;->onUpdate(Landroid/content/Context;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 108
    .end local v1           #idleViewWrap:Lcom/htc/lockscreen/app/ctrl/IdlePubViewWrap;
    :catch_0
    move-exception v0

    .line 109
    .local v0, e:Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 111
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    throw v2
.end method

.method private register()V
    .locals 3

    .prologue
    .line 52
    iget-object v1, p0, Lcom/htc/lockscreen/app/ctrl/RemoteViewCtrl;->mEventReceiver:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_0

    .line 53
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 54
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "HtcLockScreenSetView_P"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 55
    const-string v1, "HtcLockScreenRemoveView"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 57
    new-instance v1, Lcom/htc/lockscreen/app/ctrl/RemoteViewCtrl$RemoteViewReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/htc/lockscreen/app/ctrl/RemoteViewCtrl$RemoteViewReceiver;-><init>(Lcom/htc/lockscreen/app/ctrl/RemoteViewCtrl;Lcom/htc/lockscreen/app/ctrl/RemoteViewCtrl$1;)V

    iput-object v1, p0, Lcom/htc/lockscreen/app/ctrl/RemoteViewCtrl;->mEventReceiver:Landroid/content/BroadcastReceiver;

    .line 58
    iget-object v1, p0, Lcom/htc/lockscreen/app/ctrl/BaseCtrl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/htc/lockscreen/app/ctrl/RemoteViewCtrl;->mEventReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 60
    .end local v0           #filter:Landroid/content/IntentFilter;
    :cond_0
    return-void
.end method

.method private unRegister()V
    .locals 2

    .prologue
    .line 63
    iget-object v0, p0, Lcom/htc/lockscreen/app/ctrl/RemoteViewCtrl;->mEventReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/htc/lockscreen/app/ctrl/BaseCtrl;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/htc/lockscreen/app/ctrl/RemoteViewCtrl;->mEventReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 65
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/lockscreen/app/ctrl/RemoteViewCtrl;->mEventReceiver:Landroid/content/BroadcastReceiver;

    .line 67
    :cond_0
    return-void
.end method


# virtual methods
.method public getCurrentView()Lcom/htc/lockscreen/app/ctrl/IdlePubViewWrap;
    .locals 7

    .prologue
    .line 190
    iget-object v4, p0, Lcom/htc/lockscreen/app/ctrl/RemoteViewCtrl;->mViewList:Ljava/util/List;

    monitor-enter v4

    .line 192
    :try_start_0
    iget-object v3, p0, Lcom/htc/lockscreen/app/ctrl/RemoteViewCtrl;->mViewList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 193
    .local v1, i:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/htc/lockscreen/app/ctrl/IdlePubViewWrap;>;"
    const/4 v2, 0x0

    .line 194
    .local v2, idleView:Lcom/htc/lockscreen/app/ctrl/IdlePubViewWrap;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 195
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .end local v2           #idleView:Lcom/htc/lockscreen/app/ctrl/IdlePubViewWrap;
    check-cast v2, Lcom/htc/lockscreen/app/ctrl/IdlePubViewWrap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 196
    .restart local v2       #idleView:Lcom/htc/lockscreen/app/ctrl/IdlePubViewWrap;
    if-eqz v2, :cond_0

    .line 197
    :try_start_1
    monitor-exit v4

    .line 206
    .end local v1           #i:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/htc/lockscreen/app/ctrl/IdlePubViewWrap;>;"
    .end local v2           #idleView:Lcom/htc/lockscreen/app/ctrl/IdlePubViewWrap;
    :goto_0
    return-object v2

    .line 201
    :catch_0
    move-exception v0

    .line 202
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "RemoteViewCtrl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getCurrentView:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/htc/lockscreen/app/debug/MyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 205
    .end local v0           #e:Ljava/lang/Exception;
    :cond_1
    monitor-exit v4

    .line 206
    const/4 v2, 0x0

    goto :goto_0

    .line 205
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method protected handleMessageBG(Landroid/os/Message;)V
    .locals 0
    .parameter "msg"

    .prologue
    .line 43
    return-void
.end method

.method protected handleMessageUI(Landroid/os/Message;)V
    .locals 0
    .parameter "msg"

    .prologue
    .line 49
    return-void
.end method

.method public removeAll()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 174
    iget-object v3, p0, Lcom/htc/lockscreen/app/ctrl/RemoteViewCtrl;->mViewList:Ljava/util/List;

    monitor-enter v3

    .line 175
    :try_start_0
    iget-object v2, p0, Lcom/htc/lockscreen/app/ctrl/RemoteViewCtrl;->mViewList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 176
    .local v0, i:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/htc/lockscreen/app/ctrl/IdlePubViewWrap;>;"
    const/4 v1, 0x0

    .line 177
    .local v1, idleView:Lcom/htc/lockscreen/app/ctrl/IdlePubViewWrap;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 178
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .end local v1           #idleView:Lcom/htc/lockscreen/app/ctrl/IdlePubViewWrap;
    check-cast v1, Lcom/htc/lockscreen/app/ctrl/IdlePubViewWrap;

    .line 179
    .restart local v1       #idleView:Lcom/htc/lockscreen/app/ctrl/IdlePubViewWrap;
    if-eqz v1, :cond_0

    .line 180
    invoke-virtual {v1}, Lcom/htc/lockscreen/app/ctrl/IdlePubViewWrap;->cleanup()V

    .line 181
    iget-object v2, p0, Lcom/htc/lockscreen/app/ctrl/BaseCtrl;->mContext:Landroid/content/Context;

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v4}, Lcom/htc/lockscreen/app/ctrl/IdlePubViewWrap;->onRemove(Landroid/content/Context;I)V

    .line 183
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 185
    .end local v0           #i:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/htc/lockscreen/app/ctrl/IdlePubViewWrap;>;"
    .end local v1           #idleView:Lcom/htc/lockscreen/app/ctrl/IdlePubViewWrap;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v0       #i:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/htc/lockscreen/app/ctrl/IdlePubViewWrap;>;"
    .restart local v1       #idleView:Lcom/htc/lockscreen/app/ctrl/IdlePubViewWrap;
    :cond_1
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 186
    const/4 v2, 0x0

    invoke-virtual {p0, v5, v2}, Lcom/htc/lockscreen/app/ctrl/RemoteViewCtrl;->notifyLister(ILjava/lang/Object;)V

    .line 187
    return-void
.end method

.method public removeIdleView(Ljava/lang/String;I)Lcom/htc/lockscreen/app/ctrl/IdlePubViewWrap;
    .locals 3
    .parameter "packageName"
    .parameter "id"

    .prologue
    const/4 v2, 0x1

    .line 144
    invoke-direct {p0, p1, p2}, Lcom/htc/lockscreen/app/ctrl/RemoteViewCtrl;->_removeIdleView(Ljava/lang/String;I)Lcom/htc/lockscreen/app/ctrl/IdlePubViewWrap;

    move-result-object v0

    .line 145
    .local v0, removeView:Lcom/htc/lockscreen/app/ctrl/IdlePubViewWrap;
    if-eqz v0, :cond_0

    .line 146
    iget-object v1, p0, Lcom/htc/lockscreen/app/ctrl/BaseCtrl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, v2}, Lcom/htc/lockscreen/app/ctrl/IdlePubViewWrap;->onRemove(Landroid/content/Context;I)V

    .line 147
    const/4 v1, 0x0

    invoke-virtual {p0, v2, v1}, Lcom/htc/lockscreen/app/ctrl/RemoteViewCtrl;->notifyLister(ILjava/lang/Object;)V

    .line 149
    :cond_0
    return-object v0
.end method

.method protected startCtrl()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/htc/lockscreen/app/ctrl/RemoteViewCtrl;->register()V

    .line 31
    return-void
.end method

.method protected stopCtrl()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/htc/lockscreen/app/ctrl/RemoteViewCtrl;->unRegister()V

    .line 37
    return-void
.end method
