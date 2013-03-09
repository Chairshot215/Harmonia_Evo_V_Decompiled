.class public Lcom/android/mms/ui/ComposeMessageActivity$CalculateTimeHandler;
.super Ljava/lang/Object;
.source "ComposeMessageActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ComposeMessageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CalculateTimeHandler"
.end annotation


# instance fields
.field private mCalculateTimeListener:Lcom/android/mms/ui/ComposeMessageActivity$OnCalculateTimeListener;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mRunnable:Ljava/lang/Runnable;

.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageActivity;


# direct methods
.method public constructor <init>(Lcom/android/mms/ui/ComposeMessageActivity;Landroid/content/Context;Landroid/os/Handler;)V
    .locals 1
    .parameter
    .parameter "context"
    .parameter "handler"

    .prologue
    .line 15519
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$CalculateTimeHandler;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 15520
    iput-object p2, p0, Lcom/android/mms/ui/ComposeMessageActivity$CalculateTimeHandler;->mContext:Landroid/content/Context;

    .line 15521
    iput-object p3, p0, Lcom/android/mms/ui/ComposeMessageActivity$CalculateTimeHandler;->mHandler:Landroid/os/Handler;

    .line 15523
    new-instance v0, Lcom/android/mms/ui/ComposeMessageActivity$CalculateTimeHandler$1;

    invoke-direct {v0, p0, p1}, Lcom/android/mms/ui/ComposeMessageActivity$CalculateTimeHandler$1;-><init>(Lcom/android/mms/ui/ComposeMessageActivity$CalculateTimeHandler;Lcom/android/mms/ui/ComposeMessageActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$CalculateTimeHandler;->mRunnable:Ljava/lang/Runnable;

    .line 15529
    return-void
.end method

.method static synthetic access$14400(Lcom/android/mms/ui/ComposeMessageActivity$CalculateTimeHandler;)Lcom/android/mms/ui/ComposeMessageActivity$OnCalculateTimeListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 15512
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$CalculateTimeHandler;->mCalculateTimeListener:Lcom/android/mms/ui/ComposeMessageActivity$OnCalculateTimeListener;

    return-object v0
.end method

.method static synthetic access$14600(Lcom/android/mms/ui/ComposeMessageActivity$CalculateTimeHandler;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 15512
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$CalculateTimeHandler;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public destroyall()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 15557
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$CalculateTimeHandler;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$CalculateTimeHandler;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 15558
    iput-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity$CalculateTimeHandler;->mContext:Landroid/content/Context;

    .line 15559
    iput-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity$CalculateTimeHandler;->mHandler:Landroid/os/Handler;

    .line 15560
    return-void
.end method

.method public run()V
    .locals 3

    .prologue
    .line 15533
    :try_start_0
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$CalculateTimeHandler;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListCursorLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageActivity;->access$14500(Lcom/android/mms/ui/ComposeMessageActivity;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 15535
    :try_start_1
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$CalculateTimeHandler;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mMegTimestampListAdapter:Lcom/android/mms/ui/MessageTimestampListAdapter;
    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageActivity;->access$2500(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/MessageTimestampListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/ui/MessageTimestampListAdapter;->calculateTimestamp()V

    .line 15536
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 15548
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$CalculateTimeHandler;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity$CalculateTimeHandler;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 15549
    :goto_0
    return-void

    .line 15536
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 15537
    :catch_0
    move-exception v0

    .line 15538
    .local v0, e:Ljava/lang/Exception;
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$CalculateTimeHandler;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/mms/ui/ComposeMessageActivity$CalculateTimeHandler$2;

    invoke-direct {v2, p0}, Lcom/android/mms/ui/ComposeMessageActivity$CalculateTimeHandler$2;-><init>(Lcom/android/mms/ui/ComposeMessageActivity$CalculateTimeHandler;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public setOnCalculateTimeListener(Lcom/android/mms/ui/ComposeMessageActivity$OnCalculateTimeListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 15552
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$CalculateTimeHandler;->mCalculateTimeListener:Lcom/android/mms/ui/ComposeMessageActivity$OnCalculateTimeListener;

    .line 15553
    return-void
.end method
