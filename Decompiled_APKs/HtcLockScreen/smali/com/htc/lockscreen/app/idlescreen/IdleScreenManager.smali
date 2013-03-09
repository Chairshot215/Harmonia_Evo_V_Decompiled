.class public Lcom/htc/lockscreen/app/idlescreen/IdleScreenManager;
.super Ljava/lang/Object;
.source "IdleScreenManager.java"

# interfaces
.implements Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap$onServiceListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/lockscreen/app/idlescreen/IdleScreenManager$1;,
        Lcom/htc/lockscreen/app/idlescreen/IdleScreenManager$MyUIHandler;,
        Lcom/htc/lockscreen/app/idlescreen/IdleScreenManager$State;
    }
.end annotation


# static fields
.field private static final LOG_PREFIX:Ljava/lang/String; = "IdleScreenManager"

.field private static final TIMEOUT_VALUE:I = 0x4e20

.field private static final WHAT_UI_CLEAR_IDLESCREEN:I = 0x2

.field private static final WHAT_UI_IDLESCREEN_RECONNECT:I = 0x6

.field private static final WHAT_UI_IDLESCREEN_SET_VISIBLE:I = 0x3

.field private static final WHAT_UI_IDLESCREEN_TIMEOUT:I = 0x5

.field private static final WHAT_UI_SET_IDLESCREEN:I = 0x1


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCurISService:Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap;

.field private mNeedReconnect:Z

.field private mNextIdleComp:Landroid/content/ComponentName;

.field private mSetting:Lcom/htc/lockscreen/app/idlescreen/IdleScreenSetting;

.field private mShow:Z

.field private mState:Lcom/htc/lockscreen/app/idlescreen/IdleScreenManager$State;

.field private mUIHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 72
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 63
    sget-object v0, Lcom/htc/lockscreen/app/idlescreen/IdleScreenManager$State;->NONE:Lcom/htc/lockscreen/app/idlescreen/IdleScreenManager$State;

    iput-object v0, p0, Lcom/htc/lockscreen/app/idlescreen/IdleScreenManager;->mState:Lcom/htc/lockscreen/app/idlescreen/IdleScreenManager$State;

    .line 65
    iput-boolean v1, p0, Lcom/htc/lockscreen/app/idlescreen/IdleScreenManager;->mShow:Z

    .line 66
    iput-boolean v1, p0, Lcom/htc/lockscreen/app/idlescreen/IdleScreenManager;->mNeedReconnect:Z

    .line 67
    new-instance v0, Lcom/htc/lockscreen/app/idlescreen/IdleScreenSetting;

    invoke-direct {v0}, Lcom/htc/lockscreen/app/idlescreen/IdleScreenSetting;-><init>()V

    iput-object v0, p0, Lcom/htc/lockscreen/app/idlescreen/IdleScreenManager;->mSetting:Lcom/htc/lockscreen/app/idlescreen/IdleScreenSetting;

    .line 69
    new-instance v0, Lcom/htc/lockscreen/app/idlescreen/IdleScreenManager$MyUIHandler;

    invoke-direct {v0, p0, v2}, Lcom/htc/lockscreen/app/idlescreen/IdleScreenManager$MyUIHandler;-><init>(Lcom/htc/lockscreen/app/idlescreen/IdleScreenManager;Lcom/htc/lockscreen/app/idlescreen/IdleScreenManager$1;)V

    iput-object v0, p0, Lcom/htc/lockscreen/app/idlescreen/IdleScreenManager;->mUIHandler:Landroid/os/Handler;

    .line 71
    iput-object v2, p0, Lcom/htc/lockscreen/app/idlescreen/IdleScreenManager;->mNextIdleComp:Landroid/content/ComponentName;

    .line 73
    return-void
.end method

