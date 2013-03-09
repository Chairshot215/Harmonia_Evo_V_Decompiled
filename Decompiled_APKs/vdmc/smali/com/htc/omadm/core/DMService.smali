.class public Lcom/htc/omadm/core/DMService;
.super Landroid/app/Service;
.source "DMService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/omadm/core/DMService$TimeoutforWaitOOBEUINotify;,
        Lcom/htc/omadm/core/DMService$MyHandler;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "DMService"

.field private static WaitOOBEUINotifyStart:Z

.field private static bPendingPowerAndForeground:Z

.field protected static mContext:Landroid/content/Context;

.field private static mTimeoutforWaitOOBEUINotify:Lcom/htc/omadm/core/DMService$TimeoutforWaitOOBEUINotify;


# instance fields
.field protected mConn:Lcom/htc/omadm/rule/ConnMo;

.field protected mDMSession:Lcom/htc/omadm/rule/DMSession;

.field protected mHandler:Lcom/htc/omadm/core/DMService$MyHandler;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field protected volatile mMOLooper:Landroid/os/Looper;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field mThread:Landroid/os/HandlerThread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 69
    sput-boolean v0, Lcom/htc/omadm/core/DMService;->WaitOOBEUINotifyStart:Z

    .line 70
    sput-boolean v0, Lcom/htc/omadm/core/DMService;->bPendingPowerAndForeground:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 55
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 60
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "DMService"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/htc/omadm/core/DMService;->mThread:Landroid/os/HandlerThread;

    .line 64
    new-instance v0, Lcom/htc/omadm/core/DMService$MyHandler;

    invoke-direct {v0, p0}, Lcom/htc/omadm/core/DMService$MyHandler;-><init>(Lcom/htc/omadm/core/DMService;)V

    iput-object v0, p0, Lcom/htc/omadm/core/DMService;->mHandler:Lcom/htc/omadm/core/DMService$MyHandler;

    .line 304
    new-instance v0, Lcom/htc/omadm/core/DMService$1;

    invoke-direct {v0, p0}, Lcom/htc/omadm/core/DMService$1;-><init>(Lcom/htc/omadm/core/DMService;)V

    iput-object v0, p0, Lcom/htc/omadm/core/DMService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 340
    return-void
.end method

