.class public Lcom/android/providers/contacts/NotifyDialerScheduler;
.super Ljava/lang/Object;
.source "NotifyDialerScheduler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/providers/contacts/NotifyDialerScheduler$WorkingHandler;
    }
.end annotation


# static fields
.field private static final DELAY_TIME:I = 0xc8

.field private static final LOGGABLE:Z = true

.field private static final NOTIFICATION_TYPE_BASE:I = 0x0

.field private static final NOTIFICATION_TYPE_CALL_LOG:I = 0x2

.field private static final NOTIFICATION_TYPE_SUGGESTION:I = 0x1

.field private static final SCREEN_OFF_DELAY_TIME:I = 0x1388

.field private static final TAG:Ljava/lang/String; = "NotifyDialerScheduler"

.field private static final delay_time_long:J = 0x186a0L

.field private static final delay_time_short:J = 0x7d0L

.field private static mContext:Landroid/content/Context;

.field private static mHandler:Landroid/os/Handler;

.field private static mThread:Landroid/os/HandlerThread;

.field private static sInstance:Lcom/android/providers/contacts/NotifyDialerScheduler;


# instance fields
.field private mDialerSrv:Lcom/htc/service/dialer/IDialerService;

.field private mIsPowerConnected:Z

.field private mIsScreenOff:Z

.field mRawContactsMarkedForArrange:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mSrvConn:Landroid/content/ServiceConnection;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 32
    sput-object v0, Lcom/android/providers/contacts/NotifyDialerScheduler;->mContext:Landroid/content/Context;

    .line 33
    sput-object v0, Lcom/android/providers/contacts/NotifyDialerScheduler;->mThread:Landroid/os/HandlerThread;

    .line 34
    sput-object v0, Lcom/android/providers/contacts/NotifyDialerScheduler;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 124
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object v2, p0, Lcom/android/providers/contacts/NotifyDialerScheduler;->mDialerSrv:Lcom/htc/service/dialer/IDialerService;

    .line 45
    iput-object v2, p0, Lcom/android/providers/contacts/NotifyDialerScheduler;->mSrvConn:Landroid/content/ServiceConnection;

    .line 49
    iput-boolean v1, p0, Lcom/android/providers/contacts/NotifyDialerScheduler;->mIsScreenOff:Z

    .line 50
    iput-boolean v1, p0, Lcom/android/providers/contacts/NotifyDialerScheduler;->mIsPowerConnected:Z

    .line 64
    new-instance v1, Lcom/android/providers/contacts/NotifyDialerScheduler$1;

    invoke-direct {v1, p0}, Lcom/android/providers/contacts/NotifyDialerScheduler$1;-><init>(Lcom/android/providers/contacts/NotifyDialerScheduler;)V

    iput-object v1, p0, Lcom/android/providers/contacts/NotifyDialerScheduler;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 126
    sput-object p1, Lcom/android/providers/contacts/NotifyDialerScheduler;->mContext:Landroid/content/Context;

    .line 128
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "NotifyDialerScheduler"

    const/16 v3, 0xa

    invoke-direct {v1, v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/android/providers/contacts/NotifyDialerScheduler;->mThread:Landroid/os/HandlerThread;

    .line 130
    sget-object v1, Lcom/android/providers/contacts/NotifyDialerScheduler;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 131
    new-instance v1, Lcom/android/providers/contacts/NotifyDialerScheduler$WorkingHandler;

    sget-object v2, Lcom/android/providers/contacts/NotifyDialerScheduler;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/providers/contacts/NotifyDialerScheduler$WorkingHandler;-><init>(Lcom/android/providers/contacts/NotifyDialerScheduler;Landroid/os/Looper;)V

    sput-object v1, Lcom/android/providers/contacts/NotifyDialerScheduler;->mHandler:Landroid/os/Handler;

    .line 134
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.CONTACTS_DB_READY"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 136
    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 137
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 138
    const-string v1, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 139
    const-string v1, "android.intent.action.ACTION_POWER_DISCONNECTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 142
    sget-object v1, Lcom/android/providers/contacts/NotifyDialerScheduler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/providers/contacts/NotifyDialerScheduler;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 169
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/providers/contacts/NotifyDialerScheduler;->mRawContactsMarkedForArrange:Ljava/util/ArrayList;

    .line 171
    return-void
.end method

.method static synthetic access$000(Lcom/android/providers/contacts/NotifyDialerScheduler;)Landroid/content/ServiceConnection;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/providers/contacts/NotifyDialerScheduler;->mSrvConn:Landroid/content/ServiceConnection;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/providers/contacts/NotifyDialerScheduler;Landroid/content/ServiceConnection;)Landroid/content/ServiceConnection;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27
    iput-object p1, p0, Lcom/android/providers/contacts/NotifyDialerScheduler;->mSrvConn:Landroid/content/ServiceConnection;

    return-object p1
