.class Lcom/google/android/gsf/login/CheckAvailTask$1;
.super Lcom/google/android/gsf/login/CancelableCallbackThread;
.source "CheckAvailTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gsf/login/CheckAvailTask;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/gsf/login/CheckAvailTask;

.field final synthetic val$resultMessage:Landroid/os/Message;


# direct methods
.method constructor <init>(Lcom/google/android/gsf/login/CheckAvailTask;Landroid/os/Message;Landroid/os/Message;)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter

    .prologue
    .line 51
    iput-object p1, p0, Lcom/google/android/gsf/login/CheckAvailTask$1;->this$0:Lcom/google/android/gsf/login/CheckAvailTask;

    iput-object p3, p0, Lcom/google/android/gsf/login/CheckAvailTask$1;->val$resultMessage:Landroid/os/Message;

    invoke-direct {p0, p2}, Lcom/google/android/gsf/login/CancelableCallbackThread;-><init>(Landroid/os/Message;)V

    return-void
.end method


# virtual methods
.method protected runInBackground()V
    .locals 6

    .prologue
    .line 54
    iget-object v1, p0, Lcom/google/android/gsf/login/CheckAvailTask$1;->this$0:Lcom/google/android/gsf/login/CheckAvailTask;

    iget-object v1, v1, Lcom/google/android/gsf/login/CheckAvailTask;->mBackendStub:Lcom/google/android/gsf/login/BackendStub;

    iget-object v2, p0, Lcom/google/android/gsf/login/CheckAvailTask$1;->this$0:Lcom/google/android/gsf/login/CheckAvailTask;

    iget-object v3, p0, Lcom/google/android/gsf/login/CheckAvailTask$1;->this$0:Lcom/google/android/gsf/login/CheckAvailTask;

    #getter for: Lcom/google/android/gsf/login/CheckAvailTask;->mSession:Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;
    invoke-static {v3}, Lcom/google/android/gsf/login/CheckAvailTask;->access$000(Lcom/google/android/gsf/login/CheckAvailTask;)Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gsf/login/CheckAvailTask$1;->val$resultMessage:Landroid/os/Message;

    iget-object v5, p0, Lcom/google/android/gsf/login/CheckAvailTask$1;->mIsCanceled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/google/android/gsf/login/BackendStub;->checkLoginNameSync(Landroid/content/Context;Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;Landroid/os/Message;Ljava/util/concurrent/atomic/AtomicBoolean;)Lcom/google/android/gsf/loginservice/GLSUser$Status;

    move-result-object v0

    .line 56
    .local v0, status:Lcom/google/android/gsf/loginservice/GLSUser$Status;
    if-eqz v0, :cond_0

    .line 57
    iget-object v1, p0, Lcom/google/android/gsf/login/CheckAvailTask$1;->val$resultMessage:Landroid/os/Message;

    invoke-virtual {v0, v1}, Lcom/google/android/gsf/loginservice/GLSUser$Status;->toMessage(Landroid/os/Message;)V

    .line 59
    :cond_0
    iget-object v1, p0, Lcom/google/android/gsf/login/CheckAvailTask$1;->mIsCanceled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_1

    .line 60
    iget-object v1, p0, Lcom/google/android/gsf/login/CheckAvailTask$1;->this$0:Lcom/google/android/gsf/login/CheckAvailTask;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gsf/login/CheckAvailTask;->ensureDelay(J)V

    .line 62
    :cond_1
    return-void
.end method
