.class public Lcom/htc/clock/util/social/SocialNetworkCtrl;
.super Ljava/lang/Object;
.source "SocialNetworkCtrl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/clock/util/social/SocialNetworkCtrl$BGHandler;,
        Lcom/htc/clock/util/social/SocialNetworkCtrl$OnUpdateListener;,
        Lcom/htc/clock/util/social/SocialNetworkCtrl$State;
    }
.end annotation


# static fields
.field public static final ACTION_PLUGIN_COMPOSE_MESSAGE:Ljava/lang/String; = "com.htc.friendstream.intent.action.COMPOSE_MESSAGE"

.field public static final ACTION_UPDATE1:Ljava/lang/String; = "com.htc.friendstream.intent.action.COMPOSE_MESSAGE_RESPONSE"

.field public static final ACTION_UPDATE2:Ljava/lang/String; = "com.htc.friendstream.intent.action.SYNC_STREAM_RESPONSE"

.field public static final ACTION_UPDATE3:Ljava/lang/String; = "com.htc.socialnetwork.facebook.UPDATE_COMMENT_COUNT_END"

.field public static final ACTION_UPDATE4:Ljava/lang/String; = "android.accounts.LOGIN_ACCOUNTS_CHANGED"

.field public static final FEATURE_NAME_FRIENDSTREAM_ADAPTER:Ljava/lang/String; = "AddFriendStreamAdapter"

.field public static final METADATA_PLUGIN_ACCOUNT_TYPE:Ljava/lang/String; = "com.htc.friendstream.intent.metadata.ACCOUNT_TYPE"

.field public static final WHAT_ON_UPDATE:I = 0x1


# instance fields
.field private mBGHandler:Landroid/os/Handler;

.field private mBGLooper:Landroid/os/Looper;

.field private mCallbackHandler:Landroid/os/Handler;

.field mContext:Landroid/content/Context;

.field private mIsDestroyed:Z

.field private mIsLoggedin:Z

.field private mListener:Lcom/htc/clock/util/social/SocialNetworkCtrl$OnUpdateListener;

.field mState:Lcom/htc/clock/util/social/SocialNetworkCtrl$State;

.field private mUpdateReceiver:Landroid/content/BroadcastReceiver;