.end method

.method static synthetic access$102(Lcom/android/providers/contacts/NotifyDialerScheduler;Lcom/htc/service/dialer/IDialerService;)Lcom/htc/service/dialer/IDialerService;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27
    iput-object p1, p0, Lcom/android/providers/contacts/NotifyDialerScheduler;->mDialerSrv:Lcom/htc/service/dialer/IDialerService;

    return-object p1
.end method

.method static synthetic access$200()Landroid/content/Context;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/android/providers/contacts/NotifyDialerScheduler;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/providers/contacts/NotifyDialerScheduler;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-boolean v0, p0, Lcom/android/providers/contacts/NotifyDialerScheduler;->mIsScreenOff:Z

    return v0
.end method

.method static synthetic access$302(Lcom/android/providers/contacts/NotifyDialerScheduler;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27
    iput-boolean p1, p0, Lcom/android/providers/contacts/NotifyDialerScheduler;->mIsScreenOff:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/providers/contacts/NotifyDialerScheduler;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-boolean v0, p0, Lcom/android/providers/contacts/NotifyDialerScheduler;->mIsPowerConnected:Z

    return v0
.end method

.method static synthetic access$402(Lcom/android/providers/contacts/NotifyDialerScheduler;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27
    iput-boolean p1, p0, Lcom/android/providers/contacts/NotifyDialerScheduler;->mIsPowerConnected:Z

    return p1
.end method

.method static synthetic access$500()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/android/providers/contacts/NotifyDialerScheduler;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public static declared-synchronized getInstance()Lcom/android/providers/contacts/NotifyDialerScheduler;
    .locals 2

    .prologue
    .line 61
    const-class v0, Lcom/android/providers/contacts/NotifyDialerScheduler;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/providers/contacts/NotifyDialerScheduler;->sInstance:Lcom/android/providers/contacts/NotifyDialerScheduler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/providers/contacts/NotifyDialerScheduler;
    .locals 2
    .parameter "context"

    .prologue
    .line 54
    const-class v1, Lcom/android/providers/contacts/NotifyDialerScheduler;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/providers/contacts/NotifyDialerScheduler;->sInstance:Lcom/android/providers/contacts/NotifyDialerScheduler;

    if-nez v0, :cond_0

    .line 55
    new-instance v0, Lcom/android/providers/contacts/NotifyDialerScheduler;

    invoke-direct {v0, p0}, Lcom/android/providers/contacts/NotifyDialerScheduler;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/providers/contacts/NotifyDialerScheduler;->sInstance:Lcom/android/providers/contacts/NotifyDialerScheduler;

    .line 57
    :cond_0
    sget-object v0, Lcom/android/providers/contacts/NotifyDialerScheduler;->sInstance:Lcom/android/providers/contacts/NotifyDialerScheduler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 54
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method protected finalize()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 229
    sget-object v0, Lcom/android/providers/contacts/NotifyDialerScheduler;->mThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/providers/contacts/NotifyDialerScheduler;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 230
    sget-object v0, Lcom/android/providers/contacts/NotifyDialerScheduler;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 232
    :cond_0
    sget-object v0, Lcom/android/providers/contacts/NotifyDialerScheduler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/providers/contacts/NotifyDialerScheduler;->mSrvConn:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 233
    iput-object v2, p0, Lcom/android/providers/contacts/NotifyDialerScheduler;->mSrvConn:Landroid/content/ServiceConnection;

    .line 234
    iput-object v2, p0, Lcom/android/providers/contacts/NotifyDialerScheduler;->mDialerSrv:Lcom/htc/service/dialer/IDialerService;

    .line 236
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 237
    return-void
.end method

.method public notifyBatchModifyContact(Ljava/util/ArrayList;)V
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 365
    .local p1, contactIdList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    iget-object v3, p0, Lcom/android/providers/contacts/NotifyDialerScheduler;->mDialerSrv:Lcom/htc/service/dialer/IDialerService;

    if-eqz v3, :cond_0

    .line 366
    const-string v3, "NotifyDialerScheduler"

    invoke-virtual {p1}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    :try_start_0
    monitor-enter p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 369
    :try_start_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 370
    .local v0, contactId:Ljava/lang/Long;
    iget-object v3, p0, Lcom/android/providers/contacts/NotifyDialerScheduler;->mDialerSrv:Lcom/htc/service/dialer/IDialerService;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-interface {v3, v4, v5}, Lcom/htc/service/dialer/IDialerService;->notifyModifyContact(J)V

    goto :goto_0

    .line 372
    .end local v0           #contactId:Ljava/lang/Long;
    .end local v2           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v3
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 373
    :catch_0
    move-exception v1

    .line 374
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 377
    .end local v1           #e:Landroid/os/RemoteException;
    :cond_0
    :goto_1
    return-void

    .line 372
    .restart local v2       #i$:Ljava/util/Iterator;
    :cond_1
    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method public notifyDeleteContact(J)V
    .locals 2
    .parameter "contactId"

    .prologue
    .line 336
    iget-object v1, p0, Lcom/android/providers/contacts/NotifyDialerScheduler;->mDialerSrv:Lcom/htc/service/dialer/IDialerService;

    if-eqz v1, :cond_0

    .line 338
    :try_start_0
    iget-object v1, p0, Lcom/android/providers/contacts/NotifyDialerScheduler;->mDialerSrv:Lcom/htc/service/dialer/IDialerService;

    invoke-interface {v1, p1, p2}, Lcom/htc/service/dialer/IDialerService;->notifyDeleteContact(J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 343
    :cond_0
    :goto_0
    return-void

    .line 339
    :catch_0
    move-exception v0

    .line 340
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public notifyInsertCallLog(JLjava/lang/String;JIJLjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "callLogId"
    .parameter "number"
    .parameter "date"
    .parameter "type"
    .parameter "contactId"
    .parameter "cityId"
    .parameter "cname"

    .prologue
    .line 296
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 297
    .local v0, bundle:Landroid/os/Bundle;
    const-string v1, "callLogId"

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 298
    const-string v1, "contactId"

    invoke-virtual {v0, v1, p7, p8}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 299
    const-string v1, "date"

    invoke-virtual {v0, v1, p4, p5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 300
    const-string v1, "type"

    invoke-virtual {v0, v1, p6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 301
    const-string v1, "number"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    const-string v1, "cityId"

    invoke-virtual {v0, v1, p9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    const-string v1, "cname"

    invoke-virtual {v0, v1, p10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/android/providers/contacts/NotifyDialerScheduler;->updateCache(ILandroid/os/Bundle;)V

    .line 309
    return-void
.end method

.method public notifyInsertContact(J)V
    .locals 2
    .parameter "contactId"

    .prologue
    .line 326
    iget-object v1, p0, Lcom/android/providers/contacts/NotifyDialerScheduler;->mDialerSrv:Lcom/htc/service/dialer/IDialerService;

    if-eqz v1, :cond_0

    .line 328
    :try_start_0
    iget-object v1, p0, Lcom/android/providers/contacts/NotifyDialerScheduler;->mDialerSrv:Lcom/htc/service/dialer/IDialerService;

    invoke-interface {v1, p1, p2}, Lcom/htc/service/dialer/IDialerService;->notifyInsertContact(J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 333
    :cond_0
    :goto_0
    return-void

    .line 329
    :catch_0
    move-exception v0

    .line 330
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public notifyModifyCallLog()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 356
    const-wide/16 v0, 0xc8

    .line 357
    .local v0, baseDelayTime:J
    iget-boolean v2, p0, Lcom/android/providers/contacts/NotifyDialerScheduler;->mIsScreenOff:Z

    if-eqz v2, :cond_0

    .line 358
    const-wide/16 v0, 0x1388

    .line 360
    :cond_0
    sget-object v2, Lcom/android/providers/contacts/NotifyDialerScheduler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 361
    sget-object v2, Lcom/android/providers/contacts/NotifyDialerScheduler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 362
    return-void
.end method

.method public notifyModifyContact(J)V
    .locals 2
    .parameter "contactId"

    .prologue
    .line 346
    iget-object v1, p0, Lcom/android/providers/contacts/NotifyDialerScheduler;->mDialerSrv:Lcom/htc/service/dialer/IDialerService;

    if-eqz v1, :cond_0

    .line 348
    :try_start_0
    iget-object v1, p0, Lcom/android/providers/contacts/NotifyDialerScheduler;->mDialerSrv:Lcom/htc/service/dialer/IDialerService;

    invoke-interface {v1, p1, p2}, Lcom/htc/service/dialer/IDialerService;->notifyModifyContact(J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 353
    :cond_0
    :goto_0
    return-void

    .line 349
    :catch_0
    move-exception v0

    .line 350
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public notifyUpdateCallLog()V
    .locals 2

    .prologue
    .line 285
    iget-object v1, p0, Lcom/android/providers/contacts/NotifyDialerScheduler;->mDialerSrv:Lcom/htc/service/dialer/IDialerService;

    if-eqz v1, :cond_0

    .line 287
    :try_start_0
    iget-object v1, p0, Lcom/android/providers/contacts/NotifyDialerScheduler;->mDialerSrv:Lcom/htc/service/dialer/IDialerService;

    invoke-interface {v1}, Lcom/htc/service/dialer/IDialerService;->notifyUpdateCallLog()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 292
    :cond_0
    :goto_0
    return-void

    .line 288
    :catch_0
    move-exception v0

    .line 289
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public notifyUpdateGroup()V
    .locals 2

    .prologue
    .line 312
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/providers/contacts/NotifyDialerScheduler;->updateCache(ILandroid/os/Bundle;)V

    .line 313
    return-void
.end method

.method public pendingBaseNofication(Z)V
    .locals 6
    .parameter "isSyncToNetwork"

    .prologue
    const/4 v5, 0x0

    .line 240
    const-wide/16 v0, 0xc8

    .line 241
    .local v0, baseDelayTime:J
    iget-boolean v2, p0, Lcom/android/providers/contacts/NotifyDialerScheduler;->mIsScreenOff:Z

    if-eqz v2, :cond_0

    .line 242
    const-wide/16 v0, 0x1388

    .line 244
    :cond_0
    sget-object v2, Lcom/android/providers/contacts/NotifyDialerScheduler;->mHandler:Landroid/os/Handler;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v5, v3}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 245
    sget-object v2, Lcom/android/providers/contacts/NotifyDialerScheduler;->mHandler:Landroid/os/Handler;

    sget-object v3, Lcom/android/providers/contacts/NotifyDialerScheduler;->mHandler:Landroid/os/Handler;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, v5, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 247
    return-void
.end method

.method public pendingSuggestionNofication(Ljava/util/ArrayList;)V
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, RawContactsMarkedForArrange:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v7, 0x1

    .line 257
    sget-object v4, Lcom/android/providers/contacts/NotifyDialerScheduler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 258
    iget-object v5, p0, Lcom/android/providers/contacts/NotifyDialerScheduler;->mRawContactsMarkedForArrange:Ljava/util/ArrayList;

    monitor-enter v5

    .line 259
    :try_start_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 260
    .local v3, id:I
    iget-object v4, p0, Lcom/android/providers/contacts/NotifyDialerScheduler;->mRawContactsMarkedForArrange:Ljava/util/ArrayList;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 261
    iget-object v4, p0, Lcom/android/providers/contacts/NotifyDialerScheduler;->mRawContactsMarkedForArrange:Ljava/util/ArrayList;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 264
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #id:I
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .restart local v2       #i$:Ljava/util/Iterator;
    :cond_1
    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 266
    const-wide/16 v0, 0x0

    .line 267
    .local v0, deleyTime:J
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-gt v4, v7, :cond_2

    iget-object v4, p0, Lcom/android/providers/contacts/NotifyDialerScheduler;->mRawContactsMarkedForArrange:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-le v4, v7, :cond_3

    .line 269
    :cond_2
    const-wide/32 v0, 0x186a0

    .line 274
    :goto_1
    sget-object v4, Lcom/android/providers/contacts/NotifyDialerScheduler;->mHandler:Landroid/os/Handler;

    sget-object v5, Lcom/android/providers/contacts/NotifyDialerScheduler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 280
    return-void

    .line 272
    :cond_3
    const-wide/16 v0, 0x7d0

    goto :goto_1
.end method

.method public updateCache(ILandroid/os/Bundle;)V
    .locals 2
    .parameter "type"
    .parameter "bundle"

    .prologue
    .line 316
    iget-object v1, p0, Lcom/android/providers/contacts/NotifyDialerScheduler;->mDialerSrv:Lcom/htc/service/dialer/IDialerService;

    if-eqz v1, :cond_0

    .line 318
    :try_start_0
    iget-object v1, p0, Lcom/android/providers/contacts/NotifyDialerScheduler;->mDialerSrv:Lcom/htc/service/dialer/IDialerService;

    invoke-interface {v1, p1, p2}, Lcom/htc/service/dialer/IDialerService;->updateCache(ILandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 323
    :cond_0
    :goto_0
    return-void

    .line 319
    :catch_0
    move-exception v0

    .line 320
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method
