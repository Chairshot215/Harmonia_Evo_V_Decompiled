.class public Lcom/google/android/gsf/login/ProfileTask;
.super Lcom/google/android/gsf/login/BackgroundTask;
.source "ProfileTask.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/google/android/gsf/login/BackgroundTask;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/gsf/login/ProfileTask;)Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/google/android/gsf/login/ProfileTask;->mSession:Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/gsf/login/ProfileTask;)Lcom/google/android/gsf/loginservice/GLSUser;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/google/android/gsf/login/ProfileTask;->mGlsUser:Lcom/google/android/gsf/loginservice/GLSUser;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "icicle"

    .prologue
    .line 35
    invoke-super {p0, p1}, Lcom/google/android/gsf/login/BackgroundTask;->onCreate(Landroid/os/Bundle;)V

    .line 36
    const v0, 0x7f0800a2

    invoke-virtual {p0, v0}, Lcom/google/android/gsf/login/ProfileTask;->setMessage(I)V

    .line 37
    return-void
.end method

.method public start()V
    .locals 3

    .prologue
    .line 41
    invoke-super {p0}, Lcom/google/android/gsf/login/BackgroundTask;->start()V

    .line 43
    iget-object v1, p0, Lcom/google/android/gsf/login/ProfileTask;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 44
    .local v0, resultMessage:Landroid/os/Message;
    new-instance v1, Lcom/google/android/gsf/login/ProfileTask$1;

    invoke-direct {v1, p0, v0, v0}, Lcom/google/android/gsf/login/ProfileTask$1;-><init>(Lcom/google/android/gsf/login/ProfileTask;Landroid/os/Message;Landroid/os/Message;)V

    iput-object v1, p0, Lcom/google/android/gsf/login/ProfileTask;->mTaskThread:Lcom/google/android/gsf/login/CancelableCallbackThread;

    .line 58
    iget-object v1, p0, Lcom/google/android/gsf/login/ProfileTask;->mTaskThread:Lcom/google/android/gsf/login/CancelableCallbackThread;

    invoke-virtual {v1}, Lcom/google/android/gsf/login/CancelableCallbackThread;->start()V

    .line 59
    return-void
.end method
