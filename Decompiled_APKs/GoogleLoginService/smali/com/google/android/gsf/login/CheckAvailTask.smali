.class public Lcom/google/android/gsf/login/CheckAvailTask;
.super Lcom/google/android/gsf/login/BackgroundTask;
.source "CheckAvailTask.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/google/android/gsf/login/BackgroundTask;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/gsf/login/CheckAvailTask;)Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/google/android/gsf/login/CheckAvailTask;->mSession:Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "icicle"

    .prologue
    .line 36
    invoke-super {p0, p1}, Lcom/google/android/gsf/login/BackgroundTask;->onCreate(Landroid/os/Bundle;)V

    .line 37
    const v0, 0x7f0800a4

    invoke-virtual {p0, v0}, Lcom/google/android/gsf/login/CheckAvailTask;->setTitle(I)V

    .line 38
    const v0, 0x7f08006e

    invoke-virtual {p0, v0}, Lcom/google/android/gsf/login/CheckAvailTask;->setMessage(I)V

    .line 39
    return-void
.end method

.method public start()V
    .locals 4

    .prologue
    .line 43
    invoke-super {p0}, Lcom/google/android/gsf/login/BackgroundTask;->start()V

    .line 47
    iget-boolean v2, p0, Lcom/google/android/gsf/login/CheckAvailTask;->LOCAL_LOGV:Z

    if-eqz v2, :cond_0

    const-string v2, "GLSActivity"

    const-string v3, "Checking username availability..."

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gsf/login/CheckAvailTask;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 49
    .local v0, cr:Landroid/content/ContentResolver;
    iget-object v2, p0, Lcom/google/android/gsf/login/CheckAvailTask;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 51
    .local v1, resultMessage:Landroid/os/Message;
    new-instance v2, Lcom/google/android/gsf/login/CheckAvailTask$1;

    invoke-direct {v2, p0, v1, v1}, Lcom/google/android/gsf/login/CheckAvailTask$1;-><init>(Lcom/google/android/gsf/login/CheckAvailTask;Landroid/os/Message;Landroid/os/Message;)V

    iput-object v2, p0, Lcom/google/android/gsf/login/CheckAvailTask;->mTaskThread:Lcom/google/android/gsf/login/CancelableCallbackThread;

    .line 64
    iget-object v2, p0, Lcom/google/android/gsf/login/CheckAvailTask;->mTaskThread:Lcom/google/android/gsf/login/CancelableCallbackThread;

    invoke-virtual {v2}, Lcom/google/android/gsf/login/CancelableCallbackThread;->start()V

    .line 65
    return-void
.end method
