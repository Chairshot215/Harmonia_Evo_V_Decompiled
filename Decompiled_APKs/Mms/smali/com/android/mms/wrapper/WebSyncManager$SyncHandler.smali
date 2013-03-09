.class Lcom/android/mms/wrapper/WebSyncManager$SyncHandler;
.super Landroid/os/Handler;
.source "WebSyncManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/wrapper/WebSyncManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SyncHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/wrapper/WebSyncManager;


# direct methods
.method private constructor <init>(Lcom/android/mms/wrapper/WebSyncManager;)V
    .locals 0
    .parameter

    .prologue
    .line 48
    iput-object p1, p0, Lcom/android/mms/wrapper/WebSyncManager$SyncHandler;->this$0:Lcom/android/mms/wrapper/WebSyncManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/mms/wrapper/WebSyncManager;Lcom/android/mms/wrapper/WebSyncManager$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/android/mms/wrapper/WebSyncManager$SyncHandler;-><init>(Lcom/android/mms/wrapper/WebSyncManager;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x65

    .line 51
    iget v1, p1, Landroid/os/Message;->what:I

    if-ne v1, v2, :cond_1

    .line 54
    iget-object v1, p0, Lcom/android/mms/wrapper/WebSyncManager$SyncHandler;->this$0:Lcom/android/mms/wrapper/WebSyncManager;

    invoke-virtual {v1}, Lcom/android/mms/wrapper/WebSyncManager;->syncFromRamToFlash()V

    .line 57
    invoke-virtual {p0, v2}, Lcom/android/mms/wrapper/WebSyncManager$SyncHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 58
    .local v0, newmsg:Landroid/os/Message;
    invoke-static {}, Lcom/android/mms/wrapper/WebSyncManager;->access$000()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/mms/wrapper/WebSyncManager$SyncHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 64
    .end local v0           #newmsg:Landroid/os/Message;
    :cond_0
    :goto_0
    return-void

    .line 59
    :cond_1
    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v2, 0x66

    if-ne v1, v2, :cond_0

    .line 60
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->quit()V

    .line 61
    iget-object v1, p0, Lcom/android/mms/wrapper/WebSyncManager$SyncHandler;->this$0:Lcom/android/mms/wrapper/WebSyncManager;

    iput-object v3, v1, Lcom/android/mms/wrapper/WebSyncManager;->mHandler:Landroid/os/Handler;

    .line 62
    iget-object v1, p0, Lcom/android/mms/wrapper/WebSyncManager$SyncHandler;->this$0:Lcom/android/mms/wrapper/WebSyncManager;

    #setter for: Lcom/android/mms/wrapper/WebSyncManager;->mSyncThread:Ljava/lang/Thread;
    invoke-static {v1, v3}, Lcom/android/mms/wrapper/WebSyncManager;->access$102(Lcom/android/mms/wrapper/WebSyncManager;Ljava/lang/Thread;)Ljava/lang/Thread;

    goto :goto_0
.end method
