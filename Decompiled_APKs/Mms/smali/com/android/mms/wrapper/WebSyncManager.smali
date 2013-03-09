.class abstract Lcom/android/mms/wrapper/WebSyncManager;
.super Ljava/lang/Object;
.source "WebSyncManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/wrapper/WebSyncManager$1;,
        Lcom/android/mms/wrapper/WebSyncManager$SyncHandler;
    }
.end annotation


# static fields
.field protected static final LOGTAG:Ljava/lang/String; = "websync"

.field private static final QUIT_MESSAGE:I = 0x66

.field private static SYNC_LATER_INTERVAL:I = 0x0

.field private static final SYNC_MESSAGE:I = 0x65

.field private static SYNC_NOW_INTERVAL:I


# instance fields
.field protected mHandler:Landroid/os/Handler;

.field protected mResolver:Landroid/content/ContentResolver;

.field private mSyncThread:Ljava/lang/Thread;

.field private mThreadName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const/16 v0, 0x64

    sput v0, Lcom/android/mms/wrapper/WebSyncManager;->SYNC_NOW_INTERVAL:I

    .line 36
    const v0, 0x493e0

    sput v0, Lcom/android/mms/wrapper/WebSyncManager;->SYNC_LATER_INTERVAL:I

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .parameter "context"
    .parameter "name"

    .prologue
    .line 67
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object p2, p0, Lcom/android/mms/wrapper/WebSyncManager;->mThreadName:Ljava/lang/String;

    .line 69
    if-eqz p1, :cond_0

    .line 70
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/wrapper/WebSyncManager;->mResolver:Landroid/content/ContentResolver;

    .line 75
    :cond_0
    return-void
.end method

.method static synthetic access$000()I
    .locals 1

    .prologue
    .line 28
    sget v0, Lcom/android/mms/wrapper/WebSyncManager;->SYNC_LATER_INTERVAL:I

    return v0
.end method

.method static synthetic access$102(Lcom/android/mms/wrapper/WebSyncManager;Ljava/lang/Thread;)Ljava/lang/Thread;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    iput-object p1, p0, Lcom/android/mms/wrapper/WebSyncManager;->mSyncThread:Ljava/lang/Thread;

    return-object p1
.end method


# virtual methods
.method protected clone()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 78
    new-instance v0, Ljava/lang/CloneNotSupportedException;

    const-string v1, "doesn\'t implement Cloneable"

    invoke-direct {v0, v1}, Ljava/lang/CloneNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected onSyncInit()V
    .locals 0

    .prologue
    .line 156
    return-void
.end method

.method public resetSync()V
    .locals 4

    .prologue
    const/16 v2, 0x65

    .line 112
    iget-object v1, p0, Lcom/android/mms/wrapper/WebSyncManager;->mSyncThread:Ljava/lang/Thread;

    if-nez v1, :cond_1

    .line 121
    :cond_0
    :goto_0
    return-void

    .line 114
    :cond_1
    iget-object v1, p0, Lcom/android/mms/wrapper/WebSyncManager;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 115
    iget-object v1, p0, Lcom/android/mms/wrapper/WebSyncManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 116
    iget-object v1, p0, Lcom/android/mms/wrapper/WebSyncManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 117
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/mms/wrapper/WebSyncManager;->mHandler:Landroid/os/Handler;

    sget v2, Lcom/android/mms/wrapper/WebSyncManager;->SYNC_LATER_INTERVAL:I

    int-to-long v2, v2

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method public run()V
    .locals 4

    .prologue
    .line 83
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 84
    new-instance v1, Lcom/android/mms/wrapper/WebSyncManager$SyncHandler;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/mms/wrapper/WebSyncManager$SyncHandler;-><init>(Lcom/android/mms/wrapper/WebSyncManager;Lcom/android/mms/wrapper/WebSyncManager$1;)V

    iput-object v1, p0, Lcom/android/mms/wrapper/WebSyncManager;->mHandler:Landroid/os/Handler;

    .line 85
    invoke-virtual {p0}, Lcom/android/mms/wrapper/WebSyncManager;->onSyncInit()V

    .line 87
    iget-object v1, p0, Lcom/android/mms/wrapper/WebSyncManager;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x65

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 88
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/mms/wrapper/WebSyncManager;->mHandler:Landroid/os/Handler;

    sget v2, Lcom/android/mms/wrapper/WebSyncManager;->SYNC_LATER_INTERVAL:I

    int-to-long v2, v2

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 90
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 91
    return-void
.end method

.method public startSync()V
    .locals 2

    .prologue
    .line 131
    iget-object v0, p0, Lcom/android/mms/wrapper/WebSyncManager;->mResolver:Landroid/content/ContentResolver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/wrapper/WebSyncManager;->mSyncThread:Ljava/lang/Thread;

    if-nez v0, :cond_0

    .line 132
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/mms/wrapper/WebSyncManager;->mSyncThread:Ljava/lang/Thread;

    .line 133
    iget-object v0, p0, Lcom/android/mms/wrapper/WebSyncManager;->mSyncThread:Ljava/lang/Thread;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    .line 134
    iget-object v0, p0, Lcom/android/mms/wrapper/WebSyncManager;->mSyncThread:Ljava/lang/Thread;

    iget-object v1, p0, Lcom/android/mms/wrapper/WebSyncManager;->mThreadName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 135
    iget-object v0, p0, Lcom/android/mms/wrapper/WebSyncManager;->mSyncThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 137
    :cond_0
    return-void
.end method

.method public stopSync()V
    .locals 3

    .prologue
    .line 144
    iget-object v1, p0, Lcom/android/mms/wrapper/WebSyncManager;->mSyncThread:Ljava/lang/Thread;

    if-nez v1, :cond_1

    .line 153
    :cond_0
    :goto_0
    return-void

    .line 146
    :cond_1
    iget-object v1, p0, Lcom/android/mms/wrapper/WebSyncManager;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 147
    iget-object v1, p0, Lcom/android/mms/wrapper/WebSyncManager;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x65

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 148
    iget-object v1, p0, Lcom/android/mms/wrapper/WebSyncManager;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x66

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 149
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/mms/wrapper/WebSyncManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public sync()V
    .locals 4

    .prologue
    const/16 v2, 0x65

    .line 97
    iget-object v1, p0, Lcom/android/mms/wrapper/WebSyncManager;->mSyncThread:Ljava/lang/Thread;

    if-nez v1, :cond_1

    .line 106
    :cond_0
    :goto_0
    return-void

    .line 99
    :cond_1
    iget-object v1, p0, Lcom/android/mms/wrapper/WebSyncManager;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 100
    iget-object v1, p0, Lcom/android/mms/wrapper/WebSyncManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 101
    iget-object v1, p0, Lcom/android/mms/wrapper/WebSyncManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 102
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/mms/wrapper/WebSyncManager;->mHandler:Landroid/os/Handler;

    sget v2, Lcom/android/mms/wrapper/WebSyncManager;->SYNC_NOW_INTERVAL:I

    int-to-long v2, v2

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method abstract syncFromRamToFlash()V
.end method
