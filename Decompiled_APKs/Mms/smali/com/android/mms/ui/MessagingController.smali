.class public Lcom/android/mms/ui/MessagingController;
.super Ljava/lang/Object;
.source "MessagingController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/MessagingController$MessagingHandler;
    }
.end annotation


# static fields
.field public static final HANDLE_ADD_LISTENER:I = 0x0

.field public static final HANDLE_CANCEL_NOTIFICATION:I = 0x5

.field public static final HANDLE_CANCEL_NOTIFICATION_BY_THREAD_IDS:I = 0x6

.field public static final HANDLE_ENABLE_MSG_SHORTCUT_BUBBLE:I = 0x7

.field public static final HANDLE_NEW_NOTIFICATION:I = 0x4

.field public static final HANDLE_ON_DELETE_DETAIL_SCREEN:I = 0xa

.field public static final HANDLE_REFRESH_CONTACT_INFO:I = 0x2

.field public static final HANDLE_REFRESH_UNREAD_COUNT:I = 0x3

.field public static final HANDLE_REMOVE_LISTENER:I = 0x1

.field public static final HANDLE_REMOVE_THREADID_FROM_NOTIFY_LIST:I = 0xd

.field public static final HANDLE_UPDATE_ALL_SHORTCUT:I = 0xb

.field public static final HANDLE_UPDATE_INCOMING_NOTICE_IF_NEED:I = 0xc

.field public static final HANDLE_UPDATE_MSG_SHORTCUT:I = 0x9

.field public static final HANDLE_UPDATE_VVM_SHORTCUT:I = 0x8

.field private static final LOCAL_LOGV:Z = true

.field private static final TAG:Ljava/lang/String; = "MessagingController"

.field private static sInstance:Lcom/android/mms/ui/MessagingController;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/mms/ui/MessagingListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private mWorkingHandler:Landroid/os/Handler;

