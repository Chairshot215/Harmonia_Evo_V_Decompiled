.class public Lcom/google/android/gsf/login/PlusCheckTask;
.super Lcom/google/android/gsf/login/BackgroundTask;
.source "PlusCheckTask.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/google/android/gsf/login/BackgroundTask;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/gsf/login/PlusCheckTask;)Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;
    .locals 1
    .parameter "x0"

    .prologue
    .line 16
    iget-object v0, p0, Lcom/google/android/gsf/login/PlusCheckTask;->mSession:Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/gsf/login/PlusCheckTask;)Lcom/google/android/gsf/loginservice/GLSUser;
    .locals 1
    .parameter "x0"

    .prologue
    .line 16
    iget-object v0, p0, Lcom/google/android/gsf/login/PlusCheckTask;->mGlsUser:Lcom/google/android/gsf/loginservice/GLSUser;

    return-object v0
.end method


# virtual methods
.method public start()V
    .locals 3

    .prologue
    .line 19
    invoke-super {p0}, Lcom/google/android/gsf/login/BackgroundTask;->start()V

    .line 21
    iget-object v1, p0, Lcom/google/android/gsf/login/PlusCheckTask;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 22
    .local v0, resultMessage:Landroid/os/Message;
    new-instance v1, Lcom/google/android/gsf/login/PlusCheckTask$1;

    invoke-direct {v1, p0, v0, v0}, Lcom/google/android/gsf/login/PlusCheckTask$1;-><init>(Lcom/google/android/gsf/login/PlusCheckTask;Landroid/os/Message;Landroid/os/Message;)V

    iput-object v1, p0, Lcom/google/android/gsf/login/PlusCheckTask;->mTaskThread:Lcom/google/android/gsf/login/CancelableCallbackThread;

    .line 35
    iget-object v1, p0, Lcom/google/android/gsf/login/PlusCheckTask;->mTaskThread:Lcom/google/android/gsf/login/CancelableCallbackThread;

    invoke-virtual {v1}, Lcom/google/android/gsf/login/CancelableCallbackThread;->start()V

    .line 36
    return-void
.end method
