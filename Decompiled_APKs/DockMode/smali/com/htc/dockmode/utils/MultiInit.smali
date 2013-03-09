.class public abstract Lcom/htc/dockmode/utils/MultiInit;
.super Lcom/htc/dockmode/utils/CloseMenuIME;
.source "MultiInit.java"

# interfaces
.implements Lcom/htc/dockmode/utils/MultiInitInterface;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final ON_INIT_1:I

.field private final ON_INIT_2:I

.field private final ON_REFRESH_1:I

.field private final ON_REFRESH_2:I

.field private mDestroyLock:Ljava/lang/Object;

.field private mDestroyed:Z

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mInit:Z

.field private mLooper:Landroid/os/Looper;

.field private mNonUIHandler:Landroid/os/Handler;

.field private mStopped:Z

.field private final mUIHander:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-class v0, Lcom/htc/dockmode/utils/MultiInit;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/dockmode/utils/MultiInit;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 15
    invoke-direct {p0}, Lcom/htc/dockmode/utils/CloseMenuIME;-><init>()V

    .line 19
    iput-object v0, p0, Lcom/htc/dockmode/utils/MultiInit;->mHandlerThread:Landroid/os/HandlerThread;

    .line 20
    iput-object v0, p0, Lcom/htc/dockmode/utils/MultiInit;->mLooper:Landroid/os/Looper;

    .line 21
    iput-object v0, p0, Lcom/htc/dockmode/utils/MultiInit;->mNonUIHandler:Landroid/os/Handler;

    .line 22
    const v0, 0x99901

    iput v0, p0, Lcom/htc/dockmode/utils/MultiInit;->ON_INIT_1:I

    .line 23
    const v0, 0x99902

    iput v0, p0, Lcom/htc/dockmode/utils/MultiInit;->ON_INIT_2:I

    .line 24
    const v0, 0x99903

    iput v0, p0, Lcom/htc/dockmode/utils/MultiInit;->ON_REFRESH_1:I

    .line 25
    const v0, 0x99904

    iput v0, p0, Lcom/htc/dockmode/utils/MultiInit;->ON_REFRESH_2:I

    .line 26
    iput-boolean v1, p0, Lcom/htc/dockmode/utils/MultiInit;->mDestroyed:Z

    .line 27
    iput-boolean v1, p0, Lcom/htc/dockmode/utils/MultiInit;->mStopped:Z

    .line 28
    iput-boolean v1, p0, Lcom/htc/dockmode/utils/MultiInit;->mInit:Z

    .line 29
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/htc/dockmode/utils/MultiInit;->mDestroyLock:Ljava/lang/Object;

    .line 83
    new-instance v0, Lcom/htc/dockmode/utils/MultiInit$2;

    invoke-direct {v0, p0}, Lcom/htc/dockmode/utils/MultiInit$2;-><init>(Lcom/htc/dockmode/utils/MultiInit;)V

    iput-object v0, p0, Lcom/htc/dockmode/utils/MultiInit;->mUIHander:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/htc/dockmode/utils/MultiInit;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/htc/dockmode/utils/MultiInit;->onInit1()V

    return-void
.end method

