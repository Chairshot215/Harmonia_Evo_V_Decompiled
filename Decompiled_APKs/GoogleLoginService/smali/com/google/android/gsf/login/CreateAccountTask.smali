.class public Lcom/google/android/gsf/login/CreateAccountTask;
.super Lcom/google/android/gsf/login/BackgroundTask;
.source "CreateAccountTask.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/google/android/gsf/login/BackgroundTask;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/gsf/login/CreateAccountTask;)Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/google/android/gsf/login/CreateAccountTask;->mSession:Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "icicle"

    .prologue
    .line 34
    invoke-super {p0, p1}, Lcom/google/android/gsf/login/BackgroundTask;->onCreate(Landroid/os/Bundle;)V

    .line 35
    const v0, 0x7f08006d

    invoke-virtual {p0, v0}, Lcom/google/android/gsf/login/CreateAccountTask;->setTitle(I)V

    .line 36
    const v0, 0x7f08006c

    invoke-virtual {p0, v0}, Lcom/google/android/gsf/login/CreateAccountTask;->setMessage(I)V

    .line 37
    return-void
.end method

.method public start()V
    .locals 3

    .prologue
    .line 41
    invoke-super {p0}, Lcom/google/android/gsf/login/BackgroundTask;->start()V

    .line 48
    iget-boolean v1, p0, Lcom/google/android/gsf/login/CreateAccountTask;->LOCAL_LOGV:Z

    if-eqz v1, :cond_0

    const-string v1, "GLSActivity"

    const-string v2, "Creating account..."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    :cond_0
    iget-object v1, p0, Lcom/google/android/gsf/login/CreateAccountTask;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 50
    .local v0, resultMessage:Landroid/os/Message;
    new-instance v1, Lcom/google/android/gsf/login/CreateAccountTask$1;

    invoke-direct {v1, p0, v0, v0}, Lcom/google/android/gsf/login/CreateAccountTask$1;-><init>(Lcom/google/android/gsf/login/CreateAccountTask;Landroid/os/Message;Landroid/os/Message;)V

    iput-object v1, p0, Lcom/google/android/gsf/login/CreateAccountTask;->mTaskThread:Lcom/google/android/gsf/login/CancelableCallbackThread;

    .line 70
    iget-object v1, p0, Lcom/google/android/gsf/login/CreateAccountTask;->mTaskThread:Lcom/google/android/gsf/login/CancelableCallbackThread;

    invoke-virtual {v1}, Lcom/google/android/gsf/login/CancelableCallbackThread;->start()V

    .line 71
    return-void
.end method