.method private _setVisibility(ZZZ)V
    .locals 4
    .parameter "show"
    .parameter "recreateIfDead"
    .parameter "force"

    .prologue
    const/4 v3, 0x0

    .line 122
    const-string v0, "IdleScreenManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setVisibility:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " old:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/htc/lockscreen/app/idlescreen/IdleScreenManager;->mShow:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/lockscreen/app/debug/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    iget-object v0, p0, Lcom/htc/lockscreen/app/idlescreen/IdleScreenManager;->mUIHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/htc/lockscreen/app/util/MyUtil;->removeMessage(Landroid/os/Handler;I)V

    .line 124
    iget-object v0, p0, Lcom/htc/lockscreen/app/idlescreen/IdleScreenManager;->mCurISService:Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap;

    if-eqz v0, :cond_4

    .line 125
    iget-object v0, p0, Lcom/htc/lockscreen/app/idlescreen/IdleScreenManager;->mCurISService:Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap;

    invoke-virtual {v0}, Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap;->dumpLog()V

    .line 126
    iget-boolean v0, p0, Lcom/htc/lockscreen/app/idlescreen/IdleScreenManager;->mNeedReconnect:Z

    if-eqz v0, :cond_3

    if-nez p1, :cond_3

    .line 127
    invoke-virtual {p0}, Lcom/htc/lockscreen/app/idlescreen/IdleScreenManager;->reconnect()V

    .line 128
    iput-boolean v3, p0, Lcom/htc/lockscreen/app/idlescreen/IdleScreenManager;->mNeedReconnect:Z

    .line 137
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/htc/lockscreen/app/idlescreen/IdleScreenManager;->mShow:Z

    if-ne v0, p1, :cond_1

    if-eqz p3, :cond_2

    .line 138
    :cond_1
    iput-boolean p1, p0, Lcom/htc/lockscreen/app/idlescreen/IdleScreenManager;->mShow:Z

    .line 139
    iget-object v0, p0, Lcom/htc/lockscreen/app/idlescreen/IdleScreenManager;->mCurISService:Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap;

    invoke-virtual {v0, p1}, Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap;->setVisibility(Z)V

    .line 150
    :cond_2
    :goto_1
    return-void

    .line 130
    :cond_3
    if-eqz p2, :cond_0

    .line 131
    iget-object v0, p0, Lcom/htc/lockscreen/app/idlescreen/IdleScreenManager;->mCurISService:Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap;

    invoke-virtual {v0}, Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap;->isDead()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 132
    invoke-virtual {p0}, Lcom/htc/lockscreen/app/idlescreen/IdleScreenManager;->reconnect()V

    .line 133
    iput-boolean v3, p0, Lcom/htc/lockscreen/app/idlescreen/IdleScreenManager;->mNeedReconnect:Z

    goto :goto_0

    .line 148
    :cond_4
    const-string v0, "IdleScreenManager"

    const-string v1, "setVisibility curService is null"

    invoke-static {v0, v1}, Lcom/htc/lockscreen/app/debug/MyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method static synthetic access$100(Lcom/htc/lockscreen/app/idlescreen/IdleScreenManager;Landroid/content/ComponentName;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/htc/lockscreen/app/idlescreen/IdleScreenManager;->handleSetIdleScreen(Landroid/content/ComponentName;)V

    return-void
.end method

.method static synthetic access$200(Lcom/htc/lockscreen/app/idlescreen/IdleScreenManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/htc/lockscreen/app/idlescreen/IdleScreenManager;->handleClearIdleScreen()V

    return-void
.end method

.method static synthetic access$300(Lcom/htc/lockscreen/app/idlescreen/IdleScreenManager;)Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/htc/lockscreen/app/idlescreen/IdleScreenManager;->mCurISService:Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap;

    return-object v0
.end method

.method static synthetic access$400(Lcom/htc/lockscreen/app/idlescreen/IdleScreenManager;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/htc/lockscreen/app/idlescreen/IdleScreenManager;->mUIHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/htc/lockscreen/app/idlescreen/IdleScreenManager;ZZZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 43
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/lockscreen/app/idlescreen/IdleScreenManager;->_setVisibility(ZZZ)V

    return-void
.end method

.method private bindIdleScreenLocked(Landroid/content/ComponentName;)Z
    .locals 4
    .parameter "componentName"

    .prologue
    const/4 v1, 0x0

    .line 290
    const-string v2, "IdleScreenManager"

    const-string v3, "bindIdleScreenLocked~"

    invoke-static {v2, v3}, Lcom/htc/lockscreen/app/debug/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    iget-object v2, p0, Lcom/htc/lockscreen/app/idlescreen/IdleScreenManager;->mCurISService:Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap;

    if-eqz v2, :cond_0

    .line 293
    iget-object v2, p0, Lcom/htc/lockscreen/app/idlescreen/IdleScreenManager;->mCurISService:Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap;

    invoke-virtual {v2}, Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 294
    const-string v2, "IdleScreenManager"

    const-string v3, "bindIdleScreenLocked~ same idleScreen"

    invoke-static {v2, v3}, Lcom/htc/lockscreen/app/debug/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    invoke-virtual {p0}, Lcom/htc/lockscreen/app/idlescreen/IdleScreenManager;->reconnect()V

    .line 320
    :goto_0
    return v1

    .line 299
    :cond_0
    if-nez p1, :cond_1

    .line 300
    const-string v2, "IdleScreenManager"

    const-string v3, "bindIdleScreenLocked~ no idleScreen"

    invoke-static {v2, v3}, Lcom/htc/lockscreen/app/debug/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 303
    :cond_1
    iget-object v2, p0, Lcom/htc/lockscreen/app/idlescreen/IdleScreenManager;->mUIHandler:Landroid/os/Handler;

    const/4 v3, 0x6

    invoke-static {v2, v3}, Lcom/htc/lockscreen/app/util/MyUtil;->removeMessage(Landroid/os/Handler;I)V

    .line 304
    iget-object v2, p0, Lcom/htc/lockscreen/app/idlescreen/IdleScreenManager;->mUIHandler:Landroid/os/Handler;

    const/4 v3, 0x5

    invoke-static {v2, v3}, Lcom/htc/lockscreen/app/util/MyUtil;->removeMessage(Landroid/os/Handler;I)V

    .line 306
    iget-object v2, p0, Lcom/htc/lockscreen/app/idlescreen/IdleScreenManager;->mContext:Landroid/content/Context;

    invoke-static {v2, p1}, Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap;->getInstance(Landroid/content/Context;Landroid/content/ComponentName;)Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap;

    move-result-object v0

    .line 308
    .local v0, newISService:Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap;
    if-nez v0, :cond_2

    .line 309
    const-string v2, "IdleScreenManager"

    const-string v3, "bindIdleScreenLocked~ newISService is null"

    invoke-static {v2, v3}, Lcom/htc/lockscreen/app/debug/MyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 312
    :cond_2
    iget-object v2, p0, Lcom/htc/lockscreen/app/idlescreen/IdleScreenManager;->mSetting:Lcom/htc/lockscreen/app/idlescreen/IdleScreenSetting;

    iget v2, v2, Lcom/htc/lockscreen/app/idlescreen/IdleScreenSetting;->mWidth:I

    iget-object v3, p0, Lcom/htc/lockscreen/app/idlescreen/IdleScreenManager;->mSetting:Lcom/htc/lockscreen/app/idlescreen/IdleScreenSetting;

    iget v3, v3, Lcom/htc/lockscreen/app/idlescreen/IdleScreenSetting;->mHeight:I

    invoke-virtual {v0, v2, v3}, Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap;->setDimension(II)V

    .line 313
    invoke-virtual {v0, p0}, Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap;->setOnServiceListener(Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap$onServiceListener;)V

    .line 314
    invoke-virtual {v0}, Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap;->connect()Z

    move-result v2

    if-nez v2, :cond_3

    .line 315
    invoke-virtual {v0}, Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap;->disconnect()V

    goto :goto_0

    .line 318
    :cond_3
    invoke-direct {p0}, Lcom/htc/lockscreen/app/idlescreen/IdleScreenManager;->unbindIdleScreenLocked()V

    .line 319
    iput-object v0, p0, Lcom/htc/lockscreen/app/idlescreen/IdleScreenManager;->mCurISService:Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap;

    .line 320
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private handleClearIdleScreen()V
    .locals 2

    .prologue
    .line 224
    monitor-enter p0

    .line 225
    :try_start_0
    invoke-direct {p0}, Lcom/htc/lockscreen/app/idlescreen/IdleScreenManager;->unbindIdleScreenLocked()V

    .line 226
    iget-object v0, p0, Lcom/htc/lockscreen/app/idlescreen/IdleScreenManager;->mSetting:Lcom/htc/lockscreen/app/idlescreen/IdleScreenSetting;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/lockscreen/app/idlescreen/IdleScreenSetting;->saveSettings(Landroid/content/ComponentName;)V

    .line 227
    monitor-exit p0

    .line 228
    return-void

    .line 227
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private handleSetIdleScreen(Landroid/content/ComponentName;)V
    .locals 1
    .parameter "componentName"

    .prologue
    .line 202
    monitor-enter p0

    .line 203
    :try_start_0
    invoke-direct {p0, p1}, Lcom/htc/lockscreen/app/idlescreen/IdleScreenManager;->bindIdleScreenLocked(Landroid/content/ComponentName;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 204
    iget-object v0, p0, Lcom/htc/lockscreen/app/idlescreen/IdleScreenManager;->mSetting:Lcom/htc/lockscreen/app/idlescreen/IdleScreenSetting;

    invoke-virtual {v0, p1}, Lcom/htc/lockscreen/app/idlescreen/IdleScreenSetting;->saveSettings(Landroid/content/ComponentName;)V

    .line 211
    :cond_0
    :goto_0
    monitor-exit p0

    .line 212
    return-void

    .line 207
    :cond_1
    iget-object v0, p0, Lcom/htc/lockscreen/app/idlescreen/IdleScreenManager;->mNextIdleComp:Landroid/content/ComponentName;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/lockscreen/app/idlescreen/IdleScreenManager;->mNextIdleComp:Landroid/content/ComponentName;

    invoke-virtual {v0, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 208
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/lockscreen/app/idlescreen/IdleScreenManager;->mNextIdleComp:Landroid/content/ComponentName;

    goto :goto_0

    .line 211
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private unbindIdleScreenLocked()V
    .locals 2

    .prologue
    .line 324
    iget-object v0, p0, Lcom/htc/lockscreen/app/idlescreen/IdleScreenManager;->mCurISService:Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap;

    if-eqz v0, :cond_0

    .line 325
    const-string v0, "IdleScreenManager"

    const-string v1, "unbindIdleScreenLocked"

    invoke-static {v0, v1}, Lcom/htc/lockscreen/app/debug/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    iget-object v0, p0, Lcom/htc/lockscreen/app/idlescreen/IdleScreenManager;->mCurISService:Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap;

    invoke-virtual {v0}, Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap;->disconnect()V

    .line 329
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/lockscreen/app/idlescreen/IdleScreenManager;->mCurISService:Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap;

    .line 330
    return-void
.end method


# virtual methods
.method public clearIdleScreen()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 215
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 216
    .local v0, msg:Landroid/os/Message;
    iput v3, v0, Landroid/os/Message;->what:I

    .line 217
    iget-object v1, p0, Lcom/htc/lockscreen/app/idlescreen/IdleScreenManager;->mUIHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/htc/lockscreen/app/util/MyUtil;->removeMessage(Landroid/os/Handler;I)V

    .line 218
    iget-object v1, p0, Lcom/htc/lockscreen/app/idlescreen/IdleScreenManager;->mUIHandler:Landroid/os/Handler;

    invoke-static {v1, v3}, Lcom/htc/lockscreen/app/util/MyUtil;->removeMessage(Landroid/os/Handler;I)V

    .line 219
    iget-object v1, p0, Lcom/htc/lockscreen/app/idlescreen/IdleScreenManager;->mUIHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x12c

    invoke-static {v1, v0, v2, v3}, Lcom/htc/lockscreen/app/util/MyUtil;->sendMessage(Landroid/os/Handler;Landroid/os/Message;J)V

    .line 221
    return-void
.end method

.method public dispatchKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 265
    iget-object v0, p0, Lcom/htc/lockscreen/app/idlescreen/IdleScreenManager;->mCurISService:Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap;

    if-eqz v0, :cond_0

    .line 266
    iget-object v0, p0, Lcom/htc/lockscreen/app/idlescreen/IdleScreenManager;->mCurISService:Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap;

    invoke-virtual {v0, p1, p2}, Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap;->dispatchKeyDown(ILandroid/view/KeyEvent;)Z

    .line 273
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public dispatchKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 277
    iget-object v0, p0, Lcom/htc/lockscreen/app/idlescreen/IdleScreenManager;->mCurISService:Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap;

    if-eqz v0, :cond_0

    .line 278
    iget-object v0, p0, Lcom/htc/lockscreen/app/idlescreen/IdleScreenManager;->mCurISService:Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap;

    invoke-virtual {v0, p1, p2}, Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap;->dispatchKeyUp(ILandroid/view/KeyEvent;)Z

    .line 285
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public dispatchPoint(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 253
    iget-object v0, p0, Lcom/htc/lockscreen/app/idlescreen/IdleScreenManager;->mCurISService:Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap;

    if-eqz v0, :cond_0

    .line 254
    iget-object v0, p0, Lcom/htc/lockscreen/app/idlescreen/IdleScreenManager;->mCurISService:Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap;

    invoke-virtual {v0, p1}, Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap;->dispatchPoint(Landroid/view/MotionEvent;)Z

    .line 261
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getIdleScreenLabel()Ljava/lang/String;
    .locals 5

    .prologue
    .line 231
    const/4 v2, 0x0

    .line 232
    .local v2, label:Ljava/lang/String;
    iget-object v0, p0, Lcom/htc/lockscreen/app/idlescreen/IdleScreenManager;->mNextIdleComp:Landroid/content/ComponentName;

    .line 233
    .local v0, comp:Landroid/content/ComponentName;
    if-nez v0, :cond_0

    .line 234
    iget-object v4, p0, Lcom/htc/lockscreen/app/idlescreen/IdleScreenManager;->mSetting:Lcom/htc/lockscreen/app/idlescreen/IdleScreenSetting;

    iget-object v0, v4, Lcom/htc/lockscreen/app/idlescreen/IdleScreenSetting;->mComponentName:Landroid/content/ComponentName;

    .line 236
    :cond_0
    iget-object v4, p0, Lcom/htc/lockscreen/app/idlescreen/IdleScreenManager;->mContext:Landroid/content/Context;

    invoke-static {v4, v0}, Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap;->getIdleScreenInfo(Landroid/content/Context;Landroid/content/ComponentName;)Lcom/htc/lockscreen/idlescreen/IdleScreenInfo;

    move-result-object v1

    .line 237
    .local v1, info:Lcom/htc/lockscreen/idlescreen/IdleScreenInfo;
    if-eqz v1, :cond_1

    .line 238
    iget-object v4, p0, Lcom/htc/lockscreen/app/idlescreen/IdleScreenManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 239
    .local v3, pm:Landroid/content/pm/PackageManager;
    invoke-virtual {v1, v3}, Lcom/htc/lockscreen/idlescreen/IdleScreenInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    .end local v2           #label:Ljava/lang/String;
    check-cast v2, Ljava/lang/String;

    .line 241
    .end local v3           #pm:Landroid/content/pm/PackageManager;
    .restart local v2       #label:Ljava/lang/String;
    :cond_1
    return-object v2
.end method

.method public getState()Lcom/htc/lockscreen/app/idlescreen/IdleScreenManager$State;
    .locals 1

    .prologue
    .line 249
    iget-object v0, p0, Lcom/htc/lockscreen/app/idlescreen/IdleScreenManager;->mState:Lcom/htc/lockscreen/app/idlescreen/IdleScreenManager$State;

    return-object v0
.end method

.method public init(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 76
    monitor-enter p0

    .line 77
    :try_start_0
    iget-object v0, p0, Lcom/htc/lockscreen/app/idlescreen/IdleScreenManager;->mState:Lcom/htc/lockscreen/app/idlescreen/IdleScreenManager$State;

    sget-object v1, Lcom/htc/lockscreen/app/idlescreen/IdleScreenManager$State;->NONE:Lcom/htc/lockscreen/app/idlescreen/IdleScreenManager$State;

    if-ne v0, v1, :cond_0

    .line 78
    iput-object p1, p0, Lcom/htc/lockscreen/app/idlescreen/IdleScreenManager;->mContext:Landroid/content/Context;

    .line 79
    iget-object v0, p0, Lcom/htc/lockscreen/app/idlescreen/IdleScreenManager;->mSetting:Lcom/htc/lockscreen/app/idlescreen/IdleScreenSetting;

    iget-object v1, p0, Lcom/htc/lockscreen/app/idlescreen/IdleScreenManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/htc/lockscreen/app/idlescreen/IdleScreenSetting;->loadSettings(Landroid/content/Context;)V

    .line 82
    iget-object v0, p0, Lcom/htc/lockscreen/app/idlescreen/IdleScreenManager;->mSetting:Lcom/htc/lockscreen/app/idlescreen/IdleScreenSetting;

    iget-object v0, v0, Lcom/htc/lockscreen/app/idlescreen/IdleScreenSetting;->mComponentName:Landroid/content/ComponentName;

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/htc/lockscreen/app/idlescreen/IdleScreenManager;->mSetting:Lcom/htc/lockscreen/app/idlescreen/IdleScreenSetting;

    iget-object v0, v0, Lcom/htc/lockscreen/app/idlescreen/IdleScreenSetting;->mComponentName:Landroid/content/ComponentName;

    invoke-direct {p0, v0}, Lcom/htc/lockscreen/app/idlescreen/IdleScreenManager;->bindIdleScreenLocked(Landroid/content/ComponentName;)Z

    .line 85
    :cond_0
    sget-object v0, Lcom/htc/lockscreen/app/idlescreen/IdleScreenManager$State;->START:Lcom/htc/lockscreen/app/idlescreen/IdleScreenManager$State;

    iput-object v0, p0, Lcom/htc/lockscreen/app/idlescreen/IdleScreenManager;->mState:Lcom/htc/lockscreen/app/idlescreen/IdleScreenManager$State;

    .line 86
    monitor-exit p0

    .line 87
    return-void

    .line 86
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isShow()Z
    .locals 1

    .prologue
    .line 245
    iget-boolean v0, p0, Lcom/htc/lockscreen/app/idlescreen/IdleScreenManager;->mShow:Z

    return v0
.end method

.method public isSurfaceReady()Z
    .locals 2

    .prologue
    .line 469
    iget-object v0, p0, Lcom/htc/lockscreen/app/idlescreen/IdleScreenManager;->mCurISService:Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap;

    .line 470
    .local v0, service:Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap;
    if-eqz v0, :cond_0

    .line 471
    invoke-virtual {v0}, Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap;->isSurfaceReady()Z

    move-result v1

    .line 473
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public onConnectTimeout(Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap;)V
    .locals 1
    .parameter "service"

    .prologue
    .line 462
    iget-object v0, p0, Lcom/htc/lockscreen/app/idlescreen/IdleScreenManager;->mCurISService:Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap;

    if-ne v0, p1, :cond_0

    .line 463
    iget-object v0, p0, Lcom/htc/lockscreen/app/idlescreen/IdleScreenManager;->mCurISService:Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap;

    invoke-virtual {v0}, Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap;->killIdlescreenProcess()V

    .line 464
    invoke-virtual {p0}, Lcom/htc/lockscreen/app/idlescreen/IdleScreenManager;->reconnect()V

    .line 466
    :cond_0
    return-void
.end method

.method public onConnected(Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap;)V
    .locals 3
    .parameter "service"

    .prologue
    .line 355
    const-string v0, "IdleScreenManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onConnected service:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/lockscreen/app/debug/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    return-void
.end method

.method public onDisconnected(Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap;)V
    .locals 3
    .parameter "service"

    .prologue
    .line 360
    const-string v0, "IdleScreenManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDisconnected service:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/lockscreen/app/debug/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    return-void
.end method

.method public onLocaleChanged()V
    .locals 1

    .prologue
    .line 415
    iget-object v0, p0, Lcom/htc/lockscreen/app/idlescreen/IdleScreenManager;->mCurISService:Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap;

    if-eqz v0, :cond_0

    .line 416
    iget-boolean v0, p0, Lcom/htc/lockscreen/app/idlescreen/IdleScreenManager;->mShow:Z

    if-nez v0, :cond_1

    .line 417
    invoke-virtual {p0}, Lcom/htc/lockscreen/app/idlescreen/IdleScreenManager;->reconnect()V

    .line 423
    :cond_0
    :goto_0
    return-void

    .line 420
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/lockscreen/app/idlescreen/IdleScreenManager;->mNeedReconnect:Z

    goto :goto_0
.end method

.method public onNetworkChanged()V
    .locals 1

    .prologue
    .line 378
    iget-object v0, p0, Lcom/htc/lockscreen/app/idlescreen/IdleScreenManager;->mCurISService:Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap;

    if-eqz v0, :cond_0

    .line 379
    iget-object v0, p0, Lcom/htc/lockscreen/app/idlescreen/IdleScreenManager;->mCurISService:Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap;

    invoke-virtual {v0}, Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap;->sendTelephonyState()V

    .line 386
    :cond_0
    return-void
.end method

.method public onPhoneStateChanged(Lcom/htc/lockscreen/telephony/PhoneState;)V
    .locals 1
    .parameter "phoneState"

    .prologue
    .line 395
    iget-object v0, p0, Lcom/htc/lockscreen/app/idlescreen/IdleScreenManager;->mCurISService:Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap;

    if-eqz v0, :cond_0

    .line 396
    iget-object v0, p0, Lcom/htc/lockscreen/app/idlescreen/IdleScreenManager;->mCurISService:Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap;

    invoke-virtual {v0, p1}, Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap;->onPhoneStateChanged(Lcom/htc/lockscreen/telephony/PhoneState;)V

    .line 398
    :cond_0
    return-void
.end method

.method public onReminderChanged(I)V
    .locals 1
    .parameter "type"

    .prologue
    .line 389
    iget-object v0, p0, Lcom/htc/lockscreen/app/idlescreen/IdleScreenManager;->mCurISService:Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap;

    if-eqz v0, :cond_0

    .line 390
    iget-object v0, p0, Lcom/htc/lockscreen/app/idlescreen/IdleScreenManager;->mCurISService:Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap;

    invoke-virtual {v0, p1}, Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap;->sendReminderState(I)V

    .line 392
    :cond_0
    return-void
.end method

.method public onRemoteViewChanged()V
    .locals 2

    .prologue
    .line 401
    iget-object v0, p0, Lcom/htc/lockscreen/app/idlescreen/IdleScreenManager;->mCurISService:Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap;

    if-eqz v0, :cond_0

    .line 402
    iget-object v0, p0, Lcom/htc/lockscreen/app/idlescreen/IdleScreenManager;->mCurISService:Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap;

    invoke-virtual {v0}, Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap;->sendRemoteView()V

    .line 404
    :cond_0
    iget-object v0, p0, Lcom/htc/lockscreen/app/idlescreen/IdleScreenManager;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/htc/lockscreen/app/util/WakeLockUtil;->remoteWakeLock(Landroid/content/Context;Z)V

    .line 405
    return-void
.end method

.method public onServiceDead(Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap;)V
    .locals 3
    .parameter "service"

    .prologue
    .line 367
    monitor-enter p0

    .line 368
    :try_start_0
    iget-object v0, p0, Lcom/htc/lockscreen/app/idlescreen/IdleScreenManager;->mCurISService:Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/lockscreen/app/idlescreen/IdleScreenManager;->mCurISService:Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap;

    if-ne v0, p1, :cond_0

    .line 369
    const-string v0, "IdleScreenManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onServiceDead service:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/lockscreen/app/debug/MyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/lockscreen/app/idlescreen/IdleScreenManager;->reconnect(Z)V

    .line 374
    :cond_0
    monitor-exit p0

    .line 375
    return-void

    .line 374
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public reconnect()V
    .locals 1

    .prologue
    .line 153
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/lockscreen/app/idlescreen/IdleScreenManager;->reconnect(Z)V

    .line 154
    return-void
.end method

.method public reconnect(Z)V
    .locals 2
    .parameter "resetLiveWallpaper"

    .prologue
    .line 157
    iget-object v0, p0, Lcom/htc/lockscreen/app/idlescreen/IdleScreenManager;->mCurISService:Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap;

    if-eqz v0, :cond_0

    .line 158
    const-string v0, "IdleScreenManager"

    const-string v1, "reconnect"

    invoke-static {v0, v1}, Lcom/htc/lockscreen/app/debug/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    iget-object v0, p0, Lcom/htc/lockscreen/app/idlescreen/IdleScreenManager;->mUIHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-static {v0, v1}, Lcom/htc/lockscreen/app/util/MyUtil;->removeMessage(Landroid/os/Handler;I)V

    .line 160
    iget-object v0, p0, Lcom/htc/lockscreen/app/idlescreen/IdleScreenManager;->mUIHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-static {v0, v1}, Lcom/htc/lockscreen/app/util/MyUtil;->removeMessage(Landroid/os/Handler;I)V

    .line 161
    iget-object v0, p0, Lcom/htc/lockscreen/app/idlescreen/IdleScreenManager;->mCurISService:Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap;

    invoke-virtual {v0}, Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap;->reconnect()V

    .line 163
    :cond_0
    return-void
.end method

.method public reportSurvive(Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap;)V
    .locals 2
    .parameter "service"

    .prologue
    .line 408
    iget-object v0, p0, Lcom/htc/lockscreen/app/idlescreen/IdleScreenManager;->mCurISService:Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap;

    if-ne v0, p1, :cond_0

    .line 409
    iget-object v0, p0, Lcom/htc/lockscreen/app/idlescreen/IdleScreenManager;->mUIHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-static {v0, v1}, Lcom/htc/lockscreen/app/util/MyUtil;->removeMessage(Landroid/os/Handler;I)V

    .line 410
    iget-object v0, p0, Lcom/htc/lockscreen/app/idlescreen/IdleScreenManager;->mUIHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-static {v0, v1}, Lcom/htc/lockscreen/app/util/MyUtil;->removeMessage(Landroid/os/Handler;I)V

    .line 412
    :cond_0
    return-void
.end method

.method public setIdleScreen(Landroid/content/ComponentName;)V
    .locals 4
    .parameter "componentName"

    .prologue
    const/4 v3, 0x1

    .line 185
    iput-object p1, p0, Lcom/htc/lockscreen/app/idlescreen/IdleScreenManager;->mNextIdleComp:Landroid/content/ComponentName;

    .line 186
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 187
    .local v0, msg:Landroid/os/Message;
    iput v3, v0, Landroid/os/Message;->what:I

    .line 188
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 189
    iget-object v1, p0, Lcom/htc/lockscreen/app/idlescreen/IdleScreenManager;->mUIHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-static {v1, v2}, Lcom/htc/lockscreen/app/util/MyUtil;->removeMessage(Landroid/os/Handler;I)V

    .line 190
    iget-object v1, p0, Lcom/htc/lockscreen/app/idlescreen/IdleScreenManager;->mUIHandler:Landroid/os/Handler;

    invoke-static {v1, v3}, Lcom/htc/lockscreen/app/util/MyUtil;->removeMessage(Landroid/os/Handler;I)V

    .line 191
    iget-object v1, p0, Lcom/htc/lockscreen/app/idlescreen/IdleScreenManager;->mUIHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x12c

    invoke-static {v1, v0, v2, v3}, Lcom/htc/lockscreen/app/util/MyUtil;->sendMessage(Landroid/os/Handler;Landroid/os/Message;J)V

    .line 199
    return-void
.end method

.method public setLockScreenResume(Z)V
    .locals 5
    .parameter "resume"

    .prologue
    const/4 v4, 0x5

    .line 166
    const/4 v0, 0x0

    .line 167
    .local v0, success:Z
    iget-object v1, p0, Lcom/htc/lockscreen/app/idlescreen/IdleScreenManager;->mCurISService:Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap;

    if-eqz v1, :cond_0

    .line 168
    iget-object v1, p0, Lcom/htc/lockscreen/app/idlescreen/IdleScreenManager;->mCurISService:Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap;

    invoke-virtual {v1, p1}, Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap;->setLockScreenResume(Z)Z

    move-result v0

    .line 170
    :cond_0
    if-eqz p1, :cond_1

    if-eqz v0, :cond_1

    .line 171
    iget-object v1, p0, Lcom/htc/lockscreen/app/idlescreen/IdleScreenManager;->mUIHandler:Landroid/os/Handler;

    invoke-static {v1, v4}, Lcom/htc/lockscreen/app/util/MyUtil;->hasMessage(Landroid/os/Handler;I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 172
    iget-object v1, p0, Lcom/htc/lockscreen/app/idlescreen/IdleScreenManager;->mUIHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x4e20

    invoke-static {v1, v4, v2, v3}, Lcom/htc/lockscreen/app/util/MyUtil;->sendMessage(Landroid/os/Handler;IJ)V

    .line 176
    :cond_1
    return-void
.end method

.method public setVisibility(ZJ)V
    .locals 3
    .parameter "show"
    .parameter "delay"

    .prologue
    const/4 v2, 0x3

    .line 98
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 99
    .local v0, msg:Landroid/os/Message;
    iput v2, v0, Landroid/os/Message;->what:I

    .line 100
    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 101
    iget-object v1, p0, Lcom/htc/lockscreen/app/idlescreen/IdleScreenManager;->mUIHandler:Landroid/os/Handler;

    invoke-static {v1, v2}, Lcom/htc/lockscreen/app/util/MyUtil;->removeMessage(Landroid/os/Handler;I)V

    .line 102
    iget-object v1, p0, Lcom/htc/lockscreen/app/idlescreen/IdleScreenManager;->mUIHandler:Landroid/os/Handler;

    invoke-static {v1, v0, p2, p3}, Lcom/htc/lockscreen/app/util/MyUtil;->sendMessage(Landroid/os/Handler;Landroid/os/Message;J)V

    .line 104
    return-void

    .line 100
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setVisibility(ZZ)V
    .locals 2
    .parameter "show"
    .parameter "recreateIfDead"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/htc/lockscreen/app/idlescreen/IdleScreenManager;->mUIHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/htc/lockscreen/app/util/MyUtil;->removeMessage(Landroid/os/Handler;I)V

    .line 108
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/htc/lockscreen/app/idlescreen/IdleScreenManager;->_setVisibility(ZZZ)V

    .line 110
    return-void
.end method

.method public setVisibility(ZZZ)V
    .locals 2
    .parameter "show"
    .parameter "recreateIfDead"
    .parameter "force"

    .prologue
    .line 113
    iget-object v0, p0, Lcom/htc/lockscreen/app/idlescreen/IdleScreenManager;->mUIHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/htc/lockscreen/app/util/MyUtil;->removeMessage(Landroid/os/Handler;I)V

    .line 114
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/lockscreen/app/idlescreen/IdleScreenManager;->_setVisibility(ZZZ)V

    .line 115
    return-void
.end method

.method public showLiveWallpaper()Z
    .locals 2

    .prologue
    .line 477
    iget-object v0, p0, Lcom/htc/lockscreen/app/idlescreen/IdleScreenManager;->mCurISService:Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap;

    .line 478
    .local v0, service:Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap;
    if-eqz v0, :cond_0

    .line 479
    invoke-virtual {v0}, Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap;->showLiveWallpaper()Z

    move-result v1

    .line 481
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public uninit()V
    .locals 1

    .prologue
    .line 90
    sget-object v0, Lcom/htc/lockscreen/app/idlescreen/IdleScreenManager$State;->STOP:Lcom/htc/lockscreen/app/idlescreen/IdleScreenManager$State;

    iput-object v0, p0, Lcom/htc/lockscreen/app/idlescreen/IdleScreenManager;->mState:Lcom/htc/lockscreen/app/idlescreen/IdleScreenManager$State;

    .line 91
    monitor-enter p0

    .line 93
    :try_start_0
    invoke-direct {p0}, Lcom/htc/lockscreen/app/idlescreen/IdleScreenManager;->unbindIdleScreenLocked()V

    .line 94
    monitor-exit p0

    .line 95
    return-void

    .line 94
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public updateViewMode(I)V
    .locals 1
    .parameter "viewMode"

    .prologue
    .line 179
    iget-object v0, p0, Lcom/htc/lockscreen/app/idlescreen/IdleScreenManager;->mCurISService:Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap;

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/htc/lockscreen/app/idlescreen/IdleScreenManager;->mCurISService:Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap;

    invoke-virtual {v0, p1}, Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap;->updateViewMode(I)V

    .line 182
    :cond_0
    return-void
.end method