.field private mWorkingThread:Landroid/os/HandlerThread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x0

    sput-object v0, Lcom/android/mms/ui/MessagingController;->sInstance:Lcom/android/mms/ui/MessagingController;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 52
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object v0, p0, Lcom/android/mms/ui/MessagingController;->mWorkingThread:Landroid/os/HandlerThread;

    .line 42
    iput-object v0, p0, Lcom/android/mms/ui/MessagingController;->mWorkingHandler:Landroid/os/Handler;

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/MessagingController;->mListeners:Ljava/util/ArrayList;

    .line 53
    iput-object p1, p0, Lcom/android/mms/ui/MessagingController;->mContext:Landroid/content/Context;

    .line 54
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "msgBGThread"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/android/mms/ui/MessagingController;->mWorkingThread:Landroid/os/HandlerThread;

    .line 56
    iget-object v0, p0, Lcom/android/mms/ui/MessagingController;->mWorkingThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 57
    new-instance v0, Lcom/android/mms/ui/MessagingController$MessagingHandler;

    iget-object v1, p0, Lcom/android/mms/ui/MessagingController;->mWorkingThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/mms/ui/MessagingController$MessagingHandler;-><init>(Lcom/android/mms/ui/MessagingController;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/mms/ui/MessagingController;->mWorkingHandler:Landroid/os/Handler;

    .line 59
    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/ui/MessagingController;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    iget-object v0, p0, Lcom/android/mms/ui/MessagingController;->mListeners:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/mms/ui/MessagingController;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    iget-object v0, p0, Lcom/android/mms/ui/MessagingController;->mWorkingHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/mms/ui/MessagingController;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    iget-object v0, p0, Lcom/android/mms/ui/MessagingController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static declared-synchronized getSingleton(Landroid/content/Context;)Lcom/android/mms/ui/MessagingController;
    .locals 2
    .parameter "context"

    .prologue
    .line 81
    const-class v1, Lcom/android/mms/ui/MessagingController;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/mms/ui/MessagingController;->sInstance:Lcom/android/mms/ui/MessagingController;

    if-nez v0, :cond_0

    .line 82
    new-instance v0, Lcom/android/mms/ui/MessagingController;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MessagingController;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/mms/ui/MessagingController;->sInstance:Lcom/android/mms/ui/MessagingController;

    .line 84
    :cond_0
    sget-object v0, Lcom/android/mms/ui/MessagingController;->sInstance:Lcom/android/mms/ui/MessagingController;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 81
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public addListener(Lcom/android/mms/ui/MessagingListener;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 156
    iget-object v0, p0, Lcom/android/mms/ui/MessagingController;->mWorkingHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 159
    return-void
.end method

.method public broadcastUiEvent()V
    .locals 0

    .prologue
    .line 202
    invoke-virtual {p0}, Lcom/android/mms/ui/MessagingController;->refreshContactName()V

    .line 203
    return-void
.end method

.method public declared-synchronized cancelMessageNotification(Landroid/content/Context;IJ)V
    .locals 3
    .parameter "context"
    .parameter "id"
    .parameter "delayMillis"

    .prologue
    .line 124
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/mms/ui/MessagingController;->mWorkingHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 125
    iget-object v0, p0, Lcom/android/mms/ui/MessagingController;->mWorkingHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/mms/ui/MessagingController;->mWorkingHandler:Landroid/os/Handler;

    const/4 v2, 0x5

    invoke-virtual {v1, v2, p2, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1, p3, p4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 128
    monitor-exit p0

    return-void

    .line 124
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized cancelNotificationFromThreadIDs(Landroid/content/Context;[JJ)V
    .locals 3
    .parameter "context"
    .parameter "t_ids"
    .parameter "delayMillis"

    .prologue
    .line 131
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/mms/ui/MessagingController;->mWorkingHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 132
    iget-object v0, p0, Lcom/android/mms/ui/MessagingController;->mWorkingHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/mms/ui/MessagingController;->mWorkingHandler:Landroid/os/Handler;

    const/4 v2, 0x6

    invoke-virtual {v1, v2, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1, p3, p4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 135
    monitor-exit p0

    return-void

    .line 131
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public cancelRefresh()V
    .locals 2

    .prologue
    .line 185
    iget-object v0, p0, Lcom/android/mms/ui/MessagingController;->mWorkingHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 186
    return-void
.end method

.method protected finalize()V
    .locals 3

    .prologue
    .line 64
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    iget-object v1, p0, Lcom/android/mms/ui/MessagingController;->mWorkingThread:Landroid/os/HandlerThread;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/MessagingController;->mWorkingThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 69
    iget-object v1, p0, Lcom/android/mms/ui/MessagingController;->mWorkingThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->quit()V

    .line 72
    :cond_0
    :goto_0
    return-void

    .line 65
    :catch_0
    move-exception v0

    .line 66
    .local v0, e:Ljava/lang/Throwable;
    :try_start_1
    const-string v1, "MessagingController"

    const-string v2, "fail to fialize"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 68
    iget-object v1, p0, Lcom/android/mms/ui/MessagingController;->mWorkingThread:Landroid/os/HandlerThread;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/MessagingController;->mWorkingThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 69
    iget-object v1, p0, Lcom/android/mms/ui/MessagingController;->mWorkingThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->quit()V

    goto :goto_0

    .line 68
    .end local v0           #e:Ljava/lang/Throwable;
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/android/mms/ui/MessagingController;->mWorkingThread:Landroid/os/HandlerThread;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/mms/ui/MessagingController;->mWorkingThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 69
    iget-object v2, p0, Lcom/android/mms/ui/MessagingController;->mWorkingThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Looper;->quit()V

    :cond_1
    throw v1
.end method

.method public isActiveListener(Lcom/android/mms/ui/MessagingListener;)Z
    .locals 2
    .parameter "listener"

    .prologue
    .line 168
    iget-object v0, p0, Lcom/android/mms/ui/MessagingController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/android/mms/ui/MessagingListener;->getWeakReference()Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public onDeleteDetailScreen(J)V
    .locals 3
    .parameter "thread_id"

    .prologue
    .line 197
    iget-object v0, p0, Lcom/android/mms/ui/MessagingController;->mWorkingHandler:Landroid/os/Handler;

    const/16 v1, 0xa

    new-instance v2, Ljava/lang/Long;

    invoke-direct {v2, p1, p2}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 199
    return-void
.end method

.method public onNewNotification(ILandroid/content/Intent;)V
    .locals 2
    .parameter "id"
    .parameter "intent"

    .prologue
    .line 193
    iget-object v0, p0, Lcom/android/mms/ui/MessagingController;->mWorkingHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1, p1, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 194
    return-void
.end method

.method public refreshAllMessageUnreadCounts()V
    .locals 2

    .prologue
    .line 189
    iget-object v0, p0, Lcom/android/mms/ui/MessagingController;->mWorkingHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 190
    return-void
.end method

.method public refreshContactName()V
    .locals 4

    .prologue
    const/4 v2, 0x2

    .line 172
    iget-object v0, p0, Lcom/android/mms/ui/MessagingController;->mWorkingHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 174
    iget-object v0, p0, Lcom/android/mms/ui/MessagingController;->mWorkingHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/mms/ui/MessagingController;->mWorkingHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 182
    return-void
.end method

.method public removeListener(Lcom/android/mms/ui/MessagingListener;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 162
    iget-object v0, p0, Lcom/android/mms/ui/MessagingController;->mWorkingHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 164
    return-void
.end method

.method public declared-synchronized removeMessageFromHandler(I)V
    .locals 1
    .parameter "what"

    .prologue
    .line 152
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/mms/ui/MessagingController;->mWorkingHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeMessages(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 153
    monitor-exit p0

    return-void

    .line 152
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public removeThreadIdFromNotifyList(I[JJ)V
    .locals 3
    .parameter "notifyId"
    .parameter "ids"
    .parameter "delayMillis"

    .prologue
    .line 145
    iget-object v0, p0, Lcom/android/mms/ui/MessagingController;->mWorkingHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/mms/ui/MessagingController;->mWorkingHandler:Landroid/os/Handler;

    const/16 v2, 0xd

    invoke-virtual {v1, v2, p1, p1, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1, p3, p4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 149
    return-void
.end method

.method public declared-synchronized updateAllShhortcuts(Landroid/content/Context;IZ)V
    .locals 5
    .parameter "context"
    .parameter "count"
    .parameter "force"

    .prologue
    .line 88
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/mms/ui/MessagingController;->mWorkingHandler:Landroid/os/Handler;

    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 89
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 90
    .local v0, info:Landroid/content/Intent;
    const-string v1, "unread_count"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 91
    const-string v1, "force"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 92
    iget-object v1, p0, Lcom/android/mms/ui/MessagingController;->mWorkingHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/mms/ui/MessagingController;->mWorkingHandler:Landroid/os/Handler;

    const/16 v3, 0xb

    invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v3, 0x1f4

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    monitor-exit p0

    return-void

    .line 88
    .end local v0           #info:Landroid/content/Intent;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public updateIncomingNotificationIfNeed(J)V
    .locals 3
    .parameter "delayMillis"

    .prologue
    const/16 v2, 0xc

    .line 138
    iget-object v0, p0, Lcom/android/mms/ui/MessagingController;->mWorkingHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 139
    iget-object v0, p0, Lcom/android/mms/ui/MessagingController;->mWorkingHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/mms/ui/MessagingController;->mWorkingHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 142
    return-void
.end method

.method public declared-synchronized updateMsgShortcut(Landroid/content/Context;IZ)V
    .locals 5
    .parameter "context"
    .parameter "count"
    .parameter "force"

    .prologue
    .line 113
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/mms/ui/MessagingController;->mWorkingHandler:Landroid/os/Handler;

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 114
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 115
    .local v0, info:Landroid/content/Intent;
    const-string v1, "count"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 116
    const-string v1, "force"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 119
    iget-object v1, p0, Lcom/android/mms/ui/MessagingController;->mWorkingHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/mms/ui/MessagingController;->mWorkingHandler:Landroid/os/Handler;

    const/16 v3, 0x9

    invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v3, 0x1f4

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 121
    monitor-exit p0

    return-void

    .line 113
    .end local v0           #info:Landroid/content/Intent;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized updateVvmShortcut(Landroid/content/Context;IZ)V
    .locals 5
    .parameter "context"
    .parameter "unReadCount"
    .parameter "force"

    .prologue
    .line 97
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/mms/ui/MessagingController;->mWorkingHandler:Landroid/os/Handler;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 98
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 99
    .local v0, info:Landroid/content/Intent;
    const-string v1, "unread_count"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 100
    const-string v1, "force"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 101
    iget-object v1, p0, Lcom/android/mms/ui/MessagingController;->mWorkingHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/mms/ui/MessagingController;->mWorkingHandler:Landroid/os/Handler;

    const/16 v3, 0x8

    invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v3, 0x1f4

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 103
    monitor-exit p0

    return-void

    .line 97
    .end local v0           #info:Landroid/content/Intent;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
