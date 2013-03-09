.class Lcom/google/android/gsf/login/CreateAccountTask$1;
.super Lcom/google/android/gsf/login/CancelableCallbackThread;
.source "CreateAccountTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gsf/login/CreateAccountTask;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/gsf/login/CreateAccountTask;

.field final synthetic val$resultMessage:Landroid/os/Message;


# direct methods
.method constructor <init>(Lcom/google/android/gsf/login/CreateAccountTask;Landroid/os/Message;Landroid/os/Message;)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter

    .prologue
    .line 50
    iput-object p1, p0, Lcom/google/android/gsf/login/CreateAccountTask$1;->this$0:Lcom/google/android/gsf/login/CreateAccountTask;

    iput-object p3, p0, Lcom/google/android/gsf/login/CreateAccountTask$1;->val$resultMessage:Landroid/os/Message;

    invoke-direct {p0, p2}, Lcom/google/android/gsf/login/CancelableCallbackThread;-><init>(Landroid/os/Message;)V

    return-void
.end method


# virtual methods
.method protected runInBackground()V
    .locals 4

    .prologue
    .line 53
    iget-object v1, p0, Lcom/google/android/gsf/login/CreateAccountTask$1;->this$0:Lcom/google/android/gsf/login/CreateAccountTask;

    iget-object v1, v1, Lcom/google/android/gsf/login/CreateAccountTask;->mBackendStub:Lcom/google/android/gsf/login/BackendStub;

    iget-object v2, p0, Lcom/google/android/gsf/login/CreateAccountTask$1;->this$0:Lcom/google/android/gsf/login/CreateAccountTask;

    iget-object v3, p0, Lcom/google/android/gsf/login/CreateAccountTask$1;->this$0:Lcom/google/android/gsf/login/CreateAccountTask;

    #getter for: Lcom/google/android/gsf/login/CreateAccountTask;->mSession:Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;
    invoke-static {v3}, Lcom/google/android/gsf/login/CreateAccountTask;->access$000(Lcom/google/android/gsf/login/CreateAccountTask;)Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gsf/login/BackendStub;->createAccountSync(Landroid/content/Context;Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;)Lcom/google/android/gsf/loginservice/GLSUser$Status;

    move-result-object v0

    .line 55
    .local v0, status:Lcom/google/android/gsf/loginservice/GLSUser$Status;
    sget-object v1, Lcom/google/android/gsf/loginservice/GLSUser$Status;->ALREADY_HAS_GMAIL:Lcom/google/android/gsf/loginservice/GLSUser$Status;

    if-ne v0, v1, :cond_0

    .line 60
    sget-object v0, Lcom/google/android/gsf/loginservice/GLSUser$Status;->SUCCESS:Lcom/google/android/gsf/loginservice/GLSUser$Status;

    .line 62
    :cond_0
    if-eqz v0, :cond_1

    .line 63
    iget-object v1, p0, Lcom/google/android/gsf/login/CreateAccountTask$1;->val$resultMessage:Landroid/os/Message;

    invoke-virtual {v0, v1}, Lcom/google/android/gsf/loginservice/GLSUser$Status;->toMessage(Landroid/os/Message;)V

    .line 65
    :cond_1
    iget-object v1, p0, Lcom/google/android/gsf/login/CreateAccountTask$1;->mIsCanceled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_2

    .line 66
    iget-object v1, p0, Lcom/google/android/gsf/login/CreateAccountTask$1;->this$0:Lcom/google/android/gsf/login/CreateAccountTask;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gsf/login/CreateAccountTask;->ensureDelay(J)V

    .line 68
    :cond_2
    return-void
.end method
