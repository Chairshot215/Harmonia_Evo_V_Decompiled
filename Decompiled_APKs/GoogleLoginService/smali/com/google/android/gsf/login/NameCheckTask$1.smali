.class Lcom/google/android/gsf/login/NameCheckTask$1;
.super Lcom/google/android/gsf/login/CancelableCallbackThread;
.source "NameCheckTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gsf/login/NameCheckTask;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/gsf/login/NameCheckTask;

.field final synthetic val$resultMessage:Landroid/os/Message;


# direct methods
.method constructor <init>(Lcom/google/android/gsf/login/NameCheckTask;Landroid/os/Message;Landroid/os/Message;)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter

    .prologue
    .line 44
    iput-object p1, p0, Lcom/google/android/gsf/login/NameCheckTask$1;->this$0:Lcom/google/android/gsf/login/NameCheckTask;

    iput-object p3, p0, Lcom/google/android/gsf/login/NameCheckTask$1;->val$resultMessage:Landroid/os/Message;

    invoke-direct {p0, p2}, Lcom/google/android/gsf/login/CancelableCallbackThread;-><init>(Landroid/os/Message;)V

    return-void
.end method


# virtual methods
.method protected runInBackground()V
    .locals 4

    .prologue
    .line 47
    iget-object v1, p0, Lcom/google/android/gsf/login/NameCheckTask$1;->this$0:Lcom/google/android/gsf/login/NameCheckTask;

    invoke-static {v1}, Lcom/google/android/gsf/loginservice/GLSUser;->getGLSContext(Landroid/content/Context;)Lcom/google/android/gsf/loginservice/GLSUser$GLSContext;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gsf/login/NameCheckTask$1;->this$0:Lcom/google/android/gsf/login/NameCheckTask;

    #getter for: Lcom/google/android/gsf/login/NameCheckTask;->mSession:Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;
    invoke-static {v2}, Lcom/google/android/gsf/login/NameCheckTask;->access$000(Lcom/google/android/gsf/login/NameCheckTask;)Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gsf/loginservice/GLSUser$GLSContext;->checkRealName(Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;)Lcom/google/android/gsf/loginservice/GLSUser$Status;

    move-result-object v0

    .line 49
    .local v0, status:Lcom/google/android/gsf/loginservice/GLSUser$Status;
    if-eqz v0, :cond_0

    .line 50
    iget-object v1, p0, Lcom/google/android/gsf/login/NameCheckTask$1;->val$resultMessage:Landroid/os/Message;

    invoke-virtual {v0, v1}, Lcom/google/android/gsf/loginservice/GLSUser$Status;->toMessage(Landroid/os/Message;)V

    .line 52
    :cond_0
    iget-object v1, p0, Lcom/google/android/gsf/login/NameCheckTask$1;->mIsCanceled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_1

    .line 53
    iget-object v1, p0, Lcom/google/android/gsf/login/NameCheckTask$1;->this$0:Lcom/google/android/gsf/login/NameCheckTask;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gsf/login/NameCheckTask;->ensureDelay(J)V

    .line 55
    :cond_1
    return-void
.end method