.field private mUpdateRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 15
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 31
    sget-object v0, Lcom/htc/clock/util/social/SocialNetworkCtrl$State;->STOP:Lcom/htc/clock/util/social/SocialNetworkCtrl$State;

    iput-object v0, p0, Lcom/htc/clock/util/social/SocialNetworkCtrl;->mState:Lcom/htc/clock/util/social/SocialNetworkCtrl$State;

    .line 38
    iput-boolean v1, p0, Lcom/htc/clock/util/social/SocialNetworkCtrl;->mIsDestroyed:Z

    .line 39
    iput-boolean v1, p0, Lcom/htc/clock/util/social/SocialNetworkCtrl;->mIsLoggedin:Z

    .line 73
    new-instance v0, Lcom/htc/clock/util/social/SocialNetworkCtrl$1;

    invoke-direct {v0, p0}, Lcom/htc/clock/util/social/SocialNetworkCtrl$1;-><init>(Lcom/htc/clock/util/social/SocialNetworkCtrl;)V

    iput-object v0, p0, Lcom/htc/clock/util/social/SocialNetworkCtrl;->mUpdateRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/htc/clock/util/social/SocialNetworkCtrl;Landroid/content/Context;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lcom/htc/clock/util/social/SocialNetworkCtrl;->update(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$100(Lcom/htc/clock/util/social/SocialNetworkCtrl;)Lcom/htc/clock/util/social/SocialNetworkCtrl$OnUpdateListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 15
    iget-object v0, p0, Lcom/htc/clock/util/social/SocialNetworkCtrl;->mListener:Lcom/htc/clock/util/social/SocialNetworkCtrl$OnUpdateListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/clock/util/social/SocialNetworkCtrl;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lcom/htc/clock/util/social/SocialNetworkCtrl;->removeBGMsg(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/htc/clock/util/social/SocialNetworkCtrl;IJ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 15
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/clock/util/social/SocialNetworkCtrl;->sendBGMsg(IJ)V

    return-void
.end method

.method private initBGHandlerLocked(Landroid/os/Handler;)V
    .locals 3
    .parameter "bgHandler"

    .prologue
    .line 128
    iget-object v2, p0, Lcom/htc/clock/util/social/SocialNetworkCtrl;->mBGHandler:Landroid/os/Handler;

    if-eqz v2, :cond_0

    .line 142
    :goto_0
    return-void

    .line 131
    :cond_0
    const/4 v0, 0x0

    .line 132
    .local v0, looper:Landroid/os/Looper;
    if-eqz p1, :cond_1

    .line 133
    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 135
    :cond_1
    if-nez v0, :cond_2

    .line 136
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "SocialNetworkCtrl"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 137
    .local v1, thread:Landroid/os/HandlerThread;
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 138
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/clock/util/social/SocialNetworkCtrl;->mBGLooper:Landroid/os/Looper;

    .line 139
    iget-object v0, p0, Lcom/htc/clock/util/social/SocialNetworkCtrl;->mBGLooper:Landroid/os/Looper;

    .line 141
    .end local v1           #thread:Landroid/os/HandlerThread;
    :cond_2
    new-instance v2, Lcom/htc/clock/util/social/SocialNetworkCtrl$BGHandler;

    invoke-direct {v2, p0, v0}, Lcom/htc/clock/util/social/SocialNetworkCtrl$BGHandler;-><init>(Lcom/htc/clock/util/social/SocialNetworkCtrl;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/htc/clock/util/social/SocialNetworkCtrl;->mBGHandler:Landroid/os/Handler;

    goto :goto_0
.end method

.method private registerReceiverLocked()V
    .locals 3

    .prologue
    .line 145
    monitor-enter p0

    .line 146
    :try_start_0
    iget-object v1, p0, Lcom/htc/clock/util/social/SocialNetworkCtrl;->mUpdateReceiver:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_0

    .line 147
    new-instance v1, Lcom/htc/clock/util/social/SocialNetworkCtrl$2;

    invoke-direct {v1, p0}, Lcom/htc/clock/util/social/SocialNetworkCtrl$2;-><init>(Lcom/htc/clock/util/social/SocialNetworkCtrl;)V

    iput-object v1, p0, Lcom/htc/clock/util/social/SocialNetworkCtrl;->mUpdateReceiver:Landroid/content/BroadcastReceiver;

    .line 158
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 159
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "com.htc.friendstream.intent.action.COMPOSE_MESSAGE_RESPONSE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 160
    const-string v1, "com.htc.friendstream.intent.action.SYNC_STREAM_RESPONSE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 161
    const-string v1, "com.htc.socialnetwork.facebook.UPDATE_COMMENT_COUNT_END"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 162
    const-string v1, "android.accounts.LOGIN_ACCOUNTS_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 163
    iget-object v1, p0, Lcom/htc/clock/util/social/SocialNetworkCtrl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/htc/clock/util/social/SocialNetworkCtrl;->mUpdateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 165
    .end local v0           #filter:Landroid/content/IntentFilter;
    :cond_0
    monitor-exit p0

    .line 166
    return-void

    .line 165
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private removeBGMsg(I)V
    .locals 1
    .parameter "what"

    .prologue
    .line 178
    iget-object v0, p0, Lcom/htc/clock/util/social/SocialNetworkCtrl;->mBGHandler:Landroid/os/Handler;

    .line 179
    .local v0, handler:Landroid/os/Handler;
    if-eqz v0, :cond_0

    .line 180
    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 182
    :cond_0
    return-void
.end method

.method private sendBGMsg(IJ)V
    .locals 3
    .parameter "what"
    .parameter "delay"

    .prologue
    .line 185
    iget-object v0, p0, Lcom/htc/clock/util/social/SocialNetworkCtrl;->mBGHandler:Landroid/os/Handler;

    .line 186
    .local v0, handler:Landroid/os/Handler;
    if-eqz v0, :cond_0

    .line 187
    const-wide/16 v1, 0x0

    cmp-long v1, p2, v1

    if-lez v1, :cond_1

    .line 188
    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 193
    :cond_0
    :goto_0
    return-void

    .line 190
    :cond_1
    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method private unregisterReceiverLocked()V
    .locals 2

    .prologue
    .line 169
    monitor-enter p0

    .line 170
    :try_start_0
    iget-object v0, p0, Lcom/htc/clock/util/social/SocialNetworkCtrl;->mUpdateReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/htc/clock/util/social/SocialNetworkCtrl;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/htc/clock/util/social/SocialNetworkCtrl;->mUpdateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 172
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/clock/util/social/SocialNetworkCtrl;->mUpdateReceiver:Landroid/content/BroadcastReceiver;

    .line 174
    :cond_0
    monitor-exit p0

    .line 175
    return-void

    .line 174
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private update(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/htc/clock/util/social/SocialNetworkCtrl;->mIsDestroyed:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_1

    .line 65
    :cond_0
    :goto_0
    return-void

    .line 60
    :cond_1
    invoke-static {p1}, Lcom/htc/clock/util/social/SocialNetworkUtil;->isLoggedIn(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/htc/clock/util/social/SocialNetworkCtrl;->mIsLoggedin:Z

    .line 61
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/htc/clock/util/social/SocialNetworkResolver;->getLastMessage(Landroid/content/Context;Z)Lcom/htc/clock/util/social/SocialData;

    .line 63
    iget-object v0, p0, Lcom/htc/clock/util/social/SocialNetworkCtrl;->mCallbackHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/clock/util/social/SocialNetworkCtrl;->mUpdateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 64
    iget-object v0, p0, Lcom/htc/clock/util/social/SocialNetworkCtrl;->mCallbackHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/clock/util/social/SocialNetworkCtrl;->mUpdateRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method


# virtual methods
.method public getLastSocialData()Lcom/htc/clock/util/social/SocialData;
    .locals 2

    .prologue
    .line 85
    iget-object v0, p0, Lcom/htc/clock/util/social/SocialNetworkCtrl;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/htc/clock/util/social/SocialNetworkResolver;->getLastMessage(Landroid/content/Context;Z)Lcom/htc/clock/util/social/SocialData;

    move-result-object v0

    return-object v0
.end method

.method public getState()Lcom/htc/clock/util/social/SocialNetworkCtrl$State;
    .locals 1

    .prologue
    .line 196
    monitor-enter p0

    .line 197
    :try_start_0
    iget-object v0, p0, Lcom/htc/clock/util/social/SocialNetworkCtrl;->mState:Lcom/htc/clock/util/social/SocialNetworkCtrl$State;

    monitor-exit p0

    return-object v0

    .line 198
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public init(Landroid/content/Context;Lcom/htc/clock/util/social/SocialNetworkCtrl$OnUpdateListener;Landroid/os/Handler;Landroid/os/Handler;)V
    .locals 3
    .parameter "context"
    .parameter "listener"
    .parameter "callbackHanler"
    .parameter "bgHandler"

    .prologue
    .line 94
    monitor-enter p0

    .line 95
    :try_start_0
    iget-boolean v0, p0, Lcom/htc/clock/util/social/SocialNetworkCtrl;->mIsDestroyed:Z

    if-eqz v0, :cond_0

    .line 96
    const-string v0, "SocialNetworkCtrl init after destroyed"

    invoke-static {v0}, Lcom/htc/clock/util/MyLog;->e(Ljava/lang/String;)V

    .line 97
    monitor-exit p0

    .line 110
    :goto_0
    return-void

    .line 99
    :cond_0
    sget-object v0, Lcom/htc/clock/util/social/SocialNetworkCtrl$State;->START:Lcom/htc/clock/util/social/SocialNetworkCtrl$State;

    iput-object v0, p0, Lcom/htc/clock/util/social/SocialNetworkCtrl;->mState:Lcom/htc/clock/util/social/SocialNetworkCtrl$State;

    .line 100
    iput-object p1, p0, Lcom/htc/clock/util/social/SocialNetworkCtrl;->mContext:Landroid/content/Context;

    .line 101
    iput-object p3, p0, Lcom/htc/clock/util/social/SocialNetworkCtrl;->mCallbackHandler:Landroid/os/Handler;

    .line 102
    iput-object p2, p0, Lcom/htc/clock/util/social/SocialNetworkCtrl;->mListener:Lcom/htc/clock/util/social/SocialNetworkCtrl$OnUpdateListener;

    .line 103
    invoke-static {p1}, Lcom/htc/clock/util/social/SocialNetworkUtil;->isLoggedIn(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/htc/clock/util/social/SocialNetworkCtrl;->mIsLoggedin:Z

    .line 104
    invoke-direct {p0}, Lcom/htc/clock/util/social/SocialNetworkCtrl;->registerReceiverLocked()V

    .line 105
    invoke-direct {p0, p4}, Lcom/htc/clock/util/social/SocialNetworkCtrl;->initBGHandlerLocked(Landroid/os/Handler;)V

    .line 107
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/htc/clock/util/social/SocialNetworkCtrl;->removeBGMsg(I)V

    .line 108
    const/4 v0, 0x1

    const-wide/16 v1, 0x1f4

    invoke-direct {p0, v0, v1, v2}, Lcom/htc/clock/util/social/SocialNetworkCtrl;->sendBGMsg(IJ)V

    .line 109
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isLoggedIn()Z
    .locals 1

    .prologue
    .line 89
    iget-boolean v0, p0, Lcom/htc/clock/util/social/SocialNetworkCtrl;->mIsLoggedin:Z

    return v0
.end method

.method public uninit()V
    .locals 1

    .prologue
    .line 113
    monitor-enter p0

    .line 114
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/htc/clock/util/social/SocialNetworkCtrl;->mIsDestroyed:Z

    .line 115
    sget-object v0, Lcom/htc/clock/util/social/SocialNetworkCtrl$State;->STOP:Lcom/htc/clock/util/social/SocialNetworkCtrl$State;

    iput-object v0, p0, Lcom/htc/clock/util/social/SocialNetworkCtrl;->mState:Lcom/htc/clock/util/social/SocialNetworkCtrl$State;

    .line 116
    invoke-direct {p0}, Lcom/htc/clock/util/social/SocialNetworkCtrl;->unregisterReceiverLocked()V

    .line 117
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/htc/clock/util/social/SocialNetworkCtrl;->removeBGMsg(I)V

    .line 118
    iget-object v0, p0, Lcom/htc/clock/util/social/SocialNetworkCtrl;->mBGLooper:Landroid/os/Looper;

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/htc/clock/util/social/SocialNetworkCtrl;->mBGLooper:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 120
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/clock/util/social/SocialNetworkCtrl;->mBGLooper:Landroid/os/Looper;

    .line 122
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/clock/util/social/SocialNetworkCtrl;->mBGHandler:Landroid/os/Handler;

    .line 123
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/clock/util/social/SocialNetworkCtrl;->mListener:Lcom/htc/clock/util/social/SocialNetworkCtrl$OnUpdateListener;

    .line 124
    monitor-exit p0

    .line 125
    return-void

    .line 124
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public updateIsLoggedIn()Z
    .locals 2

    .prologue
    .line 68
    iget-boolean v0, p0, Lcom/htc/clock/util/social/SocialNetworkCtrl;->mIsLoggedin:Z

    .line 69
    .local v0, old:Z
    iget-object v1, p0, Lcom/htc/clock/util/social/SocialNetworkCtrl;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/htc/clock/util/social/SocialNetworkUtil;->isLoggedIn(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/htc/clock/util/social/SocialNetworkCtrl;->mIsLoggedin:Z

    .line 70
    iget-boolean v1, p0, Lcom/htc/clock/util/social/SocialNetworkCtrl;->mIsLoggedin:Z

    if-eq v0, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