.method private SetOOBEUIReady()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 358
    sput-boolean v6, Lcom/htc/omadm/prop/PropertyState;->OOBEUIReady:Z

    .line 360
    invoke-static {}, Lcom/htc/omadm/rule/Factory;->checkInit()Z

    move-result v5

    if-ne v5, v6, :cond_0

    .line 361
    invoke-static {}, Lcom/htc/omadm/libdo/system/SysLib;->getSingleton()Lcom/htc/omadm/libdo/system/SysLib;

    move-result-object v5

    invoke-virtual {v5, v6}, Lcom/htc/omadm/libdo/system/SysLib;->setPowerAcquire(Z)V

    .line 362
    invoke-static {}, Lcom/htc/omadm/libdo/system/SysLib;->getSingleton()Lcom/htc/omadm/libdo/system/SysLib;

    move-result-object v5

    invoke-virtual {v5, v6}, Lcom/htc/omadm/libdo/system/SysLib;->setForeground(Z)V

    .line 367
    :goto_0
    const/4 v3, 0x2

    .line 368
    .local v3, sessionType:I
    const/4 v1, 0x0

    .line 369
    .local v1, sessionId:I
    const/4 v4, 0x0

    .line 370
    .local v4, sessionWapData:[B
    const/4 v2, 0x0

    .line 372
    .local v2, sessionResult:I
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 373
    .local v0, msg:Landroid/os/Message;
    iput v3, v0, Landroid/os/Message;->what:I

    .line 374
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 375
    iput v2, v0, Landroid/os/Message;->arg2:I

    .line 376
    iput-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 377
    iget-object v5, p0, Lcom/htc/omadm/core/DMService;->mHandler:Lcom/htc/omadm/core/DMService$MyHandler;

    invoke-virtual {v5, v0}, Lcom/htc/omadm/core/DMService$MyHandler;->sendMessage(Landroid/os/Message;)Z

    .line 378
    return-void

    .line 364
    .end local v0           #msg:Landroid/os/Message;
    .end local v1           #sessionId:I
    .end local v2           #sessionResult:I
    .end local v3           #sessionType:I
    .end local v4           #sessionWapData:[B
    :cond_0
    sput-boolean v6, Lcom/htc/omadm/core/DMService;->bPendingPowerAndForeground:Z

    goto :goto_0
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 55
    sget-boolean v0, Lcom/htc/omadm/core/DMService;->bPendingPowerAndForeground:Z

    return v0
.end method

.method static synthetic access$002(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 55
    sput-boolean p0, Lcom/htc/omadm/core/DMService;->bPendingPowerAndForeground:Z

    return p0
.end method

.method static synthetic access$100()Z
    .locals 1

    .prologue
    .line 55
    sget-boolean v0, Lcom/htc/omadm/core/DMService;->WaitOOBEUINotifyStart:Z

    return v0
.end method

.method static synthetic access$200(Lcom/htc/omadm/core/DMService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/htc/omadm/core/DMService;->SetOOBEUIReady()V

    return-void
.end method


# virtual methods
.method public StartTimeoutforWaitOOBEUINotify()V
    .locals 2

    .prologue
    .line 333
    const-string v0, "DMService"

    const-string v1, "Start count down for wait OOBE UI."

    invoke-static {v0, v1}, Lcom/htc/omadm/util/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    const/4 v0, 0x1

    sput-boolean v0, Lcom/htc/omadm/core/DMService;->WaitOOBEUINotifyStart:Z

    .line 337
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 144
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 127
    const-string v0, "DMService"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Lcom/htc/omadm/util/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 130
    sput-object p0, Lcom/htc/omadm/core/DMService;->mContext:Landroid/content/Context;

    .line 131
    iget-object v0, p0, Lcom/htc/omadm/core/DMService;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 133
    const-string v0, "DMService"

    const-string v1, "com.htc.omadm.core.init"

    invoke-static {v0, v1}, Lcom/htc/omadm/util/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    iget-object v0, p0, Lcom/htc/omadm/core/DMService;->mHandler:Lcom/htc/omadm/core/DMService$MyHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/omadm/core/DMService$MyHandler;->sendEmptyMessage(I)Z

    .line 136
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.htc.omadm.core.setforeground"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/htc/omadm/core/DMService;->mIntentFilter:Landroid/content/IntentFilter;

    .line 137
    iget-object v0, p0, Lcom/htc/omadm/core/DMService;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "com.htc.omadm.core.oobenotifyready"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 138
    sget-object v0, Lcom/htc/omadm/core/DMService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/htc/omadm/core/DMService;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/htc/omadm/core/DMService;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 139
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 156
    const-string v0, "DMService"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/htc/omadm/util/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    sget-object v0, Lcom/htc/omadm/core/DMService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/htc/omadm/core/DMService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 158
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 159
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 9
    .parameter "intent"
    .parameter "startId"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 74
    const-string v5, "DMService"

    const-string v6, "onStart"

    invoke-static {v5, v6}, Lcom/htc/omadm/util/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    iget-object v5, p0, Lcom/htc/omadm/core/DMService;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v5}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/omadm/core/DMService;->mMOLooper:Landroid/os/Looper;

    .line 77
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_2

    .line 78
    :cond_0
    const-string v5, "DMService"

    const-string v6, "onStart without Intent or Action"

    invoke-static {v5, v6}, Lcom/htc/omadm/util/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    :cond_1
    :goto_0
    return-void

    .line 81
    :cond_2
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    const-string v6, "com.htc.omadm.core.start"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 82
    const-string v5, "SESSION_TYPE"

    invoke-virtual {p1, v5, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 85
    .local v3, sessionType:I
    const-string v5, "SESSION_ID"

    invoke-virtual {p1, v5, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 88
    .local v1, sessionId:I
    const-string v5, "SESSION_WAP_DATA"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v4

    .line 91
    .local v4, sessionWapData:[B
    const-string v5, "SESSION_RESULT"

    invoke-virtual {p1, v5, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 94
    .local v2, sessionResult:I
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 95
    .local v0, msg:Landroid/os/Message;
    iput v3, v0, Landroid/os/Message;->what:I

    .line 96
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 97
    iput v2, v0, Landroid/os/Message;->arg2:I

    .line 98
    iput-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 99
    iget-object v5, p0, Lcom/htc/omadm/core/DMService;->mHandler:Lcom/htc/omadm/core/DMService$MyHandler;

    invoke-virtual {v5, v0}, Lcom/htc/omadm/core/DMService$MyHandler;->sendMessage(Landroid/os/Message;)Z

    .line 101
    sget-object v5, Lcom/htc/omadm/core/DMService;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/htc/omadm/core/DeviceNotifyReceiver;->hasOOBE(Landroid/content/Context;)Z

    move-result v5

    if-ne v5, v7, :cond_1

    const/4 v5, 0x2

    if-ne v3, v5, :cond_1

    .line 102
    const-string v5, "DMService"

    const-string v6, "PropertyState.OOBEServiceReady set true."

    invoke-static {v5, v6}, Lcom/htc/omadm/util/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    sput-boolean v7, Lcom/htc/omadm/prop/PropertyState;->OOBEServiceReady:Z

    .line 104
    invoke-static {}, Lcom/htc/omadm/rule/Factory;->checkInit()Z

    move-result v5

    if-ne v5, v7, :cond_3

    .line 105
    invoke-static {}, Lcom/htc/omadm/libdo/system/SysLib;->getSingleton()Lcom/htc/omadm/libdo/system/SysLib;

    move-result-object v5

    invoke-virtual {v5, v7}, Lcom/htc/omadm/libdo/system/SysLib;->setPowerAcquire(Z)V

    .line 106
    invoke-static {}, Lcom/htc/omadm/libdo/system/SysLib;->getSingleton()Lcom/htc/omadm/libdo/system/SysLib;

    move-result-object v5

    invoke-virtual {v5, v7}, Lcom/htc/omadm/libdo/system/SysLib;->setForeground(Z)V

    .line 110
    :goto_1
    sget-boolean v5, Lcom/htc/omadm/prop/PropertyState;->OOBEUIReady:Z

    if-nez v5, :cond_1

    .line 111
    invoke-virtual {p0}, Lcom/htc/omadm/core/DMService;->StartTimeoutforWaitOOBEUINotify()V

    goto :goto_0

    .line 108
    :cond_3
    sput-boolean v7, Lcom/htc/omadm/core/DMService;->bPendingPowerAndForeground:Z

    goto :goto_1

    .line 117
    .end local v0           #msg:Landroid/os/Message;
    .end local v1           #sessionId:I
    .end local v2           #sessionResult:I
    .end local v3           #sessionType:I
    .end local v4           #sessionWapData:[B
    :cond_4
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    const-string v6, "com.htc.omadm.core.init"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_0
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 1
    .parameter "intent"

    .prologue
    .line 150
    invoke-super {p0, p1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    .line 151
    const/4 v0, 0x1

    return v0
.end method