.method static synthetic access$100(Lcom/htc/dockmode/utils/MultiInit;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/htc/dockmode/utils/MultiInit;->onInit2()V

    return-void
.end method

.method static synthetic access$200(Lcom/htc/dockmode/utils/MultiInit;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/htc/dockmode/utils/MultiInit;->onRefresh1()V

    return-void
.end method

.method static synthetic access$300(Lcom/htc/dockmode/utils/MultiInit;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/htc/dockmode/utils/MultiInit;->onRefresh2()V

    return-void
.end method

.method private exitDeskMode()V
    .locals 2

    .prologue
    .line 59
    const-string v1, "uimode"

    invoke-virtual {p0, v1}, Lcom/htc/dockmode/utils/MultiInit;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/UiModeManager;

    .line 60
    .local v0, uiModeManager:Landroid/app/UiModeManager;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/UiModeManager;->disableDeskMode(I)V

    .line 61
    return-void
.end method

.method private hasOOBEState()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 54
    invoke-virtual {p0}, Lcom/htc/dockmode/utils/MultiInit;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "setup_wizard_has_run"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private initHandler()V
    .locals 3

    .prologue
    .line 64
    new-instance v0, Landroid/os/HandlerThread;

    sget-object v1, Lcom/htc/dockmode/utils/MultiInit;->TAG:Ljava/lang/String;

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/htc/dockmode/utils/MultiInit;->mHandlerThread:Landroid/os/HandlerThread;

    .line 66
    iget-object v0, p0, Lcom/htc/dockmode/utils/MultiInit;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 67
    iget-object v0, p0, Lcom/htc/dockmode/utils/MultiInit;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/dockmode/utils/MultiInit;->mLooper:Landroid/os/Looper;

    .line 68
    new-instance v0, Lcom/htc/dockmode/utils/MultiInit$1;

    iget-object v1, p0, Lcom/htc/dockmode/utils/MultiInit;->mLooper:Landroid/os/Looper;

    invoke-direct {v0, p0, v1}, Lcom/htc/dockmode/utils/MultiInit$1;-><init>(Lcom/htc/dockmode/utils/MultiInit;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/htc/dockmode/utils/MultiInit;->mNonUIHandler:Landroid/os/Handler;

    .line 81
    return-void
.end method

.method private onInit1()V
    .locals 3

    .prologue
    .line 98
    iget-object v1, p0, Lcom/htc/dockmode/utils/MultiInit;->mDestroyLock:Ljava/lang/Object;

    monitor-enter v1

    .line 99
    :try_start_0
    iget-boolean v0, p0, Lcom/htc/dockmode/utils/MultiInit;->mDestroyed:Z

    if-eqz v0, :cond_0

    .line 100
    monitor-exit v1

    .line 104
    :goto_0
    return-void

    .line 101
    :cond_0
    invoke-virtual {p0}, Lcom/htc/dockmode/utils/MultiInit;->onDoInit1()V

    .line 102
    iget-object v0, p0, Lcom/htc/dockmode/utils/MultiInit;->mUIHander:Landroid/os/Handler;

    const v2, 0x99903

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 103
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private onInit2()V
    .locals 3

    .prologue
    .line 114
    iget-object v1, p0, Lcom/htc/dockmode/utils/MultiInit;->mDestroyLock:Ljava/lang/Object;

    monitor-enter v1

    .line 115
    :try_start_0
    iget-boolean v0, p0, Lcom/htc/dockmode/utils/MultiInit;->mDestroyed:Z

    if-eqz v0, :cond_0

    .line 116
    monitor-exit v1

    .line 120
    :goto_0
    return-void

    .line 117
    :cond_0
    invoke-virtual {p0}, Lcom/htc/dockmode/utils/MultiInit;->onDoInit2()V

    .line 118
    iget-object v0, p0, Lcom/htc/dockmode/utils/MultiInit;->mUIHander:Landroid/os/Handler;

    const v2, 0x99904

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 119
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private onRefresh1()V
    .locals 2

    .prologue
    .line 107
    iget-boolean v0, p0, Lcom/htc/dockmode/utils/MultiInit;->mDestroyed:Z

    if-eqz v0, :cond_0

    .line 111
    :goto_0
    return-void

    .line 109
    :cond_0
    invoke-virtual {p0}, Lcom/htc/dockmode/utils/MultiInit;->onDoRefresh1()V

    .line 110
    iget-object v0, p0, Lcom/htc/dockmode/utils/MultiInit;->mNonUIHandler:Landroid/os/Handler;

    const v1, 0x99902

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method private onRefresh2()V
    .locals 1

    .prologue
    .line 124
    iget-boolean v0, p0, Lcom/htc/dockmode/utils/MultiInit;->mDestroyed:Z

    if-eqz v0, :cond_0

    .line 131
    :goto_0
    return-void

    .line 127
    :cond_0
    iget-boolean v0, p0, Lcom/htc/dockmode/utils/MultiInit;->mStopped:Z

    if-nez v0, :cond_1

    .line 128
    invoke-virtual {p0}, Lcom/htc/dockmode/utils/MultiInit;->onDoResume()V

    .line 130
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/dockmode/utils/MultiInit;->mInit:Z

    goto :goto_0
.end method


# virtual methods
.method protected getNonUIHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcom/htc/dockmode/utils/MultiInit;->mNonUIHandler:Landroid/os/Handler;

    return-object v0
.end method

.method protected getUIHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcom/htc/dockmode/utils/MultiInit;->mUIHander:Landroid/os/Handler;

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 34
    invoke-super {p0, p1}, Lcom/htc/dockmode/utils/CloseMenuIME;->onCreate(Landroid/os/Bundle;)V

    .line 36
    invoke-direct {p0}, Lcom/htc/dockmode/utils/MultiInit;->hasOOBEState()Z

    move-result v0

    .line 43
    .local v0, state:Z
    const-string v1, "uimode"

    invoke-virtual {p0, v1}, Lcom/htc/dockmode/utils/MultiInit;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/UiModeManager;

    invoke-virtual {v1}, Landroid/app/UiModeManager;->getDockState()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 45
    invoke-virtual {p0}, Lcom/htc/dockmode/utils/MultiInit;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/dockmode/saver/WakeLock;->disableKeyguard(Landroid/view/Window;)V

    .line 48
    :cond_0
    invoke-direct {p0}, Lcom/htc/dockmode/utils/MultiInit;->initHandler()V

    .line 49
    invoke-virtual {p0, p1}, Lcom/htc/dockmode/utils/MultiInit;->onDoCreate(Landroid/os/Bundle;)V

    .line 50
    iget-object v1, p0, Lcom/htc/dockmode/utils/MultiInit;->mNonUIHandler:Landroid/os/Handler;

    const v2, 0x99901

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 51
    return-void
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    const v2, 0x99904

    .line 158
    iget-object v1, p0, Lcom/htc/dockmode/utils/MultiInit;->mDestroyLock:Ljava/lang/Object;

    monitor-enter v1

    .line 159
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/htc/dockmode/utils/MultiInit;->mDestroyed:Z

    .line 160
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 163
    iget-object v0, p0, Lcom/htc/dockmode/utils/MultiInit;->mNonUIHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/htc/dockmode/utils/MultiInit;->mNonUIHandler:Landroid/os/Handler;

    const v1, 0x99901

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 165
    iget-object v0, p0, Lcom/htc/dockmode/utils/MultiInit;->mNonUIHandler:Landroid/os/Handler;

    const v1, 0x99902

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 169
    :cond_0
    iget-object v0, p0, Lcom/htc/dockmode/utils/MultiInit;->mUIHander:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 170
    iget-object v0, p0, Lcom/htc/dockmode/utils/MultiInit;->mUIHander:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 171
    iget-object v0, p0, Lcom/htc/dockmode/utils/MultiInit;->mUIHander:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 174
    :cond_1
    invoke-virtual {p0}, Lcom/htc/dockmode/utils/MultiInit;->onDoRemoveMessages()V

    .line 176
    iget-object v0, p0, Lcom/htc/dockmode/utils/MultiInit;->mLooper:Landroid/os/Looper;

    if-eqz v0, :cond_2

    .line 177
    iget-object v0, p0, Lcom/htc/dockmode/utils/MultiInit;->mLooper:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 178
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/dockmode/utils/MultiInit;->mLooper:Landroid/os/Looper;

    .line 180
    :cond_2
    invoke-virtual {p0}, Lcom/htc/dockmode/utils/MultiInit;->onDoDestroy()V

    .line 181
    invoke-super {p0}, Lcom/htc/dockmode/utils/CloseMenuIME;->onDestroy()V

    .line 182
    return-void

    .line 160
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 145
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/dockmode/utils/MultiInit;->mStopped:Z

    .line 146
    invoke-virtual {p0}, Lcom/htc/dockmode/utils/MultiInit;->onDoPause()V

    .line 147
    invoke-super {p0}, Lcom/htc/dockmode/utils/CloseMenuIME;->onPause()V

    .line 148
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 135
    invoke-super {p0}, Lcom/htc/dockmode/utils/CloseMenuIME;->onResume()V

    .line 136
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/dockmode/utils/MultiInit;->mStopped:Z

    .line 137
    iget-boolean v0, p0, Lcom/htc/dockmode/utils/MultiInit;->mInit:Z

    if-nez v0, :cond_0

    .line 141
    :goto_0
    return-void

    .line 140
    :cond_0
    invoke-direct {p0}, Lcom/htc/dockmode/utils/MultiInit;->onRefresh2()V

    goto :goto_0
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 152
    invoke-virtual {p0}, Lcom/htc/dockmode/utils/MultiInit;->onDoStop()V

    .line 153
    invoke-super {p0}, Lcom/htc/dockmode/utils/CloseMenuIME;->onStop()V

    .line 154
    return-void
.end method
